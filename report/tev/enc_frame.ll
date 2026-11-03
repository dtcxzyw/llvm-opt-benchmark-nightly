Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_frame?download=true
inline.NumInlined: 8030
inline.NumDeleted: 4373
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_117CopyColorChannelsE26JxlChunkedFrameInputSourceNS_5RectTImEERKNS_9FrameInfoERKNS_13ImageMetadataEPNS_10ThreadPoolEPNS_6Image3IfEEPNS_5PlaneIfEEPb:bb.a
  %i.p = load i64, ptr %1, align 8, !tbaa !503
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !504
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !505  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !506  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1069, !noalias !1070
  %i.y = call noundef ptr %i.x(ptr noundef %i.e, i64 noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %i.b) #30, !noalias !1070, !inline_history !1058 ; 4 uses
  %i.z = ptrtoint ptr %0 to i64
  store ptr %i.y, ptr %9, align 16, !tbaa !534
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 16, !tbaa !537
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPmEUlPKvE_NS_9allocatorIS8_EEFvS7_EEE, i64 16), ptr %i.aa, align 16, !tbaa !323
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.z, ptr %i.ac, align 8, !tbaa !539
  %.not72 = icmp eq ptr %i.y, null
  br i1 %.not72, label %.sink.split.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !419, !range !82, !noundef !83
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1071
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = select i1 %i.ai, i64 1, i64 3
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ak = phi i64 [ %i.aj, %bb.f ], [ 3, %bb.e ]  ; 3 uses
  %i.al = load i32, ptr %8, align 8, !tbaa !532
  %i.am = zext i32 %i.al to i64
  %i.an = icmp samesign ugt i64 %i.ak, %i.am
  br i1 %i.an, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit, label %.preheader

bb.h:                                             ; preds = %.preheader
  %i.ao = add nuw nsw i64 %.04073, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.ak
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !1059

.preheader:                                       ; preds = %bb.g, %bb.h
  %.04073 = phi i64 [ %i.ao, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !140
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %5, i64 %.04073
  %i.ar = call i32 @_ZN3jxl30ConvertFromExternalNoSizeCheckEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE(ptr noundef nonnull %i.y, i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.ap, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %8, i64 noundef %.04073, ptr noundef %4, ptr noundef nonnull %i.aq) #30 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit

.critedge:                                        ; preds = %bb.h
  %i.at = icmp eq i64 %i.ak, 1
  br i1 %i.at, label %bb.i, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit49.thread

bb.i:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.av = load i32, ptr %5, align 8, !tbaa !401, !noalias !1072 ; 3 uses
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !401, !alias.scope !1072
  %i.ax = icmp eq i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !noalias !1072 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !1072
  %i.bc = icmp eq i32 %i.az, %i.bb
  %i.bd = select i1 %i.ax, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.j, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.be = icmp ne i32 %i.az, 0
  %i.bf = icmp ne i32 %i.av, 0
  %or.cond.not20.i = and i1 %i.bf, %i.be
  br i1 %or.cond.not20.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !342, !alias.scope !1072
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !540, !alias.scope !1072
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !342, !noalias !1072
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !540, !noalias !1072
  %i.bo = mul i64 %i.bn, %.015.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bp, i64 64) ]
  %i.bq = mul i64 %.015.i, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.br, i64 64) ]
  %i.bs = load i32, ptr %5, align 8, !tbaa !401, !noalias !1072
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.br, ptr align 64 %i.bp, i64 %i.bu, i1 false), !noalias !1072
  %i.bv = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.bw = load i32, ptr %i.ay, align 4, !tbaa !416, !noalias !1072 ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.k, label %.loopexit.loopexit, !llvm.loop !1062

.loopexit.loopexit:                               ; preds = %bb.k
  %.pre = load i32, ptr %5, align 8, !tbaa !401, !noalias !1073
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %i.bz = phi i32 [ %i.bw, %.loopexit.loopexit ], [ %i.az, %bb.j ] ; 2 uses
  %i.ca = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.av, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !401, !alias.scope !1073
  %i.cd = icmp eq i32 %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 116
  %i.cf = load i32, ptr %i.ce, align 4, !alias.scope !1073
  %i.cg = icmp eq i32 %i.bz, %i.cf
  %i.ch = select i1 %i.cd, i1 %i.cg, i1 false
  br i1 %i.ch, label %bb.l, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit

bb.l:                                             ; preds = %.loopexit
  %i.ci = icmp ne i32 %i.bz, 0
  %i.cj = icmp ne i32 %i.ca, 0
  %or.cond.not20.i46 = and i1 %i.ci, %i.cj
  br i1 %or.cond.not20.i46, label %.lr.ph.i47, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit49.thread

