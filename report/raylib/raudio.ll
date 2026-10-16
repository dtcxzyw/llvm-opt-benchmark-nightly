Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
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
end_hunk_0
begin_hunk_1_@ma_spatializer_set_doppler_factor:bb.a
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @ma_spatializer_set_directional_attenuation_factor(ptr nofree noundef captures(address) %0, float noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = bitcast float %1 to i32
  %i.d = atomicrmw volatile xchg ptr %i.b, i32 %i.c seq_cst, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ma_spatializer_set_position(ptr nofree noundef captures(address) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %1, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %2, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_set.exit:                         ; preds = %.loopexit.i.i, %bb.b
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %3, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_set.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ma_spatializer_set_velocity(ptr nofree noundef captures(address) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %1, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %2, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_set.exit:                         ; preds = %.loopexit.i.i, %bb.b
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %3, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_set.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_linear_resampler_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_linear_resampler_config) align 8 captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 1.000000e+00, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_linear_resampler_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_linear_resampler_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_linear_resampler_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.c, label %ma_linear_resampler_get_heap_layout.exit.thread [
    i32 5, label %bb.d
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_linear_resampler_get_heap_layout.exit.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d
  %i.g = icmp eq i32 %i.c, 5
  %i.h = zext i32 %i.e to i64                     ; 3 uses
  %..i = select i1 %i.g, i64 2, i64 1
  %i.i = shl nuw nsw i64 %i.h, %..i
  %storemerge35.i = shl nuw nsw i64 %i.i, 1
  %i.j = add nuw nsw i64 %storemerge35.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 8) ; 2 uses
  %i.n = and i32 %i.m, 1
  %i.o = lshr i32 %i.m, 1                         ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0
  %i.p = shl nuw nsw i64 %i.h, 2
  %i.q = add nuw nsw i64 %i.p, 4
  %i.r = and i64 %i.q, 34359738360
  %i.s = add nuw nsw i64 %i.r, 40
  %i.t = select i1 %.not.i.i.i, i64 0, i64 %i.s   ; 2 uses
  %.not78.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not78.i.i.i, label %bb.e, label %.lr.ph76.i.i.preheader.i

.lr.ph76.i.i.preheader.i:                         ; preds = %._crit_edge.i.i.i
  %i.u = shl nuw nsw i64 %i.h, 3
  %i.v = add nuw nsw i64 %i.u, 64                 ; 2 uses
  %i.w = add nsw i32 %i.o, -1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.v, %i.x
  %i.z = add nuw nsw i64 %i.v, %i.t
  %i.aa = add nuw nsw i64 %i.z, %i.y
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph76.i.i.preheader.i, %._crit_edge.i.i.i
  %i.ab = phi i64 [ %i.t, %._crit_edge.i.i.i ], [ %i.aa, %.lr.ph76.i.i.preheader.i ]
  %i.ac = add nuw nsw i64 %i.ab, 7
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nuw nsw i64 %i.j, %i.ad
  %i.af = and i64 %i.ae, -8
  store i64 %i.af, ptr %1, align 8
  br label %ma_linear_resampler_get_heap_layout.exit.thread

ma_linear_resampler_get_heap_layout.exit.thread:  ; preds = %bb.c, %bb.b, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -2, %bb.a ], [ -2, %bb.d ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -3, 1) i32 @ma_linear_resampler_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #32 {
bb.a:
  %3 = alloca %struct.ma_lpf_config, align 8      ; 10 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_linear_resampler_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit32

ma_zero_memory_default.exit32:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %2, i8 0, i64 136, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_linear_resampler_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit32
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.c, label %ma_linear_resampler_get_heap_layout.exit.thread [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_linear_resampler_get_heap_layout.exit.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c
  %i.g = icmp eq i32 %i.c, 5
  %i.h = zext i32 %i.e to i64                     ; 3 uses
  %..i = select i1 %i.g, i64 2, i64 1
  %i.i = shl nuw nsw i64 %i.h, %..i               ; 2 uses
  %storemerge35.i = shl nuw nsw i64 %i.i, 1
  %i.j = add nuw nsw i64 %storemerge35.i, 6       ; 2 uses
  %i.k = and i64 %i.j, 137438953464
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 8) ; 2 uses
  %i.o = and i32 %i.n, 1
  %i.p = lshr i32 %i.n, 1                         ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  %i.q = shl nuw nsw i64 %i.h, 2
  %i.r = add nuw nsw i64 %i.q, 4
  %i.s = and i64 %i.r, 34359738360
  %i.t = add nuw nsw i64 %i.s, 40
  %i.u = select i1 %.not.i.i.i, i64 0, i64 %i.t   ; 2 uses
  %.not78.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not78.i.i.i, label %bb.d, label %.lr.ph76.i.i.preheader.i

.lr.ph76.i.i.preheader.i:                         ; preds = %._crit_edge.i.i.i
  %i.v = shl nuw nsw i64 %i.h, 3
  %i.w = add nuw nsw i64 %i.v, 64                 ; 2 uses
  %i.x = add nsw i32 %i.p, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = mul nuw nsw i64 %i.w, %i.y
  %i.aa = add nuw nsw i64 %i.w, %i.u
  %i.ab = add nuw nsw i64 %i.aa, %i.z
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph76.i.i.preheader.i, %._crit_edge.i.i.i
  %i.ac = phi i64 [ %i.u, %._crit_edge.i.i.i ], [ %i.ab, %.lr.ph76.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %1, ptr %i.ad, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %4 = add nuw nsw i64 %i.ac, 7
  %5 = and i64 %4, -8
  %6 = add nuw nsw i64 %5, %i.j
  %7 = and i64 %6, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %7, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.e, %bb.d
  %.sink = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.sink, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  %8 = icmp eq i32 %i.ah, 0
  %.not30 = icmp eq i32 %i.aj, 0
  %or.cond.i33 = or i1 %8, %.not30
  br i1 %or.cond.i33, label %ma_linear_resampler_set_rate_internal.exit.thread, label %9

9:                                                ; preds = %ma_zero_memory_default.exit
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %11

11:                                               ; preds = %11, %9
  %.0.i58.i = phi i32 [ %i.ah, %9 ], [ %.06.i57.i, %11 ]
  %.06.i57.i = phi i32 [ %i.aj, %9 ], [ %12, %11 ] ; 4 uses
  %12 = urem i32 %.0.i58.i, %.06.i57.i            ; 2 uses
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %ma_gcf_u32.exit.i, label %11

ma_gcf_u32.exit.i:                                ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %15 = udiv i32 %i.ah, %.06.i57.i                ; 3 uses
  store i32 %15, ptr %14, align 8
  %16 = udiv i32 %i.aj, %.06.i57.i                ; 3 uses
  store i32 %16, ptr %10, align 4
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %18 = load i32, ptr %17, align 8                ; 2 uses
  %19 = icmp ugt i32 %18, 8
  br i1 %19, label %ma_linear_resampler_set_rate_internal.exit.thread, label %20

20:                                               ; preds = %ma_gcf_u32.exit.i
  %..i34 = tail call i32 @llvm.umax.i32(i32 %15, i32 %16)
  %21 = tail call i32 @llvm.umin.i32(i32 %15, i32 %16)
  %22 = uitofp i32 %21 to double
  %23 = fmul nnan double %22, 5.000000e-01
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %25 = load double, ptr %24, align 8
  %26 = fmul double %23, %25
  %27 = load <2 x i32>, ptr %2, align 8
  store <2 x i32> %27, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %..i34, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %26, ptr %.sroa.756.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %18, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 4
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %29, i8 0, i64 56, i1 false)
  %30 = call fastcc i32 @ma_lpf_reinit__internal(ptr noundef nonnull readonly %3, ptr noundef %28, ptr noundef nonnull %29, i32 noundef 1) ; 2 uses
  %.not54.i = icmp eq i32 %30, 0
  br i1 %.not54.i, label %bb.f, label %ma_linear_resampler_set_rate_internal.exit.thread

ma_linear_resampler_set_rate_internal.exit.thread: ; preds = %20, %ma_zero_memory_default.exit, %ma_gcf_u32.exit.i
  %.046.i.ph = phi i32 [ -2, %ma_gcf_u32.exit.i ], [ -2, %ma_zero_memory_default.exit ], [ %30, %20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  br label %ma_linear_resampler_get_heap_layout.exit.thread

bb.f:                                             ; preds = %20
  %31 = load i32, ptr %14, align 8                ; 2 uses
  %32 = load i32, ptr %10, align 4                ; 2 uses
  %33 = udiv i32 %31, %32
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %33, ptr %34, align 8
  %35 = urem i32 %31, %32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %35, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 44
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  store i32 1, ptr %36, align 8
  store i32 0, ptr %i.al, align 4
  br label %ma_linear_resampler_get_heap_layout.exit.thread

ma_linear_resampler_get_heap_layout.exit.thread:  ; preds = %bb.b, %ma_zero_memory_default.exit32, %bb.c, %ma_linear_resampler_set_rate_internal.exit.thread, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -2, %bb.a ], [ %.046.i.ph, %ma_linear_resampler_set_rate_internal.exit.thread ], [ -2, %bb.c ], [ -2, %ma_zero_memory_default.exit32 ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_linear_resampler_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.b, label %ma_free.exit [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_free.exit, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %i.f = icmp eq i32 %i.b, 5
  %i.g = zext i32 %i.d to i64                     ; 3 uses
  %..i.i = select i1 %i.f, i64 2, i64 1
  %i.h = shl nuw nsw i64 %i.g, %..i.i
  %storemerge35.i.i = shl nuw nsw i64 %i.h, 1
  %i.i = add nuw nsw i64 %storemerge35.i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.k, i32 8) ; 2 uses
  %i.m = and i32 %i.l, 1
  %i.n = lshr i32 %i.l, 1                         ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  %i.o = shl nuw nsw i64 %i.g, 2
  %i.p = add nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 34359738360
  %i.r = add nuw nsw i64 %i.q, 40
  %i.s = select i1 %.not.i.i.i.i, i64 0, i64 %i.r ; 2 uses
  %.not78.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not78.i.i.i.i, label %bb.d, label %.lr.ph76.i.i.preheader.i.i

.lr.ph76.i.i.preheader.i.i:                       ; preds = %._crit_edge.i.i.i.i
  %i.t = shl nuw nsw i64 %i.g, 3
  %i.u = add nuw nsw i64 %i.t, 64                 ; 2 uses
  %i.v = add nsw i32 %i.n, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.u, %i.w
  %i.y = add nuw nsw i64 %i.s, %i.u
  %i.z = add nuw nsw i64 %i.y, %i.x
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph76.i.i.preheader.i.i, %._crit_edge.i.i.i.i
  %i.aa = phi i64 [ %i.s, %._crit_edge.i.i.i.i ], [ %i.z, %.lr.ph76.i.i.preheader.i.i ]
  %i.ab = add nuw nsw i64 %i.aa, 7
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nuw nsw i64 %i.i, %i.ac
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.ag, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = tail call ptr %i.ag(i64 noundef %i.ae, ptr noundef %i.ah) #61, !inline_history !29
  br label %ma_malloc.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = tail call noalias noundef ptr @malloc(i64 noundef %i.ae) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.f, %bb.g
  %.0.i20 = phi ptr [ %i.ai, %bb.f ], [ %i.aj, %bb.g ] ; 4 uses
  %i.ak = icmp eq ptr %.0.i20, null
  br i1 %i.ak, label %ma_free.exit, label %bb.h

bb.h:                                             ; preds = %ma_malloc.exit
  %i.al = tail call i32 @ma_linear_resampler_init_preallocated(ptr noundef nonnull %0, ptr noundef nonnull %.0.i20, ptr noundef %2) ; 4 uses
  %.not19 = icmp eq i32 %i.al, 0
  br i1 %.not19, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.an, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %1, align 8
  tail call void %i.an(ptr noundef nonnull %.0.i20, ptr noundef %i.ao) #61, !inline_history !30
  br label %ma_free.exit

bb.l:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %.0.i20) #61
  br label %ma_free.exit

bb.m:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 1, ptr %i.ap, align 8
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.e, %bb.a, %bb.c, %bb.b, %bb.l, %bb.k, %bb.j, %ma_malloc.exit, %bb.m
  %.013 = phi i32 [ 0, %bb.m ], [ %i.al, %bb.k ], [ -2, %bb.a ], [ -4, %ma_malloc.exit ], [ -4, %bb.e ], [ %i.al, %bb.l ], [ %i.al, %bb.j ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define hidden void @ma_linear_resampler_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @ma_lpf_uninit(ptr noundef nonnull %i.b, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8
  tail call void %i.i(ptr noundef nonnull %i.f, ptr noundef %i.j) #61, !inline_history !30
  br label %ma_free.exit

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #61
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -2, 1) i32 @ma_linear_resampler_process_pcm_frames(ptr nofree noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #40 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8
  switch i32 %i.b, label %bb.am [
    i32 2, label %bb.c
    i32 5, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp ugt i32 %i.d, %i.f
  %i.h = load i64, ptr %2, align 8                ; 4 uses
  %i.i = load i64, ptr %4, align 8                ; 5 uses
  %.not106.i.i = icmp eq i64 %i.i, 0              ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  br i1 %.not106.i.i, label %.sink.split, label %.preheader75.lr.ph.i.i

.preheader75.lr.ph.i.i:                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre.i.i = load i32, ptr %i.j, align 8
  br label %.preheader75.i.i

.preheader75.i.i:                                 ; preds = %bb.l, %.preheader75.lr.ph.i.i
  %i.u = phi i32 [ %.pre.i.i, %.preheader75.lr.ph.i.i ], [ %i.gt, %bb.l ] ; 2 uses
  %.05899.i.i = phi i64 [ 0, %.preheader75.lr.ph.i.i ], [ %i.gm, %bb.l ] ; 2 uses
end_hunk_1
begin_hunk_2_@ma_linear_resampler_process_pcm_frames:bb.a
  br i1 %.not69.i24.i34, label %ma_lpf_process_pcm_frame_f32.exit.i32.i, label %.preheader75.i25.i35

.preheader75.i25.i35:                             ; preds = %ma_linear_resampler_interpolate_frame_f32.exit.i23.i
  %i.yd = load i32, ptr %i.vi, align 4
  %.not110.i26.i36 = icmp eq i32 %i.yd, 0
  br i1 %.not110.i26.i36, label %.preheader74.i30.i44, label %.lr.ph92.i.i37

.preheader74.i30.i44:                             ; preds = %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i, %.preheader75.i25.i35
  %i.ye = load i32, ptr %i.vk, align 8
  %.not111.i.i45 = icmp eq i32 %i.ye, 0
  br i1 %.not111.i.i45, label %ma_lpf_process_pcm_frame_f32.exit.i32.i, label %.lr.ph95.i.i46

.lr.ph92.i.i37:                                   ; preds = %.preheader75.i25.i35, %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i
  %indvars.iv122.i.i38 = phi i64 [ %indvars.iv.next123.i.i43, %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i ], [ 0, %.preheader75.i25.i35 ] ; 2 uses
  %i.yf = load ptr, ptr %i.vj, align 8
  %i.yg = getelementptr inbounds nuw [40 x i8], ptr %i.yf, i64 %indvars.iv122.i.i38 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 4
  %i.yi = load i32, ptr %i.yh, align 4            ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yk = load float, ptr %i.yj, align 8          ; 4 uses
  %i.yl = fsub float 1.000000e+00, %i.yk          ; 3 uses
  %i.ym = icmp ne i32 %i.yi, 0
  tail call void @llvm.assume(i1 %i.ym)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yg, i64 16 ; 6 uses
  %wide.trip.count.i27.i39 = zext i32 %i.yi to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i27.i39, 1
  %i.yo = icmp eq i32 %i.yi, 1
  br i1 %i.yo, label %.epil.preheader, label %.lr.ph92.i.i37.new

.lr.ph92.i.i37.new:                               ; preds = %.lr.ph92.i.i37
  %unroll_iter = and i64 %wide.trip.count.i27.i39, 4294967294
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph92.i.i37.new
  %indvars.iv119.i.i40 = phi i64 [ 0, %.lr.ph92.i.i37.new ], [ %indvars.iv.next120.i.i41.1, %bb.ah ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph92.i.i37.new ], [ %niter.next.1, %bb.ah ]
  %i.yp = load ptr, ptr %i.yn, align 8
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %indvars.iv119.i.i40
  %i.yr = load float, ptr %i.yq, align 4
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %.06197.i13.i21, i64 %indvars.iv119.i.i40 ; 2 uses
  %i.yt = load float, ptr %i.ys, align 4
  %i.yu = fmul float %i.yk, %i.yr
  %i.yv = tail call float @llvm.fmuladd.f32(float %i.yl, float %i.yt, float %i.yu) ; 2 uses
  store float %i.yv, ptr %i.ys, align 4
  %i.yw = load ptr, ptr %i.yn, align 8
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv119.i.i40
  store float %i.yv, ptr %i.yx, align 4
  %indvars.iv.next120.i.i41 = or disjoint i64 %indvars.iv119.i.i40, 1 ; 3 uses
  %i.yy = load ptr, ptr %i.yn, align 8
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv.next120.i.i41
  %i.za = load float, ptr %i.yz, align 4
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.06197.i13.i21, i64 %indvars.iv.next120.i.i41 ; 2 uses
  %i.zc = load float, ptr %i.zb, align 4
  %i.zd = fmul float %i.yk, %i.za
  %i.ze = tail call float @llvm.fmuladd.f32(float %i.yl, float %i.zc, float %i.zd) ; 2 uses
  store float %i.ze, ptr %i.zb, align 4
  %i.zf = load ptr, ptr %i.yn, align 8
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %indvars.iv.next120.i.i41
  store float %i.ze, ptr %i.zg, align 4
  %indvars.iv.next120.i.i41.1 = add nuw nsw i64 %indvars.iv119.i.i40, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i.unr-lcssa, label %bb.ah

ma_lpf1_process_pcm_frame_f32.exit.i.i29.i.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i.unr-lcssa, %.lr.ph92.i.i37
  %indvars.iv119.i.i40.epil.init = phi i64 [ 0, %.lr.ph92.i.i37 ], [ %indvars.iv.next120.i.i41.1, %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i.unr-lcssa ] ; 3 uses
  %lcmp.mod339 = trunc i32 %i.yi to i1
  tail call void @llvm.assume(i1 %lcmp.mod339)
  %i.zh = load ptr, ptr %i.yn, align 8
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv119.i.i40.epil.init
  %i.zj = load float, ptr %i.zi, align 4
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.06197.i13.i21, i64 %indvars.iv119.i.i40.epil.init ; 2 uses
  %i.zl = load float, ptr %i.zk, align 4
  %i.zm = fmul float %i.yk, %i.zj
  %i.zn = tail call float @llvm.fmuladd.f32(float %i.yl, float %i.zl, float %i.zm) ; 2 uses
  store float %i.zn, ptr %i.zk, align 4
  %i.zo = load ptr, ptr %i.yn, align 8
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %indvars.iv119.i.i40.epil.init
  store float %i.zn, ptr %i.zp, align 4
  br label %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i

ma_lpf1_process_pcm_frame_f32.exit.i.i29.i:       ; preds = %ma_lpf1_process_pcm_frame_f32.exit.i.i29.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next123.i.i43 = add nuw nsw i64 %indvars.iv122.i.i38, 1 ; 2 uses
  %i.zq = load i32, ptr %i.vi, align 4
  %i.zr = zext i32 %i.zq to i64
  %i.zs = icmp samesign ult i64 %indvars.iv.next123.i.i43, %i.zr
  br i1 %i.zs, label %.lr.ph92.i.i37, label %.preheader74.i30.i44

.lr.ph95.i.i46:                                   ; preds = %.preheader74.i30.i44, %ma_biquad_process_pcm_frame_f32.exit.i31.i
  %indvars.iv130.i.i47 = phi i64 [ %indvars.iv.next131.i.i52, %ma_biquad_process_pcm_frame_f32.exit.i31.i ], [ 0, %.preheader74.i30.i44 ] ; 2 uses
  %i.zt = load ptr, ptr %i.vl, align 8
  %i.zu = getelementptr inbounds nuw [64 x i8], ptr %i.zt, i64 %indvars.iv130.i.i47 ; 6 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %i.zw = load i32, ptr %i.zv, align 4            ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zy = load float, ptr %i.zx, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 12
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zu, i64 20
  %i.aab = load <2 x float>, ptr %i.zz, align 4
  %i.aac = load <2 x float>, ptr %i.aaa, align 4
  %i.aad = icmp ne i32 %i.zw, 0
  tail call void @llvm.assume(i1 %i.aad)
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zu, i64 32 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zu, i64 40 ; 2 uses
  %wide.trip.count128.i.i48 = zext i32 %i.zw to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph95.i.i46
  %indvars.iv125.i.i49 = phi i64 [ 0, %.lr.ph95.i.i46 ], [ %indvars.iv.next126.i.i50, %bb.ai ] ; 6 uses
  %i.aag = load ptr, ptr %i.aae, align 8
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv125.i.i49
  %i.aai = load float, ptr %i.aah, align 4
  %i.aaj = load ptr, ptr %i.aaf, align 8
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv125.i.i49
  %i.aal = load float, ptr %i.aak, align 4
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.06197.i13.i21, i64 %indvars.iv125.i.i49 ; 2 uses
  %i.aan = load float, ptr %i.aam, align 4        ; 2 uses
  %i.aao = tail call float @llvm.fmuladd.f32(float %i.zy, float %i.aan, float %i.aai) ; 2 uses
  %i.aap = fneg float %i.aao
  %i.aaq = insertelement <2 x float> poison, float %i.aap, i64 0
  %i.aar = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aas = fmul <2 x float> %i.aac, %i.aar
  %i.aat = insertelement <2 x float> poison, float %i.aan, i64 0
  %i.aau = shufflevector <2 x float> %i.aat, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aav = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aab, <2 x float> %i.aau, <2 x float> %i.aas) ; 2 uses
  %i.aaw = extractelement <2 x float> %i.aav, i64 0
  %i.aax = fadd float %i.aal, %i.aaw
  store float %i.aao, ptr %i.aam, align 4
  %i.aay = load ptr, ptr %i.aae, align 8
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv125.i.i49
  store float %i.aax, ptr %i.aaz, align 4
  %i.aba = load ptr, ptr %i.aaf, align 8
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %indvars.iv125.i.i49
  %i.abc = extractelement <2 x float> %i.aav, i64 1
  store float %i.abc, ptr %i.abb, align 4
  %indvars.iv.next126.i.i50 = add nuw nsw i64 %indvars.iv125.i.i49, 1 ; 2 uses
  %exitcond129.not.i.i51 = icmp eq i64 %indvars.iv.next126.i.i50, %wide.trip.count128.i.i48
  br i1 %exitcond129.not.i.i51, label %ma_biquad_process_pcm_frame_f32.exit.i31.i, label %bb.ai

ma_biquad_process_pcm_frame_f32.exit.i31.i:       ; preds = %bb.ai
  %indvars.iv.next131.i.i52 = add nuw nsw i64 %indvars.iv130.i.i47, 1 ; 2 uses
  %i.abd = load i32, ptr %i.vk, align 8
  %i.abe = zext i32 %i.abd to i64
  %i.abf = icmp samesign ult i64 %indvars.iv.next131.i.i52, %i.abe
  br i1 %i.abf, label %.lr.ph95.i.i46, label %ma_lpf_process_pcm_frame_f32.exit.i32.i

ma_lpf_process_pcm_frame_f32.exit.i32.i:          ; preds = %ma_biquad_process_pcm_frame_f32.exit.i31.i, %.preheader74.i30.i44, %ma_linear_resampler_interpolate_frame_f32.exit.i23.i
  %i.abg = load i32, ptr %i.ve, align 4
  %i.abh = zext i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.06197.i13.i21, i64 %i.abh
  %.pre134.i33.i53 = load i32, ptr %i.vd, align 8
  %.pre135.i34.i54 = load i32, ptr %i.vh, align 4
  %.pre137.i35.i55 = load i32, ptr %i.oi, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %ma_lpf_process_pcm_frame_f32.exit.i32.i, %bb.af
  %i.abj = phi i32 [ %.pre137.i35.i55, %ma_lpf_process_pcm_frame_f32.exit.i32.i ], [ %.pre138.i.i29, %bb.af ] ; 2 uses
  %i.abk = phi i32 [ %.pre135.i34.i54, %ma_lpf_process_pcm_frame_f32.exit.i32.i ], [ %.pre136.i18.i28, %bb.af ]
  %i.abl = phi i32 [ %.pre134.i33.i53, %ma_lpf_process_pcm_frame_f32.exit.i32.i ], [ %i.wy, %bb.af ]
  %.162.i36.i56 = phi ptr [ %i.abi, %ma_lpf_process_pcm_frame_f32.exit.i32.i ], [ null, %bb.af ]
  %i.abm = add nuw i64 %.058100.i.i19, 1          ; 2 uses
  %i.abn = load i32, ptr %i.vm, align 8
  %i.abo = add i32 %i.abn, %i.abl                 ; 3 uses
  store i32 %i.abo, ptr %i.vd, align 8
  %i.abp = load i32, ptr %i.vn, align 4
  %i.abq = add i32 %i.abp, %i.abk                 ; 3 uses
  store i32 %i.abq, ptr %i.vh, align 4
  %.not70.i37.i57 = icmp ult i32 %i.abq, %i.abj
  br i1 %.not70.i37.i57, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.abr = sub nuw i32 %i.abq, %i.abj
  store i32 %i.abr, ptr %i.vh, align 4
  %i.abs = add i32 %i.abo, 1                      ; 2 uses
  store i32 %i.abs, ptr %i.vd, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.abt = phi i32 [ %i.abs, %bb.ak ], [ %i.abo, %bb.aj ]
  %exitcond133.not.i.i58 = icmp eq i64 %i.abm, %i.om
  br i1 %exitcond133.not.i.i58, label %.sink.split, label %.preheader76.i.i18

.sink.split:                                      ; preds = %bb.al, %._crit_edge85.i.i23, %bb.ad, %._crit_edge91.i.i87, %bb.t, %._crit_edge85.i.i, %bb.l, %._crit_edge91.i.i, %bb.ae, %bb.v, %bb.m, %bb.d
  %storemerge53.i59.sink = phi i64 [ %.160.lcssa.i16.i, %bb.t ], [ 0, %bb.m ], [ 0, %bb.d ], [ 0, %bb.v ], [ %.160.lcssa.i.i89, %bb.ad ], [ %.160.lcssa.i.i, %bb.l ], [ 0, %bb.ae ], [ %.160.lcssa.i.i, %._crit_edge91.i.i ], [ %.160.lcssa.i16.i, %._crit_edge85.i.i ], [ %.160.lcssa.i.i89, %._crit_edge91.i.i87 ], [ %.160.lcssa.i16.i25, %._crit_edge85.i.i23 ], [ %.160.lcssa.i16.i25, %bb.al ]
  %storemerge.i60.sink = phi i64 [ %i.i, %bb.t ], [ 0, %bb.m ], [ 0, %bb.d ], [ 0, %bb.v ], [ %.05899.i.i83, %._crit_edge91.i.i87 ], [ %i.i, %bb.l ], [ 0, %bb.ae ], [ %.05899.i.i, %._crit_edge91.i.i ], [ %.058100.i.i, %._crit_edge85.i.i ], [ %i.om, %bb.ad ], [ %i.om, %bb.al ], [ %.058100.i.i19, %._crit_edge85.i.i23 ]
  store i64 %storemerge53.i59.sink, ptr %2, align 8
  store i64 %storemerge.i60.sink, ptr %4, align 8
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -3, 1) i32 @ma_linear_resampler_set_rate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #32 {
  %4 = alloca %struct.ma_lpf_config, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %5 = icmp eq ptr %0, null
  br i1 %5, label %bb.a, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 0
  %8 = icmp eq i32 %2, 0
  %or.cond.i = or i1 %7, %8
  br i1 %or.cond.i, label %bb.a, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %11 = load i32, ptr %10, align 4                ; 3 uses
  br label %12

12:                                               ; preds = %12, %9
  %.0.i58.i = phi i32 [ %1, %9 ], [ %.06.i57.i, %12 ]
  %.06.i57.i = phi i32 [ %2, %9 ], [ %13, %12 ]   ; 4 uses
  %13 = urem i32 %.0.i58.i, %.06.i57.i            ; 2 uses
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %ma_gcf_u32.exit.i, label %12

ma_gcf_u32.exit.i:                                ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %16 = udiv i32 %1, %.06.i57.i                   ; 3 uses
  store i32 %16, ptr %15, align 8
  %17 = udiv i32 %2, %.06.i57.i                   ; 3 uses
  store i32 %17, ptr %10, align 4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 8                ; 2 uses
  %20 = icmp ugt i32 %19, 8
  br i1 %20, label %bb.a, label %21

21:                                               ; preds = %ma_gcf_u32.exit.i
  %..i = tail call i32 @llvm.umax.i32(i32 %16, i32 %17)
  %22 = tail call i32 @llvm.umin.i32(i32 %16, i32 %17)
  %23 = uitofp i32 %22 to double
  %24 = fmul nnan double %23, 5.000000e-01
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %24, %26
  %28 = load <2 x i32>, ptr %0, align 8
  store <2 x i32> %28, ptr %4, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %27, ptr %.sroa.756.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %19, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 4
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %30 = call fastcc range(i32 -3, 1) i32 @ma_lpf_reinit__internal(ptr noundef nonnull readonly %4, ptr noundef null, ptr noundef nonnull %29, i32 noundef 0) ; 2 uses
  %.not54.i = icmp eq i32 %30, 0
  br i1 %.not54.i, label %31, label %bb.a

31:                                               ; preds = %21
  %32 = load i32, ptr %15, align 8                ; 2 uses
  %33 = load i32, ptr %10, align 4                ; 6 uses
  %34 = udiv i32 %32, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %34, ptr %35, align 8
  %36 = urem i32 %32, %33
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %39 = load i32, ptr %38, align 4                ; 2 uses
  %40 = udiv i32 %39, %11
  %41 = urem i32 %39, %11
  %42 = mul i32 %40, %33
  %43 = mul i32 %41, %33
  %44 = udiv i32 %43, %11
  %45 = add i32 %44, %42                          ; 2 uses
  %46 = udiv i32 %45, %33
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, %46
  store i32 %49, ptr %47, align 8
  %50 = urem i32 %45, %33
  store i32 %50, ptr %38, align 4
  br label %bb.a

bb.a:                                             ; preds = %3, %6, %ma_gcf_u32.exit.i, %21, %31
  %.046.i = phi i32 [ 0, %31 ], [ -2, %3 ], [ -2, %6 ], [ -2, %ma_gcf_u32.exit.i ], [ %30, %21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret i32 %.046.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -3, 1) i32 @ma_linear_resampler_set_rate_ratio(ptr nofree noundef captures(address_is_null) %0, float noundef %1) local_unnamed_addr #32 {
bb.a:
  %2 = alloca %struct.ma_lpf_config, align 8      ; 9 uses
  %i.a = icmp ne ptr %0, null
  %i.b = fcmp ugt float %1, 0.000000e+00
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = fmul float %1, 1.000000e+06
  %i.d = fptoui float %i.c to i32                 ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i58.i = phi i32 [ %i.d, %bb.c ], [ %.06.i57.i, %bb.d ]
  %.06.i57.i = phi i32 [ 1000000, %bb.c ], [ %i.h, %bb.d ] ; 4 uses
  %i.h = urem i32 %.0.i58.i, %.06.i57.i           ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %ma_gcf_u32.exit.i, label %bb.d

ma_gcf_u32.exit.i:                                ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = udiv i32 %i.d, %.06.i57.i                ; 3 uses
  store i32 %i.k, ptr %i.j, align 8
  %i.l = udiv i32 1000000, %.06.i57.i             ; 3 uses
  store i32 %i.l, ptr %i.f, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ugt i32 %i.n, 8
  br i1 %i.o, label %ma_linear_resampler_set_rate_internal.exit, label %bb.e

bb.e:                                             ; preds = %ma_gcf_u32.exit.i
  %..i = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.l)
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.l)
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fmul nnan double %i.q, 5.000000e-01
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load double, ptr %i.s, align 8
  %i.u = fmul double %i.r, %i.t
  %i.v = load <2 x i32>, ptr %0, align 8
  store <2 x i32> %i.v, ptr %2, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.u, ptr %.sroa.756.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.n, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = call fastcc range(i32 -3, 1) i32 @ma_lpf_reinit__internal(ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.w, i32 noundef 0) ; 2 uses
  %.not54.i = icmp eq i32 %i.x, 0
  br i1 %.not54.i, label %bb.f, label %ma_linear_resampler_set_rate_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.j, align 8              ; 2 uses
  %i.z = load i32, ptr %i.f, align 4              ; 6 uses
  %i.aa = udiv i32 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aa, ptr %i.ab, align 8
  %i.ac = urem i32 %i.y, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = udiv i32 %i.af, %i.g
  %i.ah = urem i32 %i.af, %i.g
  %i.ai = mul i32 %i.ag, %i.z
  %i.aj = mul i32 %i.ah, %i.z
  %i.ak = udiv i32 %i.aj, %i.g
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = udiv i32 %i.al, %i.z
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = add i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 8
  %i.aq = urem i32 %i.al, %i.z
  store i32 %i.aq, ptr %i.ae, align 4
  br label %ma_linear_resampler_set_rate_internal.exit

