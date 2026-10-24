Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jxl?download=true
inline.NumInlined: 264
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3jxl6extras10SetupFrameEP10JxlEncoderP23JxlEncoderFrameSettingsRK14JxlFrameHeaderRKNS0_17JXLCompressParamsERKNS0_15PackedPixelFileEmmmRm:bb.a
.lr.ph:                                           ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 216
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %.058 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.s ] ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !86 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 80
  %i.bn = icmp ult i64 %.058, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %i.bi, i64 %.058
  %i.bp = add i64 %.058, %7                       ; 2 uses
  %i.bq = call i32 @JxlEncoderSetExtraChannelInfo(ptr noundef %0, i64 noundef %i.bp, ptr noundef nonnull %i.bo) #11
  %.not50 = icmp eq i32 %i.bq, 0
  br i1 %.not50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.3) #12 ; 0 uses
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !86
  %i.bu = getelementptr inbounds nuw [80 x i8], ptr %i.bt, i64 %.058 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.bx = trunc i8 %i.bw to i1                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = lshr i8 %i.bw, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = select i1 %i.bx, i64 %i.bz, i64 %i.cb   ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 57
  %i.ch = select i1 %i.bx, ptr %i.cf, ptr %i.cg
  %i.ci = call i32 @JxlEncoderSetExtraChannelName(ptr noundef %0, i64 noundef %i.bp, ptr noundef %i.ch, i64 noundef %i.cc) #11
  %.not51 = icmp eq i32 %i.ci, 0
  br i1 %.not51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ck = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.4) #12 ; 0 uses
  br label %.critedge

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.m
  %i.cl = add nuw nsw i64 %.058, 1                ; 2 uses
  %i.cm = load i32, ptr %i.bc, align 8, !tbaa !84
  %i.cn = zext i32 %i.cm to i64
  %.not59 = icmp samesign ult i64 %i.cl, %i.cn
  br i1 %.not59, label %bb.m, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %bb.s, %bb.l, %bb.r, %bb.o, %.thread, %_ZN3jxl6extras15SetFrameOptionsERKNSt3__16vectorINS0_9JXLOptionENS1_9allocatorIS3_EEEEmPmP23JxlEncoderFrameSettings.exit, %bb.b
  %.7 = phi i1 [ false, %bb.b ], [ false, %_ZN3jxl6extras15SetFrameOptionsERKNSt3__16vectorINS0_9JXLOptionENS1_9allocatorIS3_EEEEmPmP23JxlEncoderFrameSettings.exit ], [ false, %.thread ], [ false, %bb.o ], [ false, %bb.r ], [ true, %bb.l ], [ true, %bb.s ]
  ret i1 %.7
}

