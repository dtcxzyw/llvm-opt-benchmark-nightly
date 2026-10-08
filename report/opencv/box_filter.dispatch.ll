Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/box_filter.dispatch?download=true
inline.NumInlined: 2169
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.body

bb.g:                                             ; preds = %bb.a
  %.sroa.5.0.extract.shift = lshr i64 %3, 32
  %.sroa.039.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %i.ab = and i32 %i.p, 31
  %i.ac = icmp slt i32 %.sroa.039.0.extract.trunc, 0
  %i.ad = sdiv i32 %.sroa.047.0.extract.trunc, 2
  %.sroa.039.0 = select i1 %i.ac, i32 %i.ad, i32 %.sroa.039.0.extract.trunc ; 6 uses
  %i.ae = icmp slt i64 %3, 0
  %i.af = sdiv i32 %.sroa.552.0.extract.trunc, 2
  %i.ag = zext i32 %i.af to i64
  %.sroa.5.0 = select i1 %i.ae, i64 %i.ag, i64 %.sroa.5.0.extract.shift ; 2 uses
  %i.ah = mul nsw i32 %.sroa.552.0.extract.trunc, %.sroa.047.0.extract.trunc
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fdiv double 1.000000e+00, %i.ai
  %i.ak = select i1 %6, double %i.aj, double 1.000000e+00 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !362
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !362
  %i.ap = icmp eq ptr %i.am, %i.ao                ; 14 uses
  switch i32 %i.ab, label %bb.do [
    i32 5, label %bb.h
    i32 6, label %bb.bl
  ]

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0 to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %16, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.bk

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %17, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.g, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store ptr null, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store ptr null, ptr %i.i, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store ptr null, ptr %i.j, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store ptr null, ptr %i.k, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store ptr null, ptr %i.l, align 8, !tbaa !110
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !362
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !362
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0.0.copyload.i = load i32, ptr %4, align 4, !tbaa !13 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !13 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i32, ptr %i.au, align 8, !tbaa !111 ; 6 uses
  %i.aw = icmp slt i32 %i.av, 3
  br i1 %i.aw, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc.i unwind label %bb.r

.noexc.i:                                         ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #24
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc.i
  unreachable

bb.l:                                             ; preds = %.noexc.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.m:                                             ; preds = %bb.i
  %i.bd = icmp sgt i32 %i.av, 0
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bf = icmp eq i32 %i.av, 2
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp eq i32 %i.av, 0
  %i.bk = zext i1 %i.bj to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = phi i32 [ %i.bi, %bb.n ], [ %i.bk, %bb.o ] ; 11 uses
  %i.bm = icmp eq i32 %i.av, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp sgt i32 %i.av, -1
  %i.bq = zext i1 %i.bp to i32
  %i.br = select i1 %i.bm, i32 %i.bo, i32 %i.bq   ; 4 uses
  %i.bs = load i32, ptr %5, align 4, !tbaa !113   ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !114 ; 7 uses
  %i.bv = icmp slt i32 %i.bs, 0
  %i.bw = icmp slt i32 %i.bu, 0
  %or.cond.not498.i = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = icmp slt i32 %i.bl, 0
  %or.cond5.not495.i = select i1 %or.cond.not498.i, i1 true, i1 %i.bx
  %i.by = icmp slt i32 %i.br, 0
  %or.cond8.not493.i = select i1 %or.cond5.not495.i, i1 true, i1 %i.by
  %i.bz = add nuw nsw i32 %i.bs, %i.bl
  %.not.i = icmp sgt i32 %i.bz, %.sroa.0.0.copyload.i
  %or.cond310.i = select i1 %or.cond8.not493.i, i1 true, i1 %.not.i
  %i.ca = add nuw nsw i32 %i.bu, %i.br
  %.not291.i = icmp sgt i32 %i.ca, %.sroa.7.0.copyload.i
  %or.cond311.i = select i1 %or.cond310.i, i1 true, i1 %.not291.i
  br i1 %or.cond311.i, label %bb.s, label %bb.x

bb.q:                                             ; preds = %.noexc
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.r:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib, ptr noundef nonnull @.str.1, i32 noundef 1400) #24
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !20
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.cd, %bb.v ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ce, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.x:                                             ; preds = %bb.p
  %i.ck = load i64, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  %i.cl = load i64, ptr %i.at, align 8, !tbaa !39
  %i.cm = load i32, ptr %0, align 8, !tbaa !108
  %i.cn = and i32 %i.cm, 4095                     ; 4 uses
  %i.co = lshr i32 %i.cn, 5
  %i.cp = add nuw nsw i32 %i.co, 1                ; 18 uses
  %i.cq = shl nuw nsw i32 %i.cn, 2
  %i.cr = and i32 %i.cq, 124
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = lshr i64 1275511473185297, %i.cs
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 15
  %i.cw = mul nuw nsw i32 %i.cv, %i.cp            ; 4 uses
  %i.cx = lshr exact i32 %i.n, 2
  %i.cy = add nuw nsw i32 %i.cx, 8
  %i.cz = add nsw i32 %.sroa.047.0.extract.trunc, -1 ; 2 uses
  %.sroa.speculated423.i = call i32 @llvm.smax.i32(i32 %i.cz, i32 1)
  %i.da = add i32 %.sroa.552.0.extract.trunc, -1  ; 2 uses
  %i.db = add i32 %i.br, %i.da                    ; 4 uses
  %.sroa.speculated446.i = call i32 @llvm.smin.i32(i32 %i.bs, i32 %.sroa.039.0) ; 2 uses
  %i.dc = sub i32 %.sroa.039.0, %i.bs             ; 4 uses
  %.sroa.speculated392.i = call i32 @llvm.smax.i32(i32 %i.dc, i32 0) ; 6 uses
  %i.dd = xor i32 %.sroa.039.0, -1
  %i.de = add i32 %i.dd, %.sroa.047.0.extract.trunc
  %i.df = sub i32 %i.de, %.sroa.0.0.copyload.i
  %i.dg = add i32 %i.df, %i.bl
  %i.dh = add i32 %i.dg, %i.bs                    ; 4 uses
  %.sroa.speculated371.i = call i32 @llvm.smax.i32(i32 %i.dh, i32 0) ; 6 uses
  %i.di = xor i32 %.sroa.7.0.extract.trunc.i, -1
  %i.dj = add i32 %i.di, %.sroa.552.0.extract.trunc
  %i.dk = sub i32 %i.dj, %.sroa.7.0.copyload.i
  %i.dl = add i32 %i.dk, %i.br
  %i.dm = add i32 %i.dl, %i.bu                    ; 3 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.dm, i32 0) ; 3 uses
  %.sroa.speculated406.i = call i32 @llvm.umin.i32(i32 %i.bl, i32 %.sroa.speculated392.i)
  %i.dn = mul nuw nsw i32 %i.cp, %.sroa.speculated406.i ; 6 uses
  %i.do = add i32 %.sroa.047.0.extract.trunc, 63  ; 2 uses
  %i.dp = add i32 %i.bl, %i.do
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  %i.dr = mul i32 %i.dq, %i.cy                    ; 7 uses
  %i.ds = mul nsw i32 %i.cw, %.sroa.speculated446.i
  %i.dt = sext i32 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.aq, i64 %i.du ; 2 uses
  %i.dw = mul nuw nsw i32 %i.cp, %.sroa.speculated423.i
  %i.dx = zext nneg i32 %i.dw to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.dx, i16 noundef zeroext 4)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.dy = add nsw i32 %.sroa.552.0.extract.trunc, 1
  %i.dz = mul i32 %i.dr, %i.dy
  %i.ea = sext i32 %i.dz to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.ea, i16 noundef zeroext 1)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.eb = mul i32 %i.cw, %i.dq                    ; 3 uses
  %i.ec = sext i32 %i.eb to i64                   ; 4 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.ec, i16 noundef zeroext 1)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %16)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5utils10BufferArea8zeroFillEv(ptr noundef nonnull align 8 dereferenceable(41) %16)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ed = icmp sgt i32 %i.dc, 0                   ; 3 uses
  %i.ee = icmp sgt i32 %i.dh, 0                   ; 3 uses
  %or.cond10.i = select i1 %i.ed, i1 true, i1 %i.ee
  %i.ef = icmp ne i32 %7, 0                       ; 7 uses
  %or.cond14.i = and i1 %i.ef, %or.cond10.i
  br i1 %or.cond14.i, label %bb.ad, label %.loopexit506.i

bb.ad:                                            ; preds = %bb.ac
  %i.eg = sub nsw i32 %.sroa.speculated446.i, %i.bs ; 2 uses
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  br i1 %i.ed, label %.lr.ph.preheader.i, label %.preheader505.i

.lr.ph.preheader.i:                               ; preds = %bb.ad
  %i.ei = zext nneg i32 %i.cp to i64              ; 4 uses
  %wide.trip.count533.i = zext nneg i32 %i.dc to i64
  %min.iters.check526 = icmp samesign ult i32 %i.cn, 224
  %n.vec528 = and i64 %i.ei, 248                  ; 3 uses
  %cmp.n538 = icmp eq i64 %n.vec528, %i.ei
  br label %.lr.ph.i

.preheader505.i:                                  ; preds = %.loopexit673, %bb.ad
  br i1 %i.ee, label %.lr.ph512.preheader.i, label %.loopexit506.i

.lr.ph512.preheader.i:                            ; preds = %.preheader505.i
  %i.ej = zext nneg i32 %.sroa.speculated392.i to i64
  %i.ek = zext nneg i32 %i.cp to i64              ; 4 uses
  %i.el = zext nneg i32 %i.dh to i64
  %min.iters.check541 = icmp samesign ult i32 %i.cn, 224
  %n.vec543 = and i64 %i.ek, 248                  ; 3 uses
  %cmp.n553 = icmp eq i64 %n.vec543, %i.ek
  br label %.lr.ph512.i

.lr.ph.i:                                         ; preds = %.loopexit673, %.lr.ph.preheader.i
  %indvars.iv530.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next531.i, %.loopexit673 ] ; 3 uses
  %i.em = trunc i64 %indvars.iv530.i to i32
  %i.en = sub i32 %i.em, %.sroa.speculated392.i
  %i.eo = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.en, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %7)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ep = add nsw i32 %i.eo, %i.eg
  %i.eq = mul nsw i32 %i.ep, %i.cp                ; 2 uses
  %i.er = mul nuw nsw i64 %indvars.iv530.i, %i.ei
  %invariant.gep603.i = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.er ; 2 uses
  br i1 %min.iters.check526, label %scalar.ph525.preheader, label %vector.ph527

vector.ph527:                                     ; preds = %bb.ae
  %broadcast.splatinsert529 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat530 = shufflevector <4 x i32> %broadcast.splatinsert529, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op811 = add <4 x i32> splat (i32 4), %broadcast.splat530
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph527
  %index532 = phi i64 [ 0, %vector.ph527 ], [ %index.next535, %vector.body531 ] ; 2 uses
  %vec.ind533 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph527 ], [ %vec.ind.next536, %vector.body531 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i, i64 %index532 ; 2 uses
  %i.et = add <4 x i32> %broadcast.splat530, %vec.ind533
  %.reass812 = add <4 x i32> %vec.ind533, %invariant.op811
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x i32> %i.et, ptr %i.es, align 4, !tbaa !13
  store <4 x i32> %.reass812, ptr %i.eu, align 4, !tbaa !13
  %index.next535 = add nuw i64 %index532, 8       ; 2 uses
  %vec.ind.next536 = add <4 x i32> %vec.ind533, splat (i32 8)
  %i.ev = icmp eq i64 %index.next535, %n.vec528
  br i1 %i.ev, label %middle.block537, label %vector.body531, !llvm.loop !282

middle.block537:                                  ; preds = %vector.body531
  br i1 %cmp.n538, label %.loopexit673, label %scalar.ph525.preheader

scalar.ph525.preheader:                           ; preds = %bb.ae, %middle.block537
  %indvars.iv.i.ph = phi i64 [ 0, %bb.ae ], [ %n.vec528, %middle.block537 ]
  br label %scalar.ph525

scalar.ph525:                                     ; preds = %scalar.ph525.preheader, %scalar.ph525
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph525 ], [ %indvars.iv.i.ph, %scalar.ph525.preheader ] ; 3 uses
  %gep604.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i, i64 %indvars.iv.i
  %i.ew = trunc i64 %indvars.iv.i to i32
  %i.ex = add i32 %i.eq, %i.ew
  store i32 %i.ex, ptr %gep604.i, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ei
  br i1 %exitcond.not.i, label %.loopexit673, label %scalar.ph525, !llvm.loop !283

bb.af:                                            ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.av, %.invoke.i, %bb.at, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

.loopexit673:                                     ; preds = %scalar.ph525, %middle.block537
  %indvars.iv.next531.i = add nuw nsw i64 %indvars.iv530.i, 1 ; 2 uses
  %exitcond534.not.i = icmp eq i64 %indvars.iv.next531.i, %wide.trip.count533.i
  br i1 %exitcond534.not.i, label %.preheader505.i, label %.lr.ph.i, !llvm.loop !284

.lr.ph512.i:                                      ; preds = %.loopexit, %.lr.ph512.preheader.i
  %indvars.iv540.i = phi i64 [ 0, %.lr.ph512.preheader.i ], [ %indvars.iv.next541.i, %.loopexit ] ; 3 uses
  %i.fa = trunc i64 %indvars.iv540.i to i32
  %i.fb = add i32 %.sroa.0.0.copyload.i, %i.fa
  %i.fc = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.fb, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %7)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.lr.ph512.i
  %i.fd = add nsw i32 %i.fc, %i.eg
  %i.fe = mul nsw i32 %i.fd, %i.cp                ; 2 uses
  %i.ff = add nuw nsw i64 %indvars.iv540.i, %i.ej
  %i.fg = mul nuw nsw i64 %i.ff, %i.ek
  %invariant.gep605.i = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fg ; 2 uses
  br i1 %min.iters.check541, label %scalar.ph540.preheader, label %vector.ph542