ma_linear_resampler_set_rate_internal.exit:       ; preds = %ma_gcf_u32.exit.i, %bb.e, %bb.f
  %.046.i = phi i32 [ 0, %bb.f ], [ %i.x, %bb.e ], [ -2, %ma_gcf_u32.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #61
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %ma_linear_resampler_set_rate_internal.exit
  %.0 = phi i32 [ %.046.i, %ma_linear_resampler_set_rate_internal.exit ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 4294967296) i64 @ma_linear_resampler_get_input_latency(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i32, ptr %i.b, align 8
  %i.d = shl i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 1
  %i.h = add i32 %i.g, %i.d
  %i.i = zext i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, -8589934590) i64 @ma_linear_resampler_get_output_latency(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %ma_linear_resampler_get_input_latency.exit

ma_linear_resampler_get_input_latency.exit:       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i32, ptr %i.b, align 8
  %i.d = shl i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 1
  %i.h = add i32 %i.g, %i.d
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw i64 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = udiv i64 %i.m, %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ma_linear_resampler_get_input_latency.exit
  %.0 = phi i64 [ %i.q, %ma_linear_resampler_get_input_latency.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_linear_resampler_get_required_input_frame_count(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = add i64 %1, -1                           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = mul i64 %i.g, %i.j
  %i.l = add i64 %i.k, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.g, %i.r
  %i.t = add i64 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = udiv i64 %i.t, %i.w
  %i.y = add i64 %i.l, %i.x
  store i64 %i.y, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

end_hunk_2
begin_hunk_3_@ma_device__on_data:bb.a
  %.not.i.i.i127 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i127, label %ma_device__on_data_inner.exit130, label %ma_zero_memory_default.exit.i.i.i123

ma_device__on_data_inner.exit130:                 ; preds = %ma_zero_memory_default.exit.i.i.i123, %bb.t, %bb.v, %.lr.ph17.preheader.i.i129, %bb.w
  %i.et = load ptr, ptr %i.m, align 8
  tail call void %i.et(ptr noundef nonnull %0, ptr noundef %i.ea, ptr noundef %i.eb, i32 noundef %i.dx) #61, !inline_history !1212
  %i.eu = load i32, ptr %i.r, align 8
  store i32 %i.eu, ptr %i.n, align 4
  store i32 0, ptr %i.g, align 4
  br label %bb.x

bb.x:                                             ; preds = %.thread178, %ma_device__on_data_inner.exit130, %bb.s
  %.5180 = phi i32 [ %.5181, %.thread178 ], [ %.5181, %ma_device__on_data_inner.exit130 ], [ %.5, %bb.s ]
  %i.ev = add i32 %.5180, %.078136                ; 2 uses
  %i.ew = icmp ult i32 %i.ev, %3
  br i1 %i.ew, label %bb.f, label %.loopexit135

.loopexit135:                                     ; preds = %bb.x, %.preheader, %ma_device_get_state.exit, %ma_device__on_data_inner.exit
  ret void
}

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #60

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #61

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #62

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #62

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #64

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #62

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #62

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #33

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #62

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -2, 1) i32 @ma_resampling_backend_get_heap_size__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #17 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !noalias !1215 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !noalias !1215 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !noalias !1215
  %i.f = icmp eq ptr %2, null
  br i1 %i.f, label %ma_linear_resampler_get_heap_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8
  switch i32 %i.a, label %ma_linear_resampler_get_heap_size.exit [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %ma_linear_resampler_get_heap_size.exit, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %i.h = icmp eq i32 %i.a, 5
  %i.i = zext i32 %i.c to i64                     ; 3 uses
  %..i.i = select i1 %i.h, i64 2, i64 1
  %i.j = shl nuw nsw i64 %i.i, %..i.i
  %storemerge35.i.i = shl nuw nsw i64 %i.j, 1
  %i.k = add nuw nsw i64 %storemerge35.i.i, 4
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.e, i32 8) ; 2 uses
  %i.m = and i32 %i.l, 1
  %i.n = lshr i32 %i.l, 1                         ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  %i.o = shl nuw nsw i64 %i.i, 2
  %i.p = add nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 34359738360
  %i.r = add nuw nsw i64 %i.q, 40
  %i.s = select i1 %.not.i.i.i.i, i64 0, i64 %i.r ; 2 uses
  %.not78.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not78.i.i.i.i, label %bb.d, label %.lr.ph76.i.i.preheader.i.i

.lr.ph76.i.i.preheader.i.i:                       ; preds = %._crit_edge.i.i.i.i
  %i.t = shl nuw nsw i64 %i.i, 3
  %i.u = add nuw nsw i64 %i.t, 64                 ; 2 uses
  %i.v = add nsw i32 %i.n, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.u, %i.w
  %i.y = add nuw nsw i64 %i.s, %i.u
  %i.z = add nuw nsw i64 %i.y, %i.x
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph76.i.i.preheader.i.i, %._crit_edge.i.i.i.i
  %i.aa = phi i64 [ %i.s, %._crit_edge.i.i.i.i ], [ %i.z, %.lr.ph76.i.i.preheader.i.i ]
  %i.ab = add nuw nsw i64 %i.aa, 7
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nuw nsw i64 %i.k, %i.ac
  %i.ae = and i64 %i.ad, -8
  store i64 %i.ae, ptr %2, align 8
  br label %ma_linear_resampler_get_heap_size.exit

ma_linear_resampler_get_heap_size.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -3, 1) i32 @ma_resampling_backend_init__linear(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #32 {
bb.a:
  %4 = alloca %struct.ma_linear_resampler_config, align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !noalias !1218
  %i.c = load <4 x i32>, ptr %1, align 8, !noalias !1218
  store <4 x i32> %i.c, ptr %4, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.7.sroa.0.0.insert.ext = zext i32 %i.b to i64
  store i64 %.sroa.7.sroa.0.0.insert.ext, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = call i32 @ma_linear_resampler_init_preallocated(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %i.d) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal void @ma_resampling_backend_uninit__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_linear_resampler_uninit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @ma_lpf_uninit(ptr noundef nonnull readonly %i.b, ptr noundef readonly %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %ma_linear_resampler_uninit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_linear_resampler_uninit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %ma_linear_resampler_uninit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8
  tail call void %i.i(ptr noundef nonnull %i.f, ptr noundef %i.j) #61, !inline_history !1219
  br label %ma_linear_resampler_uninit.exit

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #61
  br label %ma_linear_resampler_uninit.exit

ma_linear_resampler_uninit.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -2, 1) i32 @ma_resampling_backend_process__linear(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address) %4, ptr nofree noundef captures(none) %5) #40 {
bb.a:
  %i.a = tail call i32 @ma_linear_resampler_process_pcm_frames(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -3, 1) i32 @ma_resampling_backend_set_rate__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) #32 {