declare i32 @JxlEncoderSetFrameHeader(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @JxlEncoderInitExtraChannelInfo(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @JxlEncoderSetExtraChannelInfo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @JxlEncoderSetExtraChannelBlendInfo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @JxlEncoderSetExtraChannelName(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3jxl6extras20ReadCompressedOutputEP10JxlEncoderPNSt3__16vectorIhNS3_9allocatorIhEEEE(ptr noundef %0, ptr noundef nonnull initializes((8, 16)) %1) local_unnamed_addr #0 {
_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %i.d, ptr %i.c, align 8, !tbaa !73
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4096) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !18
  %i.j = call i32 @JxlEncoderProcessOutput(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 2 uses
  %cond36 = icmp eq i32 %i.j, 2
  br i1 %cond36, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit19
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.l = load ptr, ptr %1, align 8, !tbaa !72     ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.n                       ; 4 uses
  %i.s = shl i64 %i.r, 1
  %i.t = icmp sgt i64 %i.r, 0
  br i1 %i.t, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.r) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !73
  %.pre27 = ptrtoint ptr %.pre to i64
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit19

bb.b:                                             ; preds = %.lr.ph
  %i.u = icmp slt i64 %i.r, 0
  br i1 %i.u, label %bb.c, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit19

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s ; 2 uses
  store ptr %i.v, ptr %i.c, align 8, !tbaa !73
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit19

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit19: ; preds = %bb.a, %bb.b, %bb.c
  %.pre-phi = phi i64 [ %.pre27, %bb.a ], [ %i.n, %bb.b ], [ %i.n, %bb.c ]
  %i.w = phi ptr [ %.pre23, %bb.a ], [ %i.p, %bb.b ], [ %i.v, %bb.c ]
  %i.x = phi ptr [ %.pre, %bb.a ], [ %i.l, %bb.b ], [ %i.l, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store ptr %i.y, ptr %i.a, align 8, !tbaa !74
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = add i64 %i.o, %.pre-phi
  %i.ab = sub i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !18
  %i.ac = call i32 @JxlEncoderProcessOutput(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 2 uses
  %cond = icmp eq i32 %i.ac, 2
  br i1 %cond, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit19, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %.lcssa = phi i32 [ %i.j, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ %i.ac, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit19 ]
  %.pre25 = load ptr, ptr %1, align 8, !tbaa !72  ; 2 uses
  %.pre26 = load ptr, ptr %i.c, align 8, !tbaa !73
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre28 = ptrtoint ptr %.pre25 to i64           ; 2 uses
  %.pre24 = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.ad = ptrtoint ptr %.pre24 to i64
  %i.ae = sub i64 %i.ad, %.pre28                  ; 4 uses
  %i.af = sub i64 %.pre30, %.pre28                ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ah = sub nuw i64 %i.ae, %i.af
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ah) #14
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit20

bb.e:                                             ; preds = %._crit_edge
  %i.ai = icmp ugt i64 %i.af, %i.ae
  br i1 %i.ai, label %bb.f, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit20

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre25, i64 %i.ae
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !73
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit20

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit20: ; preds = %bb.d, %bb.e, %bb.f
  %.not = icmp eq i32 %.lcssa, 0                  ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit20
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.5) #12 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit20, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.not
}

declare i32 @JxlEncoderProcessOutput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3jxl6extras14EncodeImageJXLERKNS0_17JXLCompressParamsERKNS0_15PackedPixelFileEPKNSt3__16vectorIhNS7_9allocatorIhEEEEPSB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(584) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.JxlBasicInfo, align 4       ; 15 uses
  %5 = alloca %"class.std::__1::vector.8", align 8 ; 14 uses
  %6 = alloca %struct.JxlPixelFormat, align 8     ; 7 uses
  %7 = alloca %struct.JxlChunkedFrameInputSource, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = tail call ptr @JxlEncoderCreate(ptr noundef %i.c) #11, !noalias !101 ; 27 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load i8, ptr %i.e, align 8, !tbaa !102, !range !14, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @JxlEncoderAllowExpertOptions(ptr noundef %i.d) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.l = tail call i32 @JxlEncoderSetParallelRunner(ptr noundef %i.d, ptr noundef %i.k, ptr noundef nonnull %i.i) #11
  %.not216 = icmp eq i32 %i.l, 0
  br i1 %.not216, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.6) #12 ; 0 uses
  br label %bb.cx

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not1.i = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit.thread, label %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit

_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !106
  %.not287 = icmp eq ptr %i.t, null
  br i1 %.not287, label %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = tail call i32 @JxlEncoderSetOutputProcessor(ptr noundef %i.d, ptr noundef nonnull byval(%struct.JxlEncoderOutputProcessor) align 8 %i.u) #11
  %.not217 = icmp eq i32 %i.v, 0
  br i1 %.not217, label %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.7) #12 ; 0 uses
  br label %bb.cx

_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit
  %i.y = tail call ptr @JxlEncoderFrameSettingsCreate(ptr noundef %i.d, ptr noundef null) #11 ; 18 uses
  %.not218 = icmp eq ptr %i.y, null
  br i1 %.not218, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit.thread
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.8) #12 ; 0 uses
  br label %bb.cx

