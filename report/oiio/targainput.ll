Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/targainput?download=true
inline.NumInlined: 3090
inline.NumDeleted: 897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %indvars.iv.tr.2 = trunc i64 %indvars.iv.next.1 to i32
  %i.af = shl i32 %indvars.iv.tr.2, 3
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = or i32 %i.ag, %i.ab
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %indvars.iv.tr.3 = trunc i64 %indvars.iv.next.2 to i32
  %i.al = shl i32 %indvars.iv.tr.3, 3
  %i.am = shl i32 %i.ak, %i.al
  %i.an = or i32 %i.am, %i.ah                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !147

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.38)
  br label %bb.n

bb.d:                                             ; preds = %._crit_edge
  switch i32 %5, label %bb.n [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = add i32 %i.o, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16  ; 2 uses
  %i.as = shl i8 %i.ar, 1
  %i.at = and i8 %i.as, -8
  %i.au = lshr i8 %i.ar, 4
  %i.av = and i8 %i.au, 7
  %i.aw = or disjoint i8 %i.av, %i.at
  store i8 %i.aw, ptr %2, align 1, !tbaa !16
  %i.ax = zext i32 %i.o to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = lshr i8 %i.az, 5
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.bc = shl i8 %i.bb, 3
  %i.bd = and i8 %i.bc, 24
  %i.be = or disjoint i8 %i.bd, %i.ba             ; 2 uses
  %i.bf = shl nuw i8 %i.be, 3
  %i.bg = lshr i8 %i.be, 2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %i.bj = load i8, ptr %i.ay, align 1, !tbaa !16  ; 2 uses
  %i.bk = shl i8 %i.bj, 3
  %i.bl = lshr i8 %i.bj, 2
  %i.bm = and i8 %i.bl, 7
  %i.bn = or disjoint i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.bp = add i32 %i.o, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  store i8 %i.bs, ptr %2, align 1, !tbaa !16
  %i.bt = add i32 %i.o, 1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !16
  %i.by = zext i32 %i.o to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !16
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.cc = add i32 %i.o, 2
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  store i8 %i.cf, ptr %2, align 1, !tbaa !16
  %i.cg = add i32 %i.o, 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %i.cl = zext i32 %i.o to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  %i.cp = add i32 %i.o, 3
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !16
  br label %bb.n

bb.h:                                             ; preds = %bb.a, %bb.a
  switch i32 %4, label %bb.n [
    i32 2, label %bb.i
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16  ; 2 uses
  %i.cw = shl i8 %i.cv, 1
  %i.cx = and i8 %i.cw, -8
  %i.cy = lshr i8 %i.cv, 4
  %i.cz = and i8 %i.cy, 7
  %i.da = or disjoint i8 %i.cz, %i.cx
  store i8 %i.da, ptr %2, align 1, !tbaa !16
  %i.db = load i8, ptr %1, align 1, !tbaa !16
  %i.dc = lshr i8 %i.db, 5
  %i.dd = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.de = shl i8 %i.dd, 3
  %i.df = and i8 %i.de, 24
  %i.dg = or disjoint i8 %i.df, %i.dc             ; 2 uses
  %i.dh = shl nuw i8 %i.dg, 3
  %i.di = lshr i8 %i.dg, 2
  %i.dj = or disjoint i8 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !16
  %i.dl = load i8, ptr %1, align 1, !tbaa !16     ; 2 uses
  %i.dm = shl i8 %i.dl, 3
  %i.dn = lshr i8 %i.dl, 2
  %i.do = and i8 %i.dn, 7
  %i.dp = or disjoint i8 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !71
  %i.dt = icmp sgt i32 %i.ds, 3
  br i1 %i.dt, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %1, align 1, !tbaa !16
  %.lobit = ashr i8 %i.du, 7
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %.lobit, ptr %i.dv, align 1, !tbaa !16
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  store i8 %i.dx, ptr %2, align 1, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !16
  %i.eb = load i8, ptr %1, align 1, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !16
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  store i8 %i.ee, ptr %2, align 1, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !16
  %i.ei = load i8, ptr %1, align 1, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.el, ptr %i.em, align 1, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %bb.a, %bb.a
  %i.en = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %1, i64 %i.en, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.g, %bb.f, %bb.e, %bb.d, %bb.i, %bb.j, %bb.l, %bb.k, %bb.h, %bb.c
  %.074 = phi i1 [ false, %bb.c ], [ true, %bb.h ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.m ], [ true, %bb.a ]
  ret i1 %.074
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput7readimgEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0201 = alloca i32, align 4               ; 64 uses
  %i.a = alloca [4 x i8], align 4                 ; 16 uses
  %i.b = alloca [5 x i8], align 1                 ; 9 uses
  %1 = alloca [4 x i8], align 1                   ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 234
  %i.d = load i8, ptr %i.c, align 2, !tbaa !66    ; 2 uses
  %i.e = icmp eq i8 %i.d, 15
  %i.f = lshr i8 %i.d, 3
  %narrow = select i1 %i.e, i8 2, i8 %i.f         ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i8, ptr %i.g, align 8, !tbaa !67    ; 2 uses
  %i.i = icmp eq i8 %i.h, 15
  %i.j = lshr i8 %i.h, 3
  %narrow326 = select i1 %i.i, i8 2, i8 %i.j      ; 5 uses
  %i.k = zext nneg i8 %narrow326 to i32           ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 235
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.n, i1 noundef zeroext false) #30
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #32
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.s = load i8, ptr %i.r, align 1, !tbaa !64
  %.not327.a = icmp eq i8 %i.s, 0
  br i1 %.not327.a, label %bb.j, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 1
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #30
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200

bb.d:                                             ; preds = %bb.c
  %i.x = extractvalue { ptr, i32 } %i.t, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #30 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_end_catch()
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200 unwind label %bb.ci

bb.g:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !139
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, %i.k             ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #32
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161 unwind label %bb.i ; 4 uses

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161: ; preds = %bb.g
  %i.ak = zext nneg i8 %narrow326 to i64
  %i.al = load i16, ptr %i.ae, align 2, !tbaa !139
  %i.am = zext i16 %i.al to i64
  %i.an = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.aj, i64 noundef %i.ak, i64 noundef %i.am)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161
  br i1 %i.an, label %bb.j, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161, %bb.g
  %.sroa.0289.0 = phi ptr [ %i.aj, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit161 ], [ null, %bb.g ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.j:                                             ; preds = %bb.h, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %.sroa.0289.1 = phi ptr [ %i.aj, %bb.h ], [ null, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ] ; 30 uses
  %.0120 = phi i32 [ %i.ah, %bb.h ], [ 0, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0201)
  store i32 0, ptr %.sroa.0201, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !65
  %i.ar = icmp ult i8 %i.aq, 9
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.at = load i32, ptr %i.as, align 8, !tbaa !148 ; 2 uses
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %.critedge154, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.av = add nsw i32 %i.at, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ay = zext nneg i8 %narrow to i64             ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.not330 = icmp eq i8 %narrow, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.pre446.a = load i32, ptr %i.ax, align 4, !tbaa !149
  %.sroa.0201.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx522 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx536 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %xtraiter509 = and i64 %i.ay, 3                 ; 3 uses
  %i.bd = icmp samesign ult i8 %narrow, 4
  %unroll_iter514 = and i64 %i.ay, 28
  %lcmp.mod511.not = icmp eq i64 %xtraiter509, 0
  %lcmp.mod513 = icmp ne i64 %xtraiter509, 0
  %.sroa.0201.1..sroa_idx523 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx537 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.3..sroa_idx550 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 3
  %.sroa.0201.1..sroa_idx524 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx538 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  %.sroa.0201.1..sroa_idx525 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1
  %.sroa.0201.2..sroa_idx539 = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.be = phi i32 [ %.pre446.a, %.preheader.lr.ph ], [ %i.fy, %.critedge ] ; 2 uses
  %.0119383 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.fz, %.critedge ] ; 3 uses
  %.not145380 = icmp sgt i32 %i.be, 0
  br i1 %.not145380, label %.lr.ph382, label %.critedge