vector.ph542:                                     ; preds = %bb.ah
  %broadcast.splatinsert544 = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat545 = shufflevector <4 x i32> %broadcast.splatinsert544, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op813 = add <4 x i32> splat (i32 4), %broadcast.splat545
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph542
  %index547 = phi i64 [ 0, %vector.ph542 ], [ %index.next550, %vector.body546 ] ; 2 uses
  %vec.ind548 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph542 ], [ %vec.ind.next551, %vector.body546 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i, i64 %index547 ; 2 uses
  %i.fi = add <4 x i32> %broadcast.splat545, %vec.ind548
  %.reass814 = add <4 x i32> %vec.ind548, %invariant.op813
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x i32> %i.fi, ptr %i.fh, align 4, !tbaa !13
  store <4 x i32> %.reass814, ptr %i.fj, align 4, !tbaa !13
  %index.next550 = add nuw i64 %index547, 8       ; 2 uses
  %vec.ind.next551 = add <4 x i32> %vec.ind548, splat (i32 8)
  %i.fk = icmp eq i64 %index.next550, %n.vec543
  br i1 %i.fk, label %middle.block552, label %vector.body546, !llvm.loop !285

middle.block552:                                  ; preds = %vector.body546
  br i1 %cmp.n553, label %.loopexit, label %scalar.ph540.preheader
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %i.gr = shl nuw nsw i64 %i.gp, 3
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #26
          to label %.noexc367.i unwind label %bb.af ; 4 uses

.noexc367.i:                                      ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  store ptr null, ptr %i.gs, align 8, !tbaa !118
  %i.gt = add nsw i64 %i.gp, -1                   ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %.noexc321.i, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc367.i
  %i.gv = getelementptr i8, ptr %i.gs, i64 8
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.gt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gv, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !118
  br label %.noexc321.i

.noexc321.i:                                      ; preds = %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc367.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gp
  %i.gx = ptrtoint ptr %i.gw to i64
  br label %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i:          ; preds = %.noexc321.i, %.loopexit.i
  %.sroa.15.2.i = phi i64 [ %i.gx, %.noexc321.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.sroa.0454.2.i = phi ptr [ %i.gs, %.noexc321.i ], [ null, %.loopexit.i ] ; 17 uses
  %i.gy = load ptr, ptr %i.g, align 8, !tbaa !109 ; 11 uses
  %i.gz = load ptr, ptr %i.i, align 8, !tbaa !110 ; 2 uses
  br i1 %i.ap, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = add i64 %i.ha, 63
  %i.hc = and i64 %i.hb, -64
  %i.hd = inttoptr i64 %i.hc to ptr               ; 3 uses
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !110 ; 4 uses
  %i.hf = mul nsw i32 %i.dr, %.sroa.552.0.extract.trunc
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %i.he, i64 %i.hg
  %i.hi = shl i32 %i.dn, 3                        ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = add i64 %i.hj, 63
  %i.hl = and i64 %i.hk, -64
  %i.hm = inttoptr i64 %i.hl to ptr               ; 3 uses
  %i.hn = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.hn, label %.lr.ph516.i, label %.preheader.i

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i
  %i.ho = shl i32 %i.dn, 2
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.gz, i64 %i.hp
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = add i64 %i.hr, 63
  %i.ht = and i64 %i.hs, -64
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = sub nsw i64 0, %i.hp
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv ; 3 uses
  %i.hx = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  %i.hy = mul nsw i32 %i.dr, %.sroa.552.0.extract.trunc
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.hx, i64 %i.hz
  %i.ib = shl i32 %i.dn, 3                        ; 4 uses
  %i.ic = sext i32 %i.ib to i64                   ; 3 uses
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 %i.ic
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = add i64 %i.ie, 63
  %i.ig = and i64 %i.if, -64
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = sub nsw i64 0, %i.ic                    ; 4 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 %i.ii ; 3 uses
  %i.ik = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.ik, label %.lr.ph516.thread.i, label %.preheader.i

.lr.ph516.thread.i:                               ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i
  %invariant.gep.i = getelementptr i8, ptr %i.hx, i64 %i.ic ; 3 uses
  %i.il = sext i32 %i.dr to i64                   ; 2 uses
  %min.iters.check556 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check556, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader, label %vector.ph557

vector.ph557:                                     ; preds = %.lr.ph516.thread.i
  %n.vec558 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert559 = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat560 = shufflevector <2 x i64> %broadcast.splatinsert559, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph557
  %index562 = phi i64 [ 0, %vector.ph557 ], [ %index.next569, %vector.body561 ] ; 2 uses
  %vec.ind563 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph557 ], [ %vec.ind.next570, %vector.body561 ] ; 3 uses
  %step.add564 = add nuw <2 x i64> %vec.ind563, splat (i64 2)
  %i.im = mul nsw <2 x i64> %vec.ind563, %broadcast.splat560
  %i.in = mul nsw <2 x i64> %step.add564, %broadcast.splat560
  %wide.gep565 = getelementptr i8, ptr %invariant.gep.i, <2 x i64> %i.im
  %wide.gep566 = getelementptr i8, ptr %invariant.gep.i, <2 x i64> %i.in
  %i.io = ptrtoint <2 x ptr> %wide.gep565 to <2 x i64>
  %i.ip = ptrtoint <2 x ptr> %wide.gep566 to <2 x i64>
  %i.iq = add <2 x i64> %i.io, splat (i64 63)
  %i.ir = add <2 x i64> %i.ip, splat (i64 63)
  %i.is = and <2 x i64> %i.iq, splat (i64 -64)
  %i.it = and <2 x i64> %i.ir, splat (i64 -64)
  %i.iu = inttoptr <2 x i64> %i.is to <2 x ptr>
  %i.iv = inttoptr <2 x i64> %i.it to <2 x ptr>
  %wide.gep567 = getelementptr inbounds i8, <2 x ptr> %i.iu, i64 %i.ii
  %wide.gep568 = getelementptr inbounds i8, <2 x ptr> %i.iv, i64 %i.ii
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %index562 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store <2 x ptr> %wide.gep567, ptr %i.iw, align 8, !tbaa !118
  store <2 x ptr> %wide.gep568, ptr %i.ix, align 8, !tbaa !118
  %index.next569 = add nuw i64 %index562, 4       ; 2 uses
  %vec.ind.next570 = add nuw <2 x i64> %vec.ind563, splat (i64 4)
  %i.iy = icmp eq i64 %index.next569, %n.vec558
  br i1 %i.iy, label %middle.block571, label %vector.body561, !llvm.loop !289

middle.block571:                                  ; preds = %vector.body561
  %cmp.n572 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec558
  br i1 %cmp.n572, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader: ; preds = %.lr.ph516.thread.i, %middle.block571
  %indvars.iv546.i.ph = phi i64 [ 0, %.lr.ph516.thread.i ], [ %n.vec558, %middle.block571 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i

.lr.ph516.i:                                      ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i
  %i.iz = sext i32 %i.dr to i64                   ; 2 uses
  %min.iters.check575 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check575, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader, label %vector.ph576

vector.ph576:                                     ; preds = %.lr.ph516.i
  %n.vec577 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert578 = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat579 = shufflevector <2 x i64> %broadcast.splatinsert578, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph576
  %index581 = phi i64 [ 0, %vector.ph576 ], [ %index.next586, %vector.body580 ] ; 2 uses
  %vec.ind582 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph576 ], [ %vec.ind.next587, %vector.body580 ] ; 3 uses
  %step.add583 = add nuw <2 x i64> %vec.ind582, splat (i64 2)
  %i.ja = mul nsw <2 x i64> %vec.ind582, %broadcast.splat579
  %i.jb = mul nsw <2 x i64> %step.add583, %broadcast.splat579
  %wide.gep584 = getelementptr inbounds i8, ptr %i.he, <2 x i64> %i.ja
  %wide.gep585 = getelementptr inbounds i8, ptr %i.he, <2 x i64> %i.jb
  %i.jc = ptrtoint <2 x ptr> %wide.gep584 to <2 x i64>
  %i.jd = ptrtoint <2 x ptr> %wide.gep585 to <2 x i64>
  %i.je = add <2 x i64> %i.jc, splat (i64 63)
  %i.jf = add <2 x i64> %i.jd, splat (i64 63)
  %i.jg = and <2 x i64> %i.je, splat (i64 -64)
  %i.jh = and <2 x i64> %i.jf, splat (i64 -64)
  %i.ji = inttoptr <2 x i64> %i.jg to <2 x ptr>
  %i.jj = inttoptr <2 x i64> %i.jh to <2 x ptr>
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %index581 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store <2 x ptr> %i.ji, ptr %i.jk, align 8, !tbaa !118
  store <2 x ptr> %i.jj, ptr %i.jl, align 8, !tbaa !118
  %index.next586 = add nuw i64 %index581, 4       ; 2 uses
  %vec.ind.next587 = add nuw <2 x i64> %vec.ind582, splat (i64 4)
  %i.jm = icmp eq i64 %index.next586, %n.vec577
  br i1 %i.jm, label %middle.block588, label %vector.body580, !llvm.loop !290

middle.block588:                                  ; preds = %vector.body580
  %cmp.n589 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec577
  br i1 %cmp.n589, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader: ; preds = %.lr.ph516.i, %middle.block588
  %indvars.iv551.i.ph = phi i64 [ 0, %.lr.ph516.i ], [ %n.vec577, %middle.block588 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i
  %indvars.iv551.i = phi i64 [ %indvars.iv.next552.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %indvars.iv551.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader ] ; 3 uses
  %i.jn = mul nsw i64 %indvars.iv551.i, %i.iz
  %i.jo = getelementptr inbounds i8, ptr %i.he, i64 %i.jn
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = add i64 %i.jp, 63
  %i.jr = and i64 %i.jq, -64
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv551.i
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !118
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 1 ; 2 uses
  %exitcond555.not.i = icmp eq i64 %indvars.iv.next552.i, %.sroa.552.0.extract.shift
  br i1 %exitcond555.not.i, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i, !llvm.loop !291

.preheader.i:                                     ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i, %middle.block571, %middle.block588, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i
  %i.ju = phi i1 [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ true, %middle.block588 ], [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ true, %middle.block571 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ]
  %.0.i322594.i = phi ptr [ %i.ij, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ %i.hm, %middle.block588 ], [ %i.hm, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ %i.ij, %middle.block571 ], [ %i.hm, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %i.ij, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ] ; 4 uses
  %.0.i470592.i = phi ptr [ %i.hw, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ %i.hd, %middle.block588 ], [ %i.hd, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ %i.hw, %middle.block571 ], [ %i.hd, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %i.hw, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ]
  %i.jv = phi i32 [ %i.ib, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ %i.hi, %middle.block588 ], [ %i.hi, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ %i.ib, %middle.block571 ], [ %i.hi, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %i.ib, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ]
  %i.jw = icmp sgt i32 %i.db, 0
  br i1 %i.jw, label %.lr.ph522.i, label %._crit_edge523.i

.lr.ph522.i:                                      ; preds = %.preheader.i
  %i.jx = sub i32 %i.bu, %.sroa.7.0.extract.trunc.i
  %i.jy = sub nsw i32 %i.db, %.sroa.speculated.i  ; 2 uses
  %i.jz = sext i32 %i.jv to i64                   ; 3 uses
  %i.ka = sub nsw i64 0, %i.jz                    ; 2 uses
  %i.kb = mul i32 %i.cp, %i.bl                    ; 6 uses
  %i.kc = mul i32 %i.cp, %.sroa.speculated392.i   ; 5 uses
  %i.kd = zext i32 %i.kc to i64                   ; 17 uses
  %i.ke = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  %i.kf = add nuw i32 %.sroa.speculated371.i, %.sroa.speculated392.i ; 2 uses
  %.not116.i.i = icmp slt i32 %i.bl, %i.kf
  %i.kg = mul i32 %i.cp, %i.cz                    ; 3 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  %wide.trip.count214.i.i = zext i32 %i.kg to i64 ; 5 uses
  %i.ki = sub i32 %i.kf, %i.bl                    ; 2 uses
  %i.kj = xor i32 %i.ki, -1
  %i.kk = add i32 %i.kj, %.sroa.047.0.extract.trunc
  %i.kl = mul i32 %i.cp, %i.kk                    ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 0
  %wide.trip.count224.i.i = zext i32 %i.kl to i64 ; 5 uses
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i, i32 %i.ki) ; 2 uses
  %i.kn = mul i32 %i.cp, %.sroa.speculated.i.i    ; 2 uses
  %.not525.i = icmp eq i32 %.sroa.speculated.i.i, 0
  %wide.trip.count233.i.i = zext i32 %i.kn to i64 ; 3 uses
  %invariant.gep264.i.i = getelementptr [4 x i8], ptr %i.gy, i64 %i.kd ; 15 uses
  %i.ko = shl nuw nsw i64 %wide.trip.count233.i.i, 2
  %.not500.i = icmp eq i32 %i.bl, 0
  %i.kp = icmp sgt i32 %.sroa.047.0.extract.trunc, 0 ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %.sroa.0454.2.i, i64 %i.gp
  %i.kr = getelementptr i8, ptr %i.kq, i64 -8     ; 2 uses
  %i.ks = zext nneg i32 %i.cp to i64              ; 10 uses
  %wide.trip.count251.i.i = zext nneg i32 %i.dn to i64
  %wide.trip.count242.i.i = and i64 %2, 4294967295
  %i.kt = sub nsw i64 0, %i.kd
  %i.ku = sub nsw i32 %i.bl, %.sroa.speculated371.i
  %i.kv = mul i32 %i.cp, %i.ku
  %i.kw = xor i32 %.sroa.speculated371.i, -1
  %i.kx = add i32 %i.kw, %.sroa.047.0.extract.trunc
  %i.ky = mul nsw i32 %i.cp, %i.kx
  %i.kz = mul i32 %i.cp, %.sroa.speculated371.i
  %i.la = zext i32 %i.kz to i64                   ; 6 uses
  %i.lb = shl nuw nsw i64 %i.la, 2                ; 2 uses
  %.not501.i = icmp slt i32 %i.dc, 1
  %i.lc = icmp sgt i32 %i.kb, 0
  %wide.trip.count74.i.i = zext i32 %i.kb to i64  ; 5 uses
  %.not502.i = icmp slt i32 %i.dh, 1
  %i.ld = sext i32 %i.da to i64
  %i.le = sext i32 %i.jy to i64
  %wide.trip.count564.i = zext nneg i32 %i.db to i64
  %i.lf = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  %i.lg = add nsw i64 %i.kd, -1                   ; 2 uses
  %i.lh = add nsw i64 %wide.trip.count242.i.i, -1 ; 2 uses
  %i.li = add nsw i64 %i.la, -1                   ; 2 uses
  %min.iters.check653 = icmp ult i64 %2, 8589934592
  %n.vec655 = and i64 %.sroa.552.0.extract.shift, 4294967294 ; 3 uses
  %broadcast.splatinsert658 = insertelement <2 x i32> poison, i32 %.sroa.552.0.extract.trunc, i64 0
  %broadcast.splat659 = shufflevector <2 x i32> %broadcast.splatinsert658, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert660 = insertelement <2 x i32> poison, i32 %i.dr, i64 0
  %broadcast.splat661 = shufflevector <2 x i32> %broadcast.splatinsert660, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n671 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec655
  %xtraiter741 = and i64 %i.kd, 3                 ; 3 uses
  %i.lj = icmp ult i64 %i.lg, 3
  %unroll_iter745 = and i64 %i.kd, 4294967292
  %lcmp.mod743.not = icmp eq i64 %xtraiter741, 0
  %lcmp.mod744 = icmp ne i64 %xtraiter741, 0
  %min.iters.check640 = icmp ult i32 %i.kg, 8
  %n.vec642 = and i64 %wide.trip.count214.i.i, 2147483640 ; 4 uses
  %i.lk = add nuw nsw i64 %n.vec642, %i.kd
  %cmp.n649 = icmp eq i64 %n.vec642, %wide.trip.count214.i.i
  %xtraiter747 = and i64 %wide.trip.count214.i.i, 3 ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check625 = icmp ult i32 %i.kl, 8
  %n.vec627 = and i64 %wide.trip.count224.i.i, 2147483640 ; 4 uses
  %i.ll = add nuw nsw i64 %n.vec627, %i.kd        ; 2 uses
  %cmp.n634 = icmp eq i64 %n.vec627, %wide.trip.count224.i.i
  %xtraiter750 = and i64 %wide.trip.count224.i.i, 3 ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %xtraiter753 = and i64 %wide.trip.count233.i.i, 3 ; 3 uses
  %i.lm = add i32 %i.kn, -1
  %i.ln = icmp ult i32 %i.lm, 3
  %unroll_iter757 = and i64 %wide.trip.count233.i.i, 4294967292
  %lcmp.mod755.not = icmp eq i64 %xtraiter753, 0
  %lcmp.mod756 = icmp ne i64 %xtraiter753, 0
  %xtraiter759 = and i64 %2, 3                    ; 3 uses
  %i.lo = icmp ult i64 %i.lh, 3
  %unroll_iter764 = and i64 %2, 2147483644
  %lcmp.mod761.not = icmp eq i64 %xtraiter759, 0
  %lcmp.mod763 = icmp ne i64 %xtraiter759, 0
  %xtraiter769 = and i64 %i.la, 3                 ; 3 uses
  %i.lp = icmp ult i64 %i.li, 3
  %unroll_iter773 = and i64 %i.la, 4294967292
  %lcmp.mod771.not = icmp eq i64 %xtraiter769, 0
  %lcmp.mod772 = icmp ne i64 %xtraiter769, 0
  %xtraiter775 = and i64 %2, 3                    ; 3 uses
  %i.lq = icmp ult i64 %i.lh, 3
  %unroll_iter780 = and i64 %2, 2147483644
  %lcmp.mod777.not = icmp eq i64 %xtraiter775, 0
  %lcmp.mod779 = icmp ne i64 %xtraiter775, 0
  %xtraiter782 = and i64 %i.kd, 3                 ; 3 uses
  %i.lr = icmp ult i64 %i.lg, 3
  %unroll_iter786 = and i64 %i.kd, 4294967292
  %lcmp.mod784.not = icmp eq i64 %xtraiter782, 0
  %lcmp.mod785 = icmp ne i64 %xtraiter782, 0
  %min.iters.check595 = icmp ult i32 %i.kb, 8
  %n.vec597 = and i64 %wide.trip.count74.i.i, 2147483640 ; 4 uses
  %cmp.n604 = icmp eq i64 %n.vec597, %wide.trip.count74.i.i
  %xtraiter788 = and i64 %wide.trip.count74.i.i, 3 ; 2 uses
  %lcmp.mod789.not = icmp eq i64 %xtraiter788, 0
  %xtraiter791 = and i64 %i.la, 3                 ; 3 uses
  %i.ls = icmp ult i64 %i.li, 3
  %unroll_iter795 = and i64 %i.la, 4294967292
  %lcmp.mod793.not = icmp eq i64 %xtraiter791, 0
  %lcmp.mod794 = icmp ne i64 %xtraiter791, 0
  br label %bb.ax

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i
  %indvars.iv546.i = phi i64 [ %indvars.iv.next547.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ], [ %indvars.iv546.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader ] ; 3 uses
  %i.lt = mul nsw i64 %indvars.iv546.i, %i.il
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.lt
  %i.lu = ptrtoint ptr %gep.i to i64
  %i.lv = add i64 %i.lu, 63
  %i.lw = and i64 %i.lv, -64
  %i.lx = inttoptr i64 %i.lw to ptr
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %i.ii
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv546.i
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !118
  %indvars.iv.next547.i = add nuw nsw i64 %indvars.iv546.i, 1 ; 2 uses
  %exitcond550.not.i = icmp eq i64 %indvars.iv.next547.i, %.sroa.552.0.extract.shift
  br i1 %exitcond550.not.i, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i, !llvm.loop !292

._crit_edge523.i:                                 ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.preheader.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0454.2.i, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge523.i
  %i.ma = ptrtoint ptr %.sroa.0454.2.i to i64
  %i.mb = sub i64 %.sroa.15.2.i, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i, i64 noundef %i.mb) #25
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit

