Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUIComboBox?download=true
inline.NumInlined: 524
inline.NumDeleted: 238
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gui12CGUIComboBox16setTextAlignmentENS_14EGUI_ALIGNMENTES1_:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN3gui12CGUIComboBox19setMaxSelectionRowsEj(ptr noundef nonnull align 8 dereferenceable(408) initializes((388, 392)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 %1, ptr %i.a, align 4, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gui12CGUIComboBox13openCloseMenuEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  tail call void @_ZN3gui12CGUIComboBox13openCloseMenuEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gui12CGUIComboBox13openCloseMenuEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.SEvent, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %0) ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(308) %i.i)
  store ptr null, ptr %i.a, align 8, !tbaa !96
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 3 uses
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  store i32 1, ptr %1, align 8, !tbaa !99
  store ptr %0, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 8, ptr %i.r, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(308) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.v, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(308) %i.w, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.aa

bb.f:                                             ; preds = %.thread, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 40
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 376
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %i.au = icmp ult i32 %i.at, %i.ap
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %0, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 376
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.015 = phi i32 [ %i.ay, %bb.g ], [ %i.ap, %bb.f ]
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.015, i32 1) ; 2 uses
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 0) ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !63
  %.not19 = icmp eq ptr %i.bc, null
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.1)
  %.sroa.36.0.extract.shift = lshr i64 %i.bh, 32
  %.sroa.36.0.extract.trunc = trunc nuw i64 %.sroa.36.0.extract.shift to i32
  %i.bi = add i32 %.sroa.36.0.extract.trunc, 4
  %i.bj = mul i32 %i.bi, %spec.store.select
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %i.bj, %bb.i ], [ %spec.store.select, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !88
  %i.bp = sub nsw i32 %i.bm, %i.bo                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !85
  %i.bs = load i32, ptr %i.bk, align 8, !tbaa !86
  %i.bt = sub nsw i32 %i.br, %i.bs
  %i.bu = add i32 %i.bp, %.1
  %.sroa.034.4.insert.ext = zext i32 %i.bp to i64
  %.sroa.034.4.insert.shift = shl nuw i64 %.sroa.034.4.insert.ext, 32
  %.sroa.6.8.insert.ext = zext i32 %i.bt to i64
  %.sroa.6.12.insert.ext = zext i32 %i.bu to i64
  %.sroa.6.12.insert.shift = shl nuw i64 %.sroa.6.12.insert.ext, 32
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.6.12.insert.shift, %.sroa.6.8.insert.ext
  %i.bv = call noalias noundef nonnull dereferenceable(456) ptr @_Znwm(i64 noundef 456) #23 ; 5 uses
  %i.bw = load ptr, ptr %i.ab, align 8, !tbaa !64
  invoke void @_ZN3gui11CGUIListBoxC1EPNS_15IGUIEnvironmentEPNS_11IGUIElementEiN4core4rectIiEEbbb(ptr noundef nonnull align 8 dereferenceable(437) %i.bv, ptr noundef %i.bw, ptr noundef nonnull %0, i32 noundef -1, i64 %.sroa.034.4.insert.shift, i64 %.sroa.6.12.insert.insert, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !96
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(308) %i.bv, i1 noundef zeroext true)
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !96  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 163
  store i8 1, ptr %i.cb, align 1, !tbaa !100
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(308) %i.ca), !inline_history !128
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !96  ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !17
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !94 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cn = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cn, ptr %i.ck, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %bb.n, label %_ZNK17IReferenceCounted4dropEv.exit