bb.j:                                             ; preds = %_ZNK3jxl6extras17JXLCompressParams18HasOutputProcessorEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ad = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %.not288 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not288, label %bb.o, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.n
  %i.ae = phi i64 [ %i.at, %bb.n ], [ 0, %bb.j ]  ; 3 uses
  %i.af = phi ptr [ %i.av, %bb.n ], [ %i.ad, %bb.j ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26
  %.not289 = icmp eq i64 %i.ai, 0
  br i1 %.not289, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !13, !range !14, !noundef !15
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load float, ptr %i.an, align 8, !tbaa !17
  %i.ap = tail call i32 @JxlEncoderFrameSettingsSetFloatOption(ptr noundef nonnull %i.y, i32 noundef %i.am, float noundef %i.ao) #11
  br label %_ZN3jxl6extras9SetOptionERKNS0_9JXLOptionEP23JxlEncoderFrameSettings.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !17
  %i.ar = tail call i32 @JxlEncoderFrameSettingsSetOption(ptr noundef nonnull %i.y, i32 noundef %i.am, i64 noundef %i.aq) #11
  br label %_ZN3jxl6extras9SetOptionERKNS0_9JXLOptionEP23JxlEncoderFrameSettings.exit.i

_ZN3jxl6extras9SetOptionERKNS0_9JXLOptionEP23JxlEncoderFrameSettings.exit.i: ; preds = %bb.m, %bb.l
  %i.as = phi i32 [ %i.ap, %bb.l ], [ %i.ar, %bb.m ]
  %.not.i265 = icmp eq i32 %i.as, 0
  br i1 %.not.i265, label %bb.n, label %_ZN3jxl6extras15SetFrameOptionsERKNSt3__16vectorINS0_9JXLOptionENS1_9allocatorIS3_EEEEmPmP23JxlEncoderFrameSettings.exit

bb.n:                                             ; preds = %_ZN3jxl6extras9SetOptionERKNS0_9JXLOptionEP23JxlEncoderFrameSettings.exit.i
  %i.at = add nuw i64 %i.ae, 1                    ; 3 uses
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.av = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 24
  %i.ba = icmp ult i64 %i.at, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %.loopexit

_ZN3jxl6extras15SetFrameOptionsERKNSt3__16vectorINS0_9JXLOptionENS1_9allocatorIS3_EEEEmPmP23JxlEncoderFrameSettings.exit: ; preds = %_ZN3jxl6extras9SetOptionERKNS0_9JXLOptionEP23JxlEncoderFrameSettings.exit.i
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bc = load i32, ptr %i.ag, align 8, !tbaa !16
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str, i32 noundef %i.bc) #12 ; 0 uses
  br label %bb.cw

.loopexit:                                        ; preds = %bb.n, %.lr.ph.i
  %i.be = phi i64 [ %i.at, %bb.n ], [ %i.ae, %.lr.ph.i ]
  store i64 %i.be, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !107
  %i.bh = tail call i32 @JxlEncoderSetFrameDistance(ptr noundef nonnull %i.y, float noundef %i.bg) #11
  %.not219 = icmp eq i32 %i.bh, 0
  br i1 %.not219, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.9) #12 ; 0 uses
  br label %bb.cw

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !108 ; 2 uses
  %.not220 = icmp eq ptr %i.bl, null
  br i1 %.not220, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !109
  tail call void @JxlEncoderSetDebugImageCallback(ptr noundef nonnull %i.y, ptr noundef nonnull %i.bl, ptr noundef %i.bn) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !110 ; 2 uses
  %.not221 = icmp eq ptr %i.bp, null
  br i1 %.not221, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @JxlEncoderCollectStats(ptr noundef nonnull %i.y, ptr noundef nonnull %i.bp) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not222 = icmp eq ptr %2, null                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !73
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !73
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !72
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !73
  %i.ce = icmp eq ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !72
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !72
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !73
  %i.co = icmp ne ptr %i.cl, %i.cn                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !111, !range !14, !noundef !15
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond = or i1 %i.co, %i.cr                   ; 2 uses
  %brmerge = or i1 %.not222, %or.cond
  %.mux = zext i1 %or.cond to i32
  br i1 %brmerge, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %8 = phi i1 [ %i.co, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ]
  %9 = phi i32 [ %.mux, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.u ]
  %10 = tail call i32 @JxlEncoderUseContainer(ptr noundef %i.d, i32 noundef %9) #11
  %.not223 = icmp eq i32 %10, 0
  br i1 %.not223, label %bb.ab, label %bb.aa