.lr.ph382:                                        ; preds = %.preheader, %bb.aa
  %.0118381 = phi i64 [ %i.fv, %bb.aa ], [ 0, %.preheader ] ; 2 uses
  %i.bf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef %i.ay, i64 noundef 1)
          to label %bb.l unwind label %.loopexit333

bb.l:                                             ; preds = %.lr.ph382
  br i1 %i.bf, label %bb.n, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit

.loopexit333:                                     ; preds = %.lr.ph382
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit333
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit333 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.cg

bb.n:                                             ; preds = %bb.l
  %i.bg = load i8, ptr %i.ap, align 2, !tbaa !65
  switch i8 %i.bg, label %bb.aa [
    i8 1, label %bb.o
    i8 9, label %bb.o
    i8 2, label %bb.u
    i8 10, label %bb.u
    i8 3, label %bb.z
    i8 11, label %bb.z
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  br i1 %.not330, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod511.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07375.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.co, %._crit_edge.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod513)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.07375.i.epil = phi i32 [ %i.bm, %.lr.ph.i.epil ], [ %.07375.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter510 = phi i64 [ %epil.iter510.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.epil
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = zext i8 %i.bi to i32
  %indvars.iv.tr.i.epil = trunc i64 %indvars.iv.i.epil to i32
  %i.bk = shl i32 %indvars.iv.tr.i.epil, 3
  %i.bl = shl i32 %i.bj, %i.bk
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18TGAInput7readimgEv:bb.a
  %indvars.iv.tr.i185.2 = trunc i64 %indvars.iv.next.i186.1 to i32
  %i.ni = shl i32 %indvars.iv.tr.i185.2, 3
  %i.nj = shl i32 %i.nh, %i.ni
  %i.nk = or i32 %i.nj, %i.ne
  %indvars.iv.next.i186.2 = or disjoint i64 %indvars.iv.i183, 3 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i186.2
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !16
  %i.nn = zext i8 %i.nm to i32
  %indvars.iv.tr.i185.3 = trunc i64 %indvars.iv.next.i186.2 to i32
  %i.no = shl i32 %indvars.iv.tr.i185.3, 3
  %i.np = shl i32 %i.nn, %i.no
  %i.nq = or i32 %i.np, %i.nk                     ; 3 uses
  %indvars.iv.next.i186.3 = add nuw nsw i64 %indvars.iv.i183, 4 ; 2 uses
  %niter508.next.3 = add i64 %niter508, 4         ; 2 uses
  %niter508.ncmp.3 = icmp eq i64 %niter508.next.3, %unroll_iter507
  br i1 %niter508.ncmp.3, label %._crit_edge.i178.loopexit.unr-lcssa, label %.lr.ph.i182, !llvm.loop !147

bb.bb:                                            ; preds = %._crit_edge.i178
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull @.str.38)
          to label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307 unwind label %.loopexit.split-lp336

bb.bc:                                            ; preds = %._crit_edge.i178
  switch i8 %narrow326, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread [
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.nr = add i32 %i.ms, 1
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !16  ; 3 uses
  %i.nv = shl i8 %i.nu, 1
  %i.nw = and i8 %i.nv, -8
  %i.nx = lshr i8 %i.nu, 4
  %i.ny = and i8 %i.nx, 7
  %i.nz = or disjoint i8 %i.ny, %i.nw
  store i8 %i.nz, ptr %.sroa.0201, align 4, !tbaa !16
  %i.oa = zext i32 %i.ms to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !16  ; 3 uses
  %i.od = lshr i8 %i.oc, 5
  %i.oe = shl i8 %i.nu, 3
  %i.of = and i8 %i.oe, 24
  %i.og = or disjoint i8 %i.od, %i.of             ; 2 uses
  %i.oh = shl nuw i8 %i.og, 3
  %i.oi = lshr i8 %i.og, 2
  %i.oj = or disjoint i8 %i.oi, %i.oh
  store i8 %i.oj, ptr %.sroa.0201.1..sroa_idx535, align 1, !tbaa !16
  %i.ok = shl i8 %i.oc, 3
  %i.ol = lshr i8 %i.oc, 2
  %i.om = and i8 %i.ol, 7
  %i.on = or disjoint i8 %i.om, %i.ok
  store i8 %i.on, ptr %.sroa.0201.2..sroa_idx549, align 2, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.be:                                            ; preds = %bb.bc
  %i.oo = add i32 %i.ms, 2
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !16
  store i8 %i.or, ptr %.sroa.0201, align 4, !tbaa !16
  %i.os = add i32 %i.ms, 1
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !16
  store i8 %i.ov, ptr %.sroa.0201.1..sroa_idx534, align 1, !tbaa !16
  %i.ow = zext i32 %i.ms to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !16
  store i8 %i.oy, ptr %.sroa.0201.2..sroa_idx548, align 2, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bf:                                            ; preds = %bb.bc
  %i.oz = add i32 %i.ms, 2
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !16
  store i8 %i.pc, ptr %.sroa.0201, align 4, !tbaa !16
  %i.pd = add i32 %i.ms, 1
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !16
  store i8 %i.pg, ptr %.sroa.0201.1..sroa_idx533, align 1, !tbaa !16
  %i.ph = zext i32 %i.ms to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !16
  store i8 %i.pj, ptr %.sroa.0201.2..sroa_idx547, align 2, !tbaa !16
  %i.pk = add i32 %i.ms, 3
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0289.1, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !16
  store i8 %i.pn, ptr %.sroa.0201.3..sroa_idx554, align 1, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bg:                                            ; preds = %bb.az, %bb.az
  switch i8 %narrow, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread [
    i8 2, label %bb.bh
    i8 3, label %bb.bj
    i8 4, label %bb.bk
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.po = load i8, ptr %i.gk, align 1, !tbaa !16  ; 3 uses
  %i.pp = shl i8 %i.po, 1
  %i.pq = and i8 %i.pp, -8
  %i.pr = lshr i8 %i.po, 4
  %i.ps = and i8 %i.pr, 7
  %i.pt = or disjoint i8 %i.ps, %i.pq
  store i8 %i.pt, ptr %.sroa.0201, align 4, !tbaa !16
  %i.pu = load i8, ptr %i.gh, align 1, !tbaa !16  ; 4 uses
  %i.pv = lshr i8 %i.pu, 5
  %i.pw = shl i8 %i.po, 3
  %i.px = and i8 %i.pw, 24
  %i.py = or disjoint i8 %i.pv, %i.px             ; 2 uses
  %i.pz = shl nuw i8 %i.py, 3
  %i.qa = lshr i8 %i.py, 2
  %i.qb = or disjoint i8 %i.qa, %i.pz
  store i8 %i.qb, ptr %.sroa.0201.1..sroa_idx532, align 1, !tbaa !16
  %i.qc = shl i8 %i.pu, 3
  %i.qd = lshr i8 %i.pu, 2
  %i.qe = and i8 %i.qd, 7
  %i.qf = or disjoint i8 %i.qe, %i.qc
  store i8 %i.qf, ptr %.sroa.0201.2..sroa_idx546, align 2, !tbaa !16
  %i.qg = load i32, ptr %i.gl, align 4, !tbaa !71
  %i.qh = icmp sgt i32 %i.qg, 3
  br i1 %i.qh, label %bb.bi, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bi:                                            ; preds = %bb.bh
  %.lobit.i177 = ashr i8 %i.pu, 7
  store i8 %.lobit.i177, ptr %.sroa.0201.3..sroa_idx553, align 1, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bj:                                            ; preds = %bb.bg
  %i.qi = load i8, ptr %i.gj, align 1, !tbaa !16
  store i8 %i.qi, ptr %.sroa.0201, align 4, !tbaa !16
  %i.qj = load i8, ptr %i.gk, align 1, !tbaa !16
  store i8 %i.qj, ptr %.sroa.0201.1..sroa_idx531, align 1, !tbaa !16
  %i.qk = load i8, ptr %i.gh, align 1, !tbaa !16
  store i8 %i.qk, ptr %.sroa.0201.2..sroa_idx545, align 2, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bk:                                            ; preds = %bb.bg
  %i.ql = load <4 x i8>, ptr %i.gh, align 1, !tbaa !16
  %i.qm = shufflevector <4 x i8> %i.ql, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %i.qm, ptr %.sroa.0201, align 4, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bl:                                            ; preds = %bb.az, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0201, ptr nonnull align 1 %i.gh, i64 %i.gi, i1 false)
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread: ; preds = %bb.bl, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bh, %bb.bi, %bb.bk, %bb.bj, %bb.bg, %bb.az, %.preheader334
  %.6114 = phi i64 [ %.4112374, %.preheader334 ], [ %.5113, %bb.az ], [ %.5113, %bb.bg ], [ %.5113, %bb.bj ], [ %.5113, %bb.bk ], [ %.5113, %bb.bi ], [ %.5113, %bb.bh ], [ %.5113, %bb.bc ], [ %.5113, %bb.bd ], [ %.5113, %bb.be ], [ %.5113, %bb.bf ], [ %.5113, %bb.bl ] ; 2 uses
  %.6105 = phi i64 [ %.4103375, %.preheader334 ], [ %.5104, %bb.az ], [ %.5104, %bb.bg ], [ %.5104, %bb.bj ], [ %.5104, %bb.bk ], [ %.5104, %bb.bi ], [ %.5104, %bb.bh ], [ %.5104, %bb.bc ], [ %.5104, %bb.bd ], [ %.5104, %bb.be ], [ %.5104, %bb.bf ], [ %.5104, %bb.bl ] ; 2 uses
  %i.qn = add nuw nsw i32 %.097376, 1
  %exitcond402.not.a = icmp eq i32 %.097376, %i.gu
  br i1 %exitcond402.not.a, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189, label %.preheader334, !llvm.loop !156

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189: ; preds = %bb.at, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread
  %.8116 = phi i64 [ %.6114, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.3111, %bb.at ] ; 2 uses
  %.8107 = phi i64 [ %.6105, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.2101, %bb.at ]
  %i.qo = add nsw i64 %.8107, 1                   ; 2 uses
  %i.qp = load i32, ptr %i.gf, align 4, !tbaa !149 ; 2 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %i.qo, %i.qq
  br i1 %i.qr, label %.lr.ph, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175, !llvm.loop !157

bb.bm:                                            ; preds = %.loopexit335, %.loopexit.split-lp336, %.loopexit345, %.loopexit.split-lp346
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp348, %.loopexit.split-lp346 ], [ %lpad.loopexit347, %.loopexit345 ], [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.cg

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175: ; preds = %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189, %.preheader343
  %i.qs = phi i32 [ %i.gp, %.preheader343 ], [ %i.qp, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ]
  %.9117314 = phi i64 [ %.0108379, %.preheader343 ], [ %.8116, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ] ; 2 uses
  %i.qt = add nsw i64 %.9117314, -1
  %i.qu = icmp slt i64 %.9117314, 1
  br i1 %i.qu, label %.critedge156, label %.preheader343, !llvm.loop !158

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307: ; preds = %bb.ac, %bb.ay, %bb.bb, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

.critedge154:                                     ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bn

.critedge156:                                     ; preds = %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175, %bb.ar, %bb.av, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge156, %.critedge154
  %i.qv = load i8, ptr %i.l, align 1, !tbaa !68
  %i.qw = and i8 %i.qv, 16
  %.not146 = icmp eq i8 %i.qw, 0
  br i1 %.not146, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !148 ; 2 uses
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph388, label %._crit_edge389

.lr.ph388:                                        ; preds = %bb.bo
  %i.rc = load i32, ptr %i.qy, align 4, !tbaa !149 ; 2 uses
  %i.rd = load i32, ptr %i.qx, align 4, !tbaa !71 ; 2 uses
  %i.re = mul nsw i32 %i.rc, %i.rd
  %i.rf = sext i32 %i.re to i64
  %i.rg = sext i32 %i.rd to i64                   ; 3 uses
  br label %bb.bp

._crit_edge389:                                   ; preds = %._crit_edge, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph388, %._crit_edge
  %i.rh = phi i32 [ %i.ra, %.lr.ph388 ], [ %i.rn, %._crit_edge ]
  %i.ri = phi i32 [ %i.rc, %.lr.ph388 ], [ %i.ro, %._crit_edge ] ; 3 uses
  %.096386 = phi i64 [ 0, %.lr.ph388 ], [ %i.rp, %._crit_edge ] ; 2 uses
  %i.rj = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.rk = mul nsw i64 %.096386, %i.rf
  %i.rl = getelementptr inbounds i8, ptr %i.rj, i64 %i.rk ; 2 uses
  %i.rm = icmp sgt i32 %i.ri, 1
  br i1 %i.rm, label %.lr.ph385, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph385
  %.pre447 = load i32, ptr %i.qz, align 8, !tbaa !148
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bp
  %i.rn = phi i32 [ %.pre447, %._crit_edge.loopexit ], [ %i.rh, %bb.bp ] ; 2 uses
  %i.ro = phi i32 [ %i.sd, %._crit_edge.loopexit ], [ %i.ri, %bb.bp ]
  %i.rp = add nuw nsw i64 %.096386, 1             ; 2 uses
  %i.rq = sext i32 %i.rn to i64
  %i.rr = icmp slt i64 %i.rp, %i.rq
  br i1 %i.rr, label %bb.bp, label %._crit_edge389, !llvm.loop !159

.lr.ph385:                                        ; preds = %bb.bp, %.lr.ph385
  %i.rs = phi i32 [ %i.sd, %.lr.ph385 ], [ %i.ri, %bb.bp ]
  %.095384 = phi i64 [ %i.sc, %.lr.ph385 ], [ 0, %bb.bp ] ; 3 uses
  %i.rt = load i32, ptr %i.qx, align 4, !tbaa !71
  %i.ru = sext i32 %i.rt to i64                   ; 2 uses
  %i.rv = mul nsw i64 %.095384, %i.ru
  %i.rw = getelementptr inbounds i8, ptr %i.rl, i64 %i.rv ; 2 uses
  %i.rx = add nsw i32 %i.rs, -1
  %i.ry = sext i32 %i.rx to i64
  %i.rz = sub nsw i64 %i.ry, %.095384
  %i.sa = mul nsw i64 %i.rz, %i.ru
  %i.sb = getelementptr inbounds i8, ptr %i.rl, i64 %i.sa ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.rw, i64 %i.rg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rw, ptr align 1 %i.sb, i64 %i.rg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sb, ptr nonnull align 1 %1, i64 %i.rg, i1 false)
  %i.sc = add nuw nsw i64 %.095384, 1             ; 2 uses
  %i.sd = load i32, ptr %i.qy, align 4, !tbaa !149 ; 3 uses
  %i.se = sdiv i32 %i.sd, 2
  %i.sf = sext i32 %i.se to i64
  %i.sg = icmp slt i64 %i.sc, %i.sf
  br i1 %i.sg, label %.lr.ph385, label %._crit_edge.loopexit, !llvm.loop !160

bb.bq:                                            ; preds = %._crit_edge389, %bb.bn
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !74
  %.not147 = icmp eq i32 %i.si, -1
  br i1 %.not147, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.sk = load i8, ptr %i.sj, align 8, !tbaa !75, !range !76, !noundef !77
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !18
  %.not148 = icmp eq i32 %i.sn, 4
  br i1 %.not148, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !59
  %i.sq = icmp eq i16 %i.sp, 1
  %i.sr = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.n) #30 ; 4 uses
  %i.ss = icmp sgt i64 %i.sr, 0                   ; 3 uses
  br i1 %i.ss, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %bb.bt
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.su = load i32, ptr %i.st, align 4, !tbaa !71
  %i.sv = sext i32 %i.su to i64
  %i.sw = load i32, ptr %i.sh, align 8, !tbaa !74
  %i.sx = sext i32 %i.sw to i64
  %i.sy = load ptr, ptr %i.m, align 8, !tbaa !17
  %invariant.gep = getelementptr i8, ptr %i.sy, i64 %i.sx
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bv
  %i.sz = add nuw nsw i64 %.0390, 1               ; 2 uses
  %exitcond403.not = icmp eq i64 %i.sz, %i.sr
  br i1 %exitcond403.not, label %._crit_edge393, label %bb.bv, !llvm.loop !161