.lr.ph.i47:                                       ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !342, !alias.scope !1073
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !540, !alias.scope !1073
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i47
  %.015.i48 = phi i64 [ 0, %.lr.ph.i47 ], [ %i.cz, %bb.m ] ; 3 uses
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !342, !noalias !1073
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !540, !noalias !1073
  %i.cs = mul i64 %i.cr, %.015.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 64) ]
  %i.cu = mul i64 %.015.i48, %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cv, i64 64) ]
  %i.cw = load i32, ptr %5, align 8, !tbaa !401, !noalias !1073
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.cv, ptr align 64 %i.ct, i64 %i.cy, i1 false), !noalias !1073
  %i.cz = add nuw nsw i64 %.015.i48, 1            ; 2 uses
  %i.da = load i32, ptr %i.ay, align 4, !tbaa !416, !noalias !1073
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.m, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit49.thread, !llvm.loop !1062

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit49.thread: ; preds = %bb.m, %bb.l, %.critedge
  %.not43 = icmp eq ptr %6, null
  br i1 %.not43, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit49.thread
  %i.dd = load i8, ptr %7, align 1, !tbaa !510, !range !82, !noundef !83
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = load i64, ptr %i.b, align 8, !tbaa !140
  %i.dg = load i32, ptr %8, align 8, !tbaa !532
  %i.dh = add i32 %i.dg, -1
  %i.di = zext i32 %i.dh to i64
  %i.dj = call i32 @_ZN3jxl30ConvertFromExternalNoSizeCheckEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE(ptr noundef nonnull %i.y, i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.df, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %8, i64 noundef %i.di, ptr noundef %4, ptr noundef nonnull %6) #30 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit

bb.p:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !416 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %.not.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !342
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !540
  %i.ds = load i32, ptr %6, align 8, !tbaa !401   ; 3 uses
  %i.dt = zext i32 %i.ds to i64                   ; 3 uses
  %.not16.i = icmp eq i32 %i.ds, 0
  br i1 %.not16.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph14.i
  %min.iters.check = icmp ult i32 %i.ds, 8
  %n.vec = and i64 %i.dt, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dt
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.01012.us.i = phi i64 [ %i.ea, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.du = mul i64 %.01012.us.i, %i.dr
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.du ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dv, i64 64) ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.dw, align 32, !tbaa !94
  store <4 x float> splat (float 1.000000e+00), ptr %i.dx, align 16, !tbaa !94
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !1065

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.011.us.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph.a

scalar.ph.a:                                      ; preds = %scalar.ph.preheader, %scalar.ph.a
  %.011.us.i = phi i64 [ %i.dz, %scalar.ph.a ], [ %.011.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.011.us.i
  store float 1.000000e+00, ptr %10, align 4, !tbaa !94
  %i.dz = add nuw nsw i64 %.011.us.i, 1           ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %i.dz, %i.dt
  br i1 %exitcond.not.i.a, label %._crit_edge.us.i, label %scalar.ph.a, !llvm.loop !1066

._crit_edge.us.i:                                 ; preds = %scalar.ph.a, %middle.block
  %i.ea = add nuw nsw i64 %.01012.us.i, 1         ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.ea, %i.dn
  br i1 %exitcond18.not.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i, !llvm.loop !1067

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit:    ; preds = %._crit_edge.us.i, %.lr.ph14.i, %bb.p, %bb.o, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit49.thread
  br label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit: ; preds = %.preheader, %bb.o, %.loopexit, %bb.i, %bb.g, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit
  %.sroa.053.0.ph = phi i32 [ %i.dj, %bb.o ], [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %.loopexit ], [ 0, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit ], [ %i.ar, %.preheader ] ; 3 uses
  %.pr = load ptr, ptr %9, align 16, !tbaa !131   ; 2 uses
  store ptr null, ptr %9, align 16, !tbaa !131
  %.not.i.i50 = icmp eq ptr %.pr, null
  %.pre94.a = load ptr, ptr %i.ab, align 16, !tbaa !537 ; 4 uses
  br i1 %.not.i.i50, label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %i.a, align 8, !tbaa !131
  %i.eb = icmp eq ptr %.pre94.a, null
  br i1 %i.eb, label %bb.r, label %_ZNKSt3__18functionIFvPKvEEclES2_.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt3__125__throw_bad_function_callB8nn180100Ev() #31
  unreachable

_ZNKSt3__18functionIFvPKvEEclES2_.exit.i.i:       ; preds = %bb.q
  %i.ec = load ptr, ptr %.pre94.a, align 8, !tbaa !323
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %.pre94.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre93 = load ptr, ptr %i.ab, align 16, !tbaa !537
  br label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i

_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i: ; preds = %_ZNKSt3__18functionIFvPKvEEclES2_.exit.i.i, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit
  %i.ef = phi ptr [ %.pre94.a, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit ], [ %.pre93, %_ZNKSt3__18functionIFvPKvEEclES2_.exit.i.i ] ; 4 uses
  %i.eg = icmp eq ptr %i.ef, %i.aa
  br i1 %i.eg, label %.sink.split.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEED2B8nn180100Ev.exit, label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit, %bb.s, %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i
  %.sroa.053.071108 = phi i32 [ %.sroa.053.0.ph, %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i ], [ %.sroa.053.0.ph, %bb.s ], [ 1, %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit ]
  %i.eh = phi ptr [ %i.ef, %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i ], [ %i.ef, %bb.s ], [ %i.aa, %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit ] ; 2 uses
  %.sink2.i.i.i.i.i = phi i64 [ 32, %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i ], [ 40, %bb.s ], [ 32, %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit ]
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !323
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sink2.i.i.i.i.i
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.eh) #30, !inline_history !11
  br label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEED2B8nn180100Ev.exit: ; preds = %bb.s, %.sink.split.i.i.i.i.i
  %.sroa.053.071107 = phi i32 [ %.sroa.053.0.ph, %bb.s ], [ %.sroa.053.071108, %.sink.split.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret i32 %.sroa.053.071107
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_117CopyExtraChannelsE26JxlChunkedFrameInputSourceNS_5RectTImEERKNS_9FrameInfoERKNS_13ImageMetadataEbPNS_10ThreadPoolEPNSt3__16vectorINS_5PlaneIfEENSC_9allocatorISF_EEEE(ptr noundef byval(%struct.JxlChunkedFrameInputSource) align 8 %0, ptr nofree noundef readonly byval(%"class.jxl::RectT") align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(417) %3, i1 noundef zeroext %4, ptr noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.JxlPixelFormat, align 8     ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__1::unique_ptr.385", align 16 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1078 ; 2 uses
  %.not50 = icmp eq i32 %i.e, 0
  br i1 %.not50, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = ptrtoint ptr %0 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.u = phi i32 [ %i.e, %.lr.ph ], [ %i.bi, %bb.o ]
  %.049 = phi i1 [ %4, %.lr.ph ], [ %.1, %bb.o ]  ; 2 uses
  %.02048 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %bb.o ] ; 6 uses
  br i1 %.049, label %bb.c, label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !473
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.v, i64 %.02048
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !476
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.o, label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit

_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const._ZN3jxl12_GLOBAL__N_117CopyExtraChannelsE26JxlChunkedFrameInputSourceNS_5RectTImEERKNS_9FrameInfoERKNS_13ImageMetadataEbPNS_10ThreadPoolEPNSt3__16vectorINS_5PlaneIfEENSC_9allocatorISF_EEEE.ec_format, i64 24, i1 false)
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !1079
  %i.ab = load ptr, ptr %0, align 8, !tbaa !531
  call void %i.aa(ptr noundef %i.ab, i64 noundef %.02048, ptr noundef nonnull %7) #30
  store i32 1, ptr %7, align 8, !tbaa !532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !1080, !noalias !1081
  %i.ad = load ptr, ptr %0, align 8, !tbaa !531, !noalias !1081
  %i.ae = call noundef ptr %i.ac(ptr noundef %i.ad, i64 noundef range(i64 0, 4294967295) %.02048, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n, ptr noundef nonnull %i.c) #30, !noalias !1081, !inline_history !1076 ; 3 uses
  store ptr %i.ae, ptr %8, align 16, !tbaa !534
  store ptr %i.q, ptr %i.r, align 16, !tbaa !537
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPmEUlPKvE_NS_9allocatorIS8_EEFvS7_EEE, i64 16), ptr %i.q, align 16, !tbaa !323
  store i64 %i.p, ptr %i.t, align 8, !tbaa !539
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.thread.sink.split.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEEC2B8nn180100ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE.exit
  %.sroa.02.0.copyload = load i64, ptr %i.s, align 8 ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %.sroa.02.0.copyload to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload, 32
  switch i32 %.sroa.01.0.extract.trunc.i, label %bb.f [
    i32 0, label %bb.e
    i32 1, label %bb.g
    i32 2, label %_ZN3jxl12_GLOBAL__N_111GetBitDepthINS_16ExtraChannelInfoEEEj11JxlBitDepthRKT_14JxlPixelFormat.exit
  ]