.thread:                                          ; preds = %bb.y
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %12 = load i8, ptr %11, align 1, !tbaa !112, !range !14, !noundef !15
  %13 = zext nneg i8 %12 to i32
  %i.cs = tail call i32 @JxlEncoderUseContainer(ptr noundef %i.d, i32 noundef %13) #11
  %.not223.a = icmp eq i32 %i.cs, 0
  br i1 %.not223.a, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.10) #12 ; 0 uses
  br label %bb.cw

bb.ab:                                            ; preds = %bb.z
  br i1 %.not222, label %bb.ar, label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !112, !range !14, !noundef !15
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ad, label %.thread351

bb.ad:                                            ; preds = %bb.ac
  %i.cy = tail call i32 @JxlEncoderStoreJPEGMetadata(ptr noundef %i.d, i32 noundef 1) #11
  %.not244 = icmp eq i32 %i.cy, 0
  br i1 %.not244, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.11) #12 ; 0 uses
  br label %bb.cw

bb.af:                                            ; preds = %bb.ad
  %.pre = load i8, ptr %i.cv, align 1, !tbaa !112, !range !14
  %i.db = trunc nuw i8 %.pre to i1
  br i1 %i.db, label %bb.ag, label %.thread351

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !113, !range !14, !noundef !15
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.dg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.12) #12 ; 0 uses
  br label %bb.cw

bb.ai:                                            ; preds = %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !114, !range !14, !noundef !15
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.aj, label %.thread285.thread

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.dl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.13) #12 ; 0 uses
  br label %bb.cw

.thread351:                                       ; preds = %bb.ac, %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !113, !range !14, !noundef !15
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.thread285, label %.thread285.thread352

.thread285:                                       ; preds = %.thread351
  %i.dp = tail call i32 @JxlEncoderFrameSettingsSetOption(ptr noundef nonnull %i.y, i32 noundef 35, i64 noundef 0) #11 ; 0 uses
  %.pre304 = load i8, ptr %i.cv, align 1, !tbaa !112, !range !14
  %i.dq = trunc nuw i8 %.pre304 to i1
  br i1 %i.dq, label %.thread285.thread, label %.thread285.thread352

.thread285.thread352:                             ; preds = %.thread351, %.thread285
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !114, !range !14, !noundef !15
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ak, label %.thread285.thread

bb.ak:                                            ; preds = %.thread285.thread352
  %i.du = tail call i32 @JxlEncoderFrameSettingsSetOption(ptr noundef nonnull %i.y, i32 noundef 36, i64 noundef 0) #11 ; 0 uses
  br label %.thread285.thread

.thread285.thread:                                ; preds = %bb.ai, %bb.ak, %.thread285.thread352, %.thread285
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !115, !range !14, !noundef !15
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread285.thread
  %i.dy = tail call i32 @JxlEncoderFrameSettingsSetOption(ptr noundef nonnull %i.y, i32 noundef 37, i64 noundef 0) #11 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread285.thread
  %i.dz = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !73
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = tail call i32 @JxlEncoderAddJPEGFrame(ptr noundef nonnull %i.y, ptr noundef %i.dz, i64 noundef %i.ee) #11
  %.not245 = icmp eq i32 %i.ef, 0
  br i1 %.not245, label %bb.cs, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = tail call i32 @JxlEncoderGetError(ptr noundef %i.d) #11
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !28 ; 3 uses
  switch i32 %i.eg, label %bb.aq [
    i32 4, label %bb.ao
    i32 3, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.14) #12 ; 0 uses
  br label %bb.cw

bb.ap:                                            ; preds = %bb.an
  %i.ej = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.15) #12 ; 0 uses
  br label %bb.cw

bb.aq:                                            ; preds = %bb.an
  %i.ek = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.16) #12 ; 0 uses
  br label %bb.cw