bb.ax:                                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.lr.ph522.i
  %indvars.iv561.i = phi i64 [ 0, %.lr.ph522.i ], [ %indvars.iv.next562.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 4 uses
  %.0248521.i = phi i32 [ 0, %.lr.ph522.i ], [ %i.abv, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 3 uses
  %.0257519.i = phi ptr [ %i.as, %.lr.ph522.i ], [ %spec.select.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 2 uses
  %i.mc = trunc nuw nsw i64 %indvars.iv561.i to i32 ; 2 uses
  %i.md = add i32 %i.jx, %i.mc
  %i.me = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.md, i32 noundef %.sroa.7.0.copyload.i, i32 noundef %7)
          to label %bb.ay unwind label %.body.i   ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.mf = icmp slt i32 %i.me, 0
  br i1 %i.mf, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not296.i = icmp sge i64 %indvars.iv561.i, %i.le
  %or.cond.not.i = select i1 %i.ap, i1 %.not296.i, i1 false
  br i1 %or.cond.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mg = sub nsw i32 %i.mc, %i.jy
  %i.mh = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.mi = mul nsw i32 %i.mg, %i.eb
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.mh, i64 %i.mj
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = add i64 %i.ml, 63
  %i.mn = and i64 %i.mm, -64
  %i.mo = inttoptr i64 %i.mn to ptr
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.mp = sub nsw i32 %i.me, %i.bu
  %i.mq = sext i32 %i.mp to i64
  %i.mr = mul nsw i64 %i.ck, %i.mq
  %i.ms = getelementptr inbounds i8, ptr %i.dv, i64 %i.mr
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %.0252.i = phi ptr [ %i.ms, %bb.bb ], [ %.0.i470592.i, %bb.ay ], [ %i.mo, %bb.ba ] ; 46 uses
  %.0252.i592 = ptrtoaddr ptr %.0252.i to i64     ; 3 uses
  %i.mt = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = add i64 %i.mu, 63
  %i.mw = and i64 %i.mv, -64                      ; 5 uses
  %i.mx = inttoptr i64 %i.mw to ptr               ; 57 uses
  %i.my = icmp slt i64 %indvars.iv561.i, %i.ld    ; 2 uses
  %or.cond313.i = select i1 %i.ap, i1 %i.my, i1 false
  %i.mz = load ptr, ptr %i.l, align 8
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = add i64 %i.na, 63
  %i.nc = and i64 %i.nb, -64
  %i.nd = inttoptr i64 %i.nc to ptr
  %.0251.i = select i1 %or.cond313.i, ptr %i.nd, ptr %.0257519.i ; 4 uses
  br i1 %i.ju, label %.lr.ph518.i, label %._crit_edge.i

.lr.ph518.i:                                      ; preds = %bb.bc
  %i.ne = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check653, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader, label %vector.ph654

vector.ph654:                                     ; preds = %.lr.ph518.i
  %broadcast.splatinsert656 = insertelement <2 x i32> poison, i32 %.0248521.i, i64 0
  %broadcast.splat657 = shufflevector <2 x i32> %broadcast.splatinsert656, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body662

vector.body662:                                   ; preds = %vector.body662, %vector.ph654
  %index663 = phi i64 [ 0, %vector.ph654 ], [ %index.next668, %vector.body662 ] ; 2 uses
  %vec.ind664 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph654 ], [ %vec.ind.next669, %vector.body662 ] ; 2 uses
  %i.nf = add <2 x i32> %broadcast.splat657, %vec.ind664
  %i.ng = srem <2 x i32> %i.nf, %broadcast.splat659
  %i.nh = mul nsw <2 x i32> %i.ng, %broadcast.splat661
  %i.ni = sext <2 x i32> %i.nh to <2 x i64>
  %wide.gep665 = getelementptr inbounds i8, ptr %i.ne, <2 x i64> %i.ni ; 2 uses
  %i.nj = ptrtoint <2 x ptr> %wide.gep665 to <2 x i64>
  %i.nk = add <2 x i64> %i.nj, splat (i64 63)
  %i.nl = and <2 x i64> %i.nk, splat (i64 -64)
  %i.nm = inttoptr <2 x i64> %i.nl to <2 x ptr>
  %wide.gep666 = getelementptr inbounds i8, <2 x ptr> %wide.gep665, i64 %i.jz
  %i.nn = ptrtoint <2 x ptr> %wide.gep666 to <2 x i64>
  %i.no = add <2 x i64> %i.nn, splat (i64 63)
  %i.np = and <2 x i64> %i.no, splat (i64 -64)
  %i.nq = inttoptr <2 x i64> %i.np to <2 x ptr>
  %wide.gep667 = getelementptr inbounds i8, <2 x ptr> %i.nq, i64 %i.ka
  %i.nr = select i1 %i.ap, <2 x ptr> %i.nm, <2 x ptr> %wide.gep667
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %index663
  store <2 x ptr> %i.nr, ptr %i.ns, align 8, !tbaa !118
  %index.next668 = add nuw i64 %index663, 2       ; 2 uses
  %vec.ind.next669 = add <2 x i32> %vec.ind664, splat (i32 2)
  %i.nt = icmp eq i64 %index.next668, %n.vec655
  br i1 %i.nt, label %middle.block670, label %vector.body662, !llvm.loop !293

middle.block670:                                  ; preds = %vector.body662
  br i1 %cmp.n671, label %._crit_edge.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader: ; preds = %.lr.ph518.i, %middle.block670
  %indvars.iv556.i.ph = phi i64 [ 0, %.lr.ph518.i ], [ %n.vec655, %middle.block670 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i

._crit_edge.i:                                    ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i, %middle.block670, %bb.bc
  br i1 %i.ap, label %bb.bd, label %bb.be

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i
  %indvars.iv556.i = phi i64 [ %indvars.iv.next557.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i ], [ %indvars.iv556.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader ] ; 3 uses
  %i.nu = trunc i64 %indvars.iv556.i to i32
  %i.nv = add i32 %.0248521.i, %i.nu
  %i.nw = srem i32 %i.nv, %.sroa.552.0.extract.trunc
  %i.nx = mul nsw i32 %i.nw, %i.dr
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds i8, ptr %i.ne, i64 %i.ny ; 2 uses
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = add i64 %i.oa, 63
  %i.oc = and i64 %i.ob, -64
  %i.od = inttoptr i64 %i.oc to ptr
  %i.oe = getelementptr inbounds i8, ptr %i.nz, i64 %i.jz
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = add i64 %i.of, 63
  %i.oh = and i64 %i.og, -64
  %i.oi = inttoptr i64 %i.oh to ptr
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 %i.ka
  %.0.i328.i = select i1 %i.ap, ptr %i.od, ptr %i.oj
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv556.i
  store ptr %.0.i328.i, ptr %i.ok, align 8, !tbaa !118
  %indvars.iv.next557.i = add nuw nsw i64 %indvars.iv556.i, 1 ; 2 uses
  %exitcond560.not.i = icmp eq i64 %indvars.iv.next557.i, %.sroa.552.0.extract.shift
  br i1 %exitcond560.not.i, label %._crit_edge.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i, !llvm.loop !294

bb.bd:                                            ; preds = %._crit_edge.i
  br i1 %.not501.i, label %.preheader41.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd
  br i1 %i.ef, label %.lr.ph.split.i.i.preheader, label %.lr.ph.split.us.preheader.i.i

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %i.lr, label %.lr.ph.split.i.i.epil.preheader, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr align 64 %i.mx, i8 0, i64 %i.ke, i1 false), !tbaa !120
  br label %.preheader41.i.i

.preheader41.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.split.i.i
  br i1 %lcmp.mod784.not, label %.preheader41.i.i, label %.lr.ph.split.i.i.epil.preheader

end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %indvars.iv.next193.i.i = or disjoint i64 %indvars.iv192.i.i, 1 ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next193.i.i
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !13
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !120
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next193.i.i
  store float %i.sp, ptr %i.sq, align 4, !tbaa !120
  %indvars.iv.next193.i.i.1 = or disjoint i64 %indvars.iv192.i.i, 2 ; 2 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next193.i.i.1
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !13
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.st
  %i.sv = load float, ptr %i.su, align 4, !tbaa !120
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next193.i.i.1
  store float %i.sv, ptr %i.sw, align 8, !tbaa !120
  %indvars.iv.next193.i.i.2 = or disjoint i64 %indvars.iv192.i.i, 3 ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next193.i.i.2
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !13
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.sz
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !120
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next193.i.i.2
  store float %i.tb, ptr %i.tc, align 4, !tbaa !120
  %indvars.iv.next193.i.i.3 = add nuw nsw i64 %indvars.iv192.i.i, 4 ; 2 uses
  %niter746.next.3 = add i64 %niter746, 4         ; 2 uses
  %niter746.ncmp.3 = icmp eq i64 %niter746.next.3, %unroll_iter745
  br i1 %niter746.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph141.split.i.i, !llvm.loop !302

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph141.split.i.i
  br i1 %lcmp.mod743.not, label %._crit_edge.i.i, label %.lr.ph141.split.i.i.epil.preheader

.lr.ph141.split.i.i.epil.preheader:               ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph141.split.i.i.preheader
  %indvars.iv192.i.i.epil.init = phi i64 [ 0, %.lr.ph141.split.i.i.preheader ], [ %indvars.iv.next193.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod744)
  br label %.lr.ph141.split.i.i.epil

.lr.ph141.split.i.i.epil:                         ; preds = %.lr.ph141.split.i.i.epil, %.lr.ph141.split.i.i.epil.preheader
  %indvars.iv192.i.i.epil = phi i64 [ %indvars.iv.next193.i.i.epil, %.lr.ph141.split.i.i.epil ], [ %indvars.iv192.i.i.epil.init, %.lr.ph141.split.i.i.epil.preheader ] ; 3 uses
  %epil.iter742 = phi i64 [ %epil.iter742.next, %.lr.ph141.split.i.i.epil ], [ 0, %.lr.ph141.split.i.i.epil.preheader ]
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv192.i.i.epil
  %i.te = load i32, ptr %i.td, align 4, !tbaa !13
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !120
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv192.i.i.epil
  store float %i.th, ptr %i.ti, align 4, !tbaa !120
  %indvars.iv.next193.i.i.epil = add nuw nsw i64 %indvars.iv192.i.i.epil, 1
  %epil.iter742.next = add i64 %epil.iter742, 1   ; 2 uses
  %epil.iter742.cmp.not = icmp eq i64 %epil.iter742.next, %xtraiter741
  br i1 %epil.iter742.cmp.not, label %._crit_edge.i.i, label %.lr.ph141.split.i.i.epil, !llvm.loop !303

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph141.split.i.i.epil, %.lr.ph141.split.us.preheader.i.i
  br i1 %.not116.i.i, label %bb.bf, label %.preheader128.i.i

.preheader128.i.i:                                ; preds = %._crit_edge.i.i
  br i1 %i.kh, label %.lr.ph147.i.i.preheader, label %.loopexit.i.i

.lr.ph147.i.i.preheader:                          ; preds = %.preheader128.i.i
  br i1 %min.iters.check640, label %.lr.ph147.i.i.preheader677, label %vector.memcheck637

vector.memcheck637:                               ; preds = %.lr.ph147.i.i.preheader
  %i.tj = add i64 %i.lf, %i.mw
  %i.tk = sub i64 %.0252.i592, %i.tj
  %diff.check638 = icmp ugt i64 %i.tk, -32
  br i1 %diff.check638, label %.lr.ph147.i.i.preheader677, label %vector.ph641

vector.ph641:                                     ; preds = %vector.memcheck637
  %invariant.gep815 = getelementptr [4 x i8], ptr %i.mx, i64 %i.kd
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph641
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next647, %vector.body643 ] ; 3 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %index644 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %wide.load645 = load <4 x float>, ptr %i.tl, align 4, !tbaa !120
  %wide.load646 = load <4 x float>, ptr %i.tm, align 4, !tbaa !120
  %gep816 = getelementptr [4 x i8], ptr %invariant.gep815, i64 %index644 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %gep816, i64 16
  store <4 x float> %wide.load645, ptr %gep816, align 4, !tbaa !120
  store <4 x float> %wide.load646, ptr %i.tn, align 4, !tbaa !120
  %index.next647 = add nuw i64 %index644, 8       ; 2 uses
  %i.to = icmp eq i64 %index.next647, %n.vec642
  br i1 %i.to, label %middle.block648, label %vector.body643, !llvm.loop !304

middle.block648:                                  ; preds = %vector.body643
  br i1 %cmp.n649, label %.loopexit.i.i, label %.lr.ph147.i.i.preheader677