bb.a:
  %4 = tail call i32 @ma_linear_resampler_set_rate(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 0, 4294967296) i64 @ma_resampling_backend_get_input_latency__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) #16 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_linear_resampler_get_input_latency.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load i32, ptr %i.b, align 8
  %i.d = shl i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 1
  %i.h = add i32 %i.g, %i.d
  %i.i = zext i32 %i.h to i64
  br label %ma_linear_resampler_get_input_latency.exit

ma_linear_resampler_get_input_latency.exit:       ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 0, -8589934590) i64 @ma_resampling_backend_get_output_latency__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) #16 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_linear_resampler_get_output_latency.exit, label %ma_linear_resampler_get_input_latency.exit.i

ma_linear_resampler_get_input_latency.exit.i:     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load i32, ptr %i.b, align 8
  %i.d = shl i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 1
  %i.h = add i32 %i.g, %i.d
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw i64 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = udiv i64 %i.m, %i.p
  br label %ma_linear_resampler_get_output_latency.exit

ma_linear_resampler_get_output_latency.exit:      ; preds = %bb.a, %ma_linear_resampler_get_input_latency.exit.i
  %.0.i = phi i64 [ %i.q, %ma_linear_resampler_get_input_latency.exit.i ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -2, 1) i32 @ma_resampling_backend_get_required_input_frame_count__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #17 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %ma_linear_resampler_get_required_input_frame_count.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ma_linear_resampler_get_required_input_frame_count.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %ma_linear_resampler_get_required_input_frame_count.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = add i64 %2, -1                           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = mul i64 %i.g, %i.j
  %i.l = add i64 %i.k, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.g, %i.r
  %i.t = add i64 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = udiv i64 %i.t, %i.w
  %i.y = add i64 %i.l, %i.x
  store i64 %i.y, ptr %3, align 8
  br label %ma_linear_resampler_get_required_input_frame_count.exit