bb.ar:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(204) %4, ptr noundef nonnull align 8 dereferenceable(204) %1, i64 204, i1 false), !tbaa.struct !118
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !119 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !120
  %i.ep = mul i32 %i.eo, %i.em
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !120
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !121
  %i.es = mul i32 %i.er, %i.em
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !121
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !122
  %.not224 = icmp ne i32 %i.eu, 0                 ; 3 uses
  %spec.select = zext i1 %.not224 to i64          ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !123 ; 2 uses
  %i.ex = fcmp ogt float %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.ew, ptr %i.ey, align 4, !tbaa !124
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ez = zext i1 %.not224 to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !29
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.fb, i32 %i.ez)
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %.sroa.speculated, ptr %i.fc, align 4, !tbaa !125
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !126
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !127
  %i.fg = load float, ptr %i.bf, align 8, !tbaa !107
  %i.fh = fcmp oeq float %i.fg, 0.000000e+00      ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.fj = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 3 uses
  %.not6.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not6.i, label %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPKN3jxl6extras9JXLOptionEEEZNS3_14EncodeImageJXLERKNS3_17JXLCompressParamsERKNS3_15PackedPixelFileEPKNS_6vectorIhNS_9allocatorIhEEEEPSH_E3$_0EET_SM_SM_T0_.exit", label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %bb.at, %bb.au
  %.sroa.03.07.i = phi ptr [ %i.fl, %bb.au ], [ %i.fi, %bb.at ] ; 3 uses
  %.sroa.0.0.copyload1.i = load i32, ptr %.sroa.03.07.i, align 8, !tbaa !128
  %i.fk = icmp eq i32 %.sroa.0.0.copyload1.i, 39
  br i1 %i.fk, label %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPKN3jxl6extras9JXLOptionEEEZNS3_14EncodeImageJXLERKNS3_17JXLCompressParamsERKNS3_15PackedPixelFileEPKNS_6vectorIhNS_9allocatorIhEEEEPSH_E3$_0EET_SM_SM_T0_.exit", label %bb.au

bb.au:                                            ; preds = %.lr.ph.i266
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 24 ; 3 uses
  %.not.i267 = icmp eq ptr %i.fl, %i.fj
  br i1 %.not.i267, label %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPKN3jxl6extras9JXLOptionEEEZNS3_14EncodeImageJXLERKNS3_17JXLCompressParamsERKNS3_15PackedPixelFileEPKNS_6vectorIhNS_9allocatorIhEEEEPSH_E3$_0EET_SM_SM_T0_.exit", label %.lr.ph.i266, !llvm.loop !89

"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPKN3jxl6extras9JXLOptionEEEZNS3_14EncodeImageJXLERKNS3_17JXLCompressParamsERKNS3_15PackedPixelFileEPKNS_6vectorIhNS_9allocatorIhEEEEPSH_E3$_0EET_SM_SM_T0_.exit": ; preds = %.lr.ph.i266, %bb.au, %bb.at
  %.sroa.03.0.lcssa.i = phi ptr [ %i.fi, %bb.at ], [ %i.fl, %bb.au ], [ %.sroa.03.07.i, %.lr.ph.i266 ] ; 2 uses
  %.not290 = icmp eq ptr %.sroa.03.0.lcssa.i, %i.fj
  br i1 %.not290, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPKN3jxl6extras9JXLOptionEEEZNS3_14EncodeImageJXLERKNS3_17JXLCompressParamsERKNS3_15PackedPixelFileEPKNS_6vectorIhNS_9allocatorIhEEEEPSH_E3$_0EET_SM_SM_T0_.exit"
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !17
  %i.fo = icmp eq i64 %i.fn, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPKN3jxl6extras9JXLOptionEEEZNS3_14EncodeImageJXLERKNS3_17JXLCompressParamsERKNS3_15PackedPixelFileEPKNS_6vectorIhNS_9allocatorIhEEEEPSH_E3$_0EET_SM_SM_T0_.exit"
  %i.fp = phi i1 [ false, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPKN3jxl6extras9JXLOptionEEEZNS3_14EncodeImageJXLERKNS3_17JXLCompressParamsERKNS3_15PackedPixelFileEPKNS_6vectorIhNS_9allocatorIhEEEEPSH_E3$_0EET_SM_SM_T0_.exit" ], [ %i.fo, %bb.av ]
  %i.fq = select i1 %i.fh, i1 true, i1 %i.fp
  %i.fr = zext i1 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !129
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !130 ; 3 uses
  %.not225 = icmp eq i64 %i.fu, 0
  br i1 %.not225, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !131
  %i.fx = icmp eq i64 %i.fu, 32
  %i.fy = select i1 %i.fx, i32 8, i32 0
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !132
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !133
  %i.gc = tail call i32 @JxlEncoderSetCodestreamLevel(ptr noundef %i.d, i32 noundef %i.gb) #11
  %.not226 = icmp eq i32 %i.gc, 0
  br i1 %.not226, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ge = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gd, ptr noundef nonnull @.str.17) #12 ; 0 uses
  br label %.critedge261