.lr.ph147.i.i.preheader677:                       ; preds = %vector.memcheck637, %.lr.ph147.i.i.preheader, %middle.block648
  %indvars.iv209.i.i.ph = phi i64 [ %i.kd, %vector.memcheck637 ], [ %i.kd, %.lr.ph147.i.i.preheader ], [ %i.lk, %middle.block648 ] ; 2 uses
  %indvars.iv207.i.i.ph = phi i64 [ 0, %vector.memcheck637 ], [ 0, %.lr.ph147.i.i.preheader ], [ %n.vec642, %middle.block648 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph147.i.i.prol.loopexit, label %.lr.ph147.i.i.prol

.lr.ph147.i.i.prol:                               ; preds = %.lr.ph147.i.i.preheader677, %.lr.ph147.i.i.prol
  %indvars.iv209.i.i.prol = phi i64 [ %indvars.iv.next210.i.i.prol, %.lr.ph147.i.i.prol ], [ %indvars.iv209.i.i.ph, %.lr.ph147.i.i.preheader677 ] ; 2 uses
  %indvars.iv207.i.i.prol = phi i64 [ %indvars.iv.next208.i.i.prol, %.lr.ph147.i.i.prol ], [ %indvars.iv207.i.i.ph, %.lr.ph147.i.i.preheader677 ] ; 2 uses
  %prol.iter749 = phi i64 [ %prol.iter749.next, %.lr.ph147.i.i.prol ], [ 0, %.lr.ph147.i.i.preheader677 ]
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i.prol
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !120
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv209.i.i.prol
  store float %i.tq, ptr %i.tr, align 4, !tbaa !120
  %indvars.iv.next208.i.i.prol = add nuw nsw i64 %indvars.iv207.i.i.prol, 1 ; 2 uses
  %indvars.iv.next210.i.i.prol = add nuw nsw i64 %indvars.iv209.i.i.prol, 1 ; 2 uses
  %prol.iter749.next = add i64 %prol.iter749, 1   ; 2 uses
  %prol.iter749.cmp.not = icmp eq i64 %prol.iter749.next, %xtraiter747
  br i1 %prol.iter749.cmp.not, label %.lr.ph147.i.i.prol.loopexit, label %.lr.ph147.i.i.prol, !llvm.loop !305

.lr.ph147.i.i.prol.loopexit:                      ; preds = %.lr.ph147.i.i.prol, %.lr.ph147.i.i.preheader677
  %indvars.iv209.i.i.unr = phi i64 [ %indvars.iv209.i.i.ph, %.lr.ph147.i.i.preheader677 ], [ %indvars.iv.next210.i.i.prol, %.lr.ph147.i.i.prol ]
  %indvars.iv207.i.i.unr = phi i64 [ %indvars.iv207.i.i.ph, %.lr.ph147.i.i.preheader677 ], [ %indvars.iv.next208.i.i.prol, %.lr.ph147.i.i.prol ]
  %i.ts = sub nsw i64 %indvars.iv207.i.i.ph, %wide.trip.count214.i.i
  %i.tt = icmp ugt i64 %i.ts, -4
  br i1 %i.tt, label %.loopexit.i.i, label %.lr.ph147.i.i

.lr.ph147.i.i:                                    ; preds = %.lr.ph147.i.i.prol.loopexit, %.lr.ph147.i.i
  %indvars.iv209.i.i = phi i64 [ %indvars.iv.next210.i.i.3, %.lr.ph147.i.i ], [ %indvars.iv209.i.i.unr, %.lr.ph147.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv207.i.i = phi i64 [ %indvars.iv.next208.i.i.3, %.lr.ph147.i.i ], [ %indvars.iv207.i.i.unr, %.lr.ph147.i.i.prol.loopexit ] ; 5 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !120
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv209.i.i
  store float %i.tv, ptr %i.tw, align 4, !tbaa !120
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !120
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv209.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  store float %i.tz, ptr %i.ub, align 4, !tbaa !120
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !120
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv209.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store float %i.ue, ptr %i.ug, align 4, !tbaa !120
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !120
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv209.i.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 12
  store float %i.uj, ptr %i.ul, align 4, !tbaa !120
  %indvars.iv.next208.i.i.3 = add nuw nsw i64 %indvars.iv207.i.i, 4 ; 2 uses
  %indvars.iv.next210.i.i.3 = add nuw nsw i64 %indvars.iv209.i.i, 4
  %exitcond215.not.i.i.3 = icmp eq i64 %indvars.iv.next208.i.i.3, %wide.trip.count214.i.i
  br i1 %exitcond215.not.i.i.3, label %.loopexit.i.i, label %.lr.ph147.i.i, !llvm.loop !306

bb.bf:                                            ; preds = %._crit_edge.i.i
  br i1 %i.km, label %.lr.ph151.i.i.preheader, label %._crit_edge152.i.i

.lr.ph151.i.i.preheader:                          ; preds = %bb.bf
  br i1 %min.iters.check625, label %.lr.ph151.i.i.preheader676, label %vector.memcheck622

vector.memcheck622:                               ; preds = %.lr.ph151.i.i.preheader
  %i.um = add i64 %i.lf, %i.mw
  %i.un = sub i64 %.0252.i592, %i.um
  %diff.check623 = icmp ugt i64 %i.un, -32
  br i1 %diff.check623, label %.lr.ph151.i.i.preheader676, label %vector.ph626

vector.ph626:                                     ; preds = %vector.memcheck622
  %invariant.gep817 = getelementptr [4 x i8], ptr %i.mx, i64 %i.kd
  br label %vector.body628

vector.body628:                                   ; preds = %vector.body628, %vector.ph626
  %index629 = phi i64 [ 0, %vector.ph626 ], [ %index.next632, %vector.body628 ] ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %index629 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %wide.load630 = load <4 x float>, ptr %i.uo, align 4, !tbaa !120
  %wide.load631 = load <4 x float>, ptr %i.up, align 4, !tbaa !120
  %gep818 = getelementptr [4 x i8], ptr %invariant.gep817, i64 %index629 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %gep818, i64 16
  store <4 x float> %wide.load630, ptr %gep818, align 4, !tbaa !120
  store <4 x float> %wide.load631, ptr %i.uq, align 4, !tbaa !120
  %index.next632 = add nuw i64 %index629, 8       ; 2 uses
  %i.ur = icmp eq i64 %index.next632, %n.vec627
  br i1 %i.ur, label %middle.block633, label %vector.body628, !llvm.loop !307

middle.block633:                                  ; preds = %vector.body628
  br i1 %cmp.n634, label %._crit_edge152.loopexit.i.i, label %.lr.ph151.i.i.preheader676

.lr.ph151.i.i.preheader676:                       ; preds = %vector.memcheck622, %.lr.ph151.i.i.preheader, %middle.block633
  %indvars.iv219.i.i.ph = phi i64 [ %i.kd, %vector.memcheck622 ], [ %i.kd, %.lr.ph151.i.i.preheader ], [ %i.ll, %middle.block633 ] ; 2 uses
  %indvars.iv217.i.i.ph = phi i64 [ 0, %vector.memcheck622 ], [ 0, %.lr.ph151.i.i.preheader ], [ %n.vec627, %middle.block633 ] ; 3 uses
  br i1 %lcmp.mod751.not, label %.lr.ph151.i.i.prol.loopexit, label %.lr.ph151.i.i.prol

.lr.ph151.i.i.prol:                               ; preds = %.lr.ph151.i.i.preheader676, %.lr.ph151.i.i.prol
  %indvars.iv219.i.i.prol = phi i64 [ %indvars.iv.next220.i.i.prol, %.lr.ph151.i.i.prol ], [ %indvars.iv219.i.i.ph, %.lr.ph151.i.i.preheader676 ] ; 2 uses
  %indvars.iv217.i.i.prol = phi i64 [ %indvars.iv.next218.i.i.prol, %.lr.ph151.i.i.prol ], [ %indvars.iv217.i.i.ph, %.lr.ph151.i.i.preheader676 ] ; 2 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph151.i.i.prol ], [ 0, %.lr.ph151.i.i.preheader676 ]
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i.prol
  %i.ut = load float, ptr %i.us, align 4, !tbaa !120
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv219.i.i.prol
  store float %i.ut, ptr %i.uu, align 4, !tbaa !120
  %indvars.iv.next218.i.i.prol = add nuw nsw i64 %indvars.iv217.i.i.prol, 1 ; 2 uses
  %indvars.iv.next220.i.i.prol = add nuw nsw i64 %indvars.iv219.i.i.prol, 1 ; 3 uses
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph151.i.i.prol.loopexit, label %.lr.ph151.i.i.prol, !llvm.loop !308

.lr.ph151.i.i.prol.loopexit:                      ; preds = %.lr.ph151.i.i.prol, %.lr.ph151.i.i.preheader676
  %indvars.iv.next220.i.i.lcssa679.unr = phi i64 [ poison, %.lr.ph151.i.i.preheader676 ], [ %indvars.iv.next220.i.i.prol, %.lr.ph151.i.i.prol ]
  %indvars.iv219.i.i.unr = phi i64 [ %indvars.iv219.i.i.ph, %.lr.ph151.i.i.preheader676 ], [ %indvars.iv.next220.i.i.prol, %.lr.ph151.i.i.prol ]
  %indvars.iv217.i.i.unr = phi i64 [ %indvars.iv217.i.i.ph, %.lr.ph151.i.i.preheader676 ], [ %indvars.iv.next218.i.i.prol, %.lr.ph151.i.i.prol ]
  %i.uv = sub nsw i64 %indvars.iv217.i.i.ph, %wide.trip.count224.i.i
  %i.uw = icmp ugt i64 %i.uv, -4
  br i1 %i.uw, label %._crit_edge152.loopexit.i.i, label %.lr.ph151.i.i

.lr.ph151.i.i:                                    ; preds = %.lr.ph151.i.i.prol.loopexit, %.lr.ph151.i.i
  %indvars.iv219.i.i = phi i64 [ %indvars.iv.next220.i.i.3, %.lr.ph151.i.i ], [ %indvars.iv219.i.i.unr, %.lr.ph151.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv217.i.i = phi i64 [ %indvars.iv.next218.i.i.3, %.lr.ph151.i.i ], [ %indvars.iv217.i.i.unr, %.lr.ph151.i.i.prol.loopexit ] ; 5 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !120
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv219.i.i
  store float %i.uy, ptr %i.uz, align 4, !tbaa !120
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !120
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv219.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  store float %i.vc, ptr %i.ve, align 4, !tbaa !120
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !120
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv219.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store float %i.vh, ptr %i.vj, align 4, !tbaa !120
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 12
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !120
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv219.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 12
  store float %i.vm, ptr %i.vo, align 4, !tbaa !120
  %indvars.iv.next218.i.i.3 = add nuw nsw i64 %indvars.iv217.i.i, 4 ; 2 uses
  %indvars.iv.next220.i.i.3 = add nuw nsw i64 %indvars.iv219.i.i, 4 ; 2 uses
  %exitcond225.not.i.i.3 = icmp eq i64 %indvars.iv.next218.i.i.3, %wide.trip.count224.i.i
  br i1 %exitcond225.not.i.i.3, label %._crit_edge152.loopexit.i.i, label %.lr.ph151.i.i, !llvm.loop !309

._crit_edge152.loopexit.i.i:                      ; preds = %.lr.ph151.i.i.prol.loopexit, %.lr.ph151.i.i, %middle.block633
  %indvars.iv.next220.i.i.lcssa = phi i64 [ %i.ll, %middle.block633 ], [ %indvars.iv.next220.i.i.lcssa679.unr, %.lr.ph151.i.i.prol.loopexit ], [ %indvars.iv.next220.i.i.3, %.lr.ph151.i.i ]
  %i.vp = trunc nuw i64 %indvars.iv.next220.i.i.lcssa to i32
  br label %._crit_edge152.i.i

._crit_edge152.i.i:                               ; preds = %._crit_edge152.loopexit.i.i, %bb.bf
  %.2109.lcssa.i.i = phi i32 [ %i.kc, %bb.bf ], [ %i.vp, %._crit_edge152.loopexit.i.i ]
  br i1 %.not525.i, label %.loopexit.i.i, label %.lr.ph157.i.i

.lr.ph157.i.i:                                    ; preds = %._crit_edge152.i.i
  %i.vq = zext i32 %.2109.lcssa.i.i to i64        ; 3 uses
  br i1 %i.ef, label %.lr.ph157.split.i.i.preheader, label %.lr.ph157.split.us.preheader.i.i

.lr.ph157.split.i.i.preheader:                    ; preds = %.lr.ph157.i.i
  br i1 %i.ln, label %.lr.ph157.split.i.i.epil.preheader, label %.lr.ph157.split.i.i

.lr.ph157.split.us.preheader.i.i:                 ; preds = %.lr.ph157.i.i
  %.pn.i.i = shl nuw nsw i64 %i.vq, 2
  %scevgep.sink.i.i = getelementptr i8, ptr %i.mx, i64 %.pn.i.i
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.sink.i.i, i8 0, i64 %i.ko, i1 false), !tbaa !120
  br label %.loopexit.i.i

.lr.ph157.split.i.i:                              ; preds = %.lr.ph157.split.i.i.preheader, %.lr.ph157.split.i.i
  %indvars.iv228.i.i = phi i64 [ %indvars.iv.next229.i.i.3, %.lr.ph157.split.i.i ], [ %i.vq, %.lr.ph157.split.i.i.preheader ] ; 5 uses
  %indvars.iv226.i.i = phi i64 [ %indvars.iv.next227.i.i.3, %.lr.ph157.split.i.i ], [ 0, %.lr.ph157.split.i.i.preheader ] ; 5 uses
  %niter758 = phi i64 [ %niter758.next.3, %.lr.ph157.split.i.i ], [ 0, %.lr.ph157.split.i.i.preheader ]
  %gep265.i.i = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %i.vr = load i32, ptr %gep265.i.i, align 4, !tbaa !13
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.vs
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !120
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv228.i.i
  store float %i.vu, ptr %i.vv, align 4, !tbaa !120
  %i.vw = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %gep265.i.i.1 = getelementptr i8, ptr %i.vw, i64 4
  %i.vx = load i32, ptr %gep265.i.i.1, align 4, !tbaa !13
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.vy
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !120
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv228.i.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store float %i.wa, ptr %i.wc, align 4, !tbaa !120
  %i.wd = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %gep265.i.i.2 = getelementptr i8, ptr %i.wd, i64 8
  %i.we = load i32, ptr %gep265.i.i.2, align 4, !tbaa !13
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !120
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv228.i.i
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store float %i.wh, ptr %i.wj, align 4, !tbaa !120
  %i.wk = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %gep265.i.i.3 = getelementptr i8, ptr %i.wk, i64 12
  %i.wl = load i32, ptr %gep265.i.i.3, align 4, !tbaa !13
  %i.wm = sext i32 %i.wl to i64
  %i.wn = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.wm
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !120
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv228.i.i
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 12
  store float %i.wo, ptr %i.wq, align 4, !tbaa !120
  %indvars.iv.next227.i.i.3 = add nuw nsw i64 %indvars.iv226.i.i, 4 ; 2 uses
  %indvars.iv.next229.i.i.3 = add nuw nsw i64 %indvars.iv228.i.i, 4 ; 2 uses
  %niter758.next.3 = add i64 %niter758, 4         ; 2 uses
  %niter758.ncmp.3 = icmp eq i64 %niter758.next.3, %unroll_iter757
  br i1 %niter758.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph157.split.i.i, !llvm.loop !310

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph157.split.i.i
  br i1 %lcmp.mod755.not, label %.loopexit.i.i, label %.lr.ph157.split.i.i.epil.preheader

.lr.ph157.split.i.i.epil.preheader:               ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph157.split.i.i.preheader
  %indvars.iv228.i.i.epil.init = phi i64 [ %i.vq, %.lr.ph157.split.i.i.preheader ], [ %indvars.iv.next229.i.i.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %indvars.iv226.i.i.epil.init = phi i64 [ 0, %.lr.ph157.split.i.i.preheader ], [ %indvars.iv.next227.i.i.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod756)
  br label %.lr.ph157.split.i.i.epil

.lr.ph157.split.i.i.epil:                         ; preds = %.lr.ph157.split.i.i.epil, %.lr.ph157.split.i.i.epil.preheader
  %indvars.iv228.i.i.epil = phi i64 [ %indvars.iv.next229.i.i.epil, %.lr.ph157.split.i.i.epil ], [ %indvars.iv228.i.i.epil.init, %.lr.ph157.split.i.i.epil.preheader ] ; 2 uses
  %indvars.iv226.i.i.epil = phi i64 [ %indvars.iv.next227.i.i.epil, %.lr.ph157.split.i.i.epil ], [ %indvars.iv226.i.i.epil.init, %.lr.ph157.split.i.i.epil.preheader ] ; 2 uses
  %epil.iter754 = phi i64 [ %epil.iter754.next, %.lr.ph157.split.i.i.epil ], [ 0, %.lr.ph157.split.i.i.epil.preheader ]
  %gep265.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i.epil
  %i.wr = load i32, ptr %gep265.i.i.epil, align 4, !tbaa !13
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.ws
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !120
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv228.i.i.epil
  store float %i.wu, ptr %i.wv, align 4, !tbaa !120
  %indvars.iv.next227.i.i.epil = add nuw nsw i64 %indvars.iv226.i.i.epil, 1
  %indvars.iv.next229.i.i.epil = add nuw nsw i64 %indvars.iv228.i.i.epil, 1
  %epil.iter754.next = add i64 %epil.iter754, 1   ; 2 uses
  %epil.iter754.cmp.not = icmp eq i64 %epil.iter754.next, %xtraiter753
  br i1 %epil.iter754.cmp.not, label %.loopexit.i.i, label %.lr.ph157.split.i.i.epil, !llvm.loop !311

.loopexit.i.i:                                    ; preds = %.lr.ph147.i.i.prol.loopexit, %.lr.ph147.i.i, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph157.split.i.i.epil, %middle.block648, %.lr.ph157.split.us.preheader.i.i, %._crit_edge152.i.i, %.preheader128.i.i
  br i1 %.not500.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.loopexit.i.i
  %i.ww = load ptr, ptr %i.kr, align 8, !tbaa !118
  %i.wx = load ptr, ptr %.sroa.0454.2.i, align 8, !tbaa !118
  br label %.preheader.i330.i

.preheader.i330.i:                                ; preds = %._crit_edge161.i.i, %.preheader.lr.ph.i.i
  %indvars.iv246.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next247.i.i, %._crit_edge161.i.i ] ; 6 uses
  br i1 %i.kp, label %.lr.ph160.preheader.i.i, label %._crit_edge161.i.i

.lr.ph160.preheader.i.i:                          ; preds = %.preheader.i330.i
  %invariant.gep266.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv246.i.i ; 5 uses
  br i1 %i.lo, label %.lr.ph160.i.i.epil.preheader, label %.lr.ph160.i.i

.lr.ph160.i.i:                                    ; preds = %.lr.ph160.preheader.i.i, %.lr.ph160.i.i
  %indvars.iv239.i.i = phi i64 [ %indvars.iv.next240.i.i.3, %.lr.ph160.i.i ], [ 0, %.lr.ph160.preheader.i.i ] ; 5 uses
  %.0105159.i.i = phi double [ %i.xn, %.lr.ph160.i.i ], [ 0.000000e+00, %.lr.ph160.preheader.i.i ]
  %niter765 = phi i64 [ %niter765.next.3, %.lr.ph160.i.i ], [ 0, %.lr.ph160.preheader.i.i ]
  %i.wy = mul nuw nsw i64 %indvars.iv239.i.i, %i.ks
  %gep267.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.wy
  %i.wz = load float, ptr %gep267.i.i, align 4, !tbaa !120
  %i.xa = fpext float %i.wz to double
  %i.xb = fadd double %.0105159.i.i, %i.xa
  %indvars.iv.next240.i.i = or disjoint i64 %indvars.iv239.i.i, 1
  %i.xc = mul nuw nsw i64 %indvars.iv.next240.i.i, %i.ks
  %gep267.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xc
  %i.xd = load float, ptr %gep267.i.i.1, align 4, !tbaa !120
  %i.xe = fpext float %i.xd to double
  %i.xf = fadd double %i.xb, %i.xe
  %indvars.iv.next240.i.i.1 = or disjoint i64 %indvars.iv239.i.i, 2
  %i.xg = mul nuw nsw i64 %indvars.iv.next240.i.i.1, %i.ks
  %gep267.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xg
  %i.xh = load float, ptr %gep267.i.i.2, align 4, !tbaa !120
  %i.xi = fpext float %i.xh to double
  %i.xj = fadd double %i.xf, %i.xi
  %indvars.iv.next240.i.i.2 = or disjoint i64 %indvars.iv239.i.i, 3
  %i.xk = mul nuw nsw i64 %indvars.iv.next240.i.i.2, %i.ks
  %gep267.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xk
  %i.xl = load float, ptr %gep267.i.i.3, align 4, !tbaa !120
  %i.xm = fpext float %i.xl to double
  %i.xn = fadd double %i.xj, %i.xm                ; 3 uses
  %indvars.iv.next240.i.i.3 = add nuw nsw i64 %indvars.iv239.i.i, 4 ; 2 uses
  %niter765.next.3 = add i64 %niter765, 4         ; 2 uses
  %niter765.ncmp.3 = icmp eq i64 %niter765.next.3, %unroll_iter764
  br i1 %niter765.ncmp.3, label %._crit_edge161.i.i.loopexit.unr-lcssa, label %.lr.ph160.i.i, !llvm.loop !312

._crit_edge161.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph160.i.i
  br i1 %lcmp.mod761.not, label %._crit_edge161.i.i, label %.lr.ph160.i.i.epil.preheader

.lr.ph160.i.i.epil.preheader:                     ; preds = %._crit_edge161.i.i.loopexit.unr-lcssa, %.lr.ph160.preheader.i.i
  %indvars.iv239.i.i.epil.init = phi i64 [ 0, %.lr.ph160.preheader.i.i ], [ %indvars.iv.next240.i.i.3, %._crit_edge161.i.i.loopexit.unr-lcssa ]
  %.0105159.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph160.preheader.i.i ], [ %i.xn, %._crit_edge161.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod763)
  br label %.lr.ph160.i.i.epil

.lr.ph160.i.i.epil:                               ; preds = %.lr.ph160.i.i.epil, %.lr.ph160.i.i.epil.preheader
  %indvars.iv239.i.i.epil = phi i64 [ %indvars.iv239.i.i.epil.init, %.lr.ph160.i.i.epil.preheader ], [ %indvars.iv.next240.i.i.epil, %.lr.ph160.i.i.epil ] ; 2 uses
  %.0105159.i.i.epil = phi double [ %.0105159.i.i.epil.init, %.lr.ph160.i.i.epil.preheader ], [ %i.xr, %.lr.ph160.i.i.epil ]
  %epil.iter760 = phi i64 [ 0, %.lr.ph160.i.i.epil.preheader ], [ %epil.iter760.next, %.lr.ph160.i.i.epil ]
  %i.xo = mul nuw nsw i64 %indvars.iv239.i.i.epil, %i.ks
  %gep267.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xo
  %i.xp = load float, ptr %gep267.i.i.epil, align 4, !tbaa !120
  %i.xq = fpext float %i.xp to double
  %i.xr = fadd double %.0105159.i.i.epil, %i.xq   ; 2 uses
  %indvars.iv.next240.i.i.epil = add nuw nsw i64 %indvars.iv239.i.i.epil, 1
  %epil.iter760.next = add i64 %epil.iter760, 1   ; 2 uses
  %epil.iter760.cmp.not = icmp eq i64 %epil.iter760.next, %xtraiter759
  br i1 %epil.iter760.cmp.not, label %._crit_edge161.i.i, label %.lr.ph160.i.i.epil, !llvm.loop !313

._crit_edge161.i.i:                               ; preds = %._crit_edge161.i.i.loopexit.unr-lcssa, %.lr.ph160.i.i.epil, %.preheader.i330.i
  %.0105.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i330.i ], [ %i.xn, %._crit_edge161.i.i.loopexit.unr-lcssa ], [ %i.xr, %.lr.ph160.i.i.epil ] ; 2 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv246.i.i
  store double %.0105.lcssa.i.i, ptr %i.xs, align 8, !tbaa !41
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %.pn304.pn.pn476.i = phi { ptr, i32 } [ %.pn304.pn.pn484.i, %.body.thread487.i ], [ %i.abw, %.body.i ], [ %i.gl, %bb.as ], [ %i.ez, %bb.ag ], [ %i.ey, %bb.af ], [ %i.fn, %bb.ai ], [ %i.cc, %bb.r ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %17) #23
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i, %bb.q
  %.pn304.pn.pn.pn.i = phi { ptr, i32 } [ %.pn304.pn.pn476.i, %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i ], [ %i.cb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body

_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit: ; preds = %._crit_edge523.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.dt

bb.bk:                                            ; preds = %bb.bl, %bb.h
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %bb.g
  %.sroa.7.0.extract.trunc.i72 = trunc nuw i64 %.sroa.5.0 to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %10, i1 noundef zeroext false)
          to label %.noexc317 unwind label %bb.bk

.noexc317:                                        ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %11, i1 noundef zeroext false)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %.noexc317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr null, ptr %i.d, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr null, ptr %i.e, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.f, align 8, !tbaa !110
  %i.aca = load ptr, ptr %i.al, align 8, !tbaa !362
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.acc = load ptr, ptr %i.an, align 8, !tbaa !362
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0.0.copyload.i74 = load i32, ptr %4, align 4, !tbaa !13 ; 5 uses
  %.sroa.7.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.7.0.copyload.i76 = load i32, ptr %.sroa.7.0..sroa_idx.i75, align 4, !tbaa !13 ; 4 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !111 ; 6 uses
  %i.acg = icmp slt i32 %i.acf, 3
  br i1 %i.acg, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc.i79 unwind label %bb.bv

.noexc.i79:                                       ; preds = %bb.bn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #24
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.noexc.i79
  unreachable

bb.bp:                                            ; preds = %.noexc.i79
  %i.ach = landingpad { ptr, i32 }
          cleanup
  %i.aci = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ack = icmp eq ptr %i.aci, %i.acj
  br i1 %i.ack, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80: ; preds = %bb.bp
  %i.acl = load i64, ptr %i.acj, align 8, !tbaa !20
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.acm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.bq:                                            ; preds = %bb.bm
  %i.acn = icmp sgt i32 %i.acf, 0
  br i1 %i.acn, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.acp = icmp eq i32 %i.acf, 2
  %i.acq = zext i1 %i.acp to i64
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %i.acq
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !13
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.act = icmp eq i32 %i.acf, 0
  %i.acu = zext i1 %i.act to i32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.acv = phi i32 [ %i.acs, %bb.br ], [ %i.acu, %bb.bs ] ; 11 uses
  %i.acw = icmp eq i32 %i.acf, 2
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.acy = load i32, ptr %i.acx, align 4
  %i.acz = icmp sgt i32 %i.acf, -1
  %i.ada = zext i1 %i.acz to i32
  %i.adb = select i1 %i.acw, i32 %i.acy, i32 %i.ada ; 4 uses
  %i.adc = load i32, ptr %5, align 4, !tbaa !113  ; 6 uses
  %i.add = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !114 ; 7 uses
  %i.adf = icmp slt i32 %i.adc, 0
  %i.adg = icmp slt i32 %i.ade, 0
  %or.cond.not498.i83 = select i1 %i.adf, i1 true, i1 %i.adg
  %i.adh = icmp slt i32 %i.acv, 0
  %or.cond5.not495.i84 = select i1 %or.cond.not498.i83, i1 true, i1 %i.adh
  %i.adi = icmp slt i32 %i.adb, 0
  %or.cond8.not493.i85 = select i1 %or.cond5.not495.i84, i1 true, i1 %i.adi
  %i.adj = add nuw nsw i32 %i.adc, %i.acv
  %.not.i86 = icmp sgt i32 %i.adj, %.sroa.0.0.copyload.i74
  %or.cond310.i87 = select i1 %or.cond8.not493.i85, i1 true, i1 %.not.i86
  %i.adk = add nuw nsw i32 %i.ade, %i.adb
  %.not291.i88 = icmp sgt i32 %i.adk, %.sroa.7.0.copyload.i76
  %or.cond311.i89 = select i1 %or.cond310.i87, i1 true, i1 %.not291.i88
  br i1 %or.cond311.i89, label %bb.bw, label %bb.cb

