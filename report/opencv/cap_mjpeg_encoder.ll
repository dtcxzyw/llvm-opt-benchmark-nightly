Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cap_mjpeg_encoder?download=true
inline.NumInlined: 516
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@__clang_call_terminate:bb.a
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg19mjpeg_buffer_keeper16allocate_buffersEii(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::mjpeg::mjpeg_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul i64 %i.l, 12
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 40
  %i.u = add i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 40
  %i.ac = add i64 %i.u, %i.ab
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = icmp sgt i32 %1, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = sext i32 %2 to i64                      ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit
  %.08 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bp, %_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 0, i64 24, i1 false)
  store i32 32, ptr %i.af, align 8, !tbaa !78
  store i32 0, ptr %i.ag, align 4, !tbaa !80
  store i32 0, ptr %i.ah, align 8, !tbaa !81
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !142
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -40
  %.not.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i, label %bb.c, label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %i.af, i64 12, i1 false)
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !141
  br label %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE9push_backEOS2_.exit unwind label %bb.i

_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c
  %.pre = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE9push_backEOS2_.exit
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.pre to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.au) #21
  br label %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit

_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit:              ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE9push_backEOS2_.exit.thread, %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE9push_backEOS2_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !71, !noalias !144 ; 2 uses
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !72, !noalias !144
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE4backEv.exit

bb.e:                                             ; preds = %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !144
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 480
  br label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE4backEv.exit

_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE4backEv.exit: ; preds = %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit, %bb.e
  %i.bc = phi ptr [ %i.bb, %bb.e ], [ %i.av, %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -40 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !147 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !117 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2                 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %i.ak
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE4backEv.exit
  %i.bm = sub nuw nsw i64 %i.ak, %i.bk
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(36) %i.bd, i64 noundef %i.bm)
  br label %_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit

bb.g:                                             ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE4backEv.exit
  %i.bn = icmp ugt i64 %i.bk, %i.ak
  br i1 %i.bn, label %bb.h, label %_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ak ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bo
  br i1 %.not.i.i.i, label %_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.h
  store ptr %i.bo, ptr %i.be, align 8, !tbaa !147
  br label %_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit

_ZN2cv5mjpeg12mjpeg_buffer6resizeEi.exit:         ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bp = add i32 %.08, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !148

bb.i:                                             ; preds = %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i6, label %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit7, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.aj, align 8, !tbaa !143
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #21
  br label %_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit7

_ZN2cv5mjpeg12mjpeg_bufferD2Ev.exit7:             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.bq
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg12MjpegEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv5mjpeg12MjpegEncoderclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca [4096 x i16], align 16            ; 7 uses
  %i.h = alloca [3 x i32], align 4                ; 5 uses
  %i.i = alloca [6 x [64 x i16]], align 16        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 1                     ; 4 uses
  %i.m = select i1 %i.l, i32 16, i32 8            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.n = select i1 %i.l, i32 4, i32 1             ; 7 uses
  %i.o = add i32 %i.k, -1
  %i.p = add i32 %i.o, %i.n
  %.fr372 = freeze i32 %i.p                       ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.r                   ; 5 uses
  %i.v = shl nsw i32 %i.u, 1                      ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 2 uses
  %i.y = add nsw i32 %i.t, -1
  %i.z = sdiv i32 %i.y, %i.m
  %i.aa = add nsw i32 %i.z, 1                     ; 3 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !149   ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %.loopexit334

bb.b:                                             ; preds = %bb.a
  %i.ad = mul nsw i32 %i.aa, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !102
  %i.ag = sdiv i32 %i.ad, %i.af
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = select i1 %i.l, i32 4, i32 3
  %i.aj = shl i32 %i.ah, %i.ai                    ; 4 uses
  %i.ak = mul nsw i32 %i.aj, %i.r
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.x, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !93 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph345, label %.loopexit334

.lr.ph345:                                        ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = zext nneg i32 %i.n to i64
  %i.as = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %i.ar ; 2 uses
  %i.at = add nsw i32 %i.aj, %i.m                 ; 2 uses
  %i.au = shl nsw i32 %.fr372, 6
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 1                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = icmp sgt i32 %.fr372, 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  br i1 %i.ay, label %.lr.ph.us, label %.loopexit333