bb.ba:                                            ; preds = %bb.ay
  %i.gf = call i32 @JxlEncoderSetBasicInfo(ptr noundef %i.d, ptr noundef nonnull %4) #11
  %.not227 = icmp eq i32 %i.gf, 0
  br i1 %.not227, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.gh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.18) #12 ; 0 uses
  br label %.critedge261

bb.bc:                                            ; preds = %bb.ba
  %i.gi = load i32, ptr %i.el, align 4, !tbaa !119
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !134
  %i.gm = sext i32 %i.gl to i64
  %i.gn = call i32 @JxlEncoderSetUpsamplingMode(ptr noundef %i.d, i64 noundef %i.gj, i64 noundef %i.gm) #11
  %.not228 = icmp eq i32 %i.gn, 0
  br i1 %.not228, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.gp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.go, ptr noundef nonnull @.str.19) #12 ; 0 uses
  br label %.critedge261

bb.be:                                            ; preds = %bb.bc
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.gr = call i32 @JxlEncoderSetFrameBitDepth(ptr noundef nonnull %i.y, ptr noundef nonnull %i.gq) #11
  %.not229 = icmp eq i32 %i.gr, 0
  br i1 %.not229, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.gt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.20) #12 ; 0 uses
  br label %.critedge261

bb.bg:                                            ; preds = %bb.be
  br i1 %.not224, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !135
  %i.gw = call i32 @JxlEncoderSetExtraChannelDistance(ptr noundef nonnull %i.y, i64 noundef 0, float noundef %i.gv) #11
  %.not231 = icmp eq i32 %i.gw, 0
  br i1 %.not231, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.gy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.21) #12 ; 0 uses
  br label %.critedge261

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  br i1 %i.fh, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.gz = call i32 @JxlEncoderSetFrameLossless(ptr noundef nonnull %i.y, i32 noundef 1) #11
  %.not232 = icmp eq i32 %i.gz, 0
  br i1 %.not232, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.22) #12 ; 0 uses
  br label %.critedge261

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !136
  %i.he = icmp eq i32 %i.hd, 1
  br i1 %i.he, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !72 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !73
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = call i32 @JxlEncoderSetICCProfile(ptr noundef %i.d, ptr noundef %i.hg, i64 noundef %i.hl) #11
  %.not234 = icmp eq i32 %i.hm, 0
  br i1 %.not234, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.23) #12 ; 0 uses
  br label %.critedge261

bb.bp:                                            ; preds = %bb.bm
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.hq = call i32 @JxlEncoderSetColorEncoding(ptr noundef %i.d, ptr noundef nonnull %i.hp) #11
  %.not233 = icmp eq i32 %i.hq, 0
  br i1 %.not233, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.24) #12 ; 0 uses
  br label %.critedge261

bb.br:                                            ; preds = %bb.bp, %bb.bn
  br i1 %8, label %bb.bs, label %bb.ci