ma_linear_resampler_get_required_input_frame_count.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -2, 1) i32 @ma_resampling_backend_get_expected_output_frame_count__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #17 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %ma_linear_resampler_get_expected_output_frame_count.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ma_linear_resampler_get_expected_output_frame_count.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = mul i64 %2, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = udiv i64 %i.f, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.j, %i.p
  %i.r = add i64 %i.q, %i.m
  %i.s = udiv i64 %i.r, %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = zext i32 %i.x to i64
  %i.z = mul i64 %i.j, %i.y
  %i.aa = add i64 %i.s, %i.v
  %i.ab = add i64 %i.aa, %i.z
  %.not.i = icmp ule i64 %i.ab, %2
  %i.ac = zext i1 %.not.i to i64
  %spec.select.i = add i64 %i.j, %i.ac
  store i64 %spec.select.i, ptr %3, align 8
  br label %ma_linear_resampler_get_expected_output_frame_count.exit

ma_linear_resampler_get_expected_output_frame_count.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.019.i = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.019.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2, 1) i32 @ma_resampling_backend_reset__linear(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(address_is_null) %1) #23 {
bb.a:
  %i.a = tail call i32 @ma_linear_resampler_reset(ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 1, 6) i32 @ma_channel_map_get_conversion_path(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 {
bb.a:
  %i.a = icmp ne i32 %3, %1                       ; 2 uses
  br i1 %i.a, label %ma_channel_map_is_passthrough.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %2, %0
  %i.c = icmp ne i32 %3, 0
  %or.cond.i.i = and i1 %i.b, %i.c
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %ma_channel_map_is_passthrough.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.d, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  br i1 %i.e, label %ma_channel_map_is_passthrough.exit.thread, label %ma_channel_map_get_channel.exit.us.preheader.i.i

ma_channel_map_get_channel.exit.us.preheader.i.i: ; preds = %.lr.ph.split.us.i.i
  %wide.trip.count47.i.i = zext i32 %3 to i64
  br label %ma_channel_map_get_channel.exit.us.i.i

ma_channel_map_get_channel.exit.us.i.i:           ; preds = %bb.c, %ma_channel_map_get_channel.exit.us.preheader.i.i
  %indvars.iv44.i.i = phi i64 [ 0, %ma_channel_map_get_channel.exit.us.preheader.i.i ], [ %indvars.iv.next45.i.i, %bb.c ] ; 3 uses
  %i.f = trunc nuw i64 %indvars.iv44.i.i to i32
  %i.g = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %3, i32 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv44.i.i
  %i.i = load i8, ptr %i.h, align 1
  %.not.us.i.i = icmp eq i8 %i.g, %i.i
  br i1 %.not.us.i.i, label %bb.c, label %ma_channel_map_is_passthrough.exit

bb.c:                                             ; preds = %ma_channel_map_get_channel.exit.us.i.i
  %indvars.iv.next45.i.i = add nuw nsw i64 %indvars.iv44.i.i, 1 ; 2 uses
  %exitcond48.not.i.i = icmp eq i64 %indvars.iv.next45.i.i, %wide.trip.count47.i.i
  br i1 %exitcond48.not.i.i, label %ma_channel_map_is_passthrough.exit.thread, label %ma_channel_map_get_channel.exit.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %wide.trip.count42.i.i = zext i32 %3 to i64     ; 2 uses
  br i1 %i.e, label %ma_channel_map_get_channel.exit.us21.i.i, label %ma_channel_map_get_channel.exit.i.i

ma_channel_map_get_channel.exit.us21.i.i:         ; preds = %.lr.ph.split.i.i, %bb.d
end_hunk_3