bb.bu:                                            ; preds = %.noexc317
  %i.adl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bv:                                            ; preds = %bb.bn
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib, ptr noundef nonnull @.str.1, i32 noundef 1400) #24
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bw
  %i.adn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313

bb.ca:                                            ; preds = %bb.bx
  %i.ado = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adp = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.adr = icmp eq ptr %i.adp, %i.adq
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315: ; preds = %bb.ca
  %i.ads = load i64, ptr %i.adq, align 8, !tbaa !20
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adp, i64 noundef %i.adt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315, %bb.bz
  %.pn.i314 = phi { ptr, i32 } [ %i.adn, %bb.bz ], [ %i.ado, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315 ], [ %i.ado, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.cb:                                            ; preds = %bb.bt
  %i.adu = load i64, ptr %i.acb, align 8, !tbaa !39 ; 2 uses
  %i.adv = load i64, ptr %i.acd, align 8, !tbaa !39
  %i.adw = load i32, ptr %0, align 8, !tbaa !108
  %i.adx = and i32 %i.adw, 4095                   ; 4 uses
  %i.ady = lshr i32 %i.adx, 5
  %i.adz = add nuw nsw i32 %i.ady, 1              ; 18 uses
  %i.aea = shl nuw nsw i32 %i.adx, 2
  %i.aeb = and i32 %i.aea, 124
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = lshr i64 1275511473185297, %i.aec
  %i.aee = trunc i64 %i.aed to i32
  %i.aef = and i32 %i.aee, 15
  %i.aeg = mul nuw nsw i32 %i.aef, %i.adz         ; 4 uses
  %i.aeh = lshr exact i32 %i.n, 2
  %i.aei = add nuw nsw i32 %i.aeh, 8
  %i.aej = add nsw i32 %.sroa.047.0.extract.trunc, -1 ; 2 uses
  %.sroa.speculated423.i90 = call i32 @llvm.smax.i32(i32 %i.aej, i32 1)
  %i.aek = add i32 %.sroa.552.0.extract.trunc, -1 ; 2 uses
  %i.ael = add i32 %i.adb, %i.aek                 ; 4 uses
  %.sroa.speculated446.i91 = call i32 @llvm.smin.i32(i32 %i.adc, i32 %.sroa.039.0) ; 2 uses
  %i.aem = sub i32 %.sroa.039.0, %i.adc           ; 4 uses
  %.sroa.speculated392.i92 = call i32 @llvm.smax.i32(i32 %i.aem, i32 0) ; 6 uses
  %i.aen = xor i32 %.sroa.039.0, -1
  %i.aeo = add i32 %i.aen, %.sroa.047.0.extract.trunc
  %i.aep = sub i32 %i.aeo, %.sroa.0.0.copyload.i74
  %i.aeq = add i32 %i.aep, %i.acv
  %i.aer = add i32 %i.aeq, %i.adc                 ; 4 uses
  %.sroa.speculated371.i93 = call i32 @llvm.smax.i32(i32 %i.aer, i32 0) ; 6 uses
  %i.aes = xor i32 %.sroa.7.0.extract.trunc.i72, -1
  %i.aet = add i32 %i.aes, %.sroa.552.0.extract.trunc
  %i.aeu = sub i32 %i.aet, %.sroa.7.0.copyload.i76
  %i.aev = add i32 %i.aeu, %i.adb
  %i.aew = add i32 %i.aev, %i.ade                 ; 3 uses
  %.sroa.speculated.i94 = call i32 @llvm.smax.i32(i32 %i.aew, i32 0) ; 3 uses
  %.sroa.speculated406.i95 = call i32 @llvm.umin.i32(i32 %i.acv, i32 %.sroa.speculated392.i92)
  %i.aex = mul nuw nsw i32 %i.adz, %.sroa.speculated406.i95 ; 4 uses
  %i.aey = add i32 %.sroa.047.0.extract.trunc, 63 ; 2 uses
  %i.aez = add i32 %i.acv, %i.aey
  %i.afa = add i32 %i.aez, %i.aex                 ; 2 uses
  %i.afb = mul i32 %i.afa, %i.aei                 ; 7 uses
  %i.afc = mul nsw i32 %i.aeg, %.sroa.speculated446.i91
  %i.afd = sext i32 %i.afc to i64
  %i.afe = sub nsw i64 0, %i.afd
  %i.aff = getelementptr inbounds i8, ptr %i.aca, i64 %i.afe ; 2 uses
  %i.afg = mul nuw nsw i32 %i.adz, %.sroa.speculated423.i90
  %i.afh = zext nneg i32 %i.afg to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.afh, i16 noundef zeroext 4)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.afi = add nsw i32 %.sroa.552.0.extract.trunc, 1
  %i.afj = mul i32 %i.afb, %i.afi
  %i.afk = sext i32 %i.afj to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.afk, i16 noundef zeroext 1)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.afl = mul i32 %i.aeg, %i.afa                 ; 3 uses
  %i.afm = sext i32 %i.afl to i64                 ; 4 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.afm, i16 noundef zeroext 1)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %10)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN2cv5utils10BufferArea8zeroFillEv(ptr noundef nonnull align 8 dereferenceable(41) %10)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.afn = icmp sgt i32 %i.aem, 0                 ; 3 uses
  %i.afo = icmp sgt i32 %i.aer, 0                 ; 3 uses
  %or.cond10.i96 = select i1 %i.afn, i1 true, i1 %i.afo
  %i.afp = icmp ne i32 %7, 0                      ; 7 uses
  %or.cond14.i97 = and i1 %i.afp, %or.cond10.i96
  br i1 %or.cond14.i97, label %bb.ch, label %.loopexit506.i98

bb.ch:                                            ; preds = %bb.cg
  %i.afq = sub nsw i32 %.sroa.speculated446.i91, %i.adc ; 2 uses
  %i.afr = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %i.afn, label %.lr.ph.preheader.i302, label %.preheader505.i292

.lr.ph.preheader.i302:                            ; preds = %bb.ch
  %i.afs = zext nneg i32 %i.adz to i64            ; 4 uses
  %wide.trip.count533.i303 = zext nneg i32 %i.aem to i64
  %min.iters.check = icmp samesign ult i32 %i.adx, 224
  %n.vec = and i64 %i.afs, 248                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.afs
  br label %.lr.ph.i304

.preheader505.i292:                               ; preds = %.loopexit675, %bb.ch
  br i1 %i.afo, label %.lr.ph512.preheader.i293, label %.loopexit506.i98

.lr.ph512.preheader.i293:                         ; preds = %.preheader505.i292
  %i.aft = zext nneg i32 %.sroa.speculated392.i92 to i64
  %i.afu = zext nneg i32 %i.adz to i64            ; 4 uses
  %i.afv = zext nneg i32 %i.aer to i64
  %min.iters.check397 = icmp samesign ult i32 %i.adx, 224
  %n.vec399 = and i64 %i.afu, 248                 ; 3 uses
  %cmp.n409 = icmp eq i64 %n.vec399, %i.afu
  br label %.lr.ph512.i294

.lr.ph.i304:                                      ; preds = %.loopexit675, %.lr.ph.preheader.i302
  %indvars.iv530.i305 = phi i64 [ 0, %.lr.ph.preheader.i302 ], [ %indvars.iv.next531.i311, %.loopexit675 ] ; 3 uses
  %i.afw = trunc i64 %indvars.iv530.i305 to i32
  %i.afx = sub i32 %i.afw, %.sroa.speculated392.i92
  %i.afy = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.afx, i32 noundef %.sroa.0.0.copyload.i74, i32 noundef %7)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %.lr.ph.i304
  %i.afz = add nsw i32 %i.afy, %i.afq
  %i.aga = mul nsw i32 %i.afz, %i.adz             ; 2 uses
  %i.agb = mul nuw nsw i64 %indvars.iv530.i305, %i.afs
  %invariant.gep603.i306 = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %i.agb ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ci
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aga, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i306, i64 %index ; 2 uses
  %i.agd = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  store <4 x i32> %i.agd, ptr %i.agc, align 4, !tbaa !13
  store <4 x i32> %.reass, ptr %i.age, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.agf = icmp eq i64 %index.next, %n.vec
  br i1 %i.agf, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit675, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ci, %middle.block
  %indvars.iv.i307.ph = phi i64 [ 0, %bb.ci ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i307 = phi i64 [ %indvars.iv.next.i309, %scalar.ph ], [ %indvars.iv.i307.ph, %scalar.ph.preheader ] ; 3 uses
  %gep604.i308 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i306, i64 %indvars.iv.i307
  %i.agg = trunc i64 %indvars.iv.i307 to i32
  %i.agh = add i32 %i.aga, %i.agg
  store i32 %i.agh, ptr %gep604.i308, align 4, !tbaa !13
  %indvars.iv.next.i309 = add nuw nsw i64 %indvars.iv.i307, 1 ; 2 uses
  %exitcond.not.i310 = icmp eq i64 %indvars.iv.next.i309, %i.afs
  br i1 %exitcond.not.i310, label %.loopexit675, label %scalar.ph, !llvm.loop !323

bb.cj:                                            ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103, %bb.cz, %.invoke.i100, %bb.cx, %bb.cr, %bb.cq, %bb.co, %bb.cn, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.ck:                                            ; preds = %.lr.ph.i304
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

.loopexit675:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next531.i311 = add nuw nsw i64 %indvars.iv530.i305, 1 ; 2 uses
  %exitcond534.not.i312 = icmp eq i64 %indvars.iv.next531.i311, %wide.trip.count533.i303
  br i1 %exitcond534.not.i312, label %.preheader505.i292, label %.lr.ph.i304, !llvm.loop !324

.lr.ph512.i294:                                   ; preds = %.loopexit674, %.lr.ph512.preheader.i293
  %indvars.iv540.i295 = phi i64 [ 0, %.lr.ph512.preheader.i293 ], [ %indvars.iv.next541.i301, %.loopexit674 ] ; 3 uses
  %i.agk = trunc i64 %indvars.iv540.i295 to i32
  %i.agl = add i32 %.sroa.0.0.copyload.i74, %i.agk
  %i.agm = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.agl, i32 noundef %.sroa.0.0.copyload.i74, i32 noundef %7)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %.lr.ph512.i294
  %i.agn = add nsw i32 %i.agm, %i.afq
  %i.ago = mul nsw i32 %i.agn, %i.adz             ; 2 uses
  %i.agp = add nuw nsw i64 %indvars.iv540.i295, %i.aft
  %i.agq = mul nuw nsw i64 %i.agp, %i.afu
  %invariant.gep605.i296 = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %i.agq ; 2 uses
  br i1 %min.iters.check397, label %scalar.ph396.preheader, label %vector.ph398

vector.ph398:                                     ; preds = %bb.cl
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %i.ago, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op805 = add <4 x i32> splat (i32 4), %broadcast.splat401
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph398
  %index403 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body402 ] ; 2 uses
  %vec.ind404 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph398 ], [ %vec.ind.next407, %vector.body402 ] ; 3 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i296, i64 %index403 ; 2 uses
  %i.ags = add <4 x i32> %broadcast.splat401, %vec.ind404
  %.reass806 = add <4 x i32> %vec.ind404, %invariant.op805
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  store <4 x i32> %i.ags, ptr %i.agr, align 4, !tbaa !13
  store <4 x i32> %.reass806, ptr %i.agt, align 4, !tbaa !13
  %index.next406 = add nuw i64 %index403, 8       ; 2 uses
  %vec.ind.next407 = add <4 x i32> %vec.ind404, splat (i32 8)
  %i.agu = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.agu, label %middle.block408, label %vector.body402, !llvm.loop !325

middle.block408:                                  ; preds = %vector.body402
  br i1 %cmp.n409, label %.loopexit674, label %scalar.ph396.preheader
end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a

.noexc366.i287:                                   ; preds = %bb.cz
  unreachable

_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103: ; preds = %bb.cy
  %i.aib = shl nuw nsw i64 %i.ahz, 3
  %i.aic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aib) #26
          to label %.noexc367.i104 unwind label %bb.cj ; 4 uses

.noexc367.i104:                                   ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103
  store ptr null, ptr %i.aic, align 8, !tbaa !118
  %i.aid = add nsw i64 %i.ahz, -1                 ; 2 uses
  %i.aie = icmp eq i64 %i.aid, 0
  br i1 %i.aie, label %.noexc321.i107, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105: ; preds = %.noexc367.i104
  %i.aif = getelementptr i8, ptr %i.aic, i64 8
  %.idx.i.i.i.i.i31.i.i106 = shl nuw nsw i64 %i.aid, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aif, i8 0, i64 %.idx.i.i.i.i.i31.i.i106, i1 false), !tbaa !118
  br label %.noexc321.i107

.noexc321.i107:                                   ; preds = %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105, %.noexc367.i104
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %i.ahz
  %i.aih = ptrtoint ptr %i.aig to i64
  br label %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108

_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108:       ; preds = %.noexc321.i107, %.loopexit.i101
  %.sroa.15.2.i109 = phi i64 [ %i.aih, %.noexc321.i107 ], [ 0, %.loopexit.i101 ] ; 2 uses
  %.sroa.0454.2.i110 = phi ptr [ %i.aic, %.noexc321.i107 ], [ null, %.loopexit.i101 ] ; 17 uses
  %i.aii = load ptr, ptr %i.a, align 8, !tbaa !109 ; 11 uses
  %i.aij = load ptr, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.aik = shl i32 %i.aex, 3                      ; 2 uses
  br i1 %i.ap, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108
  %i.ail = ptrtoint ptr %i.aij to i64
  %i.aim = add i64 %i.ail, 63
  %i.ain = and i64 %i.aim, -64
  %i.aio = inttoptr i64 %i.ain to ptr             ; 3 uses
  %i.aip = load ptr, ptr %i.b, align 8, !tbaa !110 ; 4 uses
  %i.aiq = mul nsw i32 %i.afb, %.sroa.552.0.extract.trunc
  %i.air = sext i32 %i.aiq to i64
  %i.ais = getelementptr inbounds i8, ptr %i.aip, i64 %i.air
  %i.ait = ptrtoint ptr %i.ais to i64
  %i.aiu = add i64 %i.ait, 63
  %i.aiv = and i64 %i.aiu, -64
  %i.aiw = inttoptr i64 %i.aiv to ptr             ; 3 uses
  %i.aix = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.aix, label %.lr.ph516.i282, label %.preheader.i112

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108
  %i.aiy = sext i32 %i.aik to i64                 ; 4 uses
  %i.aiz = getelementptr inbounds i8, ptr %i.aij, i64 %i.aiy
  %i.aja = ptrtoint ptr %i.aiz to i64
  %i.ajb = add i64 %i.aja, 63
  %i.ajc = and i64 %i.ajb, -64
  %i.ajd = inttoptr i64 %i.ajc to ptr
  %i.aje = sub nsw i64 0, %i.aiy                  ; 5 uses
  %i.ajf = getelementptr inbounds i8, ptr %i.ajd, i64 %i.aje ; 3 uses
  %i.ajg = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.ajh = mul nsw i32 %i.afb, %.sroa.552.0.extract.trunc
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds i8, ptr %i.ajg, i64 %i.aji
  %i.ajk = getelementptr inbounds i8, ptr %i.ajj, i64 %i.aiy
  %i.ajl = ptrtoint ptr %i.ajk to i64
  %i.ajm = add i64 %i.ajl, 63
  %i.ajn = and i64 %i.ajm, -64
  %i.ajo = inttoptr i64 %i.ajn to ptr
  %i.ajp = getelementptr inbounds i8, ptr %i.ajo, i64 %i.aje ; 3 uses
  %i.ajq = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.ajq, label %.lr.ph516.thread.i274, label %.preheader.i112

.lr.ph516.thread.i274:                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111
  %invariant.gep.i275 = getelementptr i8, ptr %i.ajg, i64 %i.aiy ; 3 uses
  %i.ajr = sext i32 %i.afb to i64                 ; 2 uses
  %min.iters.check412 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check412, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %.lr.ph516.thread.i274
  %n.vec414 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert415 = insertelement <2 x i64> poison, i64 %i.ajr, i64 0
  %broadcast.splat416 = shufflevector <2 x i64> %broadcast.splatinsert415, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next424, %vector.body417 ] ; 2 uses
  %vec.ind419 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph413 ], [ %vec.ind.next425, %vector.body417 ] ; 3 uses
  %step.add420 = add nuw <2 x i64> %vec.ind419, splat (i64 2)
  %i.ajs = mul nsw <2 x i64> %vec.ind419, %broadcast.splat416
  %i.ajt = mul nsw <2 x i64> %step.add420, %broadcast.splat416
  %wide.gep = getelementptr i8, ptr %invariant.gep.i275, <2 x i64> %i.ajs
  %wide.gep421 = getelementptr i8, ptr %invariant.gep.i275, <2 x i64> %i.ajt
  %i.aju = ptrtoint <2 x ptr> %wide.gep to <2 x i64>
  %i.ajv = ptrtoint <2 x ptr> %wide.gep421 to <2 x i64>
  %i.ajw = add <2 x i64> %i.aju, splat (i64 63)
  %i.ajx = add <2 x i64> %i.ajv, splat (i64 63)
  %i.ajy = and <2 x i64> %i.ajw, splat (i64 -64)
  %i.ajz = and <2 x i64> %i.ajx, splat (i64 -64)
  %i.aka = inttoptr <2 x i64> %i.ajy to <2 x ptr>
  %i.akb = inttoptr <2 x i64> %i.ajz to <2 x ptr>
  %wide.gep422 = getelementptr inbounds i8, <2 x ptr> %i.aka, i64 %i.aje
  %wide.gep423 = getelementptr inbounds i8, <2 x ptr> %i.akb, i64 %i.aje
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index418 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 16
  store <2 x ptr> %wide.gep422, ptr %i.akc, align 8, !tbaa !118
  store <2 x ptr> %wide.gep423, ptr %i.akd, align 8, !tbaa !118
  %index.next424 = add nuw i64 %index418, 4       ; 2 uses
  %vec.ind.next425 = add nuw <2 x i64> %vec.ind419, splat (i64 4)
  %i.ake = icmp eq i64 %index.next424, %n.vec414
  br i1 %i.ake, label %middle.block426, label %vector.body417, !llvm.loop !329