bb.n:                                             ; preds = %bb.m
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(12) %i.cj) #21, !inline_history !4
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.m, %bb.n
  %i.cr = phi ptr [ %i.cf, %bb.m ], [ %.pre, %bb.n ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !65
  %.sroa.3.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.3.12.extract.trunc = trunc nuw i64 %.sroa.3.12.extract.shift to i32
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef ptr %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.cx, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..sroa_idx.i21, align 8, !tbaa !65
  %.sroa.433.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i22, 32
  %.sroa.433.12.extract.trunc = trunc nuw i64 %.sroa.433.12.extract.shift to i32
  %.sroa.032.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i20, 32
  %.sroa.032.4.extract.trunc = trunc nuw i64 %.sroa.032.4.extract.shift to i32
  %i.cy = sub nsw i32 %.sroa.433.12.extract.trunc, %.sroa.032.4.extract.trunc
  %i.cz = icmp slt i32 %i.cy, %.sroa.3.12.extract.trunc
  br i1 %i.cz, label %bb.o, label %bb.y

bb.o:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !96  ; 17 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.db, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %.sroa.2.0.copyload.i27 = load i64, ptr %.sroa.2.0..sroa_idx.i26, align 8, !tbaa !65
  %.sroa.4.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i27, 32
  %.sroa.4.12.extract.trunc = trunc nuw i64 %.sroa.4.12.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i25, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %.neg = sub nsw i32 %.sroa.0.4.extract.trunc, %.sroa.4.12.extract.trunc ; 2 uses
  %i.dc = load i32, ptr %i.bq, align 8, !tbaa !85
  %i.dd = load i32, ptr %i.bk, align 8, !tbaa !86
  %i.de = sub nsw i32 %i.dc, %i.dd                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !74 ; 3 uses
  %.not.i30 = icmp eq ptr %i.dg, null
  br i1 %.not.i30, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dh, align 8, !tbaa !65 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !65 ; 2 uses
  %i.di = sub i64 %.sroa.2.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %.sroa.7.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32
  %.sroa.016.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.016.4.extract.trunc.i = trunc nuw i64 %.sroa.016.4.extract.shift.i to i32
  %i.dj = sub nsw i32 %.sroa.7.12.extract.trunc.i, %.sroa.016.4.extract.trunc.i
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.di to i32
  %i.dk = sitofp i32 %.sroa.01.0.extract.trunc.i to float ; 2 uses
  %i.dl = sitofp i32 %i.dj to float               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 280
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !77
  %i.do = icmp eq i32 %i.dn, 3
  br i1 %i.do, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dp = fdiv float 0.000000e+00, %i.dk
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  store float %i.dp, ptr %i.dq, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 284
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !79
  %i.dt = icmp eq i32 %i.ds, 3
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.du = sitofp i32 %i.de to float
  %i.dv = fdiv float %i.du, %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  store float %i.dv, ptr %i.dw, align 8, !tbaa !80
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 288
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !81
  %i.dz = icmp eq i32 %i.dy, 3
  br i1 %i.dz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ea = sitofp i32 %.neg to float
  %i.eb = fdiv float %i.ea, %i.dl
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 132
  store float %i.eb, ptr %i.ec, align 4, !tbaa !82
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 292
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !83
  %i.ef = icmp eq i32 %i.ee, 3
  br i1 %i.ef, label %bb.w, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

bb.w:                                             ; preds = %bb.v
  %i.eg = fdiv float 0.000000e+00, %i.dl
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 140
  store float %i.eg, ptr %i.eh, align 4, !tbaa !84
  br label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit: ; preds = %bb.o, %bb.v, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  store i32 0, ptr %i.ei, align 8, !tbaa !65
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 100
  store i32 %.neg, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !65
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  store i32 %i.de, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !65
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 108
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !65
  %i.ej = load ptr, ptr %i.da, align 8, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(308) %i.da), !inline_history !2
  br label %bb.y

bb.x:                                             ; preds = %bb.j
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 456) #22
  resume { ptr, i32 } %i.em

bb.y:                                             ; preds = %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, %_ZNK17IReferenceCounted4dropEv.exit
  %i.en = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.eo = load ptr, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 40                ; 2 uses
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit, %bb.y
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !101
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 360
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(308) %i.ev, i32 noundef %i.ex)
  %i.fb = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef %i.fc) ; 0 uses
  br label %bb.aa

.lr.ph:                                           ; preds = %bb.y, %_ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit ], [ 0, %bb.y ] ; 3 uses
  %i.fh = phi i64 [ %i.fw, %_ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit ], [ %i.es, %bb.y ]
  %i.fi = phi ptr [ %i.fs, %_ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit ], [ %i.eo, %bb.y ]
  %i.fj = icmp ugt i64 %i.fh, %indvars.iv
  br i1 %i.fj, label %_ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj) #24
  unreachable

_ZN4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit: ; preds = %.lr.ph
  %i.fk = load ptr, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %i.fi, i64 %indvars.iv
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !91
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !17
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 296
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call noundef i32 %i.fp(ptr noundef nonnull align 8 dereferenceable(308) %i.fk, ptr noundef %i.fm) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fr = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.fs = load ptr, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = sdiv exact i64 %i.fv, 40                ; 2 uses
  %i.fx = shl i64 %i.fw, 32
  %i.fy = ashr exact i64 %i.fx, 32
  %i.fz = icmp slt i64 %indvars.iv.next, %i.fy
  br i1 %i.fz, label %.lr.ph, label %._crit_edge, !llvm.loop !129

bb.aa:                                            ; preds = %bb.e, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gui12CGUIComboBox19getMaxSelectionRowsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gui12CGUIComboBox12getItemCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZNK3gui12CGUIComboBox7getItemEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %.not = icmp ult i32 %1, %i.i
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIN3gui12CGUIComboBox10SComboDataEEixEj) #24
end_hunk_0
