Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegts?download=true
inline.NumInlined: 193
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.33 = private unnamed_addr constant [11 x i8] c"ISO-8859-8\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"ISO-8859-9\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ISO-8859-10\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"ISO-8859-11\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"ISO-8859-13\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"ISO-8859-14\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"ISO-8859-15\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"UCS-2BE\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"KSC_5601\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"GB2312\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@__const.getstr8.encodings = private unnamed_addr constant [32 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.41, ptr @.str.44, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37, ptr @.str.37], align 16
@.str.45 = private unnamed_addr constant [12 x i8] c"ISO-8859-%d\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"PAT:\0A\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"Ignoring invalid PAT entry: sid=0x%x pid=0x%x\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"sid=0x%x pid=0x%x\0A\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"PMT: len %i\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"sid=0x%x sec_num=%d/%d version=%d tid=%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"pcr_pid=0x%x\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"program tag: 0x%02x len=%d\0A\00", align 1
@SCTE_types = internal constant [2 x %struct.StreamType] [%struct.StreamType { i32 134, i32 2, i32 98305 }, %struct.StreamType zeroinitializer], align 16
@.str.55 = private unnamed_addr constant [68 x i8] c"detected PMT change (program=%d, version=%d/%d, pcr_pid=0x%x/0x%x)\0A\00", align 1
@.str.56 = private unnamed_addr constant [59 x i8] c"reusing existing %s stream %d (pid=0x%x) for new pid=0x%x\0A\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"pid=%x stream_id=%#x\0A\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"pid=%x stream_type=%x probing\0A\00", align 1
@.str.59 = private unnamed_addr constant [106 x i8] c"Forcing DTS/PTS to be unset for a non-trustworthy PES packet for PID %d as PCR hasn't been received yet.\0A\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"PES packet size mismatch\0A\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"Invalid JPEG-XS header size %u > packet size %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"ID3\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@.str.64 = private unnamed_addr constant [52 x i8] c"stream=%d stream_type=%x pid=%x prog_reg_desc=%.4s\0A\00", align 1
@ISO_types = internal unnamed_addr constant [20 x %struct.StreamType] [%struct.StreamType { i32 1, i32 0, i32 2 }, %struct.StreamType { i32 2, i32 0, i32 2 }, %struct.StreamType { i32 3, i32 1, i32 86017 }, %struct.StreamType { i32 4, i32 1, i32 86017 }, %struct.StreamType { i32 15, i32 1, i32 86018 }, %struct.StreamType { i32 16, i32 0, i32 12 }, %struct.StreamType { i32 27, i32 0, i32 27 }, %struct.StreamType { i32 28, i32 1, i32 86018 }, %struct.StreamType { i32 32, i32 0, i32 27 }, %struct.StreamType { i32 33, i32 0, i32 88 }, %struct.StreamType { i32 36, i32 0, i32 172 }, %struct.StreamType { i32 50, i32 0, i32 272 }, %struct.StreamType { i32 54, i32 0, i32 98316 }, %struct.StreamType { i32 51, i32 0, i32 195 }, %struct.StreamType { i32 66, i32 0, i32 87 }, %struct.StreamType { i32 209, i32 0, i32 116 }, %struct.StreamType { i32 210, i32 0, i32 191 }, %struct.StreamType { i32 212, i32 0, i32 193 }, %struct.StreamType { i32 234, i32 0, i32 70 }, %struct.StreamType zeroinitializer], align 16
@HDMV_types = internal unnamed_addr constant [12 x %struct.StreamType] [%struct.StreamType { i32 128, i32 1, i32 65560 }, %struct.StreamType { i32 129, i32 1, i32 86019 }, %struct.StreamType { i32 130, i32 1, i32 86020 }, %struct.StreamType { i32 131, i32 1, i32 86060 }, %struct.StreamType { i32 132, i32 1, i32 86056 }, %struct.StreamType { i32 133, i32 1, i32 86020 }, %struct.StreamType { i32 134, i32 1, i32 86020 }, %struct.StreamType { i32 161, i32 1, i32 86056 }, %struct.StreamType { i32 162, i32 1, i32 86020 }, %struct.StreamType { i32 144, i32 3, i32 94214 }, %struct.StreamType { i32 146, i32 3, i32 94231 }, %struct.StreamType zeroinitializer], align 16
@MISC_types = internal unnamed_addr constant [4 x %struct.StreamType] [%struct.StreamType { i32 129, i32 1, i32 86019 }, %struct.StreamType { i32 135, i32 1, i32 86056 }, %struct.StreamType { i32 138, i32 1, i32 86020 }, %struct.StreamType zeroinitializer], align 16
@HLS_SAMPLE_ENC_types = internal unnamed_addr constant [5 x %struct.StreamType] [%struct.StreamType { i32 219, i32 0, i32 27 }, %struct.StreamType { i32 207, i32 1, i32 86018 }, %struct.StreamType { i32 193, i32 1, i32 86019 }, %struct.StreamType { i32 194, i32 1, i32 86056 }, %struct.StreamType zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [27 x i8] c"EIT: tid received = %.02x\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Scrambled EIT table received.\0A\00", align 1
@.str.68 = private unnamed_addr constant [55 x i8] c"Continuity check failed for pid %d expected %d got %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"Packet had TEI flag set; marking as corrupt\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"pos >= 188\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"All programs have pmt, headers found\0A\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"mpegts demuxer\00", align 1
@mpegts_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.72, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.74 = private unnamed_addr constant [12 x i8] c"resync_size\00", align 1
@.str.75 = private unnamed_addr constant [52 x i8] c"set size limit for looking up a new synchronization\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"ts_id\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"transport stream id\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"ts_packetsize\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"output option carrying the raw packet size\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"fix_teletext_pts\00", align 1
@.str.81 = private unnamed_addr constant [46 x i8] c"try to fix pts values of dvb teletext streams\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"scan_all_pmts\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"scan and combine all PMTs\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"skip_unknown_pmt\00", align 1
@.str.85 = private unnamed_addr constant [49 x i8] c"skip PMTs for programs not advertised in the PAT\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"merge_pmt_versions\00", align 1
@.str.87 = private unnamed_addr constant [45 x i8] c"reuse streams when PMT's version/pids change\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"skip_changes\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"skip changing / adding streams / programs\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"skip_clear\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"skip clearing programs\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"max_packet_size\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"maximum size of emitted packet\00", align 1
@options = internal constant [11 x { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.74, ptr @.str.75, i32 104, i32 2, %union.anon.3 { i64 65536 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.76, ptr @.str.77, i32 116, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 192, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.78, ptr @.str.79, i32 16, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 192, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.80, ptr @.str.81, i32 40, i32 18, %union.anon.3 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.82, ptr @.str.83, i32 100, i32 18, %union.anon.3 { i64 -1 }, double -1.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.84, ptr @.str.85, i32 96, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.86, ptr @.str.87, i32 108, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.88, ptr @.str.89, i32 88, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 0, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.90, ptr @.str.91, i32 92, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 0, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.92, ptr @.str.93, i32 112, i32 2, %union.anon.3 { i64 204800 }, double 1.000000e+00, double f0x41CFFFFFFF800000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.95 = private unnamed_addr constant [41 x i8] c"Failed to allocate buffers for seekback\0A\00", align 1
@.str.96 = private unnamed_addr constant [61 x i8] c"Could not detect TS packet size, defaulting to non-FEC/DVHS\0A\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"tuning done\0A\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"invalid pcr pair %ld >= %ld\0A\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"start=%0.3f pcr=%0.3f incr=%ld\0A\00", align 1
@.str.100 = private unnamed_addr constant [54 x i8] c"Probe: %d, score: %d, dvhs_score: %d, fec_score: %d \0A\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"Unable to seek back to the start\0A\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"Skipping after seek\0A\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"changing packet size to %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [51 x i8] c"max resync size reached, could not find sync byte\0A\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"mpegtsraw demuxer\00", align 1
@mpegtsraw_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.105, ptr @av_default_item_name, ptr @raw_options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.107 = private unnamed_addr constant [12 x i8] c"compute_pcr\00", align 1
@.str.108 = private unnamed_addr constant [51 x i8] c"compute exact PCR for each transport stream packet\00", align 1
@raw_options = internal constant [5 x { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.74, ptr @.str.75, i32 104, i32 2, %union.anon.3 { i64 65536 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.76, ptr @.str.77, i32 116, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 192, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.78, ptr @.str.79, i32 16, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 192, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.107, ptr @.str.108, i32 36, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@switch.table.ff_parse_mpeg2_descriptor = private unnamed_addr constant [38 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @DESC_types, i64 36), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @DESC_types, i64 48), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @DESC_types, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @DESC_types, i64 12), ptr getelementptr inbounds nuw (i8, ptr @DESC_types, i64 24)], align 8
@switch.table.ff_parse_mpeg2_descriptor.8 = private unnamed_addr constant [3 x i32] [i32 512, i32 128, i32 131328], align 4
@switch.table.ff_parse_mpeg2_descriptor.9 = private unnamed_addr constant [3 x i32] [i32 131328, i32 128, i32 256], align 4
@switch.table.mpegts_set_stream_info = private unnamed_addr constant [35 x ptr] [ptr @HDMV_types, ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 12), ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 24), ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 36), ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 48), ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 60), ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 72), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 108), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 120), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 84), ptr getelementptr inbounds nuw (i8, ptr @HDMV_types, i64 96)], align 8

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_parse_mpeg2_descriptor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readnone captures(address) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [252 x i8], align 16              ; 17 uses
  %10 = alloca %struct.FFIOContext, align 8       ; 4 uses
  %11 = alloca %struct.FFIOContext, align 8       ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = load ptr, ptr %4, align 8, !tbaa !9      ; 4 uses
  %.not.i = icmp ult ptr %i.c, %5
  br i1 %.not.i, label %get8.exit, label %.critedge