middle.block426:                                  ; preds = %vector.body417
  %cmp.n427 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec414
  br i1 %cmp.n427, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader: ; preds = %.lr.ph516.thread.i274, %middle.block426
  %indvars.iv546.i277.ph = phi i64 [ 0, %.lr.ph516.thread.i274 ], [ %n.vec414, %middle.block426 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276

.lr.ph516.i282:                                   ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281
  %i.akf = sext i32 %i.afb to i64                 ; 2 uses
  %min.iters.check430 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check430, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph516.i282
  %n.vec432 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert433 = insertelement <2 x i64> poison, i64 %i.akf, i64 0
  %broadcast.splat434 = shufflevector <2 x i64> %broadcast.splatinsert433, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph431
  %index436 = phi i64 [ 0, %vector.ph431 ], [ %index.next441, %vector.body435 ] ; 2 uses
  %vec.ind437 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph431 ], [ %vec.ind.next442, %vector.body435 ] ; 3 uses
  %step.add438 = add nuw <2 x i64> %vec.ind437, splat (i64 2)
  %i.akg = mul nsw <2 x i64> %vec.ind437, %broadcast.splat434
  %i.akh = mul nsw <2 x i64> %step.add438, %broadcast.splat434
  %wide.gep439 = getelementptr inbounds i8, ptr %i.aip, <2 x i64> %i.akg
  %wide.gep440 = getelementptr inbounds i8, ptr %i.aip, <2 x i64> %i.akh
  %i.aki = ptrtoint <2 x ptr> %wide.gep439 to <2 x i64>
  %i.akj = ptrtoint <2 x ptr> %wide.gep440 to <2 x i64>
  %i.akk = add <2 x i64> %i.aki, splat (i64 63)
  %i.akl = add <2 x i64> %i.akj, splat (i64 63)
  %i.akm = and <2 x i64> %i.akk, splat (i64 -64)
  %i.akn = and <2 x i64> %i.akl, splat (i64 -64)
  %i.ako = inttoptr <2 x i64> %i.akm to <2 x ptr>
  %i.akp = inttoptr <2 x i64> %i.akn to <2 x ptr>
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index436 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  store <2 x ptr> %i.ako, ptr %i.akq, align 8, !tbaa !118
  store <2 x ptr> %i.akp, ptr %i.akr, align 8, !tbaa !118
  %index.next441 = add nuw i64 %index436, 4       ; 2 uses
  %vec.ind.next442 = add nuw <2 x i64> %vec.ind437, splat (i64 4)
  %i.aks = icmp eq i64 %index.next441, %n.vec432
  br i1 %i.aks, label %middle.block443, label %vector.body435, !llvm.loop !330

middle.block443:                                  ; preds = %vector.body435
  %cmp.n444 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec432
  br i1 %cmp.n444, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader: ; preds = %.lr.ph516.i282, %middle.block443
  %indvars.iv551.i284.ph = phi i64 [ 0, %.lr.ph516.i282 ], [ %n.vec432, %middle.block443 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283
  %indvars.iv551.i284 = phi i64 [ %indvars.iv.next552.i285, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %indvars.iv551.i284.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader ] ; 3 uses
  %i.akt = mul nsw i64 %indvars.iv551.i284, %i.akf
  %i.aku = getelementptr inbounds i8, ptr %i.aip, i64 %i.akt
  %i.akv = ptrtoint ptr %i.aku to i64
  %i.akw = add i64 %i.akv, 63
  %i.akx = and i64 %i.akw, -64
  %i.aky = inttoptr i64 %i.akx to ptr
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv551.i284
  store ptr %i.aky, ptr %i.akz, align 8, !tbaa !118
  %indvars.iv.next552.i285 = add nuw nsw i64 %indvars.iv551.i284, 1 ; 2 uses
  %exitcond555.not.i286 = icmp eq i64 %indvars.iv.next552.i285, %.sroa.552.0.extract.shift
  br i1 %exitcond555.not.i286, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283, !llvm.loop !331

.preheader.i112:                                  ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283, %middle.block426, %middle.block443, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281
  %i.ala = phi i1 [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ true, %middle.block443 ], [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ true, %middle.block426 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ]
  %.0.i322594.i113 = phi ptr [ %i.ajp, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ %i.aiw, %middle.block443 ], [ %i.aiw, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ %i.ajp, %middle.block426 ], [ %i.aiw, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %i.ajp, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ] ; 4 uses
  %.0.i470592.i114 = phi ptr [ %i.ajf, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ %i.aio, %middle.block443 ], [ %i.aio, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ %i.ajf, %middle.block426 ], [ %i.aio, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %i.ajf, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ]
  %i.alb = icmp sgt i32 %i.ael, 0
  br i1 %i.alb, label %.lr.ph522.i117, label %._crit_edge523.i115

.lr.ph522.i117:                                   ; preds = %.preheader.i112
  %i.alc = sub i32 %i.ade, %.sroa.7.0.extract.trunc.i72
  %i.ald = sub nsw i32 %i.ael, %.sroa.speculated.i94 ; 2 uses
  %i.ale = sext i32 %i.aik to i64                 ; 3 uses
  %i.alf = sub nsw i64 0, %i.ale                  ; 2 uses
  %i.alg = mul i32 %i.adz, %i.acv                 ; 6 uses
  %i.alh = mul i32 %i.adz, %.sroa.speculated392.i92 ; 5 uses
  %i.ali = zext i32 %i.alh to i64                 ; 17 uses
  %i.alj = shl nuw nsw i64 %i.ali, 3              ; 2 uses
  %i.alk = add nuw i32 %.sroa.speculated371.i93, %.sroa.speculated392.i92 ; 2 uses
  %.not116.i.i118 = icmp slt i32 %i.acv, %i.alk
  %i.all = mul i32 %i.adz, %i.aej                 ; 3 uses
  %i.alm = icmp sgt i32 %i.all, 0
  %wide.trip.count214.i.i119 = zext i32 %i.all to i64 ; 5 uses
  %i.aln = sub i32 %i.alk, %i.acv                 ; 2 uses
  %i.alo = xor i32 %i.aln, -1
  %i.alp = add i32 %i.alo, %.sroa.047.0.extract.trunc
  %i.alq = mul i32 %i.adz, %i.alp                 ; 3 uses
  %i.alr = icmp sgt i32 %i.alq, 0
  %wide.trip.count224.i.i120 = zext i32 %i.alq to i64 ; 5 uses
  %.sroa.speculated.i.i121 = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i93, i32 %i.aln) ; 2 uses
  %i.als = mul i32 %i.adz, %.sroa.speculated.i.i121 ; 2 uses
  %.not525.i122 = icmp eq i32 %.sroa.speculated.i.i121, 0
  %wide.trip.count233.i.i123 = zext i32 %i.als to i64 ; 3 uses
  %invariant.gep264.i.i124 = getelementptr [4 x i8], ptr %i.aii, i64 %i.ali ; 15 uses
  %i.alt = shl nuw nsw i64 %wide.trip.count233.i.i123, 3
  %.not500.i125 = icmp eq i32 %i.acv, 0
  %i.alu = icmp sgt i32 %.sroa.047.0.extract.trunc, 0 ; 2 uses
  %i.alv = getelementptr [8 x i8], ptr %.sroa.0454.2.i110, i64 %i.ahz
  %i.alw = getelementptr i8, ptr %i.alv, i64 -8   ; 2 uses
  %i.alx = zext nneg i32 %i.adz to i64            ; 10 uses
  %wide.trip.count251.i.i126 = zext nneg i32 %i.aex to i64
  %wide.trip.count242.i.i127 = and i64 %2, 4294967295
  %i.aly = sub nsw i64 0, %i.ali
  %i.alz = sub nsw i32 %i.acv, %.sroa.speculated371.i93
  %i.ama = mul i32 %i.adz, %i.alz
  %i.amb = xor i32 %.sroa.speculated371.i93, -1
  %i.amc = add i32 %i.amb, %.sroa.047.0.extract.trunc
  %i.amd = mul nsw i32 %i.adz, %i.amc
  %i.ame = mul i32 %i.adz, %.sroa.speculated371.i93
  %i.amf = zext i32 %i.ame to i64                 ; 6 uses
  %i.amg = shl nuw nsw i64 %i.amf, 3              ; 2 uses
  %.not501.i128 = icmp slt i32 %i.aem, 1
  %i.amh = icmp sgt i32 %i.alg, 0
  %wide.trip.count74.i.i129 = zext i32 %i.alg to i64 ; 5 uses
  %.not502.i130 = icmp slt i32 %i.aer, 1
  %i.ami = sext i32 %i.aek to i64
  %i.amj = sext i32 %i.ald to i64
  %wide.trip.count564.i131 = zext nneg i32 %i.ael to i64
  %i.amk = shl nuw nsw i64 %i.ali, 3              ; 2 uses
  %i.aml = add nsw i64 %i.ali, -1                 ; 2 uses
  %i.amm = add nsw i64 %wide.trip.count242.i.i127, -1 ; 2 uses
  %i.amn = add nsw i64 %i.amf, -1                 ; 2 uses
  %min.iters.check505 = icmp ult i64 %2, 8589934592
  %n.vec507 = and i64 %.sroa.552.0.extract.shift, 4294967294 ; 3 uses
  %broadcast.splatinsert510 = insertelement <2 x i32> poison, i32 %.sroa.552.0.extract.trunc, i64 0
  %broadcast.splat511 = shufflevector <2 x i32> %broadcast.splatinsert510, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert512 = insertelement <2 x i32> poison, i32 %i.afb, i64 0
  %broadcast.splat513 = shufflevector <2 x i32> %broadcast.splatinsert512, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n523 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec507
  %xtraiter = and i64 %i.ali, 3                   ; 3 uses
  %i.amo = icmp ult i64 %i.aml, 3
  %unroll_iter = and i64 %i.ali, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod691 = icmp ne i64 %xtraiter, 0
  %min.iters.check492 = icmp ult i32 %i.all, 4
  %n.vec494 = and i64 %wide.trip.count214.i.i119, 2147483644 ; 4 uses
  %i.amp = add nuw nsw i64 %n.vec494, %i.ali
  %cmp.n501 = icmp eq i64 %n.vec494, %wide.trip.count214.i.i119
  %xtraiter692 = and i64 %wide.trip.count214.i.i119, 3 ; 2 uses
  %lcmp.mod693.not = icmp eq i64 %xtraiter692, 0
  %min.iters.check477 = icmp ult i32 %i.alq, 4
  %n.vec479 = and i64 %wide.trip.count224.i.i120, 2147483644 ; 4 uses
  %i.amq = add nuw nsw i64 %n.vec479, %i.ali      ; 2 uses
  %cmp.n486 = icmp eq i64 %n.vec479, %wide.trip.count224.i.i120
  %xtraiter694 = and i64 %wide.trip.count224.i.i120, 3 ; 2 uses
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  %xtraiter697 = and i64 %wide.trip.count233.i.i123, 3 ; 3 uses
  %i.amr = add i32 %i.als, -1
  %i.ams = icmp ult i32 %i.amr, 3
  %unroll_iter701 = and i64 %wide.trip.count233.i.i123, 4294967292
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  %lcmp.mod700 = icmp ne i64 %xtraiter697, 0
  %xtraiter703 = and i64 %2, 3                    ; 3 uses
  %i.amt = icmp ult i64 %i.amm, 3
  %unroll_iter708 = and i64 %2, 2147483644
  %lcmp.mod705.not = icmp eq i64 %xtraiter703, 0
  %lcmp.mod707 = icmp ne i64 %xtraiter703, 0
  %xtraiter713 = and i64 %i.amf, 3                ; 3 uses
  %i.amu = icmp ult i64 %i.amn, 3
  %unroll_iter717 = and i64 %i.amf, 4294967292
  %lcmp.mod715.not = icmp eq i64 %xtraiter713, 0
  %lcmp.mod716 = icmp ne i64 %xtraiter713, 0
  %xtraiter719 = and i64 %2, 3                    ; 3 uses
  %i.amv = icmp ult i64 %i.amm, 3
  %unroll_iter724 = and i64 %2, 2147483644
  %lcmp.mod721.not = icmp eq i64 %xtraiter719, 0
  %lcmp.mod723 = icmp ne i64 %xtraiter719, 0
  %xtraiter726 = and i64 %i.ali, 3                ; 3 uses
  %i.amw = icmp ult i64 %i.aml, 3
  %unroll_iter730 = and i64 %i.ali, 4294967292
  %lcmp.mod728.not = icmp eq i64 %xtraiter726, 0
  %lcmp.mod729 = icmp ne i64 %xtraiter726, 0
  %min.iters.check448 = icmp ult i32 %i.alg, 4
  %n.vec450 = and i64 %wide.trip.count74.i.i129, 2147483644 ; 4 uses
  %cmp.n456 = icmp eq i64 %n.vec450, %wide.trip.count74.i.i129
  %xtraiter732 = and i64 %wide.trip.count74.i.i129, 3 ; 2 uses
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  %xtraiter735 = and i64 %i.amf, 3                ; 3 uses
  %i.amx = icmp ult i64 %i.amn, 3
  %unroll_iter739 = and i64 %i.amf, 4294967292
  %lcmp.mod737.not = icmp eq i64 %xtraiter735, 0
  %lcmp.mod738 = icmp ne i64 %xtraiter735, 0
  br label %bb.db

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276
  %indvars.iv546.i277 = phi i64 [ %indvars.iv.next547.i279, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ], [ %indvars.iv546.i277.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader ] ; 3 uses
  %i.amy = mul nsw i64 %indvars.iv546.i277, %i.ajr
  %gep.i278 = getelementptr i8, ptr %invariant.gep.i275, i64 %i.amy
  %i.amz = ptrtoint ptr %gep.i278 to i64
  %i.ana = add i64 %i.amz, 63
  %i.anb = and i64 %i.ana, -64
  %i.anc = inttoptr i64 %i.anb to ptr
  %i.and = getelementptr inbounds i8, ptr %i.anc, i64 %i.aje
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv546.i277
  store ptr %i.and, ptr %i.ane, align 8, !tbaa !118
  %indvars.iv.next547.i279 = add nuw nsw i64 %indvars.iv546.i277, 1 ; 2 uses
  %exitcond550.not.i280 = icmp eq i64 %indvars.iv.next547.i279, %.sroa.552.0.extract.shift
  br i1 %exitcond550.not.i280, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276, !llvm.loop !332

._crit_edge523.i115:                              ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.preheader.i112
  %.not.i.i.i.i116 = icmp eq ptr %.sroa.0454.2.i110, null
  br i1 %.not.i.i.i.i116, label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIddEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit, label %bb.da

bb.da:                                            ; preds = %._crit_edge523.i115
  %i.anf = ptrtoint ptr %.sroa.0454.2.i110 to i64
  %i.ang = sub i64 %.sroa.15.2.i109, %i.anf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i110, i64 noundef %i.ang) #25
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIddEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit

bb.db:                                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.lr.ph522.i117
  %indvars.iv561.i132 = phi i64 [ 0, %.lr.ph522.i117 ], [ %indvars.iv.next562.i151, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 4 uses
  %.0248521.i133 = phi i32 [ 0, %.lr.ph522.i117 ], [ %i.bco, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 3 uses
  %.0257519.i134 = phi ptr [ %i.acc, %.lr.ph522.i117 ], [ %spec.select.i150, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 2 uses
  %i.anh = trunc nuw nsw i64 %indvars.iv561.i132 to i32 ; 2 uses
  %i.ani = add i32 %i.alc, %i.anh
  %i.anj = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ani, i32 noundef %.sroa.7.0.copyload.i76, i32 noundef %7)
          to label %bb.dc unwind label %.body.i135 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.ank = icmp slt i32 %i.anj, 0
  br i1 %i.ank, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not296.i139 = icmp sge i64 %indvars.iv561.i132, %i.amj
  %or.cond.not.i140 = select i1 %i.ap, i1 %.not296.i139, i1 false
  br i1 %or.cond.not.i140, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.anl = sub nsw i32 %i.anh, %i.ald
  %i.anm = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.ann = mul nsw i32 %i.anl, %i.afl
  %i.ano = sext i32 %i.ann to i64
  %i.anp = getelementptr inbounds i8, ptr %i.anm, i64 %i.ano
  %i.anq = ptrtoint ptr %i.anp to i64
  %i.anr = add i64 %i.anq, 63
  %i.ans = and i64 %i.anr, -64
  %i.ant = inttoptr i64 %i.ans to ptr
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.anu = sub nsw i32 %i.anj, %i.ade
  %i.anv = sext i32 %i.anu to i64
  %i.anw = mul nsw i64 %i.adu, %i.anv
  %i.anx = getelementptr inbounds i8, ptr %i.aff, i64 %i.anw
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dc
  %.0252.i141 = phi ptr [ %i.anx, %bb.df ], [ %.0.i470592.i114, %bb.dc ], [ %i.ant, %bb.de ] ; 46 uses
  %.0252.i141446 = ptrtoaddr ptr %.0252.i141 to i64 ; 3 uses
  %i.any = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.anz = ptrtoint ptr %i.any to i64
  %i.aoa = add i64 %i.anz, 63
  %i.aob = and i64 %i.aoa, -64                    ; 5 uses
  %i.aoc = inttoptr i64 %i.aob to ptr             ; 57 uses
  %i.aod = icmp slt i64 %indvars.iv561.i132, %i.ami ; 2 uses
  %or.cond313.i142 = select i1 %i.ap, i1 %i.aod, i1 false
  %i.aoe = load ptr, ptr %i.f, align 8
  %i.aof = ptrtoint ptr %i.aoe to i64
  %i.aog = add i64 %i.aof, 63
  %i.aoh = and i64 %i.aog, -64
  %i.aoi = inttoptr i64 %i.aoh to ptr
  %.0251.i143 = select i1 %or.cond313.i142, ptr %i.aoi, ptr %.0257519.i134 ; 4 uses
  br i1 %i.ala, label %.lr.ph518.i268, label %._crit_edge.i144

.lr.ph518.i268:                                   ; preds = %bb.dg
  %i.aoj = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check505, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph518.i268
  %broadcast.splatinsert508 = insertelement <2 x i32> poison, i32 %.0248521.i133, i64 0
  %broadcast.splat509 = shufflevector <2 x i32> %broadcast.splatinsert508, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next520, %vector.body514 ] ; 2 uses
  %vec.ind516 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph506 ], [ %vec.ind.next521, %vector.body514 ] ; 2 uses
  %i.aok = add <2 x i32> %broadcast.splat509, %vec.ind516
  %i.aol = srem <2 x i32> %i.aok, %broadcast.splat511
  %i.aom = mul nsw <2 x i32> %i.aol, %broadcast.splat513
  %i.aon = sext <2 x i32> %i.aom to <2 x i64>
  %wide.gep517 = getelementptr inbounds i8, ptr %i.aoj, <2 x i64> %i.aon ; 2 uses
  %i.aoo = ptrtoint <2 x ptr> %wide.gep517 to <2 x i64>
  %i.aop = add <2 x i64> %i.aoo, splat (i64 63)
  %i.aoq = and <2 x i64> %i.aop, splat (i64 -64)
  %i.aor = inttoptr <2 x i64> %i.aoq to <2 x ptr>
  %wide.gep518 = getelementptr inbounds i8, <2 x ptr> %wide.gep517, i64 %i.ale
  %i.aos = ptrtoint <2 x ptr> %wide.gep518 to <2 x i64>
  %i.aot = add <2 x i64> %i.aos, splat (i64 63)
  %i.aou = and <2 x i64> %i.aot, splat (i64 -64)
  %i.aov = inttoptr <2 x i64> %i.aou to <2 x ptr>
  %wide.gep519 = getelementptr inbounds i8, <2 x ptr> %i.aov, i64 %i.alf
  %i.aow = select i1 %i.ap, <2 x ptr> %i.aor, <2 x ptr> %wide.gep519
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index515
  store <2 x ptr> %i.aow, ptr %i.aox, align 8, !tbaa !118
  %index.next520 = add nuw i64 %index515, 2       ; 2 uses
  %vec.ind.next521 = add <2 x i32> %vec.ind516, splat (i32 2)
  %i.aoy = icmp eq i64 %index.next520, %n.vec507
  br i1 %i.aoy, label %middle.block522, label %vector.body514, !llvm.loop !333