bb.e:                                             ; preds = %bb.d
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4, !tbaa !439 ; 2 uses
  %i.af = icmp ult i32 %.sroa.1.0.copyload, 6
  br i1 %i.af, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3jxl12_GLOBAL__N_111GetBitDepthINS_16ExtraChannelInfoEEEj11JxlBitDepthRKT_14JxlPixelFormat.exit

bb.g:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !473
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.ag, i64 %.02048
  %i.ai = getelementptr i8, ptr %i.ah, i64 28
  %.val = load i32, ptr %i.ai, align 4
  %i.aj = zext i32 %.val to i64
  br label %_ZN3jxl12_GLOBAL__N_111GetBitDepthINS_16ExtraChannelInfoEEEj11JxlBitDepthRKT_14JxlPixelFormat.exit

switch.lookup:                                    ; preds = %bb.e
  %i.ak = zext nneg i32 %.sroa.1.0.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl12_GLOBAL__N_117CopyExtraChannelsE26JxlChunkedFrameInputSourceNS_5RectTImEERKNS_9FrameInfoERKNS_13ImageMetadataEbPNS_10ThreadPoolEPNSt3__16vectorINS_5PlaneIfEENSC_9allocatorISF_EEEE, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN3jxl12_GLOBAL__N_111GetBitDepthINS_16ExtraChannelInfoEEEj11JxlBitDepthRKT_14JxlPixelFormat.exit

_ZN3jxl12_GLOBAL__N_111GetBitDepthINS_16ExtraChannelInfoEEEj11JxlBitDepthRKT_14JxlPixelFormat.exit: ; preds = %switch.lookup, %bb.d, %bb.f, %bb.g
  %.0.i = phi i64 [ %.sroa.4.0.extract.shift.i, %bb.d ], [ %i.aj, %bb.g ], [ %switch.ext, %switch.lookup ], [ 0, %bb.f ]
  %i.al = load i64, ptr %i.c, align 8, !tbaa !140
  %i.am = load ptr, ptr %6, align 8, !tbaa !406
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %.02048
  %i.ao = call i32 @_ZN3jxl30ConvertFromExternalNoSizeCheckEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE(ptr noundef nonnull %i.ae, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.al, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %7, i64 noundef 0, ptr noundef %5, ptr noundef nonnull %i.an) #30
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = load ptr, ptr %8, align 16, !tbaa !131  ; 3 uses
  store ptr null, ptr %8, align 16, !tbaa !131
  %.not.i.i34 = icmp eq ptr %i.aq, null           ; 2 uses
  br i1 %i.ap, label %.critedge24, label %bb.h