bb.bv:                                            ; preds = %.lr.ph392, %bb.bu
  %.0390 = phi i64 [ 0, %.lr.ph392 ], [ %i.sz, %bb.bu ] ; 2 uses
  %i.ta = mul nsw i64 %.0390, %i.sv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ta
  %i.tb = load i8, ptr %gep, align 1, !tbaa !16
  %.not149 = icmp eq i8 %i.tb, 0
  br i1 %.not149, label %bb.bu, label %.critedge158

._crit_edge393:                                   ; preds = %bb.bu, %bb.bt
  br i1 %i.sq, label %.loopexit, label %.critedge158

.critedge158:                                     ; preds = %bb.bv, %._crit_edge393
  store ptr @.str.36, ptr %2, align 8, !tbaa !61
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.tc, align 8, !tbaa !63
  %i.td = invoke noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull dead_on_return %2, float noundef 1.000000e+00)
          to label %bb.bw unwind label %bb.cf     ; 2 uses

bb.bw:                                            ; preds = %.critedge158
  %i.te = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !71 ; 8 uses
  %i.th = load i32, ptr %i.sh, align 8, !tbaa !74 ; 4 uses
  %i.ti = fcmp oeq float %i.td, 1.000000e+00
  br i1 %i.ti, label %.preheader58.i, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.bw
  br i1 %i.ss, label %.lr.ph64.i, label %.loopexit

