Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ma_atomic_uint32 = type { i32 }
%struct.ma_vec3f = type { float, float, float }
%struct.ma_resampling_backend_vtable = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drmp3_L12_subband_alloc = type { i8, i8, i8 }
%struct.anon.63 = type { %struct.ma_context, %struct.ma_device, %union.pthread_mutex_t, i8, i64, ptr }
%struct.ma_context = type { %struct.ma_backend_callbacks, i32, ptr, %struct.ma_log, i32, i64, ptr, %struct.ma_allocation_callbacks, %union.pthread_mutex_t, %union.pthread_mutex_t, i32, i32, i32, ptr, %union.anon.37, %union.anon.42 }
%struct.ma_backend_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ma_log = type { [4 x %struct.ma_log_callback], i32, %struct.ma_allocation_callbacks, %union.pthread_mutex_t }
%struct.ma_log_callback = type { ptr, ptr }
%struct.ma_allocation_callbacks = type { ptr, ptr, ptr, ptr }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.pthread_mutex_t, i32 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { i32 }
%struct.ma_device = type { ptr, i32, i32, %struct.ma_atomic_device_state, ptr, ptr, ptr, ptr, %union.pthread_mutex_t, %struct.ma_event, %struct.ma_event, %struct.ma_event, i64, i32, i8, i8, i8, i8, i8, %struct.ma_atomic_float, %struct.ma_duplex_rb, %struct.anon.19, %struct.anon.21, %struct.anon.26, %union.anon.27 }
%struct.ma_atomic_device_state = type { i32 }
%struct.ma_event = type { i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.ma_atomic_float = type { float }
%struct.ma_duplex_rb = type { %struct.ma_pcm_rb }
%struct.ma_pcm_rb = type { %struct.ma_data_source_base, %struct.ma_rb, i32, i32, i32 }
%struct.ma_data_source_base = type { ptr, i64, i64, i64, i64, ptr, ptr, ptr, i32 }
%struct.ma_rb = type { ptr, i32, i32, i32, i32, i32, i8, i8, %struct.ma_allocation_callbacks }
%struct.anon.19 = type { i32, ptr, ptr, %struct.anon.20 }
%struct.anon.20 = type { i32 }
%struct.anon.21 = type { ptr, %union.ma_device_id, [256 x i8], i32, i32, i32, [254 x i8], i32, i32, i32, [254 x i8], i32, i32, i32, i32, %struct.ma_data_converter, ptr, i32, i32, ptr, i64, i64, i64 }
%union.ma_device_id = type { %union.anon.17 }
%union.anon.17 = type { ptr, [248 x i8] }
%struct.ma_data_converter = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.ma_channel_converter, %struct.ma_resampler, i8, i8, i8, i8, i8, i8, ptr }
%struct.ma_channel_converter = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.22, ptr, i32 }
%union.anon.22 = type { ptr }
%struct.ma_resampler = type { ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.23, ptr, i32 }
%union.anon.23 = type { %struct.ma_linear_resampler }
%struct.ma_linear_resampler = type { %struct.ma_linear_resampler_config, i32, i32, i32, i32, %union.anon.24, %union.anon.25, %struct.ma_lpf, ptr, i32 }
%struct.ma_linear_resampler_config = type { i32, i32, i32, i32, i32, double }
%union.anon.24 = type { ptr }
%union.anon.25 = type { ptr }
%struct.ma_lpf = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.anon.26 = type { ptr, %union.ma_device_id, [256 x i8], i32, i32, i32, [254 x i8], i32, i32, i32, [254 x i8], i32, i32, i32, i32, %struct.ma_data_converter, ptr, i32, i32 }
%union.anon.27 = type { %struct.anon.31 }
%struct.anon.31 = type { i64, %struct.ma_event, %struct.ma_event, %struct.ma_semaphore, i32, i32, %union.ma_timer, double, i32, i32, i64, i64, %struct.ma_atomic_bool32 }
%struct.ma_semaphore = type { i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.ma_timer = type { i64 }
%struct.ma_atomic_bool32 = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ma_job = type { %union.anon.0, i64, i32, %union.anon.2 }
%union.anon.0 = type { i64 }
%union.anon.2 = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32 }
%struct.ma_data_converter_heap_layout = type { i64, i64, i64 }
%struct.ma_data_converter_config = type { i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, %struct.ma_resampler_config }
%struct.ma_resampler_config = type { i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.44 }
%struct.anon.44 = type { i32 }
%struct.ma_device_info = type { %union.ma_device_id, [256 x i8], i32, i32, [64 x %struct.anon.18] }
%struct.anon.18 = type { i32, i32, i32, i32 }
%struct.ma_job_queue_config = type { i32, i32 }
%struct.ma_context_config = type { ptr, i32, i64, ptr, %struct.ma_allocation_callbacks, %struct.anon.32, %struct.anon.33, %struct.anon.34, %struct.anon.35, %struct.anon.36, %struct.ma_backend_callbacks }
%struct.anon.32 = type { ptr }
%struct.anon.33 = type { i32 }
%struct.anon.34 = type { ptr, ptr, i32 }
%struct.anon.35 = type { i32, i32, i32, i32 }
%struct.anon.36 = type { ptr, i32 }
%struct.ma_device_config = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.ma_resampler_config, %struct.anon.45, %struct.anon.46, %struct.anon.47, %struct.anon.48, %struct.anon.49, %struct.anon.50, %struct.anon.51, %struct.anon.52 }
%struct.anon.45 = type { ptr, i32, i32, ptr, i32, i32, i32 }
%struct.anon.46 = type { ptr, i32, i32, ptr, i32, i32, i32 }
%struct.anon.47 = type { i32, i8, i8, i8, i8, i32, i8 }
%struct.anon.48 = type { i32, i32, i32, i32 }
%struct.anon.49 = type { ptr, ptr, i32 }
%struct.anon.50 = type { i32 }
%struct.anon.51 = type { i32, i32, i32 }
%struct.anon.52 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ma_device_descriptor = type { ptr, i32, i32, i32, i32, [254 x i8], i32, i32, i32 }
%struct.ma_device_notification = type { ptr, i32, %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { i32 }
%struct.ma_biquad_config = type { i32, i32, double, double, double, double, double, double }
%struct.ma_lpf1_config = type { i32, i32, i32, double, double }
%struct.ma_lpf_config = type { i32, i32, i32, double, i32 }
%struct.ma_hpf1_config = type { i32, i32, i32, double, double }
%struct.ma_hpf_config = type { i32, i32, i32, double, i32 }
%struct.ma_bpf2_config = type { i32, i32, i32, double, double }
%struct.ma_bpf_config = type { i32, i32, i32, double, i32 }
%struct.ma_notch2_config = type { i32, i32, i32, double, double }
%struct.ma_peak2_config = type { i32, i32, i32, double, double, double }
%struct.ma_loshelf2_config = type { i32, i32, i32, double, double, double }
%struct.ma_hishelf2_config = type { i32, i32, i32, double, double, double }
%struct.ma_delay_config = type { i32, i32, i32, i32, float, float, float }
%struct.ma_spatializer_listener_config = type { i32, ptr, i32, float, float, float, float, %struct.ma_vec3f }
%struct.ma_spatializer_config = type { i32, i32, ptr, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, i32 }
%struct.ma_linear_resampler_heap_layout = type { i64, i64, i64, i64 }
%struct.ma_channel_converter_config = type { i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.ma_channel_converter_heap_layout = type { i64, i64, i64, i64, i64 }
%struct.ma_audio_buffer_config = type { i32, i32, i32, i64, ptr, %struct.ma_allocation_callbacks }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ma_file_info = type { i64 }
%struct.ma_decoder_config = type { i32, i32, i32, ptr, i32, i32, %struct.ma_resampler_config, %struct.ma_allocation_callbacks, i32, i32, ptr, i32, ptr }
%struct.ma_decoding_backend_config = type { i32, i32 }
%struct.ma_decoder = type { %struct.ma_data_source_base, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i32, %struct.ma_data_converter, ptr, i64, i64, i64, %struct.ma_allocation_callbacks, %union.anon.53 }
%union.anon.53 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, i64, i64 }
%struct.ma_encoder_config = type { i32, i32, i32, i32, %struct.ma_allocation_callbacks }
%struct.drwav_fmt = type { i16, i16, i32, i32, i16, i16, i16, i16, i32, [16 x i8] }
%struct.drwav__metadata_parser = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i64, i64 }
%struct.drwav_chunk_header = type { %union.anon.70, i64, i32 }
%union.anon.70 = type { [16 x i8] }
%struct.drwav = type { ptr, ptr, ptr, ptr, ptr, %struct.drwav_allocation_callbacks, i32, %struct.drwav_fmt, i32, i16, i16, i16, i64, i64, i64, i64, i64, i64, i32, ptr, i32, %struct.drwav__memory_stream, %struct.drwav__memory_stream_write, %struct.anon.58, %struct.anon.59, %struct.anon.60 }
%struct.drwav_allocation_callbacks = type { ptr, ptr, ptr, ptr }
%struct.drwav__memory_stream = type { ptr, i64, i64 }
%struct.drwav__memory_stream_write = type { ptr, ptr, i64, i64, i64 }
%struct.anon.58 = type { i32, [2 x i16], [2 x i32], [4 x i32], i32, [2 x [2 x i32]] }
%struct.anon.59 = type { i32, [2 x i32], [2 x i32], [16 x i32], i32 }
%struct.anon.60 = type { i8, i8 }
%struct.stb_vorbis_info = type { i32, i32, i32, i32, i32, i32 }
%struct.stb_vorbis_comment = type { ptr, i32, ptr }
%struct.stb_vorbis = type { i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i8, i32, %struct.ProbedPage, %struct.ProbedPage, %struct.stb_vorbis_alloc, i32, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, [64 x i16], ptr, i32, [64 x i16], ptr, i32, ptr, i32, [64 x %struct.Mode], i32, [16 x ptr], [16 x ptr], [16 x ptr], i32, [16 x ptr], i32, i32, [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, [255 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.CRCscan], i32, i32 }
%struct.ProbedPage = type { i32, i32, i32 }
%struct.stb_vorbis_alloc = type { ptr, i32 }
%struct.Mode = type { i8, i8, i16, i16 }
%struct.CRCscan = type { i32, i32, i32, i32, i32 }
%struct.stbv__floor_ordering = type { i16, i16 }
%struct.drmp3_bs = type { ptr, i32, i32 }
%struct.drmp3_L12_scale_info = type { [192 x float], i8, i8, [64 x i8], [64 x i8] }
%struct.drmp3_metadata = type { i32, ptr, i64 }
%struct.drmp3dec_frame_info = type { i32, i32, i32, i32, i32 }
%struct.drmp3_L3_gr_info = type { ptr, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8 }
%struct.drmp3__seeking_mp3_frame_info = type { i64, i64 }
%struct.drmp3 = type { %struct.drmp3dec, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.drmp3_allocation_callbacks, i32, i32, i32, i32, [9216 x i8], i64, i64, i64, i64, ptr, i32, i32, i32, i64, i32, i32, i64, i64, i64, ptr, i32, %struct.anon.62 }
%struct.drmp3dec = type { [2 x [288 x float]], [960 x float], i32, i32, [4 x i8], [511 x i8], %struct.drmp3dec_scratch }
%struct.drmp3dec_scratch = type { %struct.drmp3_bs, [2815 x i8], [4 x %struct.drmp3_L3_gr_info], [2 x [576 x float]], [40 x float], [33 x [64 x float]], [2 x [39 x i8]] }
%struct.drmp3_allocation_callbacks = type { ptr, ptr, ptr, ptr }
%struct.anon.62 = type { ptr, i64, i64 }
%struct.Wave = type { i32, i32, i32, i32, ptr }
%struct.drmp3_config = type { i32, i32 }
%struct.qoa_desc = type { i32, i32, i32, [8 x %struct.qoa_lms_t] }
%struct.qoa_lms_t = type { [4 x i32], [4 x i32] }
%struct.Sound = type { %struct.AudioStream, i32 }
%struct.AudioStream = type { ptr, ptr, i32, i32, i32 }
%struct.drwav_data_format = type { i32, i32, i32, i32, i32 }
%struct.Music = type { %struct.AudioStream, i32, i8, i32, ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.sched_param = type { i32 }
%struct.ma_pa_source_info = type { ptr, i32, ptr, %struct.ma_pa_sample_spec, %struct.ma_pa_channel_map, i32, %struct.ma_pa_cvolume, i32, i32, ptr, i64, ptr, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i8, ptr }
%struct.ma_pa_sample_spec = type { i32, i32, i8 }
%struct.ma_pa_channel_map = type { i8, [32 x i32] }
%struct.ma_pa_cvolume = type { i8, [32 x i32] }
%struct.ma_pa_sink_info = type { ptr, i32, ptr, %struct.ma_pa_sample_spec, %struct.ma_pa_channel_map, i32, %struct.ma_pa_cvolume, i32, i32, ptr, i64, ptr, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i8, ptr }
%struct.ma_context_enumerate_devices_callback_data__pulse = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.ma_context_get_device_info_callback_data__pulse = type { ptr, i32, i32 }
%struct.ma_pa_buffer_attr = type { i32, i32, i32, i32, i32 }
%struct.ma_context_get_device_info_enum_callback_data__alsa = type { i32, ptr, i32, ptr, i32 }
%union.anon.72 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.11.24\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@g_jobVTable = internal unnamed_addr constant [12 x ptr] [ptr @ma_job_process__quit, ptr @ma_job_process__custom, ptr @ma_job_process__resource_manager__load_data_buffer_node, ptr @ma_job_process__resource_manager__free_data_buffer_node, ptr @ma_job_process__resource_manager__page_data_buffer_node, ptr @ma_job_process__resource_manager__load_data_buffer, ptr @ma_job_process__resource_manager__free_data_buffer, ptr @ma_job_process__resource_manager__load_data_stream, ptr @ma_job_process__resource_manager__free_data_stream, ptr @ma_job_process__resource_manager__page_data_stream, ptr @ma_job_process__resource_manager__seek_data_stream, ptr @ma_job_process__device__aaudio_reroute], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"Loading library: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to load library: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Loading symbol: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to load symbol: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@g_maFormatPriorities = internal unnamed_addr constant [5 x i32] [i32 2, i32 5, i32 4, i32 3, i32 1], align 16
@.str.10 = private unnamed_addr constant [23 x i8] c"Default Capture Device\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Capture Device\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Default Playback Device\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Playback Device\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Attempting to initialize %s backend...\0A\00", align 1
@.str.15 = private unnamed_addr constant [97 x i8] c"Failed to initialize mutex for device enumeration. ma_context_get_devices() is not thread safe.\0A\00", align 1
@.str.16 = private unnamed_addr constant [104 x i8] c"Failed to initialize mutex for device info retrieval. ma_context_get_device_info() is not thread safe.\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"System Architecture:\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"  Endian: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"  SSE2:   %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"  AVX2:   %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"  NEON:   %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"%s backend is disabled.\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Failed to initialize %s backend.\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"  %s (%s)\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"    Format:      %s -> %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"    Channels:    %d -> %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"    Sample Rate: %d -> %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"    Buffer Size: %d*%d (%d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"    Conversion:\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"      Pre Format Conversion:  %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"      Post Format Conversion: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"      Channel Routing:        %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"      Resampling:             %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"      Passthrough:            %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"      Channel Map In:         {%s}\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"      Channel Map Out:        {%s}\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"CHANNEL_NONE\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"CHANNEL_MONO\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"CHANNEL_FRONT_LEFT\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"CHANNEL_FRONT_RIGHT\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"CHANNEL_FRONT_CENTER\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"CHANNEL_LFE\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"CHANNEL_BACK_LEFT\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"CHANNEL_BACK_RIGHT\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"CHANNEL_FRONT_LEFT_CENTER\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"CHANNEL_FRONT_RIGHT_CENTER\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"CHANNEL_BACK_CENTER\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"CHANNEL_SIDE_LEFT\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"CHANNEL_SIDE_RIGHT\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"CHANNEL_TOP_CENTER\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"CHANNEL_TOP_FRONT_LEFT\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"CHANNEL_TOP_FRONT_CENTER\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"CHANNEL_TOP_FRONT_RIGHT\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"CHANNEL_TOP_BACK_LEFT\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"CHANNEL_TOP_BACK_CENTER\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"CHANNEL_TOP_BACK_RIGHT\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_0\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_1\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_2\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_3\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_4\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_5\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_6\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_7\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_8\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"CHANNEL_AUX_9\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_10\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_11\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_12\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_13\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_14\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_15\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_16\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_17\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_18\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_19\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_20\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_21\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_22\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_23\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_24\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_25\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_26\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_27\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_28\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_29\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_30\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"CHANNEL_AUX_31\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"Invalid operation\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"Out of range\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"Permission denied\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"Resource does not exist\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"Resource already exists\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"Too many open files\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"Invalid file\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"Too large\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"Path too long\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"Name too long\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"Not a directory\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"Is a directory\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"Directory not empty\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"At end\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"No space available\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"Device or resource busy\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"Input/output error\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"Interrupted\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"Resource unavailable\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"Resource already in use\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"Bad address\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"Illegal seek\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"Broken pipe\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"Deadlock\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"Too many links\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"No message of desired type\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"Invalid message\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"No data available\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"Invalid data\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"Network unavailable\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"Not unique\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"Socket operation on non-socket\00", align 1
@.str.135 = private unnamed_addr constant [29 x i8] c"Destination address required\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"Protocol wrong type for socket\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"Protocol not available\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"Protocol not supported\00", align 1
@.str.139 = private unnamed_addr constant [30 x i8] c"Protocol family not supported\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"Address family not supported\00", align 1
@.str.141 = private unnamed_addr constant [26 x i8] c"Socket type not supported\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"Connection reset\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"Already connected\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"Not connected\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"Connection refused\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"No host\00", align 1
@.str.147 = private unnamed_addr constant [22 x i8] c"Operation in progress\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"Operation cancelled\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"Memory already mapped\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"Format not supported\00", align 1
@.str.151 = private unnamed_addr constant [26 x i8] c"Device type not supported\00", align 1
@.str.152 = private unnamed_addr constant [25 x i8] c"Share mode not supported\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"No backend\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"No device\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"API not found\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"Invalid device config\00", align 1
@.str.157 = private unnamed_addr constant [23 x i8] c"Device not initialized\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"Device not started\00", align 1
@.str.159 = private unnamed_addr constant [29 x i8] c"Failed to initialize backend\00", align 1
@.str.160 = private unnamed_addr constant [30 x i8] c"Failed to open backend device\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"Failed to start backend device\00", align 1
@.str.162 = private unnamed_addr constant [30 x i8] c"Failed to stop backend device\00", align 1
@.str.163 = private unnamed_addr constant [23 x i8] c"8-bit Unsigned Integer\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"16-bit Signed Integer\00", align 1
@.str.165 = private unnamed_addr constant [39 x i8] c"24-bit Signed Integer (Tightly Packed)\00", align 1
@.str.166 = private unnamed_addr constant [22 x i8] c"32-bit Signed Integer\00", align 1
@.str.167 = private unnamed_addr constant [27 x i8] c"32-bit IEEE Floating Point\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@__const.ma_get_bytes_per_sample.sizes = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 4], align 16
@.str.169 = private unnamed_addr constant [7 x i8] c"0.14.5\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.171 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4
end_hunk_0
begin_hunk_1_@drmp3_decode_next_frame_ex:bb.a
  %i.dz = load <2 x i32>, ptr %i.dx, align 4
  store <2 x i32> %i.dz, ptr %i.dy, align 8
  %.not109.i = icmp eq ptr %2, null
  br i1 %.not109.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not110.i = icmp eq ptr %3, null
  br i1 %.not110.i, label %.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load ptr, ptr %i.bb, align 8
  %i.eb = load i64, ptr %i.bc, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = sub nsw i64 0, %i.dh
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 %i.ed
  store ptr %i.ee, ptr %3, align 8
  br label %.sink.split.i

bb.ad:                                            ; preds = %bb.y
  %i.ef = icmp eq i32 %i.dg, 0
  br i1 %i.ef, label %bb.ae, label %.critedge111.i

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.eh, i64 %i.dl, i1 false)
  store i64 0, ptr %i.bc, align 8
  %i.ei = load i64, ptr %i.bd, align 8            ; 4 uses
  %i.ej = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.ek = icmp eq i64 %i.ei, %i.ej
  %.pre158.i = load ptr, ptr %i.bb, align 8       ; 5 uses
  br i1 %i.ek, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.el = add i64 %i.ei, 65536                    ; 4 uses
  %i.em = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i115.i = icmp eq ptr %i.em, null
  br i1 %.not.i115.i, label %bb.ag, label %drmp3__realloc_from_callbacks.exit120.i

bb.ag:                                            ; preds = %bb.af
  %i.en = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not25.i117.i = icmp eq ptr %i.en, null
  br i1 %.not25.i117.i, label %.sink.split.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load ptr, ptr %i.bh, align 8
  %.not26.i118.i = icmp eq ptr %i.eo, null
  br i1 %.not26.i118.i, label %.sink.split.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %i.be, align 8
  %i.eq = tail call ptr %i.en(i64 noundef %i.el, ptr noundef %i.ep) #61, !inline_history !1111 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %.sink.split.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not27.i119.i = icmp eq ptr %.pre158.i, null
  br i1 %.not27.i119.i, label %drmp3__realloc_from_callbacks.exit120.thread137.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull align 1 %.pre158.i, i64 %i.ei, i1 false)
  %i.es = load ptr, ptr %i.bh, align 8
  %i.et = load ptr, ptr %i.be, align 8
  tail call void %i.es(ptr noundef nonnull %.pre158.i, ptr noundef %i.et) #61, !inline_history !1111
  br label %drmp3__realloc_from_callbacks.exit120.thread137.i

drmp3__realloc_from_callbacks.exit120.i:          ; preds = %bb.af
  %i.eu = load ptr, ptr %i.be, align 8
  %i.ev = tail call ptr %i.em(ptr noundef %.pre158.i, i64 noundef %i.el, ptr noundef %i.eu) #61, !inline_history !1111 ; 2 uses
  %.not108.i = icmp eq ptr %i.ev, null
  br i1 %.not108.i, label %.sink.split.i, label %drmp3__realloc_from_callbacks.exit120.thread137.i

drmp3__realloc_from_callbacks.exit120.thread137.i: ; preds = %drmp3__realloc_from_callbacks.exit120.i, %bb.ak, %bb.aj
  %.1.i116140.i = phi ptr [ %i.ev, %drmp3__realloc_from_callbacks.exit120.i ], [ %i.eq, %bb.aj ], [ %i.eq, %bb.ak ] ; 2 uses
  store ptr %.1.i116140.i, ptr %i.bb, align 8
  store i64 %i.el, ptr %i.bd, align 8
  %.pre159.i = load i64, ptr %i.ba, align 8
  br label %bb.al

bb.al:                                            ; preds = %drmp3__realloc_from_callbacks.exit120.thread137.i, %bb.ae
  %i.ew = phi i64 [ %i.el, %drmp3__realloc_from_callbacks.exit120.thread137.i ], [ %i.ei, %bb.ae ] ; 2 uses
  %i.ex = phi i64 [ %.pre159.i, %drmp3__realloc_from_callbacks.exit120.thread137.i ], [ %i.ej, %bb.ae ] ; 3 uses
  %i.ey = phi ptr [ %.1.i116140.i, %drmp3__realloc_from_callbacks.exit120.thread137.i ], [ %.pre158.i, %bb.ae ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  %i.fa = sub i64 %i.ew, %i.ex                    ; 2 uses
  %i.fb = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.fc = icmp eq i64 %i.fb, -1
  br i1 %i.fc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fd = icmp eq i64 %i.ew, %i.ex
  br i1 %i.fd, label %.critedge111.thread.sink.split.i, label %drmp3__on_read_clamped.exit123.i

bb.an:                                            ; preds = %bb.al
  %i.fe = load i64, ptr %i.bj, align 8
  %i.ff = sub i64 %i.fb, %i.fe
  %spec.select.i121.i = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ff) ; 2 uses
  %i.fg = icmp eq i64 %spec.select.i121.i, 0
  br i1 %i.fg, label %.critedge111.thread.sink.split.i, label %drmp3__on_read_clamped.exit123.i

drmp3__on_read_clamped.exit123.i:                 ; preds = %bb.an, %bb.am
  %.sink189.i = phi i64 [ %i.fa, %bb.am ], [ %spec.select.i121.i, %bb.an ]
  %i.fh = load ptr, ptr %i.bk, align 8
  %i.fi = load ptr, ptr %i.bl, align 8
  %i.fj = tail call i64 %i.fh(ptr noundef %i.fi, ptr noundef %i.ez, i64 noundef %.sink189.i) #61, !inline_history !1112 ; 3 uses
  %i.fk = load i64, ptr %i.bj, align 8
  %i.fl = add i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %i.bj, align 8
  %i.fm = icmp eq i64 %i.fj, 0
  br i1 %i.fm, label %.critedge111.thread.sink.split.i, label %.critedge113.i

.critedge113.i:                                   ; preds = %drmp3__on_read_clamped.exit123.i
  %i.fn = load i64, ptr %i.ba, align 8
  %i.fo = add i64 %i.fn, %i.fj                    ; 2 uses
  store i64 %i.fo, ptr %i.ba, align 8
  br label %.critedge111.i

.critedge111.thread.sink.split.i:                 ; preds = %drmp3__on_read_clamped.exit123.i, %bb.an, %bb.am, %bb.w, %drmp3__on_read_clamped.exit.thread.i
  store i32 1, ptr %i.ay, align 8
  br label %.sink.split.i

.critedge111.i:                                   ; preds = %.critedge113.i, %bb.ad
  %i.fp = phi i64 [ %i.dl, %bb.ad ], [ %i.fo, %.critedge113.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br label %bb.j

.sink.split.i:                                    ; preds = %drmp3__realloc_from_callbacks.exit120.i, %bb.ai, %bb.ah, %bb.ag, %bb.x, %drmp3__realloc_from_callbacks.exit.i, %bb.q, %bb.p, %bb.o, %.critedge111.thread.sink.split.i, %bb.ac, %bb.ab
  %.10.ph.i = phi i32 [ %i.du, %bb.ab ], [ 0, %.critedge111.thread.sink.split.i ], [ %i.du, %bb.ac ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %drmp3__realloc_from_callbacks.exit.i ], [ 0, %bb.x ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %drmp3__realloc_from_callbacks.exit120.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br label %drmp3_decode_next_frame_ex__callbacks.exit

drmp3_decode_next_frame_ex__callbacks.exit:       ; preds = %.sink.split.i, %bb.i, %drmp3_decode_next_frame_ex__memory.exit
  %.0 = phi i32 [ %.025.i, %drmp3_decode_next_frame_ex__memory.exit ], [ 0, %bb.i ], [ %.10.ph.i, %.sink.split.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @drmp3_get_pcm_frame_count(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32296
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32284
  %i.f = load i32, ptr %i.e, align 4
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.not14 = icmp ult i64 %i.d, %i.g
  %i.h = select i1 %.not14, i64 0, i64 %i.g
  %spec.select21 = sub nuw i64 %i.d, %i.h         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32288
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.not15 = icmp ult i64 %spec.select21, %i.k
  %i.l = select i1 %.not15, i64 0, i64 %i.k
  %spec.select22 = sub nuw i64 %spec.select21, %i.l
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = call i32 @drmp3_get_mp3_and_pcm_frame_count(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not13 = icmp eq i32 %i.m, 0
  %i.n = load i64, ptr %i.a, align 8
  %spec.select = select i1 %.not13, i64 0, i64 %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.d ], [ %spec.select22, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @drmp3_get_mp3_frame_count(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = call i32 @drmp3_get_mp3_and_pcm_frame_count(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null)
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i64, ptr %i.a, align 8
  %.0 = select i1 %.not, i64 0, i64 %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_calculate_seek_points(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca [3 x %struct.drmp3__seeking_mp3_frame_info], align 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %2, null
  %or.cond4 = or i1 %or.cond, %i.e
  br i1 %or.cond4, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4                ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32240 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i32 @drmp3_get_mp3_and_pcm_frame_count(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = zext i32 %i.f to i64
  %i.n = add i64 %i.k, -1
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = trunc i64 %i.k to i32
  %i.q = add i32 %i.p, -1
  %.076 = select i1 %i.o, i32 %i.q, i32 %i.f      ; 4 uses
  %i.r = load i64, ptr %i.b, align 8
  %i.s = add i32 %.076, 1
  %i.t = zext i32 %i.s to i64
  %i.u = udiv i64 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32264 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 5 uses
  %i.x = icmp ult i64 %i.w, 2147483648
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = trunc nuw nsw i64 %i.w to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 22944
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 22960
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i32 %i.aa(ptr noundef %i.ac, i32 noundef range(i32 0, -2147483648) %i.y, i32 noundef 0) #61, !inline_history !14
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %.critedge93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32248
  store i64 %i.w, ptr %i.ae, align 8
  br label %drmp3_seek_to_start_of_stream.exit

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 22944 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 22960 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call i32 %i.ag(ptr noundef %i.ai, i32 noundef 2147483647, i32 noundef 0) #61, !inline_history !14
  %.not.i18.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i18.i.i, label %.critedge93, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32248 ; 5 uses
  store i64 2147483647, ptr %i.ak, align 8
  %i.al = add i64 %i.w, -2147483647               ; 3 uses
  %i.am = icmp ult i64 %i.al, 2147483648
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.j, %.lr.ph.i.i
  %.lcssa.i = phi i64 [ %i.al, %.lr.ph.i.i ], [ %i.az, %bb.j ] ; 2 uses
  %i.an = trunc nuw nsw i64 %.lcssa.i to i32
  %i.ao = load ptr, ptr %i.af, align 8
  %i.ap = load ptr, ptr %i.ah, align 8
  %i.aq = call i32 %i.ao(ptr noundef %i.ap, i32 noundef range(i32 0, -2147483648) %i.an, i32 noundef 1) #61, !inline_history !14
  %.not.i21.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i21.i.i, label %.critedge93, label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i
  %i.ar = load i64, ptr %i.ak, align 8
  %i.as = add i64 %i.ar, %.lcssa.i                ; 2 uses
  store i64 %i.as, ptr %i.ak, align 8
  br label %drmp3_seek_to_start_of_stream.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.j
  %i.at = phi i64 [ %i.az, %bb.j ], [ %i.al, %.lr.ph.i.i ]
  %i.au = load ptr, ptr %i.af, align 8
  %i.av = load ptr, ptr %i.ah, align 8
  %i.aw = call i32 %i.au(ptr noundef %i.av, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !14
  %.not.i24.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i24.i.i, label %.critedge93, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ax = load i64, ptr %i.ak, align 8
  %i.ay = add i64 %i.ax, 2147483647
  store i64 %i.ay, ptr %i.ak, align 8
  %i.az = add i64 %i.at, -2147483647              ; 3 uses
  %i.ba = icmp ult i64 %i.az, 2147483648
  br i1 %i.ba, label %._crit_edge.i, label %.lr.ph.i

drmp3_seek_to_start_of_stream.exit:               ; preds = %bb.h, %.thread.i.i
  %i.bb = phi i64 [ %i.w, %bb.h ], [ %i.as, %.thread.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 23016 ; 2 uses
  store i32 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 23020 ; 2 uses
  store i32 0, ptr %i.bd, align 4
  store i64 0, ptr %i.h, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32312 ; 5 uses
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32344 ; 2 uses
  store i32 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  store i8 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32248 ; 8 uses
  %i.bi = getelementptr i8, ptr %0, i64 22932     ; 4 uses
  %i.bj = getelementptr i8, ptr %0, i64 23012     ; 4 uses
  store i64 %i.bb, ptr %3, align 16
  %i.bk = call fastcc i32 @drmp3_decode_next_frame_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %.not92 = icmp eq i32 %i.bk, 0
  br i1 %.not92, label %.critedge93, label %bb.k

.lr.ph:                                           ; preds = %.preheader129
  %i.bl = uitofp i32 %i.cq to float
  %i.bm = fsub float %i.cp, %i.bl
  %i.bn = uitofp nneg i32 %i.cw to float
  %.val96.2 = load i32, ptr %i.bj, align 4
  %i.bo = uitofp i32 %.val96.2 to float
  %.val95.2 = load i32, ptr %i.bi, align 4
  %i.bp = uitofp i32 %.val95.2 to float
  %i.bq = fdiv float %i.bo, %i.bp
  %i.br = fdiv float %i.bn, %i.bq
  %i.bs = fadd float %i.bm, %i.br                 ; 2 uses
  %i.bt = fptoui float %i.bs to i32               ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.cs, %i.bu
  %i.bw = uitofp i32 %i.bt to float
  %i.bx = fsub float %i.bs, %i.bw
  %wide.trip.count = zext i32 %.076 to i64
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.32..32..sroa_idx221 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.40..40..sroa_idx222 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.24..24..sroa_idx220 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.24..24..sroa_idx219 = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.m

bb.k:                                             ; preds = %drmp3_seek_to_start_of_stream.exit
  %.val95 = load i32, ptr %i.bi, align 4
  %.val96 = load i32, ptr %i.bj, align 4
  %i.by = uitofp i32 %.val96 to float
  %i.bz = uitofp i32 %.val95 to float
  %i.ca = fdiv float %i.by, %i.bz
  %i.cb = uitofp nneg i32 %i.bk to float
  %i.cc = fdiv float %i.cb, %i.ca                 ; 2 uses
  %i.cd = fptoui float %i.cc to i32               ; 2 uses
  %4 = zext i32 %i.cd to i64                      ; 3 uses
  %i.ce = load i64, ptr %i.bh, align 8
  %i.cf = load i64, ptr %i.be, align 8
  %i.cg = sub i64 %i.ce, %i.cf
  %.16..16..sroa_idx218 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.cg, ptr %.16..16..sroa_idx218, align 16
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %4, ptr %.24..24..sroa_idx, align 8
  %i.ch = call fastcc i32 @drmp3_decode_next_frame_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %.not92.1 = icmp eq i32 %i.ch, 0
  br i1 %.not92.1, label %.critedge93, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = uitofp i32 %i.cd to float
  %i.cj = fsub float %i.cc, %i.ci
  %.val95.1 = load i32, ptr %i.bi, align 4
  %.val96.1 = load i32, ptr %i.bj, align 4
  %i.ck = uitofp i32 %.val96.1 to float
  %i.cl = uitofp i32 %.val95.1 to float
  %i.cm = fdiv float %i.ck, %i.cl
  %i.cn = uitofp nneg i32 %i.ch to float
  %i.co = fdiv float %i.cn, %i.cm
  %i.cp = fadd float %i.cj, %i.co                 ; 2 uses
  %i.cq = fptoui float %i.cp to i32               ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %4, %i.cr               ; 2 uses
  %i.ct = load i64, ptr %i.bh, align 8
  %i.cu = load i64, ptr %i.be, align 8
  %i.cv = sub i64 %i.ct, %i.cu
  %.32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.cv, ptr %.32..32..sroa_idx, align 16
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.cs, ptr %.40..40..sroa_idx, align 8
  %i.cw = call fastcc i32 @drmp3_decode_next_frame_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %.not92.2 = icmp eq i32 %i.cw, 0
  br i1 %.not92.2, label %.critedge93, label %.preheader129

.preheader129:                                    ; preds = %bb.l
  %.not151 = icmp eq i32 %.076, 0
  br i1 %.not151, label %._crit_edge150, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.24.165172 = phi i64 [ %4, %.lr.ph ], [ %.24..sink, %bb.o ]
  %.0.169 = phi i64 [ %i.bb, %.lr.ph ], [ %.0.170, %bb.o ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.074148 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %bb.o ]
  %.1115147 = phi float [ %i.bx, %.lr.ph ], [ %.2133, %bb.o ] ; 2 uses
  %.1118146 = phi i64 [ %i.bv, %.lr.ph ], [ %.2119135, %bb.o ] ; 3 uses
  %i.cx = add i64 %.074148, %i.u                  ; 6 uses
  %i.cy = icmp ult i64 %i.cx, %.1118146
  br i1 %i.cy, label %._crit_edge, label %.preheader.a

.preheader.a:                                     ; preds = %bb.m, %bb.n
  %.2144 = phi float [ %i.dm, %bb.n ], [ %.1115147, %bb.m ] ; 2 uses
  %.2119143 = phi i64 [ %i.do, %bb.n ], [ %.1118146, %bb.m ] ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %.16..16..sroa_idx, i64 32, i1 false)
  %i.cz = load i64, ptr %i.bh, align 8
  %i.da = load i64, ptr %i.be, align 8
  %i.db = sub i64 %i.cz, %i.da
  store i64 %i.db, ptr %.32..32..sroa_idx221, align 16
  store i64 %.2119143, ptr %.40..40..sroa_idx222, align 8
  %i.dc = call fastcc i32 @drmp3_decode_next_frame_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.thread, label %bb.n

._crit_edge.loopexit:                             ; preds = %bb.n
  %.0..0..pre = load i64, ptr %3, align 16
  %.24..24.165.pre = load i64, ptr %.24..24..sroa_idx220, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.24.165 = phi i64 [ %.24.165172, %bb.m ], [ %.24..24.165.pre, %._crit_edge.loopexit ]
  %.0. = phi i64 [ %.0.169, %bb.m ], [ %.0..0..pre, %._crit_edge.loopexit ] ; 2 uses
  %.2119.lcssa = phi i64 [ %.1118146, %bb.m ], [ %i.do, %._crit_edge.loopexit ]
  %.2.lcssa = phi float [ %.1115147, %bb.m ], [ %i.dm, %._crit_edge.loopexit ]
  %5 = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  store i64 %.0., ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cx, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 2, ptr %7, align 8
  br label %bb.o

.thread:                                          ; preds = %.preheader.a
  %.0..0.163 = load i64, ptr %3, align 16         ; 2 uses
  %8 = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  store i64 %.0..0.163, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cx, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 2, ptr %10, align 8
  %.24..24. = load i64, ptr %.24..24..sroa_idx219, align 8
  br label %bb.o

bb.n:                                             ; preds = %.preheader.a
  %.val = load i32, ptr %i.bi, align 4
  %.val94 = load i32, ptr %i.bj, align 4
  %i.de = uitofp i32 %.val94 to float
  %i.df = uitofp i32 %.val to float
  %i.dg = fdiv float %i.de, %i.df
  %i.dh = uitofp nneg i32 %i.dc to float
  %i.di = fdiv float %i.dh, %i.dg
  %i.dj = fadd float %.2144, %i.di                ; 2 uses
  %i.dk = fptoui float %i.dj to i32               ; 2 uses
  %i.dl = uitofp i32 %i.dk to float
  %i.dm = fsub float %i.dj, %i.dl                 ; 2 uses
  %i.dn = zext i32 %i.dk to i64
  %i.do = add i64 %.2119143, %i.dn                ; 3 uses
  %i.dp = icmp ult i64 %i.cx, %i.do
  br i1 %i.dp, label %._crit_edge.loopexit, label %.preheader.a

bb.o:                                             ; preds = %.thread, %._crit_edge
  %.24..sink = phi i64 [ %.24..24., %.thread ], [ %.24.165, %._crit_edge ] ; 2 uses
  %.0.170 = phi i64 [ %.0..0.163, %.thread ], [ %.0., %._crit_edge ]
  %.2119135 = phi i64 [ %.2119143, %.thread ], [ %.2119.lcssa, %._crit_edge ]
  %.2133 = phi float [ %.2144, %.thread ], [ %.2.lcssa, %._crit_edge ]
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv
  %i.dr = sub i64 %i.cx, %.24..sink
  %i.ds = trunc i64 %i.dr to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 18
  store i16 %i.ds, ptr %i.dt, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge150, label %bb.m

._crit_edge150:                                   ; preds = %bb.o, %.preheader129
  %i.du = load i64, ptr %i.v, align 8             ; 4 uses
  %i.dv = icmp ult i64 %i.du, 2147483648
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge150
  %i.dw = trunc nuw nsw i64 %i.du to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 22944
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 22960
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call i32 %i.dy(ptr noundef %i.ea, i32 noundef range(i32 0, -2147483648) %i.dw, i32 noundef 0) #61, !inline_history !14
  %.not.i.i.i107 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i107, label %.critedge93, label %.critedge

bb.q:                                             ; preds = %._crit_edge150
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 22944 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 22960 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call i32 %i.ed(ptr noundef %i.ef, i32 noundef 2147483647, i32 noundef 0) #61, !inline_history !14
  %.not.i18.i.i97 = icmp eq i32 %i.eg, 0
  br i1 %.not.i18.i.i97, label %.critedge93, label %.lr.ph.i.i98

.lr.ph.i.i98:                                     ; preds = %bb.q
  store i64 2147483647, ptr %i.bh, align 8
  %i.eh = add i64 %i.du, -2147483647              ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 2147483648
  br i1 %i.ei, label %._crit_edge.i101, label %.lr.ph.i99

._crit_edge.i101:                                 ; preds = %bb.r, %.lr.ph.i.i98
  %.lcssa.i102 = phi i64 [ %i.eh, %.lr.ph.i.i98 ], [ %i.ev, %bb.r ] ; 2 uses
  %i.ej = trunc nuw nsw i64 %.lcssa.i102 to i32
  %i.ek = load ptr, ptr %i.ec, align 8
  %i.el = load ptr, ptr %i.ee, align 8
  %i.em = call i32 %i.ek(ptr noundef %i.el, i32 noundef range(i32 0, -2147483648) %i.ej, i32 noundef 1) #61, !inline_history !14
  %.not.i21.i.i103 = icmp eq i32 %i.em, 0
  br i1 %.not.i21.i.i103, label %.critedge93, label %.thread.i.i104

.thread.i.i104:                                   ; preds = %._crit_edge.i101
  %i.en = load i64, ptr %i.bh, align 8
  %i.eo = add i64 %i.en, %.lcssa.i102
  br label %.critedge

.lr.ph.i99:                                       ; preds = %.lr.ph.i.i98, %bb.r
  %i.ep = phi i64 [ %i.ev, %bb.r ], [ %i.eh, %.lr.ph.i.i98 ]
  %i.eq = load ptr, ptr %i.ec, align 8
  %i.er = load ptr, ptr %i.ee, align 8
  %i.es = call i32 %i.eq(ptr noundef %i.er, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !14
  %.not.i24.i.i100 = icmp eq i32 %i.es, 0
  br i1 %.not.i24.i.i100, label %.critedge93, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i99
  %i.et = load i64, ptr %i.bh, align 8
  %i.eu = add i64 %i.et, 2147483647
  store i64 %i.eu, ptr %i.bh, align 8
  %i.ev = add i64 %i.ep, -2147483647              ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 2147483648
  br i1 %i.ew, label %._crit_edge.i101, label %.lr.ph.i99

.critedge:                                        ; preds = %bb.p, %.thread.i.i104
  %storemerge = phi i64 [ %i.eo, %.thread.i.i104 ], [ %i.du, %bb.p ]
  store i64 %storemerge, ptr %i.bh, align 8
  store i32 0, ptr %i.bc, align 8
  store i32 0, ptr %i.bd, align 4
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.be, align 8
  store i32 0, ptr %i.bf, align 8
  store i8 0, ptr %i.bg, align 8
  %i.ex = call i32 @drmp3_seek_to_pcm_frame(ptr noundef nonnull %0, i64 noundef %i.i)
  %.not91.not = icmp eq i32 %i.ex, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.not91.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.e
  %.177 = phi i32 [ 1, %bb.e ], [ %.076, %.critedge ]
  store i32 %.177, ptr %1, align 4
  br label %bb.t

.critedge93:                                      ; preds = %.lr.ph.i, %.lr.ph.i99, %drmp3_seek_to_start_of_stream.exit, %bb.k, %bb.l, %._crit_edge.i101, %bb.q, %bb.p, %._crit_edge.i, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.t

bb.t:                                             ; preds = %.critedge93, %bb.c, %bb.b, %bb.a, %.critedge, %bb.s
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.s ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %.critedge93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 0, 2) i32 @drmp3_bind_seek_table(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  %i.c = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32272
  %. = select i1 %i.c, i32 0, i32 %1
  %.17 = select i1 %i.b, ptr null, ptr %2
  store i32 %., ptr %i.d, align 8
  store ptr %.17, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_and_read_pcm_frames_f32(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #8 {
bb.a:
  %7 = alloca %struct.drmp3, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #61
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3_init.exit.thread, label %drmp3_init.exit

drmp3_init.exit:                                  ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %7, i8 0, i64 32376, i1 false)
  %i.b = call fastcc i32 @drmp3_init_internal(ptr noundef nonnull %7, ptr noundef nonnull %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef null, ptr noundef %3, ptr noundef %3, ptr noundef readonly %6)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %drmp3_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %drmp3_init.exit
  %i.c = call fastcc ptr @drmp3__full_read_and_close_f32(ptr noundef %7, ptr noundef %4, ptr noundef %5)
  br label %drmp3_init.exit.thread

drmp3_init.exit.thread:                           ; preds = %bb.a, %drmp3_init.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %drmp3_init.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @drmp3__full_read_and_close_f32(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8192 x i16], align 16            ; 6 uses
  %i.b = alloca [4096 x float], align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22928 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22936 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32240 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32284
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 23020 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23016 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32288 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 23024 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 23008
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22976 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22992
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22984
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %drmp3__free_from_callbacks.exit, %bb.a
  %.054 = phi i64 [ 0, %bb.a ], [ %i.ct, %drmp3__free_from_callbacks.exit ] ; 5 uses
  %.050 = phi i64 [ 0, %bb.a ], [ %.252, %drmp3__free_from_callbacks.exit ] ; 4 uses
  %.048 = phi ptr [ null, %bb.a ], [ %.2, %drmp3__free_from_callbacks.exit ] ; 10 uses
  %i.q = load i32, ptr %i.c, align 8              ; 3 uses
  %i.r = udiv i32 4096, %i.q
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %drmp3_read_pcm_frames_f32.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %.not.i = icmp ugt i32 %i.q, 4096
  br i1 %.not.i, label %drmp3_read_pcm_frames_f32.exit.thread74, label %.lr.ph.i

drmp3_read_pcm_frames_f32.exit.thread74:          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %drmp3_read_pcm_frames_f32.exit.thread

.lr.ph.i:                                         ; preds = %bb.c, %.loopexit.i
  %i.v = phi i32 [ %i.bw, %.loopexit.i ], [ %i.q, %bb.c ]
  %.02332.i = phi i64 [ %i.cq, %.loopexit.i ], [ 0, %bb.c ] ; 4 uses
  %i.w = sub nuw nsw i64 %i.s, %.02332.i
  %i.x = udiv i32 8192, %i.v
  %i.y = zext nneg i32 %i.x to i64
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %.lr.ph.i
  %.061.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %bb.n ] ; 4 uses
  %.0.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.bm, %bb.n ] ; 3 uses
  %.not.i71 = icmp eq i64 %.0.i, 0
  br i1 %.not.i71, label %drmp3_read_pcm_frames_raw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.e, align 8              ; 4 uses
  %i.aa = load i32, ptr %i.f, align 4
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  %.pre.i = load i32, ptr %i.g, align 4           ; 3 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = zext i32 %.pre.i to i64
  %i.ae = sub nuw nsw i64 %i.ab, %i.z
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ad) ; 2 uses
  %i.ag = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ah = add nuw nsw i64 %i.af, %i.z             ; 2 uses
  store i64 %i.ah, ptr %i.e, align 8
  %i.ai = load i32, ptr %i.h, align 8
  %i.aj = add i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.h, align 8
  %i.ak = sub i32 %.pre.i, %i.ag                  ; 2 uses
  store i32 %i.ak, ptr %i.g, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre89.i = phi i64 [ %i.ah, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %.pre92.i = phi i32 [ %i.ak, %bb.f ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.al = zext i32 %.pre92.i to i64
  %i.am = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.al) ; 3 uses
  %i.an = load i64, ptr %i.i, align 8             ; 5 uses
  %.not81.i = icmp eq i64 %i.an, -1               ; 2 uses
  br i1 %.not81.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.j, align 8
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw i64 %i.an, %i.ap                ; 2 uses
  %i.as = icmp ult i64 %.pre89.i, %i.ar
  br i1 %i.as, label %bb.j, label %drmp3_read_pcm_frames_raw.exit

bb.j:                                             ; preds = %bb.i
  %i.at = sub nuw i64 %i.ar, %.pre89.i
  %spec.select88.i = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.165.in.i = phi i64 [ %spec.select88.i, %bb.j ], [ %i.am, %bb.h ], [ %i.am, %bb.g ] ; 5 uses
  %.165.i = trunc nuw i64 %.165.in.i to i32       ; 2 uses
  %.pre91.i = load i32, ptr %i.h, align 8         ; 2 uses
  %i.au = shl i64 %.061.i, 1
  %i.av = load i32, ptr %i.c, align 8
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = mul i64 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = zext i32 %.pre91.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = load i32, ptr %i.l, align 8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bd
  %i.bf = shl nuw nsw i64 %.165.in.i, 1
  %i.bg = and i64 %i.bf, 8589934590
  %i.bh = mul i64 %i.bg, %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ay, ptr nonnull align 2 %i.be, i64 %i.bh, i1 false)
  %i.bi = add i64 %.pre89.i, %.165.in.i           ; 2 uses
  store i64 %i.bi, ptr %i.e, align 8
  %i.bj = add i32 %.pre91.i, %.165.i
  store i32 %i.bj, ptr %i.h, align 8
  %i.bk = sub i32 %.pre92.i, %.165.i
  store i32 %i.bk, ptr %i.g, align 4
  %i.bl = add i64 %.165.in.i, %.061.i             ; 4 uses
  %i.bm = sub i64 %.0.i, %.165.in.i               ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %drmp3_read_pcm_frames_raw.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not81.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.j, align 8
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ule i64 %i.an, %i.bp
  %i.br = sub nuw i64 %i.an, %i.bp
  %.not84.i = icmp ult i64 %i.bi, %i.br
  %or.cond.i = select i1 %i.bq, i1 true, i1 %.not84.i
  br i1 %or.cond.i, label %bb.n, label %drmp3_read_pcm_frames_raw.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = tail call fastcc range(i32 0, 1153) i32 @drmp3_decode_next_frame_ex(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null)
  %i.bt = icmp eq i32 %i.bs, 0
end_hunk_1
begin_hunk_2_@drmp3_open_memory_and_read_pcm_frames_f32:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32352
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32360 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = call fastcc i32 @drmp3_init_internal(ptr noundef nonnull %5, ptr noundef nonnull @drmp3__on_read_memory, ptr noundef nonnull @drmp3__on_seek_memory, ptr noundef nonnull @drmp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef readonly %4)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %drmp3_init_memory.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32256
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.d, align 8
  %i.i = call fastcc ptr @drmp3__full_read_and_close_f32(ptr noundef %5, ptr noundef %2, ptr noundef %3)
  br label %drmp3_init_memory.exit.thread

drmp3_init_memory.exit.thread:                    ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_memory_and_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.drmp3, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %5, i8 0, i64 32376, i1 false)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %drmp3_init_memory.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32352
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32360 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = call fastcc i32 @drmp3_init_internal(ptr noundef nonnull %5, ptr noundef nonnull @drmp3__on_read_memory, ptr noundef nonnull @drmp3__on_seek_memory, ptr noundef nonnull @drmp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef readonly %4)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %drmp3_init_memory.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32256
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.d, align 8
  %i.i = call fastcc ptr @drmp3__full_read_and_close_s16(ptr noundef %5, ptr noundef %2, ptr noundef %3)
  br label %drmp3_init_memory.exit.thread

drmp3_init_memory.exit.thread:                    ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_file_and_read_pcm_frames_f32(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.drmp3, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %i.a = call i32 @drmp3_init_file(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @drmp3__full_read_and_close_f32(ptr noundef %4, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_file_and_read_pcm_frames_s16(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.drmp3, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %i.a = call i32 @drmp3_init_file(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @drmp3__full_read_and_close_s16(ptr noundef %4, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_malloc(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call ptr %i.b(i64 noundef %0, ptr noundef %i.c) #61, !inline_history !1115
  br label %drmp3__malloc_from_callbacks.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.f, null
  br i1 %.not12.i, label %drmp3__malloc_from_callbacks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %1, align 8
  %i.h = tail call ptr %i.f(ptr noundef null, i64 noundef %0, ptr noundef %i.g) #61, !inline_history !1115
  br label %drmp3__malloc_from_callbacks.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef %0) #74
  br label %drmp3__malloc_from_callbacks.exit

drmp3__malloc_from_callbacks.exit:                ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ null, %bb.d ], [ %i.d, %bb.c ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @drmp3__malloc_default(i64 noundef %0, ptr nofree readnone captures(none) %1) #41 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #74
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @drmp3_free(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3__free_from_callbacks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %drmp3__free_from_callbacks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef %i.d) #61, !inline_history !13
  br label %drmp3__free_from_callbacks.exit

bb.e:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #61
  br label %drmp3__free_from_callbacks.exit

drmp3__free_from_callbacks.exit:                  ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @drmp3__free_default(ptr noundef captures(none) %0, ptr nofree readnone captures(none) %1) #43 {
bb.a:
  tail call void @free(ptr noundef %0) #61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @qoa_encode_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  store <4 x i8> <i8 113, i8 111, i8 97, i8 102>, ptr %1, align 1
  %i.c = lshr i32 %i.b, 24
  %i.d = trunc nuw i32 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.d, ptr %i.e, align 1
  %i.f = lshr i32 %i.b, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.g, ptr %i.h, align 1
  %i.i = lshr i32 %i.b, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.j, ptr %i.k, align 1
  %i.l = trunc i32 %i.b to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.l, ptr %i.m, align 1
  ret i32 8
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @qoa_encode_frame(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 4 uses
  %.sroa.0148 = alloca [4 x i32], align 4         ; 5 uses
  %.sroa.0 = alloca [4 x i32], align 4            ; 13 uses
  %i.b = load i32, ptr %1, align 4                ; 7 uses
  %i.c = add i32 %2, 19
  %i.d = udiv i32 %i.c, 20
  %i.e = shl i32 %i.b, 4
  %i.f = or disjoint i32 %i.e, 8
  %i.g = shl nuw nsw i32 %i.d, 3
  %i.h = mul i32 %i.g, %i.b
  %i.i = add i32 %i.f, %i.h                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.j = zext i32 %i.b to i64                     ; 3 uses
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = or i64 %i.o, %i.k                        ; 2 uses
  %i.q = zext i32 %2 to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = zext i32 %i.i to i64
  %i.t = or i64 %i.r, %i.s                        ; 3 uses
  %i.u = or i64 %i.p, %i.t                        ; 2 uses
  %i.v = lshr i64 %i.p, 56
  %i.w = trunc nuw i64 %i.v to i8
  store i8 %i.w, ptr %3, align 1
  %i.x = lshr i32 %i.m, 16
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.u, 40
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = lshr i64 %i.u, 32
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = lshr i64 %i.t, 24
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = lshr i64 %i.t, 16
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = lshr i32 %i.i, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = trunc i32 %i.i to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %i.ap, ptr %i.aq, align 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader166, label %.preheader167.lr.ph

.preheader167.lr.ph:                              ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.lr.ph, %.preheader167
  %indvars.iv = phi i64 [ 0, %.preheader167.lr.ph ], [ %indvars.iv.next, %.preheader167 ] ; 2 uses
  %.0158171 = phi i32 [ 8, %.preheader167.lr.ph ], [ %i.cp, %.preheader167 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.as, align 4
  %i.av = load i32, ptr %i.at, align 4
  %i.aw = shl i32 %i.au, 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = and i32 %i.ay, 65535
  %i.ba = or disjoint i32 %i.aw, %i.az
  %i.bb = zext i32 %i.ba to i64                   ; 3 uses
  %i.bc = shl i32 %i.av, 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 65535
  %i.bg = or disjoint i32 %i.bc, %i.bf
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = zext i32 %.0158171 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq ; 8 uses
  %i.bs = add i32 %.0158171, 8
  %i.bt = lshr i64 %i.bb, 24
  %i.bu = trunc nuw i64 %i.bt to i8
  store i8 %i.bu, ptr %i.br, align 1
  %i.bv = lshr i64 %i.bb, 16
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = lshr i64 %i.bb, 8
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = trunc i32 %i.ay to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = lshr i32 %i.bj, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = trunc i32 %i.bj to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 5
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = lshr i32 %i.bn, 8
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = trunc i32 %i.bn to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 7
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = zext i32 %i.bs to i64
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %i.cn ; 8 uses
  %i.cp = add i32 %.0158171, 16                   ; 3 uses
  %i.cq = lshr i64 %i.bh, 24
  %i.cr = trunc nuw i64 %i.cq to i8
  store i8 %i.cr, ptr %i.co, align 1
  %i.cs = lshr i64 %i.bh, 16
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = lshr i64 %i.bh, 8
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = trunc i32 %i.be to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 %i.cy, ptr %i.cz, align 1
  %i.da = lshr i32 %i.bl, 8
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = trunc i32 %i.bl to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = lshr i32 %i.bp, 8
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = trunc i32 %i.bp to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 7
  store i8 %i.di, ptr %i.dj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %.preheader166.thread, label %.preheader167

.preheader166:                                    ; preds = %bb.a
  %.not242 = icmp eq i32 %2, 0
  br i1 %.not242, label %._crit_edge214, label %.preheader

.preheader166.thread:                             ; preds = %.preheader167
  %.not242276 = icmp eq i32 %2, 0
  br i1 %.not242276, label %._crit_edge214, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader166.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %.sroa.0.4..sroa_idx289 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.12..sroa_idx290 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0105213.us = phi i32 [ %i.gp, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.1159212.us = phi i32 [ %i.gm, %._crit_edge.us ], [ %i.cp, %.preheader.us.preheader ]
  %i.dl = sub nuw i32 %2, %.0105213.us
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 20) ; 2 uses
  %i.dm = mul i32 %.0105213.us, %i.b
  %i.dn = add i32 %..i.us, %.0105213.us
  %i.do = mul i32 %i.dn, %i.b
  %i.dp = sub nsw i32 20, %..i.us
  %i.dq = mul nuw nsw i32 %i.dp, 3
  %i.dr = zext nneg i32 %i.dq to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %.split203.us233
  %indvars.iv259 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next260, %.split203.us233 ] ; 4 uses
  %.2160209.us = phi i32 [ %.1159212.us, %.preheader.us ], [ %i.gm, %.split203.us233 ] ; 2 uses
  %i.ds = trunc nuw i64 %indvars.iv259 to i32     ; 2 uses
  %i.dt = add i32 %i.dm, %i.ds                    ; 2 uses
  %i.du = add i32 %i.do, %i.ds                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0148)
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv259 ; 2 uses
  %i.dv = load i32, ptr %4, align 4               ; 2 uses
  %5 = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %indvars.iv259 ; 7 uses
  %.sroa.15.0..sroa_idx.us.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.sroa.15.0.copyload.us.a = load i32, ptr %.sroa.15.0..sroa_idx.us.a, align 4 ; 2 uses
  %.sroa.19.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.sroa.19.0.copyload.us = load i32, ptr %.sroa.19.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.23.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.sroa.23.0.copyload.us = load i32, ptr %.sroa.23.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.27.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %.sroa.27.0.copyload.us = load i32, ptr %.sroa.27.0..sroa_idx.us, align 4 ; 2 uses
  %i.dw = icmp slt i32 %i.dt, %i.du
  br i1 %i.dw, label %.lr.ph.us.us, label %.split203.us233.loopexit245

.split203.us233.loopexit245:                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.dx = and i32 %i.dv, 15                       ; 2 uses
  %i.dy = zext nneg i32 %i.dx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.split203.us233

.lr.ph.us.us:                                     ; preds = %bb.b, %bb.f
  %.097201.us.us = phi i32 [ %i.gi, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.098200.us.us = phi i32 [ %.199.us.us, %bb.f ], [ 0, %bb.b ]
  %.0100199.us.us = phi i64 [ %.1101.us.us, %bb.f ], [ 0, %bb.b ]
  %.0102198.us.us = phi i64 [ %.1103.us.us, %bb.f ], [ -1, %bb.b ] ; 3 uses
  %.sroa.4.0197.us.us = phi i32 [ %.sroa.4.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.5.0196.us.us = phi i32 [ %.sroa.5.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.6.0195.us.us = phi i32 [ %.sroa.6.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.7.0194.us.us = phi i32 [ %.sroa.7.1.us.us, %bb.f ], [ undef, %bb.b ]
  %6 = add nsw i32 %i.dv, %.097201.us.us
  %7 = and i32 %6, 15                             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.dz = zext nneg i32 %7 to i64                 ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @qoa_reciprocal_tab, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr @qoa_dequant_tab, i64 %i.dz
  %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us = load i32, ptr %.sroa.0.12..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.us.us
  %.0.i114193.us.us = phi i32 [ %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us, %.lr.ph.us.us ], [ %.0.i114.us.us, %bb.d ] ; 2 uses
  %.0179.us.us = phi i32 [ %i.dt, %.lr.ph.us.us ], [ %i.gf, %bb.d ] ; 2 uses
  %.094178.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.fo, %bb.d ]
  %.095177.us.us = phi i64 [ %i.dz, %.lr.ph.us.us ], [ %i.ge, %bb.d ] ; 2 uses
  %.sroa.15.0176.us.us = phi i32 [ %.sroa.15.0.copyload.us.a, %.lr.ph.us.us ], [ %i.ft, %bb.d ] ; 5 uses
  %.sroa.19.0175.us.us = phi i32 [ %.sroa.19.0.copyload.us, %.lr.ph.us.us ], [ %i.fw, %bb.d ] ; 5 uses
  %.sroa.23.0174.us.us = phi i32 [ %.sroa.23.0.copyload.us, %.lr.ph.us.us ], [ %i.fz, %bb.d ] ; 5 uses
  %.sroa.27.0173.us.us = phi i32 [ %.sroa.27.0.copyload.us, %.lr.ph.us.us ], [ %i.gc, %bb.d ] ; 5 uses
  %8 = sext i32 %.0179.us.us to i64
  %9 = getelementptr inbounds [2 x i8], ptr %0, i64 %8
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32                       ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us = load i32, ptr %.sroa.0, align 4 ; 2 uses
  %12 = mul nsw i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, %.sroa.15.0176.us.us
  %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us = load i32, ptr %.sroa.0.4..sroa_idx289, align 4 ; 2 uses
  %i.ed = mul nsw i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, %.sroa.19.0175.us.us
  %13 = add nsw i32 %i.ed, %12
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us = load i32, ptr %.sroa.0.8..sroa_idx, align 4 ; 2 uses
  %i.ee = mul nsw i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, %.sroa.23.0174.us.us
  %i.ef = add nsw i32 %13, %i.ee
  %14 = mul nsw i32 %.0.i114193.us.us, %.sroa.27.0173.us.us
  %i.eg = add nsw i32 %i.ef, %14
  %i.eh = ashr i32 %i.eg, 13                      ; 3 uses
  %i.ei = sub nsw i32 %11, %i.eh
  %i.ej = mul nsw i32 %i.ei, %i.eb
  %i.ek = add nsw i32 %i.ej, 32768
  %i.el = ashr i32 %i.ek, 16                      ; 2 uses
  %i.em = tail call i32 @llvm.scmp.i32.i32(i32 %11, i32 %i.eh)
  %i.en = add nsw i32 %i.el, %i.em
  %i.eo = tail call i32 @llvm.scmp.i32.i32(i32 0, i32 %i.el)
  %i.ep = add nsw i32 %i.en, %i.eo
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 -8)
  %.0.i.us.us = tail call i32 @llvm.smin.i32(i32 %i.eq, i32 8)
  %i.er = sext i32 %.0.i.us.us to i64
  %i.es = getelementptr [4 x i8], ptr @qoa_quant_tab, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 32
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = add nsw i32 %i.eh, %i.ex
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 -32768)
  %.0.i114.us.us = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.ez, i32 32767) ; 3 uses
  %i.fa = mul nsw i32 %.sroa.15.0176.us.us, %.sroa.15.0176.us.us
  %i.fb = mul nsw i32 %.sroa.19.0175.us.us, %.sroa.19.0175.us.us
  %i.fc = mul nsw i32 %.sroa.23.0174.us.us, %.sroa.23.0174.us.us
  %i.fd = mul nsw i32 %.sroa.27.0173.us.us, %.sroa.27.0173.us.us
  %i.fe = add nuw nsw i32 %i.fc, %i.fd
  %i.ff = add nuw nsw i32 %i.fe, %i.fb
  %i.fg = add nuw nsw i32 %i.ff, %i.fa
  %i.fh = lshr i32 %i.fg, 18
  %spec.store.select.us.us = tail call i32 @llvm.usub.sat.i32(i32 %i.fh, i32 2303) ; 2 uses
  %i.fi = sub nsw i32 %11, %.0.i114.us.us
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = mul nsw i64 %i.fj, %i.fj
  %i.fl = mul nuw nsw i32 %spec.store.select.us.us, %spec.store.select.us.us
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = add i64 %.094178.us.us, %i.fm
  %i.fo = add i64 %i.fn, %i.fk                    ; 4 uses
  %.not.us.us = icmp ugt i64 %i.fo, %.0102198.us.us
  br i1 %.not.us.us, label %.thread.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fp = ashr i32 %i.ex, 4                       ; 5 uses
  %i.fq = sub nsw i32 0, %i.fp                    ; 4 uses
  %i.fr = icmp slt i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, 0
  %i.fs = select i1 %i.fr, i32 %i.fq, i32 %i.fp
  %i.ft = add nsw i32 %i.fs, %.sroa.15.0176.us.us ; 2 uses
  %i.fu = icmp slt i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, 0
  %i.fv = select i1 %i.fu, i32 %i.fq, i32 %i.fp
  %i.fw = add nsw i32 %i.fv, %.sroa.19.0175.us.us ; 2 uses
  %i.fx = icmp slt i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, 0
  %i.fy = select i1 %i.fx, i32 %i.fq, i32 %i.fp
  %i.fz = add nsw i32 %i.fy, %.sroa.23.0174.us.us ; 2 uses
  %i.ga = icmp slt i32 %.0.i114193.us.us, 0
  %i.gb = select i1 %i.ga, i32 %i.fq, i32 %i.fp
  %i.gc = add nsw i32 %i.gb, %.sroa.27.0173.us.us ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx, i64 12, i1 false)
  store i32 %.0.i114.us.us, ptr %.sroa.0.12..sroa_idx290, align 4
  %i.gd = shl i64 %.095177.us.us, 3
  %i.ge = or i64 %i.gd, %i.ev                     ; 2 uses
  %i.gf = add i32 %.0179.us.us, %i.b              ; 2 uses
  %i.gg = icmp slt i32 %i.gf, %i.du
  br i1 %i.gg, label %bb.c, label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.c, %bb.d
  %.sroa.27.0.lcssa.us.us.a = phi i32 [ %i.gc, %bb.d ], [ %.sroa.27.0173.us.us, %bb.c ]
  %.sroa.23.0.lcssa.us.us.a = phi i32 [ %i.fz, %bb.d ], [ %.sroa.23.0174.us.us, %bb.c ]
  %.sroa.19.0.lcssa.us.us.a = phi i32 [ %i.fw, %bb.d ], [ %.sroa.19.0175.us.us, %bb.c ]
  %.sroa.15.0.lcssa.us.us = phi i32 [ %i.ft, %bb.d ], [ %.sroa.15.0176.us.us, %bb.c ]
  %.095.lcssa.us.us = phi i64 [ %i.ge, %bb.d ], [ %.095177.us.us, %bb.c ]
  %i.gh = icmp ult i64 %i.fo, %.0102198.us.us
  br i1 %i.gh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.us.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.us.us
  %.sroa.7.1.us.us = phi i32 [ %.sroa.27.0.lcssa.us.us.a, %bb.e ], [ %.sroa.7.0194.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.6.1.us.us = phi i32 [ %.sroa.23.0.lcssa.us.us.a, %bb.e ], [ %.sroa.6.0195.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.5.1.us.us = phi i32 [ %.sroa.19.0.lcssa.us.us.a, %bb.e ], [ %.sroa.5.0196.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.4.1.us.us = phi i32 [ %.sroa.15.0.lcssa.us.us, %bb.e ], [ %.sroa.4.0197.us.us, %.thread.us.us ] ; 2 uses
  %.1103.us.us = phi i64 [ %i.fo, %bb.e ], [ %.0102198.us.us, %.thread.us.us ]
  %.1101.us.us = phi i64 [ %.095.lcssa.us.us, %bb.e ], [ %.0100199.us.us, %.thread.us.us ] ; 2 uses
  %.199.us.us = phi i32 [ %7, %bb.e ], [ %.098200.us.us, %.thread.us.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.gi = add nuw nsw i32 %.097201.us.us, 1       ; 2 uses
  %exitcond258.not = icmp eq i32 %i.gi, 16
  br i1 %exitcond258.not, label %.split203.us233, label %.lr.ph.us.us

.split203.us233:                                  ; preds = %bb.f, %.split203.us233.loopexit245
  %.us-phi.us.a = phi i32 [ %.sroa.27.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.7.1.us.us, %bb.f ]
  %.us-phi204.us = phi i32 [ %.sroa.23.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.6.1.us.us, %bb.f ]
  %.us-phi205.us = phi i32 [ %.sroa.19.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.5.1.us.us, %bb.f ]
  %.us-phi206.us = phi i32 [ %.sroa.15.0.copyload.us.a, %.split203.us233.loopexit245 ], [ %.sroa.4.1.us.us, %bb.f ]
  %.us-phi207.us = phi i64 [ %i.dy, %.split203.us233.loopexit245 ], [ %.1101.us.us, %bb.f ]
  %.us-phi208.us = phi i32 [ %i.dx, %.split203.us233.loopexit245 ], [ %.199.us.us, %bb.f ]
  store i32 %.us-phi208.us, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, i64 16, i1 false)
  store i32 %.us-phi206.us, ptr %.sroa.15.0..sroa_idx.us.a, align 4
  store i32 %.us-phi205.us, ptr %.sroa.19.0..sroa_idx.us, align 4
  store i32 %.us-phi204.us, ptr %.sroa.23.0..sroa_idx.us, align 4
  store i32 %.us-phi.us.a, ptr %.sroa.27.0..sroa_idx.us, align 4
  %i.gj = shl i64 %.us-phi207.us, %i.dr
  %i.gk = zext i32 %.2160209.us to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 %i.gk
  %i.gm = add i32 %.2160209.us, 8                 ; 3 uses
  %i.gn = bitcast i64 %i.gj to <8 x i8>
  %i.go = shufflevector <8 x i8> %i.gn, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.go, ptr %i.gl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0148)
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %i.j
  br i1 %exitcond263.not, label %._crit_edge.us, label %bb.b

._crit_edge.us:                                   ; preds = %.split203.us233
  %i.gp = add i32 %.0105213.us, 20                ; 2 uses
  %i.gq = icmp ult i32 %i.gp, %2
  br i1 %i.gq, label %.preheader.us, label %._crit_edge214

.preheader:                                       ; preds = %.preheader166, %.preheader
  %.0105213 = phi i32 [ %i.gr, %.preheader ], [ 0, %.preheader166 ]
  %i.gr = add i32 %.0105213, 20                   ; 2 uses
  %i.gs = icmp ult i32 %i.gr, %2
  br i1 %i.gs, label %.preheader, label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge.us, %.preheader, %.preheader166.thread, %.preheader166
  %.1159.lcssa = phi i32 [ 8, %.preheader166 ], [ %i.cp, %.preheader166.thread ], [ 8, %.preheader ], [ %i.gm, %._crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.1159.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoa_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #49 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -16777216
  %or.cond = icmp ult i32 %i.f, -16777215
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = add i32 %i.g, -9
  %or.cond58 = icmp ult i32 %i.h, -8
  br i1 %or.cond58, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.b, 5119
  %i.j = udiv i32 %i.i, 5120                      ; 2 uses
  %i.k = add i32 %i.b, 19
  %i.l = udiv i32 %i.k, 20
  %i.m = shl nuw nsw i32 %i.j, 3
  %i.n = shl nuw nsw i32 %i.j, 4
  %i.o = shl nuw nsw i32 %i.l, 3
  %reass.add = add nuw nsw i32 %i.o, %i.n
  %reass.mul = mul i32 %reass.add, %i.g
  %i.p = add nuw nsw i32 %i.m, 8
  %i.q = add i32 %i.p, %reass.mul
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #74 ; 7 uses
  %i.t = load i32, ptr %1, align 4                ; 3 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %wide.trip.count = zext i32 %i.t to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = icmp ult i32 %i.t, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.epil ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.x, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !1116

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %bb.d
  %i.y = load i32, ptr %i.a, align 4              ; 6 uses
  store <4 x i8> <i8 113, i8 111, i8 97, i8 102>, ptr %i.s, align 1
  %i.z = lshr i32 %i.y, 24
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i32 %i.y, 16
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = lshr i32 %i.y, 8
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = trunc i32 %i.y to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store i8 %i.ai, ptr %i.aj, align 1
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.al, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.ao, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.ar, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.au, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.f

._crit_edge65:                                    ; preds = %.lr.ph64, %._crit_edge
  %.051.lcssa = phi i32 [ 8, %._crit_edge ], [ %i.be, %.lr.ph64 ]
  store i32 %.051.lcssa, ptr %2, align 4
  br label %bb.g

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %i.av = phi i32 [ %i.bg, %.lr.ph64 ], [ %i.y, %._crit_edge ]
  %.05062 = phi i32 [ %i.bf, %.lr.ph64 ], [ 0, %._crit_edge ] ; 3 uses
  %.05161 = phi i32 [ %i.be, %.lr.ph64 ], [ 8, %._crit_edge ] ; 2 uses
  %i.aw = sub nuw i32 %i.av, %.05062
  %..i = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 5120) ; 2 uses
  %i.ax = load i32, ptr %1, align 4
  %i.ay = mul i32 %i.ax, %.05062
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.az
  %i.bb = zext i32 %.05161 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bb
  %i.bd = tail call i32 @qoa_encode_frame(ptr noundef %i.ba, ptr noundef nonnull %1, i32 noundef %..i, ptr noundef nonnull %i.bc)
  %i.be = add i32 %i.bd, %.05161                  ; 2 uses
  %i.bf = add i32 %..i, %.05062                   ; 2 uses
  %i.bg = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph64, label %._crit_edge65

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge65
  %.0 = phi ptr [ %i.s, %._crit_edge65 ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @qoa_max_frame_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = shl i32 %i.a, 4
  %i.c = or disjoint i32 %i.b, 8
  %i.d = shl i32 %i.a, 11
  %i.e = add i32 %i.c, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 0, 9) i32 @qoa_decode_header(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw i64 %i.c, 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 48
  %i.i = or disjoint i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 40
end_hunk_2