bb.h:                                             ; preds = %_ZN3jxl12_GLOBAL__N_111GetBitDepthINS_16ExtraChannelInfoEEEj11JxlBitDepthRKT_14JxlPixelFormat.exit
  br i1 %.not.i.i34, label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i29, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !131
  %i.ar = load ptr, ptr %i.r, align 16, !tbaa !537 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %_ZNKSt3__18functionIFvPKvEEclES2_.exit.i.i28

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt3__125__throw_bad_function_callB8nn180100Ev() #31
  unreachable

_ZNKSt3__18functionIFvPKvEEclES2_.exit.i.i28:     ; preds = %bb.i
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !323
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #30, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i29

_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i29: ; preds = %_ZNKSt3__18functionIFvPKvEEclES2_.exit.i.i28, %bb.h
  %i.aw = load ptr, ptr %i.r, align 16, !tbaa !537 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i29
  %.not.i.i.i.i.i30 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i30, label %.thread.sink.split, label %.thread.sink.split.sink.split

.critedge24:                                      ; preds = %_ZN3jxl12_GLOBAL__N_111GetBitDepthINS_16ExtraChannelInfoEEEj11JxlBitDepthRKT_14JxlPixelFormat.exit
  br i1 %.not.i.i34, label %_ZNSt3__110unique_ptrIKvNS_8functionIFvPS1_EEEE5resetB8nn180100ES3_.exit.i36, label %bb.l

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!866 = !{!"_ZTSNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEEE", !863, i64 0, !863, i64 8, !865, i64 16}
!867 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg13AppMarkerTypeELi0ELb0EEE", !31, i64 0}
!868 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg13AppMarkerTypeENS_9allocatorIS3_EEEE", !867, i64 0}
!869 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg13AppMarkerTypeENS_9allocatorIS3_EEEE", !31, i64 0, !31, i64 8, !868, i64 16}
!870 = !{!"p1 _ZTSN3jxl4jpeg15JPEGHuffmanCodeE", !31, i64 0}
!871 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg15JPEGHuffmanCodeELi0ELb0EEE", !870, i64 0}
!872 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEEE", !871, i64 0}
!873 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEEE", !870, i64 0, !870, i64 8, !872, i64 16}
!874 = !{!"p1 _ZTSN3jxl4jpeg12JPEGScanInfoE", !31, i64 0}
!875 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg12JPEGScanInfoELi0ELb0EEE", !874, i64 0}
!876 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEEE", !875, i64 0}
!877 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEEE", !874, i64 0, !874, i64 8, !876, i64 16}
!878 = !{!"_ZTSN3jxl4jpeg8JPEGDataE", !174, i64 0, !28, i64 8, !28, i64 12, !28, i64 16, !866, i64 24, !869, i64 48, !866, i64 72, !411, i64 96, !873, i64 120, !415, i64 144, !877, i64 168, !182, i64 192, !866, i64 216, !182, i64 240, !39, i64 264, !182, i64 272}
!879 = !{!878, !28, i64 8}
!880 = !{!878, !28, i64 12}
!881 = !{!167, !167, i64 0}
!882 = !{!190, !183, i64 56}
!883 = !{i64 0, i64 24, !277}
!884 = !{!430, !39, i64 65}
!885 = !{!"_ZTSN3jxl4SpanIKhEE", !179, i64 0, !41, i64 8}
!886 = !{!885, !179, i64 0}
!887 = !{!885, !41, i64 8}
!888 = !{!423, !41, i64 40}
!889 = !{!423, !41, i64 48}
!890 = !{!423, !41, i64 32}
!891 = distinct !{!891, !139}
!892 = distinct !{!892, !139, !296, !297}
!893 = distinct !{!893, !139, !296}
!894 = distinct !{!894, !139}
!895 = distinct !{!895, !139, !296, !297}
!896 = distinct !{!896, !139, !296}
!897 = !{i64 0, i64 8, !140, i64 8, i64 8, !140}
!898 = distinct !{!898, i1 true, !"_ZNK3jxl19ProgressiveSplitter10InitPassesEPNS_6PassesE"}
!899 = distinct !{!899, !898, !"_ZNK3jxl19ProgressiveSplitter10InitPassesEPNS_6PassesE: argument 0"}
!900 = distinct !{!900, !139}
!901 = distinct !{!901, i1 true, !"_ZN3jxl12_GLOBAL__N_120LoopFilterFromParamsERKNS_14CompressParamsEbPNS_11FrameHeaderE"}
!902 = distinct !{!902, !901, !"_ZN3jxl12_GLOBAL__N_120LoopFilterFromParamsERKNS_14CompressParamsEbPNS_11FrameHeaderE: argument 0"}
!903 = distinct !{!903, !139}
!904 = distinct !{!904, !139}
!905 = !{!156, !39, i64 16}
!906 = !{!351, !39, i64 392}
!907 = !{!156, !39, i64 0}
!908 = !{!351, !39, i64 400}
!909 = !{!156, !143, i64 4}
!910 = !{!899}
!911 = !{!346, !28, i64 8}
!912 = !{!346, !28, i64 12}
!913 = !{!"_ZTSN3jxl14PassDefinitionE", !41, i64 0, !41, i64 8, !41, i64 16}
!914 = !{!913, !41, i64 16}
!915 = !{!913, !41, i64 8}
!916 = !{!80, !43, i64 85}
!917 = !{!902}
!918 = !{!350, !39, i64 9}
!919 = !{!350, !28, i64 36}
!920 = !{!350, !38, i64 120}
!921 = !{!351, !39, i64 256}
!922 = !{!156, !41, i64 24}
!923 = !{!351, !28, i64 396}
!924 = !{!156, !28, i64 44}
!925 = !{!351, !28, i64 316}
!926 = !{!351, !145, i64 312}
!927 = !{!156, !41, i64 32}
!928 = !{!351, !28, i64 324}
!929 = !{!156, !39, i64 40}
!930 = !{!351, !39, i64 320}
!931 = !{!348, !28, i64 12}
!932 = !{!348, !145, i64 8}
!933 = !{!348, !28, i64 20}
!934 = distinct !{!934, i1 true, !"_ZNO3jxl8StatusOrINS_15AcStrategyImageEE6value_Ev"}
!935 = distinct !{!935, !934, !"_ZNO3jxl8StatusOrINS_15AcStrategyImageEE6value_Ev: argument 0"}
!936 = distinct !{!936, i1 true, !"_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm"}
!937 = distinct !{!937, !936, !"_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!938 = distinct !{!938, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIiEEE6value_Ev"}
!939 = distinct !{!939, !938, !"_ZNO3jxl8StatusOrINS_5PlaneIiEEE6value_Ev: argument 0"}
!940 = distinct !{!940, i1 true, !"_ZN3jxl5PlaneIhE6CreateEP22JxlMemoryManagerStructmmm"}
!941 = distinct !{!941, !940, !"_ZN3jxl5PlaneIhE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!942 = distinct !{!942, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIhEEE6value_Ev"}
!943 = distinct !{!943, !942, !"_ZNO3jxl8StatusOrINS_5PlaneIhEEE6value_Ev: argument 0"}
!944 = distinct !{!944, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIhEEE6value_Ev"}
!945 = distinct !{!945, !944, !"_ZNO3jxl8StatusOrINS_5PlaneIhEEE6value_Ev: argument 0"}
!946 = distinct !{!946, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!947 = distinct !{!947, !946, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!948 = distinct !{!948, i1 true, !"_ZN3jxl29JxlEncoderChunkedFrameAdapter14GetInputSourceEv"}
!949 = distinct !{!949, !948, !"_ZN3jxl29JxlEncoderChunkedFrameAdapter14GetInputSourceEv: argument 0"}
!950 = distinct !{!950, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!951 = distinct !{!951, !950, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!952 = distinct !{!952, i1 true, !"_ZN3jxl15ModularStreamId8VarDCTDCEm"}
!953 = distinct !{!953, !952, !"_ZN3jxl15ModularStreamId8VarDCTDCEm: argument 0"}
!954 = distinct !{!954, i1 true, !"_ZN3jxl15ModularStreamId10ACMetadataEm"}
!955 = distinct !{!955, !954, !"_ZN3jxl15ModularStreamId10ACMetadataEm: argument 0"}
!956 = !{!257, !119, i64 8}
!957 = !{i64 0, i64 8, !140, i64 8, i64 8, !140, i64 16, i64 8, !140, i64 24, i64 8, !140, i64 32, i64 8, !140, i64 40, i64 8, !140, i64 48, i64 8, !140, i64 56, i64 8, !140, i64 64, i64 8, !140, i64 72, i64 8, !140, i64 80, i64 8, !140, i64 88, i64 8, !140, i64 96, i64 8, !140, i64 104, i64 8, !140, i64 112, i64 8, !140, i64 120, i64 8, !140, i64 128, i64 8, !140, i64 136, i64 8, !140}
!958 = !{!251, !230, i64 8}
!959 = !{!"_ZTSN3jxl8StatusOrINS_15AcStrategyImageEEE", !27, i64 0, !289, i64 72}
!960 = !{!959, !289, i64 72}
!961 = !{!935}
!962 = !{!937}
!963 = !{!939}
!964 = !{!941}
!965 = !{!943}
!966 = !{!351, !28, i64 112}
!967 = !{!945}
!968 = !{!947}
!969 = !{!171, !39, i64 64}
!970 = !{!949}
!971 = !{!199, !38, i64 300}
!972 = !{!475, !39, i64 72}
!973 = !{!80, !43, i64 124}
!974 = !{!951}
!975 = !{!953}
!976 = !{!955}
!977 = distinct !{!977, i1 true, !"_ZNO3jxl8StatusOrI24JxlOutputProcessorBufferE6value_Ev"}
!978 = distinct !{!978, !977, !"_ZNO3jxl8StatusOrI24JxlOutputProcessorBufferE6value_Ev: argument 0"}
!979 = !{!978}
!980 = distinct !{!980, i1 true, !"_ZNO3jxl8StatusOrI24JxlOutputProcessorBufferE6value_Ev"}
!981 = distinct !{!981, !980, !"_ZNO3jxl8StatusOrI24JxlOutputProcessorBufferE6value_Ev: argument 0"}
!982 = distinct !{!982, !139}
!983 = !{!981}
!984 = distinct !{!984, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!985 = distinct !{!985, !984, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!986 = !{!226, !28, i64 16}
!987 = !{!226, !28, i64 32}
!988 = !{!226, !28, i64 36}
!989 = !{!251, !117, i64 0}
!990 = !{!255, !41, i64 128}
!991 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11ImageBundleELi0ELb0EEE", !525, i64 0}
!992 = !{!991, !525, i64 0}
!993 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11ImageBundleENS_14default_deleteIS2_EEEE", !991, i64 0}
!994 = !{!"_ZTSNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEEE", !993, i64 0}
!995 = !{!"_ZTSN3jxl14ReferenceFrameE", !994, i64 0, !39, i64 8}
!996 = !{!995, !39, i64 8}
!997 = !{!985}
!998 = !{!430, !117, i64 0}
!999 = !{!164, !159, i64 0}
!1000 = !{!430, !42, i64 16}
!1001 = !{!61, !41, i64 0}
!1002 = !{!61, !41, i64 8}
!1003 = !{!61, !38, i64 16}
!1004 = !{!61, !38, i64 48}
!1005 = !{!61, !41, i64 56}
!1006 = !{!61, !49, i64 64}
!1007 = !{!61, !28, i64 68}
!1008 = !{!61, !38, i64 72}
!1009 = !{!61, !50, i64 76}
!1010 = !{!61, !39, i64 80}
!1011 = !{!"branch_weights", i32 1, i32 1048575}
!1012 = distinct !{!1012, !139, !296, !297}
!1013 = distinct !{!1013, !139, !297, !296}
!1014 = distinct !{!1014, !139, !296, !297}
!1015 = distinct !{!1015, !139, !297, !296}
!1016 = distinct !{!1016, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!1017 = distinct !{!1017, !1016, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!1018 = distinct !{!1018, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!1019 = distinct !{!1019, !1018, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!1020 = distinct !{!1020, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!1021 = distinct !{!1021, !1020, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!1022 = distinct !{!1022, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!1023 = distinct !{!1023, !1022, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!1024 = distinct !{!1024, !139, !296, !297}
!1025 = distinct !{!1025, !139, !297, !296}
!1026 = !{!1023, !1021, !1019, !1017}
!1027 = distinct !{!1027, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!1028 = distinct !{!1028, !1027, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!1030 = distinct !{!1030, !1029, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!1031 = distinct !{!1031, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!1032 = distinct !{!1032, !1031, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!1033 = distinct !{!1033, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!1034 = distinct !{!1034, !1033, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!1035 = distinct !{!1035, !139, !296, !297}
!1036 = distinct !{!1036, !139, !297, !296}
!1037 = !{!1034, !1032, !1030, !1028}
!1038 = distinct !{!1038, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!1039 = distinct !{!1039, !1038, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!1040 = distinct !{!1040, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!1041 = distinct !{!1041, !1040, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!1042 = distinct !{!1042, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!1043 = distinct !{!1043, !1042, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!1044 = distinct !{!1044, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!1045 = distinct !{!1045, !1044, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!1046 = distinct !{!1046, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!1047 = distinct !{!1047, !1046, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!1048 = distinct !{!1048, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!1049 = distinct !{!1049, !1048, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!1050 = !{!1039}
!1051 = !{!1041}
!1052 = !{!1043}
!1053 = !{!1045}
!1054 = !{!1047}
!1055 = !{!1049}
!1056 = distinct !{!1056, i1 true, !"_ZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPm"}
!1057 = distinct !{!1057, !1056, !"_ZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPm: argument 0"}
!1058 = distinct !{null}
!1059 = distinct !{!1059, !139}
!1060 = distinct !{!1060, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_"}
!1061 = distinct !{!1061, !1060, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_: argument 0"}
!1062 = distinct !{!1062, !139}
!1063 = distinct !{!1063, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_"}
!1064 = distinct !{!1064, !1063, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_: argument 0"}
!1065 = distinct !{!1065, !139, !296, !297}
!1066 = distinct !{!1066, !139, !297, !296}
!1067 = distinct !{!1067, !139}
!1068 = !{!163, !31, i64 8}
!1069 = !{!163, !31, i64 16}
!1070 = !{!1057}
!1071 = !{!187, !183, i64 40}
!1072 = !{!1061}
!1073 = !{!1064}
!1074 = distinct !{!1074, i1 true, !"_ZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPm"}
!1075 = distinct !{!1075, !1074, !"_ZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPm: argument 0"}
!1076 = distinct !{null}
!1077 = distinct !{!1077, !139}
!1078 = !{!199, !28, i64 320}
!1079 = !{!163, !31, i64 24}
!1080 = !{!163, !31, i64 32}
!1081 = !{!1075}
!1082 = distinct !{!1082, i1 false, !"LVerDomain"}
!1083 = distinct !{!1083, !1082}
!1084 = distinct !{!1084, !1082}
!1085 = distinct !{!1085, !139, !296, !297}
!1086 = distinct !{!1086, !139, !296}
!1087 = distinct !{!1087, !139}
!1088 = distinct !{!1088, i1 false, !"LVerDomain"}
!1089 = distinct !{!1089, !1088}
!1090 = distinct !{!1090, !1088}
!1091 = distinct !{!1091, !139, !296, !297}
!1092 = distinct !{!1092, !139, !296}
!1093 = distinct !{!1093, i1 false, !"LVerDomain"}
!1094 = distinct !{!1094, !1093}
!1095 = distinct !{!1095, !1093}
!1096 = distinct !{!1096, !139, !296, !297}
!1097 = distinct !{!1097, !139, !296}
!1098 = distinct !{!1098, !139, !1106}
!1099 = distinct !{!1099, !139}
!1100 = !{!1083}
!1101 = !{!1084}
!1102 = !{!1089}
!1103 = !{!1090}
!1104 = !{!1094}
!1105 = !{!1095}
!1106 = !{!"llvm.loop.peeled.count", i32 1}
!1107 = distinct !{!1107, i1 true, !"_ZN3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment4CalcEPKNS_6Image3IfEERKNS_5RectTImEE"}
!1108 = distinct !{!1108, !1107, !"_ZN3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment4CalcEPKNS_6Image3IfEERKNS_5RectTImEE: argument 0"}
!1109 = distinct !{!1109, i1 true, !"_ZN3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment9CalcPlaneEPKNS_5PlaneIfEERKNS_5RectTImEE"}
!1110 = distinct !{!1110, !1109, !"_ZN3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment9CalcPlaneEPKNS_5PlaneIfEERKNS_5RectTImEE: argument 0"}
!1111 = distinct !{!1111, !139}
!1112 = distinct !{!1112, !139}
!1113 = distinct !{!1113, i1 true, !"_ZN3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment15CalcExposedBlueEPKNS_5PlaneIfEES5_RKNS_5RectTImEE"}
!1114 = distinct !{!1114, !1113, !"_ZN3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment15CalcExposedBlueEPKNS_5PlaneIfEES5_RKNS_5RectTImEE: argument 0"}
!1115 = distinct !{!1115, !1113, !"_ZN3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment15CalcExposedBlueEPKNS_5PlaneIfEES5_RKNS_5RectTImEE: argument 1"}
!1116 = distinct !{!1116, !139}
!1117 = distinct !{!1117, !139}
!1118 = !{!1108}
!1119 = !{!1110}
!1120 = !{!1110, !1108}
!1121 = !{!1114}
!1122 = !{!1115}
!1123 = !{!1114, !1108}
!1124 = !{!1115, !1108}
!1125 = !{!1114, !1115, !1108}
!1126 = !{i64 0, i64 32, !277}
!1127 = distinct !{!1127, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev"}
!1128 = distinct !{!1128, !1127, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev: argument 0"}
!1129 = !{!1128}
!1130 = distinct !{!1130, i1 true, !"_ZNO3jxl8StatusOrINS_19ColorCorrelationMapEE6value_Ev"}
!1131 = distinct !{!1131, !1130, !"_ZNO3jxl8StatusOrINS_19ColorCorrelationMapEE6value_Ev: argument 0"}
!1132 = distinct !{!1132, !139}
!1133 = distinct !{!1133, !141}
!1134 = distinct !{!1134, !139}
!1135 = distinct !{!1135, !139}
!1136 = distinct !{null, null, null, null, null, null, null, null}
!1137 = distinct !{!1137, i1 true, !"_ZNO3jxl8StatusOrINSt3__110unique_ptrINS_8ACImageTIiEENS1_14default_deleteIS4_EEEEE6value_Ev"}
!1138 = distinct !{!1138, !1137, !"_ZNO3jxl8StatusOrINSt3__110unique_ptrINS_8ACImageTIiEENS1_14default_deleteIS4_EEEEE6value_Ev: argument 0"}
!1139 = distinct !{!1139, !139}
!1140 = distinct !{!1140, i1 true, !"_ZN3jxl13QuantEncoding7LibraryILm0EEES0_v"}
!1141 = distinct !{!1141, !1140, !"_ZN3jxl13QuantEncoding7LibraryILm0EEES0_v: argument 0"}
!1142 = distinct !{!1142, !139}
!1143 = distinct !{!1143, !139, !296, !297}
!1144 = distinct !{!1144, !139, !296, !297}
!1145 = distinct !{!1145, i1 true, !"_ZN3jxl13QuantEncoding3RAWEONSt3__16vectorIiNS1_9allocatorIiEEEEi"}
!1146 = distinct !{!1146, !1145, !"_ZN3jxl13QuantEncoding3RAWEONSt3__16vectorIiNS1_9allocatorIiEEEEi: argument 0"}
!1147 = distinct !{!1147, !139}
!1148 = distinct !{!1148, !139}
!1149 = distinct !{!1149, !139}
!1150 = distinct !{null, null, null}
!1151 = distinct !{!1151, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev"}
!1152 = distinct !{!1152, !1151, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev: argument 0"}
!1153 = distinct !{!1153, !139}
!1154 = distinct !{!1154, !139}
!1155 = distinct !{!1155, !139}
!1156 = distinct !{!1156, i1 false, !"LVerDomain"}
!1157 = distinct !{!1157, !1156}
!1158 = distinct !{!1158, !1156}
!1159 = distinct !{!1159, !139, !296, !297}
!1160 = distinct !{!1160, !139, !296}
!1161 = distinct !{!1161, !139, !296, !297}
!1162 = distinct !{!1162, !139, !297, !296}
!1163 = distinct !{!1163, !139}
!1164 = distinct !{!1164, !139}
!1165 = distinct !{!1165, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!1166 = distinct !{!1166, !1165, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!1167 = distinct !{!1167, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!1168 = distinct !{!1168, !1167, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!1169 = distinct !{!1169, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!1170 = distinct !{!1170, !1169, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!1171 = distinct !{!1171, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!1172 = distinct !{!1172, !1171, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!1173 = distinct !{!1173, !139, !296, !297}
!1174 = distinct !{!1174, !139, !296}
!1175 = distinct !{!1175, !139}
!1176 = distinct !{!1176, !141}
!1177 = distinct !{!1177, !139}
!1178 = distinct !{!1178, !139}
!1179 = !{!1131}
!1180 = !{!1138}
!1181 = !{!1141}
!1182 = !{!569, !569, i64 0}
!1183 = !{i64 0, i64 104, !277, i64 104, i64 8, !140, i64 112, i64 204, !277, i64 320, i64 1, !277}
!1184 = !{!415, !412, i64 8}
!1185 = !{!411, !408, i64 0}
!1186 = !{!576, !28, i64 12}
!1187 = !{!1146}
!1188 = !{!584, !27, i64 552}
!1189 = !{!222, !222, i64 0}
!1190 = !{i64 0, i64 16, !277, i64 16, i64 16, !277, i64 32, i64 4, !295, i64 36, i64 4, !295, i64 40, i64 4, !94, i64 44, i64 4, !94, i64 48, i64 4, !94, i64 52, i64 12, !277, i64 64, i64 8, !1189}
!1191 = !{!223, !28, i64 32}
!1192 = !{!223, !38, i64 44}
!1193 = !{!223, !38, i64 40}
!1194 = !{!223, !28, i64 36}
!1195 = !{!223, !38, i64 48}
!1196 = !{!223, !222, i64 64}
!1197 = !{!586, !586, i64 0}
!1198 = !{!273, !39, i64 3337}
!1199 = !{!226, !38, i64 20}
!1200 = !{!226, !38, i64 24}
!1201 = !{!589, !589, i64 0}
!1202 = !{!590, !590, i64 0}
!1203 = !{!1152}
!1204 = !{!1157}
!1205 = !{!1158}
!1206 = !{!1172, !1170, !1168, !1166}
!1207 = !{!273, !41, i64 2048}
!1208 = !{!254, !254, i64 0}
!1209 = !{!257, !41, i64 136}
!1210 = distinct !{!1210, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev"}
!1211 = distinct !{!1211, !1210, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev: argument 0"}
!1212 = !{!1211}
!1213 = !{!273, !41, i64 16}
!1214 = !{!273, !41, i64 24}
!1215 = distinct !{!1215, !139}
!1216 = !{!273, !28, i64 3840}
!1217 = !{!273, !41, i64 1664}
!1218 = distinct !{!1218, !139}
!1219 = distinct !{null, null}
!1220 = !{!607, !607, i64 0}
!1221 = distinct !{!1221, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl9BitWriterEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!1222 = distinct !{!1222, !1221, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl9BitWriterEJRP22JxlMemoryManagerStructEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!1223 = distinct !{!1223, !139}
!1224 = distinct !{!1224, i1 true, !"_ZN3jxl15ModularStreamId6GlobalEv"}
!1225 = distinct !{!1225, !1224, !"_ZN3jxl15ModularStreamId6GlobalEv: argument 0"}
!1226 = distinct !{!1226, !139}
!1227 = distinct !{null, null}
!1228 = distinct !{null, null, null}
!1229 = distinct !{!1229, !139}
!1230 = distinct !{!1230, !139}
!1231 = distinct !{null, null}
!1232 = !{!619, !619, i64 0}
!1233 = !{!620, !620, i64 0}
!1234 = !{!1222}
!1235 = !{!60, !39, i64 49}
!1236 = !{!60, !39, i64 51}
!1237 = !{!1225}
!1238 = !{!623, !623, i64 0}
!1239 = !{!60, !53, i64 4}
!1240 = !{!60, !54, i64 8}
!1241 = !{!60, !39, i64 48}
!1242 = !{!60, !52, i64 0}
!1243 = !{!273, !41, i64 3208}
!1244 = !{!60, !39, i64 50}
!1245 = !{!"_ZTSN3jxl8StatusOrImEE", !27, i64 0, !289, i64 8}
!1246 = !{!1245, !289, i64 8}
!1247 = distinct !{null, null, null, null}
!1248 = !{!"_ZTSZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPmEUlPKvE_", !538, i64 0}
!1249 = !{!1248, !538, i64 0}
!1250 = distinct !{null, null, null, null}
!1251 = !{!"_ZTSZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPmEUlPKvE_", !538, i64 0}
!1252 = !{!1251, !538, i64 0}
!1253 = distinct !{!1253, !139}
!1254 = distinct !{!1254, !139}
!1255 = !{!647, !647, i64 0}
!1256 = distinct !{!1256, !139}
!1257 = distinct !{!1257, !139}
!1258 = !{!650, !268, i64 16}
!1259 = distinct !{!1259, !139}
!1260 = distinct !{!1260, !139}
!1261 = distinct !{!1261, !139}
!1262 = distinct !{!1262, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl8ACImageTIiEEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!1263 = distinct !{!1263, !1262, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl8ACImageTIiEEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!1264 = distinct !{!1264, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IiEEE6value_Ev"}
!1265 = distinct !{!1265, !1264, !"_ZNO3jxl8StatusOrINS_6Image3IiEEE6value_Ev: argument 0"}
!1266 = !{!1263}
!1267 = !{!1265}
end_hunk_1