.lr.ph64.i:                                       ; preds = %.preheader59.i
  %i.tj = sext i32 %i.th to i64
  %i.tk = icmp sgt i32 %i.tg, 0
  %i.tl = sext i32 %i.tg to i64
  br i1 %i.tk, label %.lr.ph.preheader.i190, label %.loopexit

.lr.ph.preheader.i190:                            ; preds = %.lr.ph64.i
  %i.tm = zext i32 %i.th to i64                   ; 3 uses
  %wide.trip.count.i191 = zext nneg i32 %i.tg to i64 ; 2 uses
  %xtraiter516 = and i64 %wide.trip.count.i191, 1
  %i.tn = icmp eq i32 %i.tg, 1
  %unroll_iter520 = and i64 %wide.trip.count.i191, 2147483646
  %lcmp.mod518.not = icmp eq i64 %xtraiter516, 0
  %lcmp.mod519 = trunc i32 %i.tg to i1
  br label %.lr.ph.i192

.preheader58.i:                                   ; preds = %bb.bw
  br i1 %i.ss, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %.preheader58.i
  %i.to = icmp sgt i32 %i.tg, 0
  %i.tp = sext i32 %i.th to i64
  %i.tq = sext i32 %i.tg to i64
  br i1 %i.to, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.tr = zext i32 %i.th to i64
  %wide.trip.count76.i = zext nneg i32 %i.tg to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge67.i, %.preheader.preheader.i
  %.03769.i = phi ptr [ %i.tu, %._crit_edge67.i ], [ %i.te, %.preheader.preheader.i ] ; 3 uses
  %.03968.i = phi i64 [ %i.tt, %._crit_edge67.i ], [ 0, %.preheader.preheader.i ]
  %i.ts = getelementptr inbounds i8, ptr %.03769.i, i64 %i.tp
  br label %bb.bx