get8.exit:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !12    ; 3 uses
  %i.f = zext i8 %i.e to i32
  store ptr %i.d, ptr %4, align 8, !tbaa !9
  %.not.i480 = icmp ult ptr %i.d, %5
  br i1 %.not.i480, label %get8.exit482, label %.critedge

get8.exit482:                                     ; preds = %get8.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.h = load i8, ptr %i.d, align 1, !tbaa !12    ; 10 uses
  %i.i = zext i8 %i.h to i32                      ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !9
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j ; 33 uses
  %i.l = icmp ugt ptr %i.k, %5
  br i1 %i.l, label %.critedge, label %bb.b

bb.b:                                             ; preds = %get8.exit482
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str, i32 noundef %i.f, i32 noundef %i.i) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23   ; 6 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = icmp eq i32 %2, 6
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %.lr.ph.i, label %mpegts_find_stream_type.exit

bb.d:                                             ; preds = %bb.b
  %.old6 = icmp eq i32 %2, 6
  br i1 %.old6, label %.lr.ph.i, label %mpegts_find_stream_type.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %switch.tableidx = add i8 %i.e, -86             ; 3 uses
  %i.v = icmp ult i8 %switch.tableidx, 38
  br i1 %i.v, label %switch.hole_check, label %mpegts_find_stream_type.exit

