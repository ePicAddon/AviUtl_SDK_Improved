SDKDIR := sdk
SRCDIR := src
OUTDIR := bin
OBJDIR := obj

#HDRS := $(wildcard $(SRCDIR)/*.hpp) $(wildcard $(SDKDIR)/*.hpp)
OBJS := $(addprefix $(OBJDIR)/,$(patsubst %.cpp,%.o,$(wildcard $(SRCDIR)/*.cpp)))
DEPS := $(OBJS:%.o=%.d)

CC = g++
CFLAGS = -Wall -Wextra -Wpedantic -O2 -std=c++17 -I $(SRCDIR) -I $(SDKDIR)

.PHONY: all clean audio_filter avi_input bmp_output disp_filter edit_filter importexport_filter interlace_filter jp_resource loupe_filter multithread_filter video_filter yuy2_color yuy2_filter

all: \
	audio_filter \
	avi_input \
	bmp_output \
	disp_filter \
	edit_filter \
	importexport_filter \
	interlace_filter \
	jp_resource \
	loupe_filter \
	multithread_filter \
	video_filter \
	yuy2_color \
	yuy2_filter
audio_filter: audio_filter.auf
avi_input: avi_input.aui
bmp_output: bmp_output.auo
disp_filter: disp_filter.auf
edit_filter: edit_filter.auf
importexport_filter: importexport_filter.auf
interlace_filter: interlace_filter.auf
jp_resource: jp_resource.aul
loupe_filter: loupe_filter.auf
multithread_filter: multithread_filter.auf
video_filter: video_filter.auf
yuy2_color: yuy2_color.auc
yuy2_filter: yuy2_filter.auf

-include $(DEPS)