bb.bs:                                            ; preds = %bb.br
  %i.ht = call i32 @JxlEncoderUseBoxes(ptr noundef %i.d) #11
  %.not235 = icmp eq i32 %i.ht, 0
  br i1 %.not235, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hu = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.hv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hu, ptr noundef nonnull @.str.25) #12 ; 0 uses
  br label %.critedge261

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.hw = load ptr, ptr %i.bs, align 8, !tbaa !73
  %i.hx = load ptr, ptr %i.bq, align 8, !tbaa !72 ; 3 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 2 uses
  %i.ib = icmp ult i64 %i.ia, 12
  br i1 %i.ib, label %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.0.copyload.i264 = load i32, ptr %i.hx, align 1
  switch i32 %.0.copyload.i264, label %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit.thread [
    i32 704662861, label %bb.bw
    i32 2771273, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %i.ic = add i64 %i.ia, 4                        ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not350 = icmp eq i64 %i.ic, 0
  br i1 %.not350, label %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ic) #14
  %.pre305 = load ptr, ptr %5, align 8, !tbaa !72
  %.pre306 = load ptr, ptr %i.bq, align 8, !tbaa !72 ; 2 uses
  %.pre307 = load ptr, ptr %i.bs, align 8, !tbaa !73
  %.pre310 = ptrtoint ptr %.pre307 to i64
  %.pre311.a = ptrtoint ptr %.pre306 to i64
  %.pre313 = sub i64 %.pre310, %.pre311.a
  br label %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit

_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit.thread: ; preds = %bb.bv, %bb.bu
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bz

_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit: ; preds = %bb.bx, %bb.bw
  %.pre-phi314 = phi i64 [ %.pre313, %bb.bx ], [ -4, %bb.bw ]
  %i.ig = phi ptr [ %.pre306, %bb.bx ], [ %i.hx, %bb.bw ]
  %i.ih = phi ptr [ %.pre305, %bb.bx ], [ null, %bb.bw ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr align 1 %i.ig, i64 %.pre-phi314, i1 false)
  %.pre308 = load ptr, ptr %5, align 8, !tbaa !72 ; 3 uses
  %.pre309 = load ptr, ptr %i.id, align 8, !tbaa !73 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.il = icmp eq ptr %.pre308, %.pre309
  br i1 %i.il, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit
  %i.im = ptrtoint ptr %.pre309 to i64
  %i.in = ptrtoint ptr %.pre308 to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = load i8, ptr %i.ij, align 1, !tbaa !137, !range !14, !noundef !15
  %i.iq = zext nneg i8 %i.ip to i32
  %i.ir = call i32 @JxlEncoderAddBox(ptr noundef %i.d, ptr noundef nonnull @.str.26, ptr noundef %.pre308, i64 noundef %i.io, i32 noundef %i.iq) #11
  %.not237 = icmp eq i32 %i.ir, 0
  br i1 %.not237, label %bb.bz, label %.critedge250

bb.bz:                                            ; preds = %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit.thread, %bb.by, %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit
  %i.is = phi ptr [ %i.if, %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit.thread ], [ %i.ik, %bb.by ], [ %i.ik, %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit ] ; 5 uses
  %i.it = phi ptr [ %i.ie, %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit.thread ], [ %i.ij, %bb.by ], [ %i.ij, %_ZN3jxl6IsExifERKNSt3__16vectorIhNS0_9allocatorIhEEEEPb.exit ] ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !72 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !73 ; 2 uses
  %i.jb = icmp eq ptr %i.iy, %i.ja
  br i1 %i.jb, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.iy to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = load i8, ptr %i.it, align 1, !tbaa !137, !range !14, !noundef !15
  %i.jg = zext nneg i8 %i.jf to i32
  %i.jh = call i32 @JxlEncoderAddBox(ptr noundef %i.d, ptr noundef nonnull @.str.27, ptr noundef %i.iy, i64 noundef %i.je, i32 noundef %i.jg) #11
  %.not237.1 = icmp eq i32 %i.jh, 0
  br i1 %.not237.1, label %bb.cb, label %.critedge250

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !72 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !73 ; 2 uses
  %i.jl = icmp eq ptr %i.ji, %i.jk
  br i1 %i.jl, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.ji to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = load i8, ptr %i.it, align 1, !tbaa !137, !range !14, !noundef !15
  %i.jq = zext nneg i8 %i.jp to i32
  %i.jr = call i32 @JxlEncoderAddBox(ptr noundef %i.d, ptr noundef nonnull @.str.28, ptr noundef %i.ji, i64 noundef %i.jo, i32 noundef %i.jq) #11
  %.not237.2 = icmp eq i32 %i.jr, 0
  br i1 %.not237.2, label %bb.cd, label %.critedge250

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.js = load ptr, ptr %i.iw, align 8, !tbaa !72 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !73 ; 2 uses
  %i.jv = icmp eq ptr %i.js, %i.ju
  br i1 %i.jv, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.js to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = load i8, ptr %i.it, align 1, !tbaa !137, !range !14, !noundef !15
  %i.ka = zext nneg i8 %i.jz to i32
  %i.kb = call i32 @JxlEncoderAddBox(ptr noundef %i.d, ptr noundef nonnull @.str.27, ptr noundef %i.js, i64 noundef %i.jy, i32 noundef %i.ka) #11
  %.not237.3 = icmp eq i32 %i.kb, 0
  br i1 %.not237.3, label %bb.cf, label %.critedge250

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.kc = load ptr, ptr %i.ix, align 8, !tbaa !72 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !73 ; 2 uses
  %i.kf = icmp eq ptr %i.kc, %i.ke
  br i1 %i.kf, label %.critedge263, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kc to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = load i8, ptr %i.it, align 1, !tbaa !137, !range !14, !noundef !15
  %i.kk = zext nneg i8 %i.kj to i32
  %i.kl = call i32 @JxlEncoderAddBox(ptr noundef %i.d, ptr noundef nonnull @.str.29, ptr noundef %i.kc, i64 noundef %i.ki, i32 noundef %i.kk) #11
  %.not237.4 = icmp eq i32 %i.kl, 0
  br i1 %.not237.4, label %.critedge263, label %.critedge250