.lr.ph.us:                                        ; preds = %.lr.ph345, %..loopexit333_crit_edge.us
  %i.ba = phi i32 [ %i.cf, %..loopexit333_crit_edge.us ], [ %i.ao, %.lr.ph345 ] ; 2 uses
  %.0344.us = phi i32 [ %i.bf, %..loopexit333_crit_edge.us ], [ 0, %.lr.ph345 ] ; 3 uses
  %i.bb = load i32, ptr %i.aq, align 8, !tbaa !96 ; 2 uses
  %i.bc = mul nsw i32 %i.bb, %.0344.us
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.am, i64 %i.bd
  %i.bf = add nuw nsw i32 %.0344.us, %i.m         ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, %i.ba
  %i.bh = sub nsw i32 %i.ba, %.0344.us
  %spec.select.us = select i1 %i.bg, i32 %i.bh, i32 %i.m
  %i.bi = load i32, ptr %i.s, align 8, !tbaa !89  ; 2 uses
  %i.bj = icmp sgt i32 %i.at, %i.bi
  %i.bk = sub nsw i32 %i.bi, %i.aj
  %.0150.us = select i1 %i.bj, i32 %i.bk, i32 %i.m
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.i, i8 0, i64 %i.aw, i1 false)
  %i.bl = load i32, ptr %i.ax, align 8, !tbaa !98
  %i.bm = load i32, ptr %i.j, align 4, !tbaa !97
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !94
  call void @_ZN2cv5mjpeg12convertToYUVEiiiPsS1_PKhiiiii(i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.bb, ptr noundef nonnull %i.as, ptr noundef nonnull %i.i, ptr noundef %i.be, i32 noundef %.0150.us, i32 noundef %spec.select.us, i32 noundef %i.bn, i32 noundef %i.u, i32 noundef %i.v)
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !151, !nonnull !152, !align !153
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %.0143343.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ce, %bb.c ] ; 5 uses
  %i.bp = icmp samesign uge i32 %.0143343.us, %i.n ; 2 uses
  %i.bq = and i32 %.0143343.us, 2147483646
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %i.br
  %i.bt = shl i32 %.0143343.us, 3
  %i.bu = and i32 %i.bt, 8
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = zext i1 %i.bp to i64
  %i.by = getelementptr inbounds nuw [128 x i8], ptr %i.bo, i64 %i.bx
  call fastcc void @_ZN2cv5mjpegL11aan_fdct8x8EPKsPsiS2_(ptr noundef %i.bw, ptr noundef %i.g, i32 noundef %i.m, ptr noundef %i.by)
  %i.bz = icmp samesign ugt i32 %.0143343.us, %i.n
  %i.ca = zext i1 %i.bz to i64
  %i.cb = load i16, ptr %i.g, align 16, !tbaa !53
  %i.cc = sext i16 %i.cb to i32
  %.sroa.sel325.idx.us.sroa.sel.idx.sroa.sel.idx = select i1 %i.bp, i64 4, i64 0
  %.sroa.sel325.idx.us.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.sel325.idx.us.sroa.sel.idx.sroa.sel.idx
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel325.idx.us.sroa.sel.idx.sroa.sel, i64 %i.ca
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !52
  %i.ce = add nuw nsw i32 %.0143343.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, %.fr372
  br i1 %exitcond.not, label %..loopexit333_crit_edge.us, label %bb.c, !llvm.loop !154

..loopexit333_crit_edge.us:                       ; preds = %bb.c
  %i.cf = load i32, ptr %i.an, align 4, !tbaa !93 ; 2 uses
  %i.cg = icmp slt i32 %i.bf, %i.cf
  br i1 %i.cg, label %.lr.ph.us, label %.loopexit334, !llvm.loop !155