switch.hole_check:                                ; preds = %.lr.ph.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 206159478793, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %mpegts_find_stream_type.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %i.w = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ff_parse_mpeg2_descriptor, i64 %i.w
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.x = load i32, ptr %i.n, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %switch.load, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41   ; 2 uses
  %.not15.i = icmp eq i32 %i.x, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43 ; 3 uses
  %.not16.i = icmp eq i32 %i.p, %i.ab
  %or.cond778 = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond778, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %switch.lookup
  store i32 %i.z, ptr %i.n, align 8, !tbaa !40
  store i32 %i.ab, ptr %i.o, align 4, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 1, ptr %i.ac, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %._crit_edge.i
  %i.ad = phi i32 [ %i.ab, %._crit_edge.i ], [ %i.p, %switch.lookup ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i32 0, ptr %i.ae, align 8, !tbaa !26
  br label %mpegts_find_stream_type.exit

mpegts_find_stream_type.exit:                     ; preds = %switch.hole_check, %.lr.ph.i, %bb.e, %bb.d, %bb.c
  %i.af = phi i32 [ %i.p, %bb.c ], [ %i.ad, %bb.e ], [ 0, %bb.d ], [ %i.p, %.lr.ph.i ], [ %i.p, %switch.hole_check ] ; 4 uses
  switch i8 %i.e, label %get16.exit.thread [
    i8 2, label %bb.f
    i8 30, label %bb.g
    i8 31, label %bb.w
    i8 86, label %bb.af
    i8 89, label %bb.am
    i8 10, label %.preheader
    i8 5, label %bb.bg
    i8 82, label %bb.bk
    i8 38, label %bb.bm
    i8 127, label %bb.bq
    i8 106, label %bb.cj
    i8 122, label %bb.cj
    i8 -3, label %bb.cn
    i8 -80, label %bb.ct
    i8 63, label %bb.do
  ]

.preheader:                                       ; preds = %mpegts_find_stream_type.exit
  %.not459638 = icmp ult i8 %i.h, 4
  br i1 %.not459638, label %get16.exit.thread, label %.lr.ph640

.lr.ph640:                                        ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.promoted = load ptr, ptr %4, align 8, !tbaa !9
  %12 = zext i8 %i.h to i64
  br label %bb.bb

bb.f:                                             ; preds = %mpegts_find_stream_type.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %.not.i484 = icmp ult ptr %i.ah, %i.k
  br i1 %.not.i484, label %get8.exit486, label %get8.exit486.thread

get8.exit486:                                     ; preds = %bb.f
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = and i8 %i.ai, 1
  %.not470 = icmp eq i8 %i.aj, 0
  br i1 %.not470, label %get16.exit.thread, label %get8.exit486.thread

get8.exit486.thread:                              ; preds = %bb.f, %get8.exit486
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !45
  %i.am = or i32 %i.al, 1048576
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !45
  br label %get16.exit.thread

bb.g:                                             ; preds = %mpegts_find_stream_type.exit
  %i.an = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp slt i64 %i.aq, 2
  br i1 %i.ar, label %get16.exit.thread, label %get16.exit

get16.exit:                                       ; preds = %bb.g
  %i.as = load i16, ptr %i.an, align 1, !tbaa !12
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store ptr %i.av, ptr %4, align 8, !tbaa !9
  %.not467 = icmp eq ptr %9, null
  br i1 %.not467, label %bb.j, label %bb.h

bb.h:                                             ; preds = %get16.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8328
  %i.ax = sext i32 %8 to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 2 uses
  %.not468 = icmp eq ptr %i.az, null
  br i1 %.not468, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %get16.exit
  %i.bb = icmp sgt i32 %7, 0
  br i1 %i.bb, label %.lr.ph653, label %get16.exit.thread

.lr.ph653:                                        ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bd = icmp ugt i32 %8, 8191
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8328
  %i.bf = zext nneg i32 %8 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 280
  %wide.trip.count684 = zext nneg i32 %7 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph653, %bb.v
  %indvars.iv681 = phi i64 [ 0, %.lr.ph653 ], [ %indvars.iv.next682, %bb.v ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %6, i64 %indvars.iv681 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50 ; 2 uses
  %.not469 = icmp eq i32 %i.bl, 0
  br i1 %.not469, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !53
  %i.bn = icmp eq i32 %i.bm, %i.au
  br i1 %i.bn, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54
  call void @ffio_init_read_context(ptr noundef nonnull %10, ptr noundef %i.bp, i32 noundef %i.bl) #13
  %i.bq = call i32 @ff_mp4_read_dec_config_descr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #13 ; 0 uses
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23
  switch i32 %i.bt, label %mpegts_open_section_filter.exit [
    i32 86018, label %bb.n
    i32 131073, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !55
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %mpegts_open_section_filter.exit

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bh, align 8, !tbaa !56
  store i32 1, ptr %i.bi, align 8, !tbaa !44
  br label %mpegts_open_section_filter.exit

bb.p:                                             ; preds = %bb.m
  %i.bx = call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i488 = icmp eq ptr %i.bx, null
  br i1 %.not.i488, label %mpegts_open_section_filter.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !57
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.by, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef %8, i32 noundef 1) #13
  br i1 %i.bd, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i = icmp eq ptr %i.ca, null
  br i1 %.not20.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call void @av_free(ptr noundef nonnull %i.bx) #13
  br label %mpegts_open_section_filter.exit

bb.u:                                             ; preds = %bb.s
  store ptr %i.ca, ptr %i.bg, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  store i32 1, ptr %i.cb, align 4, !tbaa !61
  store i32 %8, ptr %i.ca, align 8, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 -1, ptr %i.cc, align 4, !tbaa !48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 -1, ptr %i.cd, align 8, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 -1, ptr %i.ce, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  store ptr @m4sl_cb, ptr %i.cf, align 8, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store ptr %9, ptr %i.cg, align 8, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  store ptr %i.bx, ptr %i.ch, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8
  %i.ck = or i8 %i.cj, 1
  store i8 %i.ck, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i32 -1, ptr %i.cl, align 8, !tbaa !69
  br label %mpegts_open_section_filter.exit

mpegts_open_section_filter.exit:                  ; preds = %bb.m, %bb.n, %bb.o, %bb.u, %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %bb.l, %mpegts_open_section_filter.exit
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next682, %wide.trip.count684
  br i1 %exitcond685.not, label %get16.exit.thread, label %bb.k, !llvm.loop !70

bb.w:                                             ; preds = %mpegts_find_stream_type.exit
  %i.cm = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.cn = ptrtoint ptr %i.k to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp slt i64 %i.cp, 2
  br i1 %i.cq, label %get16.exit.thread, label %get16.exit491

get16.exit491:                                    ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store ptr %i.cr, ptr %4, align 8, !tbaa !9
  %i.cs = icmp sgt i32 %7, 0
  br i1 %i.cs, label %bb.x, label %get16.exit.thread

bb.x:                                             ; preds = %get16.exit491
  %i.ct = icmp eq i32 %i.af, 86065
  br i1 %i.ct, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !26 ; 2 uses
  %i.cw = or i32 %i.cv, %i.af
  %or.cond471 = icmp eq i32 %i.cw, 0
  %i.cx = icmp sgt i32 %i.cv, 0
  %or.cond624 = or i1 %i.cx, %or.cond471
  br i1 %or.cond624, label %bb.z, label %get16.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !50 ; 2 uses
  %.not466 = icmp eq i32 %i.cz, 0
  br i1 %.not466, label %get16.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = load i32, ptr %6, align 8, !tbaa !53
  %i.db = icmp eq i32 %i.da, %8
  br i1 %i.db, label %bb.ab, label %get16.exit.thread

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@ff_parse_mpeg2_descriptor:bb.a
  %.not.i495 = icmp ult ptr %i.eg, %i.k
  br i1 %.not.i495, label %bb.ak, label %get8.exit497

bb.ak:                                            ; preds = %get8.exit494
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !12
  store ptr %i.ej, ptr %4, align 8, !tbaa !9
  br label %get8.exit497

get8.exit497:                                     ; preds = %get8.exit494, %bb.ak
  %i.el = phi ptr [ %i.ej, %bb.ak ], [ %i.eg, %get8.exit494 ] ; 4 uses
  %.0.i496 = phi i8 [ %i.ek, %bb.ak ], [ -73, %get8.exit494 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %.0.i496, ptr %i.em, align 1, !tbaa !12
  %.not.i498 = icmp ult ptr %i.el, %i.k
  br i1 %.not.i498, label %bb.al, label %get8.exit500

bb.al:                                            ; preds = %get8.exit497
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !12
  store ptr %i.en, ptr %4, align 8, !tbaa !9
  br label %get8.exit500

get8.exit500:                                     ; preds = %get8.exit497, %bb.al
  %i.ep = phi ptr [ %i.en, %bb.al ], [ %i.el, %get8.exit497 ]
  %.0.i499 = phi i8 [ %i.eo, %bb.al ], [ -73, %get8.exit497 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i8 %.0.i499, ptr %i.eq, align 2, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  store i8 44, ptr %i.er, align 1, !tbaa !12
  %i.es = load i16, ptr %i.ep, align 1
  store i16 %i.es, ptr %.0410646, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.0410646, i64 2
  %i.eu = load ptr, ptr %4, align 8, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  store ptr %i.ev, ptr %4, align 8, !tbaa !9
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1 ; 2 uses
  %exitcond680.not = icmp eq i64 %indvars.iv.next676, %wide.trip.count679
  br i1 %exitcond680.not, label %._crit_edge649, label %.lr.ph648, !llvm.loop !73

._crit_edge649:                                   ; preds = %get8.exit500
  %i.ew = shl nuw nsw i32 %umax678, 2
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.a, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -1
  store i8 0, ptr %i.ez, align 1, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fb = call i32 @av_dict_set(ptr noundef nonnull %i.fa, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 0) #13 ; 0 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 1, ptr %i.fc, align 8, !tbaa !44
  br label %get16.exit.thread

bb.am:                                            ; preds = %mpegts_find_stream_type.exit
  %i.fd = lshr i32 %i.i, 3                        ; 4 uses
  %i.fe = and i32 %i.i, 7
  %.not461 = icmp eq i32 %i.fe, 0
  br i1 %.not461, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  %i.ff = icmp ugt i8 %i.h, 15
  br i1 %i.ff, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not462 = icmp eq i32 %i.fd, 0
  br i1 %.not462, label %get16.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = load ptr, ptr %i.m, align 8, !tbaa !13  ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !72
  %i.fj = icmp eq ptr %i.fi, null
  %i.fk = mul nuw nsw i32 %i.fd, 5                ; 2 uses
  br i1 %i.fj, label %bb.ar, label %._crit_edge691

bb.ar:                                            ; preds = %bb.aq
  %i.fl = tail call i32 @ff_alloc_extradata(ptr noundef nonnull %i.fg, i32 noundef %i.fk) #13 ; 2 uses
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %.critedge, label %._crit_edge686

._crit_edge686:                                   ; preds = %bb.ar
  %.pre.a = load ptr, ptr %i.m, align 8, !tbaa !13
  br label %._crit_edge691

._crit_edge691:                                   ; preds = %bb.aq, %._crit_edge686
  %i.fn = phi ptr [ %.pre.a, %._crit_edge686 ], [ %i.fg, %bb.aq ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !55
  %i.fq = icmp slt i32 %i.fp, %i.fk
  br i1 %i.fq, label %.critedge, label %bb.as

bb.as:                                            ; preds = %._crit_edge691
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !72
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %wide.trip.count673 = zext nneg i32 %i.fd to i64
  %.pre687 = load ptr, ptr %4, align 8, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %get8.exit512
  %i.fu = phi ptr [ %.pre687, %bb.as ], [ %i.gt, %get8.exit512 ] ; 4 uses
  %indvars.iv670 = phi i64 [ 0, %bb.as ], [ %indvars.iv.next671, %get8.exit512 ] ; 2 uses
  %.0409644 = phi ptr [ %i.fs, %bb.as ], [ %i.gr, %get8.exit512 ] ; 3 uses
  %.not.i501 = icmp ult ptr %i.fu, %i.k
  br i1 %.not.i501, label %bb.au, label %get8.exit503

bb.au:                                            ; preds = %bb.at
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  %i.fw = load i8, ptr %i.fu, align 1, !tbaa !12
  store ptr %i.fv, ptr %4, align 8, !tbaa !9
  br label %get8.exit503

get8.exit503:                                     ; preds = %bb.at, %bb.au
  %i.fx = phi ptr [ %i.fv, %bb.au ], [ %i.fu, %bb.at ] ; 4 uses
  %.0.i502 = phi i8 [ %i.fw, %bb.au ], [ -73, %bb.at ]
  %i.fy = shl nuw nsw i64 %indvars.iv670, 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fy ; 4 uses
  store i8 %.0.i502, ptr %i.fz, align 4, !tbaa !12
  %.not.i504 = icmp ult ptr %i.fx, %i.k
  br i1 %.not.i504, label %bb.av, label %get8.exit506

bb.av:                                            ; preds = %get8.exit503
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !12
  store ptr %i.ga, ptr %4, align 8, !tbaa !9
  br label %get8.exit506

get8.exit506:                                     ; preds = %get8.exit503, %bb.av
  %i.gc = phi ptr [ %i.ga, %bb.av ], [ %i.fx, %get8.exit503 ] ; 4 uses
  %.0.i505 = phi i8 [ %i.gb, %bb.av ], [ -73, %get8.exit503 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  store i8 %.0.i505, ptr %i.gd, align 1, !tbaa !12
  %.not.i507 = icmp ult ptr %i.gc, %i.k
  br i1 %.not.i507, label %bb.aw, label %get8.exit509

bb.aw:                                            ; preds = %get8.exit506
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.gf = load i8, ptr %i.gc, align 1, !tbaa !12
  store ptr %i.ge, ptr %4, align 8, !tbaa !9
  br label %get8.exit509

get8.exit509:                                     ; preds = %get8.exit506, %bb.aw
  %i.gg = phi ptr [ %i.ge, %bb.aw ], [ %i.gc, %get8.exit506 ] ; 4 uses
  %.0.i508 = phi i8 [ %i.gf, %bb.aw ], [ -73, %get8.exit506 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  store i8 %.0.i508, ptr %i.gh, align 2, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  store i8 44, ptr %i.gi, align 1, !tbaa !12
  %i.gj = load i8, ptr %i.gg, align 1, !tbaa !12
  %.off = add i8 %i.gj, -32
  %switch = icmp ult i8 %.off, 6
  br i1 %switch, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %get8.exit509
  %i.gk = load i32, ptr %i.ft, align 8, !tbaa !45
  %i.gl = or i32 %i.gk, 128
  store i32 %i.gl, ptr %i.ft, align 8, !tbaa !45
  br label %bb.ay

bb.ay:                                            ; preds = %get8.exit509, %bb.ax
  %.not.i510 = icmp ult ptr %i.gg, %i.k
  br i1 %.not.i510, label %bb.az, label %get8.exit512

bb.az:                                            ; preds = %bb.ay
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gn = load i8, ptr %i.gg, align 1, !tbaa !12
  store ptr %i.gm, ptr %4, align 8, !tbaa !9
  br label %get8.exit512

get8.exit512:                                     ; preds = %bb.ay, %bb.az
  %.0.i511 = phi i8 [ %i.gn, %bb.az ], [ -73, %bb.ay ]
  %i.go = getelementptr inbounds nuw i8, ptr %.0409644, i64 4
  store i8 %.0.i511, ptr %i.go, align 1, !tbaa !12
  %i.gp = load ptr, ptr %4, align 8, !tbaa !9
  %i.gq = load i32, ptr %i.gp, align 1
  store i32 %i.gq, ptr %.0409644, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.0409644, i64 5
  %i.gs = load ptr, ptr %4, align 8, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 2 uses
  store ptr %i.gt, ptr %4, align 8, !tbaa !9
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count673
  br i1 %exitcond674.not, label %bb.ba, label %bb.at, !llvm.loop !74

bb.ba:                                            ; preds = %get8.exit512
  %i.gu = shl nuw nsw i32 %i.fd, 2
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr i8, ptr %i.a, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 -1
  store i8 0, ptr %i.gx, align 1, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gz = call i32 @av_dict_set(ptr noundef nonnull %i.gy, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 0) #13 ; 0 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 1, ptr %i.ha, align 8, !tbaa !44
  br label %get16.exit.thread

bb.bb:                                            ; preds = %.lr.ph640, %get8.exit524.thread
  %indvars.iv665 = phi i64 [ 0, %.lr.ph640 ], [ %indvars.iv.next666, %get8.exit524.thread ] ; 2 uses
  %indvars.iv663.a = phi i64 [ 4, %.lr.ph640 ], [ %indvars.iv.next664, %get8.exit524.thread ]
  %13 = phi ptr [ %.promoted, %.lr.ph640 ], [ %i.hu, %get8.exit524.thread ] ; 4 uses
  %.not.i513 = icmp ult ptr %13, %i.k
  br i1 %.not.i513, label %bb.bc, label %get8.exit515

bb.bc:                                            ; preds = %bb.bb
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 2 uses
  %i.hc = load i8, ptr %13, align 1, !tbaa !12
  store ptr %i.hb, ptr %4, align 8, !tbaa !9
  br label %get8.exit515

get8.exit515:                                     ; preds = %bb.bb, %bb.bc
  %i.hd = phi ptr [ %i.hb, %bb.bc ], [ %13, %bb.bb ] ; 4 uses
  %.0.i514 = phi i8 [ %i.hc, %bb.bc ], [ -73, %bb.bb ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv665 ; 4 uses
  store i8 %.0.i514, ptr %i.he, align 4, !tbaa !12
  %.not.i516 = icmp ult ptr %i.hd, %i.k
  br i1 %.not.i516, label %bb.bd, label %get8.exit518

bb.bd:                                            ; preds = %get8.exit515
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 2 uses
  %i.hg = load i8, ptr %i.hd, align 1, !tbaa !12
  store ptr %i.hf, ptr %4, align 8, !tbaa !9
  br label %get8.exit518

get8.exit518:                                     ; preds = %get8.exit515, %bb.bd
  %i.hh = phi ptr [ %i.hf, %bb.bd ], [ %i.hd, %get8.exit515 ] ; 4 uses
  %.0.i517 = phi i8 [ %i.hg, %bb.bd ], [ -73, %get8.exit515 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store i8 %.0.i517, ptr %i.hi, align 1, !tbaa !12
  %.not.i519 = icmp ult ptr %i.hh, %i.k
  br i1 %.not.i519, label %bb.be, label %get8.exit521

bb.be:                                            ; preds = %get8.exit518
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 2 uses
  %i.hk = load i8, ptr %i.hh, align 1, !tbaa !12
  store ptr %i.hj, ptr %4, align 8, !tbaa !9
  br label %get8.exit521

get8.exit521:                                     ; preds = %get8.exit518, %bb.be
  %i.hl = phi ptr [ %i.hj, %bb.be ], [ %i.hh, %get8.exit518 ] ; 4 uses
  %.0.i520 = phi i8 [ %i.hk, %bb.be ], [ -73, %get8.exit518 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  store i8 %.0.i520, ptr %i.hm, align 2, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 3
  store i8 44, ptr %i.hn, align 1, !tbaa !12
  %.not.i522 = icmp ult ptr %i.hl, %i.k
  br i1 %.not.i522, label %get8.exit524, label %get8.exit524.thread

get8.exit524:                                     ; preds = %get8.exit521
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 3 uses
  %i.hp = load i8, ptr %i.hl, align 1, !tbaa !12
  store ptr %i.ho, ptr %4, align 8, !tbaa !9
  %switch.tableidx793 = add i8 %i.hp, -1          ; 2 uses
  %i.hq = icmp ult i8 %switch.tableidx793, 3
  br i1 %i.hq, label %switch.lookup794, label %get8.exit524.thread

switch.lookup794:                                 ; preds = %get8.exit524
  %i.hr = zext nneg i8 %switch.tableidx793 to i64
  %switch.gep795 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ff_parse_mpeg2_descriptor.8, i64 %i.hr
  %switch.load796 = load i32, ptr %switch.gep795, align 4
  %i.hs = load i32, ptr %i.ag, align 8, !tbaa !45
  %i.ht = or i32 %i.hs, %switch.load796
  store i32 %i.ht, ptr %i.ag, align 8, !tbaa !45
  br label %get8.exit524.thread

get8.exit524.thread:                              ; preds = %get8.exit524, %switch.lookup794, %get8.exit521
  %i.hu = phi ptr [ %i.hl, %get8.exit521 ], [ %i.ho, %get8.exit524 ], [ %i.ho, %switch.lookup794 ]
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663.a, 4 ; 2 uses
  %.not459 = icmp samesign ugt i64 %indvars.iv.next664, %12
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 4
  br i1 %.not459, label %._crit_edge641, label %bb.bb, !llvm.loop !75

._crit_edge641:                                   ; preds = %get8.exit524.thread
  %i.hv = and i32 %i.i, 252                       ; 2 uses
  %i.hw = icmp ne i32 %i.hv, 0
  %i.hx = load i8, ptr %i.a, align 16
  %i.hy = icmp ne i8 %i.hx, 0
  %or.cond11 = select i1 %i.hw, i1 %i.hy, i1 false
  br i1 %or.cond11, label %bb.bf, label %get16.exit.thread

bb.bf:                                            ; preds = %._crit_edge641
  %i.hz = zext nneg i32 %i.hv to i64
  %i.ia = getelementptr i8, ptr %i.a, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 -1
  store i8 0, ptr %i.ib, align 1, !tbaa !12
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.id = call i32 @av_dict_set(ptr noundef nonnull %i.ic, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 16) #13 ; 0 uses
  br label %get16.exit.thread

bb.bg:                                            ; preds = %mpegts_find_stream_type.exit
  %i.ie = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store ptr %i.if, ptr %4, align 8, !tbaa !9
  %i.ig = load i32, ptr %i.ie, align 1, !tbaa !12
  %i.ih = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !76
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ih) #13
  %i.ii = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !23
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.in = load i32, ptr %i.im, align 8, !tbaa !26
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %bb.bi, label %get16.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !76
  tail call fastcc void @mpegts_find_stream_type(ptr noundef nonnull %1, i32 noundef %i.iq, ptr noundef nonnull @REGD_types)
  %i.ir = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i32, ptr %i.is, align 8, !tbaa !76
  %i.iu = icmp eq i32 %i.it, 1146311490
  br i1 %i.iu, label %bb.bj, label %get16.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i32 50, ptr %i.iv, align 8, !tbaa !26
  br label %get16.exit.thread

bb.bk:                                            ; preds = %mpegts_find_stream_type.exit
  %i.iw = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %.not.i525 = icmp ult ptr %i.iw, %i.k
  br i1 %.not.i525, label %bb.bl, label %get8.exit527

bb.bl:                                            ; preds = %bb.bk
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.iy = load i8, ptr %i.iw, align 1, !tbaa !12
  %i.iz = zext i8 %i.iy to i32
  store ptr %i.ix, ptr %4, align 8, !tbaa !9
  %i.ja = add nuw nsw i32 %i.iz, 1
  br label %get8.exit527

get8.exit527:                                     ; preds = %bb.bk, %bb.bl
  %.0.i526 = phi i32 [ %i.ja, %bb.bl ], [ -1094995528, %bb.bk ]
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 836
  store i32 %.0.i526, ptr %i.jb, align 4, !tbaa !77
  br label %get16.exit.thread

bb.bm:                                            ; preds = %mpegts_find_stream_type.exit
  %i.jc = load ptr, ptr %4, align 8, !tbaa !9     ; 5 uses
  %i.jd = ptrtoint ptr %i.k to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = icmp slt i64 %i.jf, 2
  br i1 %i.jg, label %get16.exit529.thread, label %get16.exit529

get16.exit529:                                    ; preds = %bb.bm
  %i.jh = load i16, ptr %i.jc, align 1, !tbaa !12
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 2 ; 2 uses
  store ptr %i.ji, ptr %4, align 8, !tbaa !9
  %i.jj = icmp eq i16 %i.jh, -1
  br i1 %i.jj, label %bb.bn, label %get16.exit529.thread

bb.bn:                                            ; preds = %get16.exit529
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jc, i64 6 ; 2 uses
  store ptr %i.jk, ptr %4, align 8, !tbaa !9
  br label %get16.exit529.thread

get16.exit529.thread:                             ; preds = %bb.bm, %bb.bn, %get16.exit529
  %i.jl = phi ptr [ %i.jc, %bb.bm ], [ %i.jk, %bb.bn ], [ %i.ji, %get16.exit529 ] ; 4 uses
  %.not.i530 = icmp ult ptr %i.jl, %i.k
  br i1 %.not.i530, label %get8.exit532, label %get16.exit.thread

get8.exit532:                                     ; preds = %get16.exit529.thread
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !12
  %i.jn = icmp eq i8 %i.jm, -1
  br i1 %i.jn, label %bb.bo, label %get16.exit.thread

bb.bo:                                            ; preds = %get8.exit532
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 5
  store ptr %i.jp, ptr %4, align 8, !tbaa !9
  %i.jq = load i32, ptr %i.jo, align 1, !tbaa !12 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.jq, ptr %i.jr, align 8, !tbaa !76
  %i.js = icmp eq i32 %i.af, 0
  br i1 %i.js, label %bb.bp, label %get16.exit.thread

bb.bp:                                            ; preds = %bb.bo
  tail call fastcc void @mpegts_find_stream_type(ptr noundef nonnull %1, i32 noundef %i.jq, ptr noundef nonnull @METADATA_types)
  br label %get16.exit.thread

bb.bq:                                            ; preds = %mpegts_find_stream_type.exit
  %i.jt = load ptr, ptr %4, align 8, !tbaa !9     ; 4 uses
  %.not.i533 = icmp ult ptr %i.jt, %i.k
  br i1 %.not.i533, label %get8.exit535, label %.critedge

get8.exit535:                                     ; preds = %bb.bq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1 ; 4 uses
  %i.jv = load i8, ptr %i.jt, align 1, !tbaa !12  ; 2 uses
  store ptr %i.ju, ptr %4, align 8, !tbaa !9
  %i.jw = icmp eq i32 %i.af, 86076
  %i.jx = icmp eq i8 %i.jv, -128
  %or.cond14 = and i1 %i.jx, %i.jw
  br i1 %or.cond14, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %get8.exit535
  %i.jy = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !72
  %.not455 = icmp eq ptr %i.jz, null
  br i1 %.not455, label %bb.bs, label %get16.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.ka = tail call noalias ptr @av_mallocz(i64 noundef 94) #13 ; 3 uses
  %i.kb = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  store ptr %i.ka, ptr %i.kc, align 8, !tbaa !72
  %.not456 = icmp eq ptr %i.ka, null
  br i1 %.not456, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store i32 30, ptr %i.kd, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ka, ptr noundef nonnull align 16 dereferenceable(30) @opus_default_extradata, i64 30, i1 false)
  %i.ke = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %.not.i536 = icmp ult ptr %i.ke, %i.k
  br i1 %.not.i536, label %get8.exit538, label %.critedge

get8.exit538:                                     ; preds = %bb.bt
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !12  ; 4 uses
  store ptr %i.kf, ptr %4, align 8, !tbaa !9
  %i.kh = icmp ult i8 %i.kg, 9
  br i1 %i.kh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %get8.exit538
  %.not457 = icmp eq i8 %i.kg, 0                  ; 2 uses
  %narrow = select i1 %.not457, i8 2, i8 %i.kg    ; 4 uses
  %i.ki = load ptr, ptr %i.kc, align 8, !tbaa !72
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 9
  store i8 %narrow, ptr %i.kj, align 1, !tbaa !12
  %i.kk = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !72
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  store i32 48000, ptr %i.kn, align 1, !tbaa !12
  %i.ko = icmp samesign ugt i8 %narrow, 2
  %i.kp = zext i1 %i.ko to i8
  %i.kq = select i1 %.not457, i8 -1, i8 %i.kp
  %i.kr = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !72
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 18
  store i8 %i.kq, ptr %i.ku, align 1, !tbaa !12
  %i.kv = zext nneg i8 %i.kg to i64               ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr @opus_stream_cnt, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !12
  %i.ky = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !72
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 19
  store i8 %i.kx, ptr %i.lb, align 1, !tbaa !12
  %i.lc = getelementptr inbounds nuw i8, ptr @opus_coupled_stream_cnt, i64 %i.kv
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !12
  %i.le = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !72
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 20
  store i8 %i.ld, ptr %i.lh, align 1, !tbaa !12
  %i.li = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !72
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 21
  %i.lm = zext nneg i8 %narrow to i64             ; 2 uses
  %i.ln = getelementptr [8 x i8], ptr @opus_channel_map, i64 %i.lm
end_hunk_1
begin_hunk_2_@parse_mpeg2_extension_descriptor:bb.a
  %.not.i213 = icmp ult ptr %i.b, %4
  br i1 %.not.i213, label %bb.x, label %get8.exit215

bb.x:                                             ; preds = %get_program.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.cj = load i8, ptr %i.b, align 1, !tbaa !12
  %i.ck = zext i8 %i.cj to i32
  store ptr %i.ci, ptr %3, align 8, !tbaa !9
  br label %get8.exit215

get8.exit215:                                     ; preds = %get_program.exit, %bb.x
  %.0.i214 = phi i32 [ %i.ck, %bb.x ], [ -1094995529, %get_program.exit ] ; 2 uses
  %.not181 = icmp eq ptr %.09.i, null
  br i1 %.not181, label %.critedge189, label %bb.y

bb.y:                                             ; preds = %get8.exit215
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !23
  %.not182 = icmp eq i32 %i.co, 98316
  br i1 %.not182, label %.preheader, label %.critedge189

.preheader:                                       ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i, i64 1560 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i, i64 1556 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !96 ; 6 uses
  %.not290.a = icmp eq i32 %i.cr, 0
  br i1 %.not290.a, label %._crit_edge273, label %.lr.ph272.preheader

.lr.ph272.preheader:                              ; preds = %.preheader
  %wide.trip.count302 = zext i32 %i.cr to i64
  br label %.lr.ph272

.lr.ph272:                                        ; preds = %.lr.ph272.preheader, %bb.aa
  %indvars.iv299 = phi i64 [ 0, %.lr.ph272.preheader ], [ %indvars.iv.next300, %bb.aa ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [1040 x i8], ptr %i.cp, i64 %indvars.iv299 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !97
  %.not183 = icmp eq i32 %i.ct, 4
  br i1 %.not183, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph272
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !102
  %i.cw = icmp eq i32 %i.cv, %.0.i214
  br i1 %i.cw, label %._crit_edge273.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph272
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %._crit_edge273.thread, label %.lr.ph272, !llvm.loop !137

._crit_edge273.loopexit:                          ; preds = %bb.z
  %i.cx = trunc nuw nsw i64 %indvars.iv299 to i32
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %._crit_edge273.loopexit, %.preheader
  %.0157.lcssa = phi i32 [ 0, %.preheader ], [ %i.cx, %._crit_edge273.loopexit ] ; 3 uses
  %i.cy = icmp eq i32 %.0157.lcssa, %i.cr
  br i1 %i.cy, label %._crit_edge273.thread, label %bb.ac

._crit_edge273.thread:                            ; preds = %bb.aa, %._crit_edge273
  %.0157.lcssa346 = phi i32 [ %.0157.lcssa, %._crit_edge273 ], [ %i.cr, %bb.aa ]
  %i.cz = icmp eq i32 %i.cr, 128
  br i1 %i.cz, label %.critedge189, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge273.thread
  %i.da = add i32 %i.cr, 1
  store i32 %i.da, ptr %i.cq, align 4, !tbaa !96
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge273
  %.0157.lcssa345 = phi i32 [ %.0157.lcssa346, %bb.ab ], [ %.0157.lcssa, %._crit_edge273 ]
  %i.db = zext nneg i32 %.0157.lcssa345 to i64
  %i.dc = getelementptr inbounds nuw [1040 x i8], ptr %i.cp, i64 %i.db ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %.0.i214, ptr %i.dd, align 4, !tbaa !102
  store i32 4, ptr %i.dc, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !99 ; 8 uses
  %.not291 = icmp eq i32 %i.dg, 0
  br i1 %.not291, label %._crit_edge282, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %bb.ac
  %wide.trip.count307 = zext i32 %i.dg to i64
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %bb.ad
  %indvars.iv304 = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next305, %bb.ad ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv304
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !100
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !23
  %i.dn = icmp eq i32 %i.dm, 98316
  br i1 %i.dn, label %._crit_edge282.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph281
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count307
  br i1 %exitcond308.not, label %._crit_edge282.thread, label %.lr.ph281, !llvm.loop !138

._crit_edge282.loopexit:                          ; preds = %.lr.ph281
  %i.do = trunc nuw nsw i64 %indvars.iv304 to i32
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %bb.ac
  %.1158.lcssa = phi i32 [ 0, %bb.ac ], [ %i.do, %._crit_edge282.loopexit ] ; 4 uses
  %i.dp = icmp eq i32 %.1158.lcssa, %i.dg
  br i1 %i.dp, label %._crit_edge282.thread, label %bb.af

._crit_edge282.thread:                            ; preds = %bb.ad, %._crit_edge282
  %.1158.lcssa349 = phi i32 [ %.1158.lcssa, %._crit_edge282 ], [ %i.dg, %bb.ad ]
  %i.dq = icmp eq i32 %i.dg, 128
  br i1 %i.dq, label %.critedge189, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge282.thread
  %i.dr = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dr, ptr %i.df, align 4, !tbaa !99
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge282, %bb.ae
  %.sink = phi i32 [ %i.dg, %bb.ae ], [ %.1158.lcssa, %._crit_edge282 ]
  %.1158.lcssa348 = phi i32 [ %.1158.lcssa349, %bb.ae ], [ %.1158.lcssa, %._crit_edge282 ]
  %i.ds = phi i32 [ %i.dr, %bb.ae ], [ %i.dg, %._crit_edge282 ]
  %i.dt = zext i32 %.sink to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dt
  store ptr %1, ptr %i.du, align 8, !tbaa !100
  %i.dv = icmp ult i32 %.1158.lcssa348, %i.ds
  br i1 %i.dv, label %.critedge189, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 2014) #13
  tail call void @abort() #14
  unreachable

bb.ah:                                            ; preds = %get8.exit
  %.not.i216 = icmp eq ptr %5, null
  br i1 %.not.i216, label %get_program.exit225, label %.preheader.i217

.preheader.i217:                                  ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !91 ; 2 uses
  %.not14.i218 = icmp eq i32 %i.dx, 0
  br i1 %.not14.i218, label %get_program.exit225, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.preheader.i217
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !92
  %wide.trip.count.i220 = zext i32 %i.dx to i64
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next.i222 = add nuw nsw i64 %indvars.iv.i221, 1 ; 2 uses
  %exitcond.not.i223 = icmp eq i64 %indvars.iv.next.i222, %wide.trip.count.i220
  br i1 %exitcond.not.i223, label %get_program.exit225, label %bb.aj, !llvm.loop !93

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i219
  %indvars.iv.i221 = phi i64 [ 0, %.lr.ph.i219 ], [ %indvars.iv.next.i222, %bb.ai ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [134688 x i8], ptr %i.dz, i64 %indvars.iv.i221 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !94
  %i.ec = icmp eq i32 %i.eb, %2
  br i1 %i.ec, label %get_program.exit225, label %bb.ai

get_program.exit225:                              ; preds = %bb.ai, %bb.aj, %bb.ah, %.preheader.i217
  %.09.i224 = phi ptr [ null, %bb.ah ], [ null, %.preheader.i217 ], [ null, %bb.ai ], [ %i.ea, %bb.aj ] ; 3 uses
  %.not.i226 = icmp ult ptr %i.b, %4
  br i1 %.not.i226, label %bb.ak, label %get8.exit228

bb.ak:                                            ; preds = %get_program.exit225
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ee = load i8, ptr %i.b, align 1, !tbaa !12
  %i.ef = zext i8 %i.ee to i32
  store ptr %i.ed, ptr %3, align 8, !tbaa !9
  br label %get8.exit228

get8.exit228:                                     ; preds = %get_program.exit225, %bb.ak
  %.promoted = phi ptr [ %i.ed, %bb.ak ], [ %i.b, %get_program.exit225 ]
  %.0.i227 = phi i32 [ %i.ef, %bb.ak ], [ -1094995529, %get_program.exit225 ] ; 2 uses
  %.not = icmp eq ptr %.09.i224, null
  br i1 %.not, label %.critedge189, label %bb.al

bb.al:                                            ; preds = %get8.exit228
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !23
  %i.ek = icmp eq i32 %i.ej, 98316
  br i1 %i.ek, label %.critedge189, label %.preheader240

.preheader240:                                    ; preds = %bb.al
  %.not180.not262 = icmp sgt i32 %.0.i227, 0
  br i1 %.not180.not262, label %.lr.ph264, label %.critedge189

.lr.ph264:                                        ; preds = %.preheader240
  %i.el = getelementptr inbounds nuw i8, ptr %.09.i224, i64 1560 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i224, i64 1556 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted270 = load i32, ptr %i.em, align 4, !tbaa !96
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph264, %bb.au
  %6 = phi i32 [ %.promoted270, %.lr.ph264 ], [ %7, %bb.au ] ; 7 uses
  %i.eo = phi ptr [ %.promoted, %.lr.ph264 ], [ %i.es, %bb.au ] ; 4 uses
  %.0156263 = phi i32 [ 0, %.lr.ph264 ], [ %i.fu, %bb.au ]
  %.not.i229 = icmp ult ptr %i.eo, %4
  br i1 %.not.i229, label %bb.an, label %get8.exit231

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !12
  %i.er = zext i8 %i.eq to i32
  store ptr %i.ep, ptr %3, align 8, !tbaa !9
  br label %get8.exit231

get8.exit231:                                     ; preds = %bb.am, %bb.an
  %i.es = phi ptr [ %i.ep, %bb.an ], [ %i.eo, %bb.am ]
  %.0.i230 = phi i32 [ %i.er, %bb.an ], [ -1094995529, %bb.am ] ; 2 uses
  %.not288.a = icmp eq i32 %6, 0
  br i1 %.not288.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %get8.exit231
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %i.et = getelementptr inbounds nuw [1040 x i8], ptr %i.el, i64 %indvars.iv ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !97
  %.not179 = icmp eq i32 %i.eu, 4
  br i1 %.not179, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !102
  %i.ex = icmp eq i32 %i.ew, %.0.i230
  br i1 %i.ex, label %._crit_edge.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !139

._crit_edge.loopexit:                             ; preds = %bb.ao
  %i.ey = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %get8.exit231
  %.0.lcssa = phi i32 [ 0, %get8.exit231 ], [ %i.ey, %._crit_edge.loopexit ] ; 3 uses
  %i.ez = icmp eq i32 %.0.lcssa, %6
  br i1 %i.ez, label %._crit_edge.thread, label %bb.ar

._crit_edge.thread:                               ; preds = %bb.ap, %._crit_edge
  %.0.lcssa352 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %6, %bb.ap ]
  %i.fa = icmp eq i32 %6, 128
  br i1 %i.fa, label %.critedge189, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.thread
  %i.fb = add i32 %6, 1                           ; 2 uses
  store i32 %i.fb, ptr %i.em, align 4, !tbaa !96
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge
  %.0.lcssa351 = phi i32 [ %.0.lcssa352, %bb.aq ], [ %.0.lcssa, %._crit_edge ]
  %7 = phi i32 [ %i.fb, %bb.aq ], [ %6, %._crit_edge ]
  %i.fc = zext nneg i32 %.0.lcssa351 to i64
  %i.fd = getelementptr inbounds nuw [1040 x i8], ptr %i.el, i64 %i.fc ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %.0.i230, ptr %i.fe, align 4, !tbaa !102
  store i32 4, ptr %i.fd, align 8, !tbaa !97
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !99 ; 6 uses
  %.not289 = icmp eq i32 %i.fh, 0
  br i1 %.not289, label %.thread, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.ar
  %i.fi = load i32, ptr %i.en, align 8, !tbaa !140
  %wide.trip.count296 = zext i32 %i.fh to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph255, %bb.at
  %indvars.iv293 = phi i64 [ 0, %.lr.ph255 ], [ %indvars.iv.next294, %bb.at ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv293
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !100
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !140
  %i.fn = icmp eq i32 %i.fm, %i.fi
  br i1 %i.fn, label %._crit_edge256, label %bb.at

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond297.not.a = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not.a, label %._crit_edge256.thread354, label %bb.as, !llvm.loop !141

._crit_edge256:                                   ; preds = %bb.as
  %i.fo = trunc nuw nsw i64 %indvars.iv293 to i32
  %i.fp = icmp eq i32 %i.fh, %i.fo
  br i1 %i.fp, label %._crit_edge256.thread354, label %bb.au

._crit_edge256.thread354:                         ; preds = %bb.at, %._crit_edge256
  %i.fq = icmp eq i32 %i.fh, 128
  br i1 %i.fq, label %.critedge189, label %.thread

.thread:                                          ; preds = %bb.ar, %._crit_edge256.thread354
  %i.fr = add i32 %i.fh, 1
  store i32 %i.fr, ptr %i.fg, align 4, !tbaa !99
  %i.fs = zext i32 %i.fh to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fs
  store ptr %1, ptr %i.ft, align 8, !tbaa !100
  br label %bb.au

bb.au:                                            ; preds = %.thread, %._crit_edge256
  %i.fu = add nuw nsw i32 %.0156263, 1            ; 2 uses
  %exitcond298.not = icmp eq i32 %i.fu, %.0.i227
  br i1 %exitcond298.not, label %.critedge189, label %bb.am, !llvm.loop !142

.critedge189:                                     ; preds = %bb.au, %._crit_edge256.thread354, %._crit_edge.thread, %.preheader240, %bb.al, %get8.exit228, %._crit_edge282.thread, %._crit_edge273.thread, %bb.y, %get8.exit215, %bb.a, %get8.exit, %bb.t, %bb.af, %bb.o, %get8.exit194.thread, %bb.k, %bb.b
  %.8 = phi i32 [ -1094995529, %bb.o ], [ 0, %get8.exit215 ], [ 0, %bb.a ], [ -1094995529, %bb.b ], [ -1094995529, %bb.k ], [ -1094995529, %get8.exit194.thread ], [ 0, %get8.exit228 ], [ 0, %bb.af ], [ 0, %get8.exit ], [ 0, %bb.t ], [ -22, %._crit_edge282.thread ], [ -22, %._crit_edge273.thread ], [ -1094995529, %bb.y ], [ -1094995529, %bb.al ], [ 0, %.preheader240 ], [ 0, %bb.au ], [ -22, %._crit_edge256.thread354 ], [ -22, %._crit_edge.thread ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define ptr @avpriv_mpegts_parse_open(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 74136) #13 ; 12 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %mpegts_open_section_filter.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 188, ptr %i.b, align 8, !tbaa !143
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 2048000, ptr %i.c, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.e, align 8, !tbaa !145
  %i.f = tail call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %mpegts_open_section_filter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef 17, i32 noundef 1) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8464 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i = icmp eq ptr %i.i, null
  br i1 %.not20.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @av_free(ptr noundef nonnull %i.f) #13
  br label %mpegts_open_section_filter.exit

bb.f:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.g, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 1, ptr %i.j, align 4, !tbaa !61
  store i32 17, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 -1, ptr %i.k, align 4, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -1, ptr %i.l, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 -1, ptr %i.m, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr @sdt_cb, ptr %i.n, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr %i.a, ptr %i.o, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.f, ptr %i.p, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = or i8 %i.r, 1
  store i8 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 -1, ptr %i.t, align 8, !tbaa !69
  br label %mpegts_open_section_filter.exit

mpegts_open_section_filter.exit:                  ; preds = %bb.b, %bb.e, %bb.f
  %i.u = tail call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i15 = icmp eq ptr %i.u, null
  br i1 %.not.i15, label %mpegts_open_section_filter.exit19, label %bb.g

bb.g:                                             ; preds = %mpegts_open_section_filter.exit
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.v, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 1) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8328 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %.not.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i16, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not20.i.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @av_free(ptr noundef nonnull %i.u) #13
  br label %mpegts_open_section_filter.exit19

bb.j:                                             ; preds = %bb.h
  store ptr %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store i32 1, ptr %i.z, align 4, !tbaa !61
  store i32 0, ptr %i.y, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 -1, ptr %i.aa, align 4, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 -1, ptr %i.ab, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 -1, ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store ptr @pat_cb, ptr %i.ad, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr %i.u, ptr %i.af, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = or i8 %i.ah, 1
  store i8 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 -1, ptr %i.aj, align 8, !tbaa !69
  br label %mpegts_open_section_filter.exit19

mpegts_open_section_filter.exit19:                ; preds = %mpegts_open_section_filter.exit, %bb.i, %bb.j
  %i.ak = tail call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i20, label %mpegts_open_section_filter.exit24, label %bb.k

bb.k:                                             ; preds = %mpegts_open_section_filter.exit19
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.al, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef 18, i32 noundef 1) #13
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8472 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
  %.not.i.i21 = icmp eq ptr %i.an, null
  br i1 %.not.i.i21, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not20.i.i23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @av_free(ptr noundef nonnull %i.ak) #13
  br label %mpegts_open_section_filter.exit24

bb.n:                                             ; preds = %bb.l
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  store i32 1, ptr %i.ap, align 4, !tbaa !61
  store i32 18, ptr %i.ao, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 -1, ptr %i.aq, align 4, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -1, ptr %i.ar, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 -1, ptr %i.as, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store ptr @eit_cb, ptr %i.at, align 8, !tbaa !65
end_hunk_2