._crit_edge67.i:                                  ; preds = %bb.bz
  %i.tt = add nuw nsw i64 %.03968.i, 1            ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.03769.i, i64 %i.tq
  %exitcond78.not.i = icmp eq i64 %i.tt, %i.sr
  br i1 %exitcond78.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !162

bb.bx:                                            ; preds = %bb.bz, %.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next74.i, %bb.bz ] ; 3 uses
  %.not43.i = icmp eq i64 %indvars.iv73.i, %i.tr
  br i1 %.not43.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tv = getelementptr inbounds nuw i8, ptr %.03769.i, i64 %indvars.iv73.i ; 2 uses
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !16
  %i.tx = zext i8 %i.tw to i16
  %i.ty = load i8, ptr %i.ts, align 1, !tbaa !16
  %i.tz = zext i8 %i.ty to i16
  %i.ua = mul nuw i16 %i.tz, %i.tx
  %i.ub = udiv i16 %i.ua, 255
  %i.uc = trunc nuw i16 %i.ub to i8
  store i8 %i.uc, ptr %i.tv, align 1, !tbaa !16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %._crit_edge67.i, label %bb.bx, !llvm.loop !163

.lr.ph.i192:                                      ; preds = %._crit_edge.i196, %.lr.ph.preheader.i190
  %.03663.i = phi i64 [ %i.wi, %._crit_edge.i196 ], [ 0, %.lr.ph.preheader.i190 ]
  %.162.i = phi ptr [ %i.wj, %._crit_edge.i196 ], [ %i.te, %.lr.ph.preheader.i190 ] ; 5 uses
  %i.ud = getelementptr inbounds i8, ptr %.162.i, i64 %i.tj
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !16
  %i.uf = uitofp i8 %i.ue to float
  %i.ug = fmul nnan float %i.uf, f0x3B808081      ; 2 uses
  %.inv.i = fcmp oge float %i.ug, f0x00800000
  %.0.i.i = select i1 %.inv.i, float %i.ug, float f0x00800000 ; 2 uses
  %i.uh = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.ui = bitcast float %.0.i.i to i32
  %i.uj = select i1 %i.uh, i32 2139095039, i32 %i.ui ; 2 uses
  %i.uk = lshr i32 %i.uj, 23
  %i.ul = add nsw i32 %i.uk, -127
  %i.um = and i32 %i.uj, 8388607
  %i.un = or disjoint i32 %i.um, 1065353216
  %i.uo = bitcast i32 %i.un to float
  %i.up = fadd float %i.uo, -1.000000e+00         ; 9 uses
  %i.uq = fmul float %i.up, %i.up                 ; 2 uses
  %i.ur = fmul float %i.uq, %i.uq
  %i.us = fmul nnan contract float %i.up, f0x3C188B0D
  %i.ut = fsub nnan contract float f0x3D5541C9, %i.us
  %i.uu = fmul nnan contract float %i.up, f0x3EF5162D
  %i.uv = fadd nnan contract float %i.uu, f0xBF389E54
  %i.uw = fmul contract float %i.up, %i.ut
  %i.ux = fadd contract float %i.uw, f0xBE0CD4FD
  %i.uy = fmul contract float %i.up, %i.ux
  %i.uz = fadd contract float %i.uy, f0x3E77ADBD
  %i.va = fmul contract float %i.up, %i.uz
  %i.vb = fadd contract float %i.va, f0xBEB1D206
  %i.vc = fmul contract float %i.up, %i.uv
  %i.vd = fadd contract float %i.vc, f0x3FB8AA10
  %i.ve = fmul float %i.up, %i.vd
  %i.vf = call float @llvm.fmuladd.f32(float %i.ur, float %i.vb, float %i.ve)
  %i.vg = sitofp i32 %i.ul to float
  %i.vh = fadd float %i.vf, %i.vg
  %i.vi = fmul float %i.td, %i.vh                 ; 2 uses
  %.inv57.i = fcmp oge float %i.vi, -1.260000e+02
  %.0.i44.i = select i1 %.inv57.i, float %i.vi, float -1.260000e+02 ; 2 uses
  %i.vj = fcmp ogt float %.0.i44.i, 1.260000e+02
  %.1.i45.i = select i1 %i.vj, float 1.260000e+02, float %.0.i44.i ; 2 uses
  %i.vk = fptosi float %.1.i45.i to i32           ; 2 uses
  %i.vl = sitofp i32 %i.vk to float
  %i.vm = fsub float %i.vl, %.1.i45.i
  %i.vn = fadd float %i.vm, 1.000000e+00
  %i.vo = fsub float 1.000000e+00, %i.vn          ; 5 uses
  %i.vp = fmul contract float %i.vo, f0x3AAEC44E
  %i.vq = fadd contract float %i.vp, f0x3C20BB9A
  %i.vr = fmul contract float %i.vo, %i.vq
  %i.vs = fadd contract float %i.vr, f0x3D636733
  %i.vt = fmul contract float %i.vo, %i.vs
  %i.vu = fadd contract float %i.vt, f0x3E75F192
  %i.vv = fmul contract float %i.vo, %i.vu
  %i.vw = fadd contract float %i.vv, f0x3F3171F1
  %i.vx = fmul contract float %i.vo, %i.vw
  %i.vy = fadd contract float %i.vx, 1.000000e+00
  %i.vz = bitcast float %i.vy to i32
  %i.wa = shl i32 %i.vk, 23
  %i.wb = add i32 %i.wa, %i.vz
  %i.wc = bitcast i32 %i.wb to float              ; 3 uses
  br i1 %i.tn, label %.epil.preheader, label %.lr.ph.i192.new