middle.block522:                                  ; preds = %vector.body514
  br i1 %cmp.n523, label %._crit_edge.i144, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader: ; preds = %.lr.ph518.i268, %middle.block522
  %indvars.iv556.i270.ph = phi i64 [ 0, %.lr.ph518.i268 ], [ %n.vec507, %middle.block522 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269

._crit_edge.i144:                                 ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269, %middle.block522, %bb.dg
  br i1 %i.ap, label %bb.dh, label %bb.di

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269
  %indvars.iv556.i270 = phi i64 [ %indvars.iv.next557.i272, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269 ], [ %indvars.iv556.i270.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader ] ; 3 uses
  %i.aoz = trunc i64 %indvars.iv556.i270 to i32
  %i.apa = add i32 %.0248521.i133, %i.aoz
  %i.apb = srem i32 %i.apa, %.sroa.552.0.extract.trunc
  %i.apc = mul nsw i32 %i.apb, %i.afb
  %i.apd = sext i32 %i.apc to i64
  %i.ape = getelementptr inbounds i8, ptr %i.aoj, i64 %i.apd ; 2 uses
  %i.apf = ptrtoint ptr %i.ape to i64
  %i.apg = add i64 %i.apf, 63
  %i.aph = and i64 %i.apg, -64
  %i.api = inttoptr i64 %i.aph to ptr
  %i.apj = getelementptr inbounds i8, ptr %i.ape, i64 %i.ale
  %i.apk = ptrtoint ptr %i.apj to i64
  %i.apl = add i64 %i.apk, 63
  %i.apm = and i64 %i.apl, -64
  %i.apn = inttoptr i64 %i.apm to ptr
  %i.apo = getelementptr inbounds i8, ptr %i.apn, i64 %i.alf
  %.0.i328.i271 = select i1 %i.ap, ptr %i.api, ptr %i.apo
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv556.i270
  store ptr %.0.i328.i271, ptr %i.app, align 8, !tbaa !118
  %indvars.iv.next557.i272 = add nuw nsw i64 %indvars.iv556.i270, 1 ; 2 uses
  %exitcond560.not.i273 = icmp eq i64 %indvars.iv.next557.i272, %.sroa.552.0.extract.shift
  br i1 %exitcond560.not.i273, label %._crit_edge.i144, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269, !llvm.loop !334

bb.dh:                                            ; preds = %._crit_edge.i144
  br i1 %.not501.i128, label %.preheader41.i.i242, label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %bb.dh
  br i1 %i.afp, label %.lr.ph.split.i.i264.preheader, label %.lr.ph.split.us.preheader.i.i241

.lr.ph.split.i.i264.preheader:                    ; preds = %.lr.ph.i.i240
  br i1 %i.amw, label %.lr.ph.split.i.i264.epil.preheader, label %.lr.ph.split.i.i264

.lr.ph.split.us.preheader.i.i241:                 ; preds = %.lr.ph.i.i240
  call void @llvm.memset.p0.i64(ptr align 64 %i.aoc, i8 0, i64 %i.alj, i1 false), !tbaa !41
  br label %.preheader41.i.i242

.preheader41.i.i242.loopexit.unr-lcssa:           ; preds = %.lr.ph.split.i.i264
  br i1 %lcmp.mod728.not, label %.preheader41.i.i242, label %.lr.ph.split.i.i264.epil.preheader

end_hunk_4
begin_hunk_5_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %indvars.iv.next193.i.i238 = or disjoint i64 %indvars.iv192.i.i237, 1 ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %indvars.iv.next193.i.i238
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !13
  %i.ats = sext i32 %i.atr to i64
  %i.att = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.ats
  %i.atu = load double, ptr %i.att, align 8, !tbaa !41
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv.next193.i.i238
  store double %i.atu, ptr %i.atv, align 8, !tbaa !41
  %indvars.iv.next193.i.i238.1 = or disjoint i64 %indvars.iv192.i.i237, 2 ; 2 uses
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %indvars.iv.next193.i.i238.1
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !13
  %i.aty = sext i32 %i.atx to i64
  %i.atz = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.aty
  %i.aua = load double, ptr %i.atz, align 8, !tbaa !41
  %i.aub = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv.next193.i.i238.1
  store double %i.aua, ptr %i.aub, align 16, !tbaa !41
  %indvars.iv.next193.i.i238.2 = or disjoint i64 %indvars.iv192.i.i237, 3 ; 2 uses
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %indvars.iv.next193.i.i238.2
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !13
  %i.aue = sext i32 %i.aud to i64
  %i.auf = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.aue
  %i.aug = load double, ptr %i.auf, align 8, !tbaa !41
  %i.auh = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv.next193.i.i238.2
  store double %i.aug, ptr %i.auh, align 8, !tbaa !41
  %indvars.iv.next193.i.i238.3 = add nuw nsw i64 %indvars.iv192.i.i237, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i191.loopexit.unr-lcssa, label %.lr.ph141.split.i.i236, !llvm.loop !342

._crit_edge.i.i191.loopexit.unr-lcssa:            ; preds = %.lr.ph141.split.i.i236
  br i1 %lcmp.mod.not, label %._crit_edge.i.i191, label %.lr.ph141.split.i.i236.epil.preheader

.lr.ph141.split.i.i236.epil.preheader:            ; preds = %._crit_edge.i.i191.loopexit.unr-lcssa, %.lr.ph141.split.i.i236.preheader
  %indvars.iv192.i.i237.epil.init = phi i64 [ 0, %.lr.ph141.split.i.i236.preheader ], [ %indvars.iv.next193.i.i238.3, %._crit_edge.i.i191.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod691)
  br label %.lr.ph141.split.i.i236.epil

.lr.ph141.split.i.i236.epil:                      ; preds = %.lr.ph141.split.i.i236.epil, %.lr.ph141.split.i.i236.epil.preheader
  %indvars.iv192.i.i237.epil = phi i64 [ %indvars.iv.next193.i.i238.epil, %.lr.ph141.split.i.i236.epil ], [ %indvars.iv192.i.i237.epil.init, %.lr.ph141.split.i.i236.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph141.split.i.i236.epil ], [ 0, %.lr.ph141.split.i.i236.epil.preheader ]
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %indvars.iv192.i.i237.epil
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !13
  %i.auk = sext i32 %i.auj to i64
  %i.aul = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.auk
  %i.aum = load double, ptr %i.aul, align 8, !tbaa !41
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv192.i.i237.epil
  store double %i.aum, ptr %i.aun, align 8, !tbaa !41
  %indvars.iv.next193.i.i238.epil = add nuw nsw i64 %indvars.iv192.i.i237.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i191, label %.lr.ph141.split.i.i236.epil, !llvm.loop !343

._crit_edge.i.i191:                               ; preds = %._crit_edge.i.i191.loopexit.unr-lcssa, %.lr.ph141.split.i.i236.epil, %.lr.ph141.split.us.preheader.i.i190
  br i1 %.not116.i.i118, label %bb.dj, label %.preheader128.i.i192

.preheader128.i.i192:                             ; preds = %._crit_edge.i.i191
  br i1 %i.alm, label %.lr.ph147.i.i210.preheader, label %.loopexit.i.i193

.lr.ph147.i.i210.preheader:                       ; preds = %.preheader128.i.i192
  br i1 %min.iters.check492, label %.lr.ph147.i.i210.preheader684, label %vector.memcheck489

vector.memcheck489:                               ; preds = %.lr.ph147.i.i210.preheader
  %i.auo = add i64 %i.amk, %i.aob
  %i.aup = sub i64 %.0252.i141446, %i.auo
  %diff.check490 = icmp ugt i64 %i.aup, -32
  br i1 %diff.check490, label %.lr.ph147.i.i210.preheader684, label %vector.ph493

vector.ph493:                                     ; preds = %vector.memcheck489
  %invariant.gep = getelementptr [8 x i8], ptr %i.aoc, i64 %i.ali
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph493
  %index496 = phi i64 [ 0, %vector.ph493 ], [ %index.next499, %vector.body495 ] ; 3 uses
  %i.auq = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %index496 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 16
  %wide.load497 = load <2 x double>, ptr %i.auq, align 8, !tbaa !41
  %wide.load498 = load <2 x double>, ptr %i.aur, align 8, !tbaa !41
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index496 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %wide.load497, ptr %gep, align 8, !tbaa !41
  store <2 x double> %wide.load498, ptr %i.aus, align 8, !tbaa !41
  %index.next499 = add nuw i64 %index496, 4       ; 2 uses
  %i.aut = icmp eq i64 %index.next499, %n.vec494
  br i1 %i.aut, label %middle.block500, label %vector.body495, !llvm.loop !344

middle.block500:                                  ; preds = %vector.body495
  br i1 %cmp.n501, label %.loopexit.i.i193, label %.lr.ph147.i.i210.preheader684

.lr.ph147.i.i210.preheader684:                    ; preds = %vector.memcheck489, %.lr.ph147.i.i210.preheader, %middle.block500
  %indvars.iv209.i.i211.ph = phi i64 [ %i.ali, %vector.memcheck489 ], [ %i.ali, %.lr.ph147.i.i210.preheader ], [ %i.amp, %middle.block500 ] ; 2 uses
  %indvars.iv207.i.i212.ph = phi i64 [ 0, %vector.memcheck489 ], [ 0, %.lr.ph147.i.i210.preheader ], [ %n.vec494, %middle.block500 ] ; 3 uses
  br i1 %lcmp.mod693.not, label %.lr.ph147.i.i210.prol.loopexit, label %.lr.ph147.i.i210.prol

.lr.ph147.i.i210.prol:                            ; preds = %.lr.ph147.i.i210.preheader684, %.lr.ph147.i.i210.prol
  %indvars.iv209.i.i211.prol = phi i64 [ %indvars.iv.next210.i.i214.prol, %.lr.ph147.i.i210.prol ], [ %indvars.iv209.i.i211.ph, %.lr.ph147.i.i210.preheader684 ] ; 2 uses
  %indvars.iv207.i.i212.prol = phi i64 [ %indvars.iv.next208.i.i213.prol, %.lr.ph147.i.i210.prol ], [ %indvars.iv207.i.i212.ph, %.lr.ph147.i.i210.preheader684 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph147.i.i210.prol ], [ 0, %.lr.ph147.i.i210.preheader684 ]
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212.prol
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !41
  %i.auw = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv209.i.i211.prol
  store double %i.auv, ptr %i.auw, align 8, !tbaa !41
  %indvars.iv.next208.i.i213.prol = add nuw nsw i64 %indvars.iv207.i.i212.prol, 1 ; 2 uses
  %indvars.iv.next210.i.i214.prol = add nuw nsw i64 %indvars.iv209.i.i211.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter692
  br i1 %prol.iter.cmp.not, label %.lr.ph147.i.i210.prol.loopexit, label %.lr.ph147.i.i210.prol, !llvm.loop !345

.lr.ph147.i.i210.prol.loopexit:                   ; preds = %.lr.ph147.i.i210.prol, %.lr.ph147.i.i210.preheader684
  %indvars.iv209.i.i211.unr = phi i64 [ %indvars.iv209.i.i211.ph, %.lr.ph147.i.i210.preheader684 ], [ %indvars.iv.next210.i.i214.prol, %.lr.ph147.i.i210.prol ]
  %indvars.iv207.i.i212.unr = phi i64 [ %indvars.iv207.i.i212.ph, %.lr.ph147.i.i210.preheader684 ], [ %indvars.iv.next208.i.i213.prol, %.lr.ph147.i.i210.prol ]
  %i.aux = sub nsw i64 %indvars.iv207.i.i212.ph, %wide.trip.count214.i.i119
  %i.auy = icmp ugt i64 %i.aux, -4
  br i1 %i.auy, label %.loopexit.i.i193, label %.lr.ph147.i.i210

.lr.ph147.i.i210:                                 ; preds = %.lr.ph147.i.i210.prol.loopexit, %.lr.ph147.i.i210
  %indvars.iv209.i.i211 = phi i64 [ %indvars.iv.next210.i.i214.3, %.lr.ph147.i.i210 ], [ %indvars.iv209.i.i211.unr, %.lr.ph147.i.i210.prol.loopexit ] ; 5 uses
  %indvars.iv207.i.i212 = phi i64 [ %indvars.iv.next208.i.i213.3, %.lr.ph147.i.i210 ], [ %indvars.iv207.i.i212.unr, %.lr.ph147.i.i210.prol.loopexit ] ; 5 uses
  %i.auz = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.ava = load double, ptr %i.auz, align 8, !tbaa !41
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv209.i.i211
  store double %i.ava, ptr %i.avb, align 8, !tbaa !41
  %i.avc = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 8
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !41
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv209.i.i211
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 8
  store double %i.ave, ptr %i.avg, align 8, !tbaa !41
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 16
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !41
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv209.i.i211
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 16
  store double %i.avj, ptr %i.avl, align 8, !tbaa !41
  %i.avm = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 24
  %i.avo = load double, ptr %i.avn, align 8, !tbaa !41
  %i.avp = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv209.i.i211
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 24
  store double %i.avo, ptr %i.avq, align 8, !tbaa !41
  %indvars.iv.next208.i.i213.3 = add nuw nsw i64 %indvars.iv207.i.i212, 4 ; 2 uses
  %indvars.iv.next210.i.i214.3 = add nuw nsw i64 %indvars.iv209.i.i211, 4
  %exitcond215.not.i.i215.3 = icmp eq i64 %indvars.iv.next208.i.i213.3, %wide.trip.count214.i.i119
  br i1 %exitcond215.not.i.i215.3, label %.loopexit.i.i193, label %.lr.ph147.i.i210, !llvm.loop !346

bb.dj:                                            ; preds = %._crit_edge.i.i191
  br i1 %i.alr, label %.lr.ph151.i.i229.preheader, label %._crit_edge152.i.i216

.lr.ph151.i.i229.preheader:                       ; preds = %bb.dj
  br i1 %min.iters.check477, label %.lr.ph151.i.i229.preheader683, label %vector.memcheck474

vector.memcheck474:                               ; preds = %.lr.ph151.i.i229.preheader
  %i.avr = add i64 %i.amk, %i.aob
  %i.avs = sub i64 %.0252.i141446, %i.avr
  %diff.check475 = icmp ugt i64 %i.avs, -32
  br i1 %diff.check475, label %.lr.ph151.i.i229.preheader683, label %vector.ph478

vector.ph478:                                     ; preds = %vector.memcheck474
  %invariant.gep807 = getelementptr [8 x i8], ptr %i.aoc, i64 %i.ali
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next484, %vector.body480 ] ; 3 uses
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %index481 ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 16
  %wide.load482 = load <2 x double>, ptr %i.avt, align 8, !tbaa !41
  %wide.load483 = load <2 x double>, ptr %i.avu, align 8, !tbaa !41
  %gep808 = getelementptr [8 x i8], ptr %invariant.gep807, i64 %index481 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %gep808, i64 16
  store <2 x double> %wide.load482, ptr %gep808, align 8, !tbaa !41
  store <2 x double> %wide.load483, ptr %i.avv, align 8, !tbaa !41
  %index.next484 = add nuw i64 %index481, 4       ; 2 uses
  %i.avw = icmp eq i64 %index.next484, %n.vec479
  br i1 %i.avw, label %middle.block485, label %vector.body480, !llvm.loop !347

middle.block485:                                  ; preds = %vector.body480
  br i1 %cmp.n486, label %._crit_edge152.loopexit.i.i235, label %.lr.ph151.i.i229.preheader683

.lr.ph151.i.i229.preheader683:                    ; preds = %vector.memcheck474, %.lr.ph151.i.i229.preheader, %middle.block485
  %indvars.iv219.i.i230.ph = phi i64 [ %i.ali, %vector.memcheck474 ], [ %i.ali, %.lr.ph151.i.i229.preheader ], [ %i.amq, %middle.block485 ] ; 2 uses
  %indvars.iv217.i.i231.ph = phi i64 [ 0, %vector.memcheck474 ], [ 0, %.lr.ph151.i.i229.preheader ], [ %n.vec479, %middle.block485 ] ; 3 uses
  br i1 %lcmp.mod695.not, label %.lr.ph151.i.i229.prol.loopexit, label %.lr.ph151.i.i229.prol

.lr.ph151.i.i229.prol:                            ; preds = %.lr.ph151.i.i229.preheader683, %.lr.ph151.i.i229.prol
  %indvars.iv219.i.i230.prol = phi i64 [ %indvars.iv.next220.i.i233.prol, %.lr.ph151.i.i229.prol ], [ %indvars.iv219.i.i230.ph, %.lr.ph151.i.i229.preheader683 ] ; 2 uses
  %indvars.iv217.i.i231.prol = phi i64 [ %indvars.iv.next218.i.i232.prol, %.lr.ph151.i.i229.prol ], [ %indvars.iv217.i.i231.ph, %.lr.ph151.i.i229.preheader683 ] ; 2 uses
  %prol.iter696 = phi i64 [ %prol.iter696.next, %.lr.ph151.i.i229.prol ], [ 0, %.lr.ph151.i.i229.preheader683 ]
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231.prol
  %i.avy = load double, ptr %i.avx, align 8, !tbaa !41
  %i.avz = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv219.i.i230.prol
  store double %i.avy, ptr %i.avz, align 8, !tbaa !41
  %indvars.iv.next218.i.i232.prol = add nuw nsw i64 %indvars.iv217.i.i231.prol, 1 ; 2 uses
  %indvars.iv.next220.i.i233.prol = add nuw nsw i64 %indvars.iv219.i.i230.prol, 1 ; 3 uses
  %prol.iter696.next = add i64 %prol.iter696, 1   ; 2 uses
  %prol.iter696.cmp.not = icmp eq i64 %prol.iter696.next, %xtraiter694
  br i1 %prol.iter696.cmp.not, label %.lr.ph151.i.i229.prol.loopexit, label %.lr.ph151.i.i229.prol, !llvm.loop !348