.critedge263:                                     ; preds = %bb.cg, %bb.cf
  call void @JxlEncoderCloseBoxes(ptr noundef %i.d) #11
  %i.km = load ptr, ptr %5, align 8, !tbaa !72    ; 4 uses
  %.not.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %.critedge263
  store ptr %i.km, ptr %i.is, align 8, !tbaa !73
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !74
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = ptrtoint ptr %i.km to i64
  %i.kr = sub i64 %i.kp, %i.kq
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.kr) #15
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit: ; preds = %.critedge263, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit, %bb.br
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !138
  %i.kv = load ptr, ptr %i.ks, align 8, !tbaa !139 ; 2 uses
  %.not243296.not = icmp eq ptr %i.ku, %i.kv
  br i1 %.not243296.not, label %.critedge256.preheader, label %.lr.ph299

.critedge256.preheader:                           ; preds = %._crit_edge, %bb.ci
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  br label %.critedge256

.lr.ph299:                                        ; preds = %bb.ci, %._crit_edge
  %i.ky = phi ptr [ %i.mp, %._crit_edge ], [ %i.kv, %bb.ci ]
  %.0194297 = phi i64 [ %i.mn, %._crit_edge ], [ 0, %bb.ci ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [200 x i8], ptr %i.ky, i64 %.0194297 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.la, i64 24, i1 false), !tbaa.struct !144
  %i.lb = load i32, ptr %6, align 8, !tbaa !146
  %i.lc = load i32, ptr %i.fd, align 4, !tbaa !126
  %i.ld = sub i32 %i.lb, %i.lc                    ; 2 uses
  %i.le = zext i32 %i.ld to i64
  %i.lf = call noundef zeroext i1 @_ZN3jxl6extras10SetupFrameEP10JxlEncoderP23JxlEncoderFrameSettingsRK14JxlFrameHeaderRKNS0_17JXLCompressParamsERKNS0_15PackedPixelFileEmmmRm(ptr noundef %i.d, ptr noundef nonnull %i.y, ptr noundef nonnull align 4 dereferenceable(56) %i.kz, ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(584) %1, i64 noundef %.0194297, i64 noundef %spec.select, i64 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14
  br i1 %i.lf, label %bb.cj, label %.critedge252

bb.cj:                                            ; preds = %.lr.ph299
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 160
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !147
  %i.li = getelementptr inbounds nuw i8, ptr %i.kz, i64 128
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !153
  %i.lk = call i32 @JxlEncoderAddImageFrame(ptr noundef nonnull %i.y, ptr noundef nonnull %6, ptr noundef %i.lh, i64 noundef %i.lj) #11
end_hunk_0