._crit_edge.i196.unr-lcssa:                       ; preds = %bb.ce
  br i1 %lcmp.mod518.not, label %._crit_edge.i196, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i196.unr-lcssa, %.lr.ph.i192
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i192 ], [ %indvars.iv.next.i194.1, %._crit_edge.i196.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod519)
  %.not.i.epil = icmp eq i64 %indvars.iv.i193.epil.init, %i.tm
  br i1 %.not.i.epil, label %._crit_edge.i196, label %bb.ca

bb.ca:                                            ; preds = %.epil.preheader
  %i.wd = getelementptr inbounds nuw i8, ptr %.162.i, i64 %indvars.iv.i193.epil.init ; 2 uses
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !16
  %i.wf = uitofp i8 %i.we to float
  %i.wg = fmul float %i.wc, %i.wf
  %i.wh = fptoui float %i.wg to i8
  store i8 %i.wh, ptr %i.wd, align 1, !tbaa !16
  br label %._crit_edge.i196

._crit_edge.i196:                                 ; preds = %.epil.preheader, %bb.ca, %._crit_edge.i196.unr-lcssa
  %i.wi = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.162.i, i64 %i.tl
  %exitcond72.not.i = icmp eq i64 %i.wi, %i.sr
  br i1 %exitcond72.not.i, label %.loopexit, label %.lr.ph.i192, !llvm.loop !164