.loopexit333:                                     ; preds = %.lr.ph345, %.loopexit333
  %i.ch = phi i32 [ %i.cv, %.loopexit333 ], [ %i.ao, %.lr.ph345 ] ; 2 uses
  %.0344 = phi i32 [ %i.cm, %.loopexit333 ], [ 0, %.lr.ph345 ] ; 3 uses
  %i.ci = load i32, ptr %i.aq, align 8, !tbaa !96 ; 2 uses
  %i.cj = mul nsw i32 %i.ci, %.0344
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.am, i64 %i.ck
  %i.cm = add nuw nsw i32 %.0344, %i.m            ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, %i.ch
  %i.co = sub nsw i32 %i.ch, %.0344
  %spec.select = select i1 %i.cn, i32 %i.co, i32 %i.m
  %i.cp = load i32, ptr %i.s, align 8, !tbaa !89  ; 2 uses
  %i.cq = icmp sgt i32 %i.at, %i.cp
  %i.cr = sub nsw i32 %i.cp, %i.aj
  %.0150 = select i1 %i.cq, i32 %i.cr, i32 %i.m
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.i, i8 0, i64 %i.aw, i1 false)
  %i.cs = load i32, ptr %i.ax, align 8, !tbaa !98
  %i.ct = load i32, ptr %i.j, align 4, !tbaa !97
  %i.cu = load i32, ptr %i.q, align 8, !tbaa !94
  call void @_ZN2cv5mjpeg12convertToYUVEiiiPsS1_PKhiiiii(i32 noundef %i.cs, i32 noundef %i.ct, i32 noundef %i.ci, ptr noundef nonnull %i.as, ptr noundef nonnull %i.i, ptr noundef %i.cl, i32 noundef %.0150, i32 noundef %spec.select, i32 noundef %i.cu, i32 noundef %i.u, i32 noundef %i.v)
  %i.cv = load i32, ptr %i.an, align 4, !tbaa !93 ; 2 uses
  %i.cw = icmp slt i32 %i.cm, %i.cv
  br i1 %i.cw, label %.loopexit333, label %.loopexit334, !llvm.loop !155

.loopexit334:                                     ; preds = %.loopexit333, %..loopexit333_crit_edge.us, %bb.b, %bb.a
  %i.cx = load i32, ptr %1, align 4, !tbaa !149   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !156
  %i.da = icmp slt i32 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit334
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dd = select i1 %i.l, i32 4, i32 3            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dg = zext nneg i32 %i.n to i64
  %i.dh = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %i.dg ; 2 uses
  %i.di = shl nsw i32 %.fr372, 6
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 1                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dm = icmp sgt i32 %.fr372, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = sext i32 %i.cx to i64
  br label %bb.d

.loopexit332:                                     ; preds = %._crit_edge354, %.preheader331.lr.ph, %bb.k
  %i.ds = load i32, ptr %i.cy, align 4, !tbaa !156
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next380, %i.dt
  br i1 %i.du, label %bb.d, label %._crit_edge, !llvm.loop !157

._crit_edge:                                      ; preds = %.loopexit332, %.loopexit334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  ret void

bb.d:                                             ; preds = %.lr.ph, %.loopexit332
  %indvars.iv379 = phi i64 [ %i.dr, %.lr.ph ], [ %indvars.iv.next380, %.loopexit332 ] ; 5 uses
  %i.dv = load ptr, ptr %i.db, align 8, !tbaa !158, !nonnull !152, !align !159 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !71, !noalias !160 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !72, !noalias !160
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !70, !noalias !160
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = sdiv exact i64 %i.ee, 40
  %i.eg = add nsw i64 %i.ef, %indvars.iv379       ; 5 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  br i1 %i.eh, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ei = icmp samesign ult i64 %i.eg, 12
  br i1 %i.ei, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ej = getelementptr inbounds [40 x i8], ptr %i.dx, i64 %indvars.iv379
  br label %_ZN2cv5mjpeg19mjpeg_buffer_keeperixEi.exit

bb.g:                                             ; preds = %bb.e
  %i.ek = udiv i64 %i.eg, 12
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.el = xor i64 %i.eg, -1
  %i.em = udiv i64 %i.el, 12
  %i.en = xor i64 %i.em, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.eo = phi i64 [ %i.ek, %bb.g ], [ %i.en, %bb.h ] ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !77, !noalias !160
  %.idx.i.i.i.i.i = mul i64 %i.eo, -480
  %i.er = getelementptr i8, ptr %i.eq, i64 %.idx.i.i.i.i.i
  %i.es = getelementptr [40 x i8], ptr %i.er, i64 %i.eg
  br label %_ZN2cv5mjpeg19mjpeg_buffer_keeperixEi.exit

_ZN2cv5mjpeg19mjpeg_buffer_keeperixEi.exit:       ; preds = %bb.f, %bb.i
  %storemerge.i.i.i.i.i = phi ptr [ %i.es, %bb.i ], [ %i.ej, %bb.f ] ; 12 uses
  %i.et = load ptr, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !117
  store i32 0, ptr %i.et, align 4, !tbaa !52
  %i.eu = load i32, ptr %i.dc, align 8, !tbaa !102 ; 3 uses
  %i.ev = trunc i64 %indvars.iv379 to i32
  %i.ew = mul i32 %i.aa, %i.ev
end_hunk_0