.lr.ph151.i.i229.prol.loopexit:                   ; preds = %.lr.ph151.i.i229.prol, %.lr.ph151.i.i229.preheader683
  %indvars.iv.next220.i.i233.lcssa686.unr = phi i64 [ poison, %.lr.ph151.i.i229.preheader683 ], [ %indvars.iv.next220.i.i233.prol, %.lr.ph151.i.i229.prol ]
  %indvars.iv219.i.i230.unr = phi i64 [ %indvars.iv219.i.i230.ph, %.lr.ph151.i.i229.preheader683 ], [ %indvars.iv.next220.i.i233.prol, %.lr.ph151.i.i229.prol ]
  %indvars.iv217.i.i231.unr = phi i64 [ %indvars.iv217.i.i231.ph, %.lr.ph151.i.i229.preheader683 ], [ %indvars.iv.next218.i.i232.prol, %.lr.ph151.i.i229.prol ]
  %i.awa = sub nsw i64 %indvars.iv217.i.i231.ph, %wide.trip.count224.i.i120
  %i.awb = icmp ugt i64 %i.awa, -4
  br i1 %i.awb, label %._crit_edge152.loopexit.i.i235, label %.lr.ph151.i.i229

.lr.ph151.i.i229:                                 ; preds = %.lr.ph151.i.i229.prol.loopexit, %.lr.ph151.i.i229
  %indvars.iv219.i.i230 = phi i64 [ %indvars.iv.next220.i.i233.3, %.lr.ph151.i.i229 ], [ %indvars.iv219.i.i230.unr, %.lr.ph151.i.i229.prol.loopexit ] ; 5 uses
  %indvars.iv217.i.i231 = phi i64 [ %indvars.iv.next218.i.i232.3, %.lr.ph151.i.i229 ], [ %indvars.iv217.i.i231.unr, %.lr.ph151.i.i229.prol.loopexit ] ; 5 uses
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.awd = load double, ptr %i.awc, align 8, !tbaa !41
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv219.i.i230
  store double %i.awd, ptr %i.awe, align 8, !tbaa !41
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 8
  %i.awh = load double, ptr %i.awg, align 8, !tbaa !41
  %i.awi = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv219.i.i230
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  store double %i.awh, ptr %i.awj, align 8, !tbaa !41
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load double, ptr %i.awl, align 8, !tbaa !41
  %i.awn = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv219.i.i230
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  store double %i.awm, ptr %i.awo, align 8, !tbaa !41
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 24
  %i.awr = load double, ptr %i.awq, align 8, !tbaa !41
  %i.aws = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv219.i.i230
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 24
  store double %i.awr, ptr %i.awt, align 8, !tbaa !41
  %indvars.iv.next218.i.i232.3 = add nuw nsw i64 %indvars.iv217.i.i231, 4 ; 2 uses
  %indvars.iv.next220.i.i233.3 = add nuw nsw i64 %indvars.iv219.i.i230, 4 ; 2 uses
  %exitcond225.not.i.i234.3 = icmp eq i64 %indvars.iv.next218.i.i232.3, %wide.trip.count224.i.i120
  br i1 %exitcond225.not.i.i234.3, label %._crit_edge152.loopexit.i.i235, label %.lr.ph151.i.i229, !llvm.loop !349

._crit_edge152.loopexit.i.i235:                   ; preds = %.lr.ph151.i.i229.prol.loopexit, %.lr.ph151.i.i229, %middle.block485
  %indvars.iv.next220.i.i233.lcssa = phi i64 [ %i.amq, %middle.block485 ], [ %indvars.iv.next220.i.i233.lcssa686.unr, %.lr.ph151.i.i229.prol.loopexit ], [ %indvars.iv.next220.i.i233.3, %.lr.ph151.i.i229 ]
  %i.awu = trunc nuw i64 %indvars.iv.next220.i.i233.lcssa to i32
  br label %._crit_edge152.i.i216

._crit_edge152.i.i216:                            ; preds = %._crit_edge152.loopexit.i.i235, %bb.dj
  %.2109.lcssa.i.i217 = phi i32 [ %i.alh, %bb.dj ], [ %i.awu, %._crit_edge152.loopexit.i.i235 ]
  br i1 %.not525.i122, label %.loopexit.i.i193, label %.lr.ph157.i.i218

.lr.ph157.i.i218:                                 ; preds = %._crit_edge152.i.i216
  %i.awv = zext i32 %.2109.lcssa.i.i217 to i64    ; 3 uses
  br i1 %i.afp, label %.lr.ph157.split.i.i222.preheader, label %.lr.ph157.split.us.preheader.i.i219

.lr.ph157.split.i.i222.preheader:                 ; preds = %.lr.ph157.i.i218
  br i1 %i.ams, label %.lr.ph157.split.i.i222.epil.preheader, label %.lr.ph157.split.i.i222

.lr.ph157.split.us.preheader.i.i219:              ; preds = %.lr.ph157.i.i218
  %.pn.i.i220 = shl nuw nsw i64 %i.awv, 3
  %scevgep.sink.i.i221 = getelementptr i8, ptr %i.aoc, i64 %.pn.i.i220
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.sink.i.i221, i8 0, i64 %i.alt, i1 false), !tbaa !41
  br label %.loopexit.i.i193

.lr.ph157.split.i.i222:                           ; preds = %.lr.ph157.split.i.i222.preheader, %.lr.ph157.split.i.i222
  %indvars.iv228.i.i223 = phi i64 [ %indvars.iv.next229.i.i227.3, %.lr.ph157.split.i.i222 ], [ %i.awv, %.lr.ph157.split.i.i222.preheader ] ; 5 uses
  %indvars.iv226.i.i224 = phi i64 [ %indvars.iv.next227.i.i226.3, %.lr.ph157.split.i.i222 ], [ 0, %.lr.ph157.split.i.i222.preheader ] ; 5 uses
  %niter702 = phi i64 [ %niter702.next.3, %.lr.ph157.split.i.i222 ], [ 0, %.lr.ph157.split.i.i222.preheader ]
  %gep265.i.i225 = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %i.aww = load i32, ptr %gep265.i.i225, align 4, !tbaa !13
  %i.awx = sext i32 %i.aww to i64
  %i.awy = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.awx
  %i.awz = load double, ptr %i.awy, align 8, !tbaa !41
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv228.i.i223
  store double %i.awz, ptr %i.axa, align 8, !tbaa !41
  %i.axb = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %gep265.i.i225.1 = getelementptr i8, ptr %i.axb, i64 4
  %i.axc = load i32, ptr %gep265.i.i225.1, align 4, !tbaa !13
  %i.axd = sext i32 %i.axc to i64
  %i.axe = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.axd
  %i.axf = load double, ptr %i.axe, align 8, !tbaa !41
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv228.i.i223
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  store double %i.axf, ptr %i.axh, align 8, !tbaa !41
  %i.axi = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %gep265.i.i225.2 = getelementptr i8, ptr %i.axi, i64 8
  %i.axj = load i32, ptr %gep265.i.i225.2, align 4, !tbaa !13
  %i.axk = sext i32 %i.axj to i64
  %i.axl = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.axk
  %i.axm = load double, ptr %i.axl, align 8, !tbaa !41
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv228.i.i223
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 16
  store double %i.axm, ptr %i.axo, align 8, !tbaa !41
  %i.axp = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %gep265.i.i225.3 = getelementptr i8, ptr %i.axp, i64 12
  %i.axq = load i32, ptr %gep265.i.i225.3, align 4, !tbaa !13
  %i.axr = sext i32 %i.axq to i64
  %i.axs = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.axr
  %i.axt = load double, ptr %i.axs, align 8, !tbaa !41
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv228.i.i223
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 24
  store double %i.axt, ptr %i.axv, align 8, !tbaa !41
  %indvars.iv.next227.i.i226.3 = add nuw nsw i64 %indvars.iv226.i.i224, 4 ; 2 uses
  %indvars.iv.next229.i.i227.3 = add nuw nsw i64 %indvars.iv228.i.i223, 4 ; 2 uses
  %niter702.next.3 = add i64 %niter702, 4         ; 2 uses
  %niter702.ncmp.3 = icmp eq i64 %niter702.next.3, %unroll_iter701
  br i1 %niter702.ncmp.3, label %.loopexit.i.i193.loopexit.unr-lcssa, label %.lr.ph157.split.i.i222, !llvm.loop !350

.loopexit.i.i193.loopexit.unr-lcssa:              ; preds = %.lr.ph157.split.i.i222
  br i1 %lcmp.mod699.not, label %.loopexit.i.i193, label %.lr.ph157.split.i.i222.epil.preheader

.lr.ph157.split.i.i222.epil.preheader:            ; preds = %.loopexit.i.i193.loopexit.unr-lcssa, %.lr.ph157.split.i.i222.preheader
  %indvars.iv228.i.i223.epil.init = phi i64 [ %i.awv, %.lr.ph157.split.i.i222.preheader ], [ %indvars.iv.next229.i.i227.3, %.loopexit.i.i193.loopexit.unr-lcssa ]
  %indvars.iv226.i.i224.epil.init = phi i64 [ 0, %.lr.ph157.split.i.i222.preheader ], [ %indvars.iv.next227.i.i226.3, %.loopexit.i.i193.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod700)
  br label %.lr.ph157.split.i.i222.epil

.lr.ph157.split.i.i222.epil:                      ; preds = %.lr.ph157.split.i.i222.epil, %.lr.ph157.split.i.i222.epil.preheader
  %indvars.iv228.i.i223.epil = phi i64 [ %indvars.iv.next229.i.i227.epil, %.lr.ph157.split.i.i222.epil ], [ %indvars.iv228.i.i223.epil.init, %.lr.ph157.split.i.i222.epil.preheader ] ; 2 uses
  %indvars.iv226.i.i224.epil = phi i64 [ %indvars.iv.next227.i.i226.epil, %.lr.ph157.split.i.i222.epil ], [ %indvars.iv226.i.i224.epil.init, %.lr.ph157.split.i.i222.epil.preheader ] ; 2 uses
  %epil.iter698 = phi i64 [ %epil.iter698.next, %.lr.ph157.split.i.i222.epil ], [ 0, %.lr.ph157.split.i.i222.epil.preheader ]
  %gep265.i.i225.epil = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224.epil
  %i.axw = load i32, ptr %gep265.i.i225.epil, align 4, !tbaa !13
  %i.axx = sext i32 %i.axw to i64
  %i.axy = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.axx
  %i.axz = load double, ptr %i.axy, align 8, !tbaa !41
  %i.aya = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv228.i.i223.epil
  store double %i.axz, ptr %i.aya, align 8, !tbaa !41
  %indvars.iv.next227.i.i226.epil = add nuw nsw i64 %indvars.iv226.i.i224.epil, 1
  %indvars.iv.next229.i.i227.epil = add nuw nsw i64 %indvars.iv228.i.i223.epil, 1
  %epil.iter698.next = add i64 %epil.iter698, 1   ; 2 uses
  %epil.iter698.cmp.not = icmp eq i64 %epil.iter698.next, %xtraiter697
  br i1 %epil.iter698.cmp.not, label %.loopexit.i.i193, label %.lr.ph157.split.i.i222.epil, !llvm.loop !351

.loopexit.i.i193:                                 ; preds = %.lr.ph147.i.i210.prol.loopexit, %.lr.ph147.i.i210, %.loopexit.i.i193.loopexit.unr-lcssa, %.lr.ph157.split.i.i222.epil, %middle.block500, %.lr.ph157.split.us.preheader.i.i219, %._crit_edge152.i.i216, %.preheader128.i.i192
  br i1 %.not500.i125, label %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit.i, label %.preheader.lr.ph.i.i194

.preheader.lr.ph.i.i194:                          ; preds = %.loopexit.i.i193
  %i.ayb = load ptr, ptr %i.alw, align 8, !tbaa !118
  %i.ayc = load ptr, ptr %.sroa.0454.2.i110, align 8, !tbaa !118
  br label %.preheader.i330.i195

.preheader.i330.i195:                             ; preds = %._crit_edge161.i.i197, %.preheader.lr.ph.i.i194
  %indvars.iv246.i.i196 = phi i64 [ 0, %.preheader.lr.ph.i.i194 ], [ %indvars.iv.next247.i.i199, %._crit_edge161.i.i197 ] ; 6 uses
  br i1 %i.alu, label %.lr.ph160.preheader.i.i202, label %._crit_edge161.i.i197

.lr.ph160.preheader.i.i202:                       ; preds = %.preheader.i330.i195
  %invariant.gep266.i.i203 = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv246.i.i196 ; 5 uses
  br i1 %i.amt, label %.lr.ph160.i.i204.epil.preheader, label %.lr.ph160.i.i204

.lr.ph160.i.i204:                                 ; preds = %.lr.ph160.preheader.i.i202, %.lr.ph160.i.i204
  %indvars.iv239.i.i205 = phi i64 [ %indvars.iv.next240.i.i208.3, %.lr.ph160.i.i204 ], [ 0, %.lr.ph160.preheader.i.i202 ] ; 5 uses
  %.0105159.i.i206 = phi double [ %i.ayo, %.lr.ph160.i.i204 ], [ 0.000000e+00, %.lr.ph160.preheader.i.i202 ]
  %niter709 = phi i64 [ %niter709.next.3, %.lr.ph160.i.i204 ], [ 0, %.lr.ph160.preheader.i.i202 ]
  %i.ayd = mul nuw nsw i64 %indvars.iv239.i.i205, %i.alx
  %gep267.i.i207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayd
  %i.aye = load double, ptr %gep267.i.i207, align 8, !tbaa !41
  %i.ayf = fadd double %.0105159.i.i206, %i.aye
  %indvars.iv.next240.i.i208 = or disjoint i64 %indvars.iv239.i.i205, 1
  %i.ayg = mul nuw nsw i64 %indvars.iv.next240.i.i208, %i.alx
  %gep267.i.i207.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayg
  %i.ayh = load double, ptr %gep267.i.i207.1, align 8, !tbaa !41
  %i.ayi = fadd double %i.ayf, %i.ayh
  %indvars.iv.next240.i.i208.1 = or disjoint i64 %indvars.iv239.i.i205, 2
  %i.ayj = mul nuw nsw i64 %indvars.iv.next240.i.i208.1, %i.alx
  %gep267.i.i207.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayj
  %i.ayk = load double, ptr %gep267.i.i207.2, align 8, !tbaa !41
  %i.ayl = fadd double %i.ayi, %i.ayk
  %indvars.iv.next240.i.i208.2 = or disjoint i64 %indvars.iv239.i.i205, 3
  %i.aym = mul nuw nsw i64 %indvars.iv.next240.i.i208.2, %i.alx
  %gep267.i.i207.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.aym
  %i.ayn = load double, ptr %gep267.i.i207.3, align 8, !tbaa !41
  %i.ayo = fadd double %i.ayl, %i.ayn             ; 3 uses
  %indvars.iv.next240.i.i208.3 = add nuw nsw i64 %indvars.iv239.i.i205, 4 ; 2 uses
  %niter709.next.3 = add i64 %niter709, 4         ; 2 uses
  %niter709.ncmp.3 = icmp eq i64 %niter709.next.3, %unroll_iter708
  br i1 %niter709.ncmp.3, label %._crit_edge161.i.i197.loopexit.unr-lcssa, label %.lr.ph160.i.i204, !llvm.loop !352

._crit_edge161.i.i197.loopexit.unr-lcssa:         ; preds = %.lr.ph160.i.i204
  br i1 %lcmp.mod705.not, label %._crit_edge161.i.i197, label %.lr.ph160.i.i204.epil.preheader

.lr.ph160.i.i204.epil.preheader:                  ; preds = %._crit_edge161.i.i197.loopexit.unr-lcssa, %.lr.ph160.preheader.i.i202
  %indvars.iv239.i.i205.epil.init = phi i64 [ 0, %.lr.ph160.preheader.i.i202 ], [ %indvars.iv.next240.i.i208.3, %._crit_edge161.i.i197.loopexit.unr-lcssa ]
  %.0105159.i.i206.epil.init = phi double [ 0.000000e+00, %.lr.ph160.preheader.i.i202 ], [ %i.ayo, %._crit_edge161.i.i197.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod707)
  br label %.lr.ph160.i.i204.epil

.lr.ph160.i.i204.epil:                            ; preds = %.lr.ph160.i.i204.epil, %.lr.ph160.i.i204.epil.preheader
  %indvars.iv239.i.i205.epil = phi i64 [ %indvars.iv239.i.i205.epil.init, %.lr.ph160.i.i204.epil.preheader ], [ %indvars.iv.next240.i.i208.epil, %.lr.ph160.i.i204.epil ] ; 2 uses
  %.0105159.i.i206.epil = phi double [ %.0105159.i.i206.epil.init, %.lr.ph160.i.i204.epil.preheader ], [ %i.ayr, %.lr.ph160.i.i204.epil ]
  %epil.iter704 = phi i64 [ 0, %.lr.ph160.i.i204.epil.preheader ], [ %epil.iter704.next, %.lr.ph160.i.i204.epil ]
  %i.ayp = mul nuw nsw i64 %indvars.iv239.i.i205.epil, %i.alx
  %gep267.i.i207.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayp
  %i.ayq = load double, ptr %gep267.i.i207.epil, align 8, !tbaa !41
  %i.ayr = fadd double %.0105159.i.i206.epil, %i.ayq ; 2 uses
  %indvars.iv.next240.i.i208.epil = add nuw nsw i64 %indvars.iv239.i.i205.epil, 1
  %epil.iter704.next = add i64 %epil.iter704, 1   ; 2 uses
  %epil.iter704.cmp.not = icmp eq i64 %epil.iter704.next, %xtraiter703
  br i1 %epil.iter704.cmp.not, label %._crit_edge161.i.i197, label %.lr.ph160.i.i204.epil, !llvm.loop !353

._crit_edge161.i.i197:                            ; preds = %._crit_edge161.i.i197.loopexit.unr-lcssa, %.lr.ph160.i.i204.epil, %.preheader.i330.i195
  %.0105.lcssa.i.i198 = phi double [ 0.000000e+00, %.preheader.i330.i195 ], [ %i.ayo, %._crit_edge161.i.i197.loopexit.unr-lcssa ], [ %i.ayr, %.lr.ph160.i.i204.epil ] ; 2 uses
  %i.ays = getelementptr inbounds nuw [8 x i8], ptr %i.ayb, i64 %indvars.iv246.i.i196
  store double %.0105.lcssa.i.i198, ptr %i.ays, align 8, !tbaa !41
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %.0.i322594.i113, i64 %indvars.iv246.i.i196 ; 2 uses
  %i.ayu = load double, ptr %i.ayt, align 8, !tbaa !41
  %i.ayv = fadd double %.0105.lcssa.i.i198, %i.ayu ; 2 uses
  %i.ayw = fmul double %i.ak, %i.ayv
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %.0251.i143, i64 %indvars.iv246.i.i196
end_hunk_5