.lr.ph.i192.new:                                  ; preds = %.lr.ph.i192, %bb.ce
  %indvars.iv.i193 = phi i64 [ %indvars.iv.next.i194.1, %bb.ce ], [ 0, %.lr.ph.i192 ] ; 4 uses
  %niter521 = phi i64 [ %niter521.next.1, %bb.ce ], [ 0, %.lr.ph.i192 ]
  %.not.i = icmp eq i64 %indvars.iv.i193, %i.tm
  br i1 %.not.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i192.new
  %i.wk = getelementptr inbounds nuw i8, ptr %.162.i, i64 %indvars.iv.i193 ; 2 uses
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !16
  %i.wm = uitofp i8 %i.wl to float
  %i.wn = fmul float %i.wc, %i.wm
  %i.wo = fptoui float %i.wn to i8
  store i8 %i.wo, ptr %i.wk, align 1, !tbaa !16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i192.new
  %indvars.iv.next.i194 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i194, %i.tm
  br i1 %.not.i.1, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wp = getelementptr inbounds nuw i8, ptr %.162.i, i64 %indvars.iv.next.i194 ; 2 uses
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !16
  %i.wr = uitofp i8 %i.wq to float
  %i.ws = fmul float %i.wc, %i.wr
  %i.wt = fptoui float %i.ws to i8
  store i8 %i.wt, ptr %i.wp, align 1, !tbaa !16
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %indvars.iv.next.i194.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter521.next.1 = add i64 %niter521, 2         ; 2 uses
  %niter521.ncmp.1 = icmp eq i64 %niter521.next.1, %unroll_iter520
  br i1 %niter521.ncmp.1, label %._crit_edge.i196.unr-lcssa, label %.lr.ph.i192.new, !llvm.loop !165

bb.cf:                                            ; preds = %.critedge158
  %i.wu = landingpad { ptr, i32 }
end_hunk_1
