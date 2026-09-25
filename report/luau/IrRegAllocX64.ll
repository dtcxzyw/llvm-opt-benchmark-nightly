Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrRegAllocX64?download=true
inline.NumInlined: 482
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX6415getRegisterNameENS1_11RegisterX64E
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen10LogBuilder22formatAppendWithPrefixEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ...) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !78, !nonnull !42, !align !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %i.g = and i64 %i.f, -2
  %i.h = icmp eq i64 %i.g, 4611686018427387902
  br i1 %i.h, label %bb.c, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4Luau13vformatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ...) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4Luau13vformatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6413IrRegAllocX647restoreERNS0_6IrInstEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(59) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !42, !align !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 6
  %i.i = trunc i64 %i.h to i32                    ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !100  ; 3 uses
  %.not360 = icmp eq ptr %i.l, %i.m
  br i1 %.not360, label %.loopexit350, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.av
  %.0357 = phi i64 [ %i.fh, %bb.av ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.0357 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !103
  %i.t = icmp eq i32 %i.s, %i.i
  br i1 %i.t, label %bb.b, label %bb.av

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %.sroa.095.0.copyload = load i8, ptr %i.u, align 1 ; 3 uses
  %i.v = and i8 %.sroa.095.0.copyload, 7          ; 2 uses
  br i1 %2, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq i8 %i.v, 5
  %i.x = lshr i8 %.sroa.095.0.copyload, 3
  %i.y = zext nneg i8 %i.x to i64                 ; 5 uses
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !46, !range !41, !noundef !42
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.y
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.ag
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX648preserveERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(59) %i.ah)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i8 0, ptr %i.aa, align 1, !tbaa !46
  br label %_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.y ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !46, !range !41, !noundef !42
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.y
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !48
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.ap
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX648preserveERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(59) %i.aq)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i8 0, ptr %i.aj, align 1, !tbaa !46
  br label %_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit

_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit: ; preds = %bb.f, %bb.i
  %.sink.i = phi i64 [ 52, %bb.i ], [ 132, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.y
  store i32 %i.i, ptr %i.as, align 4, !tbaa !48
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.at = tail call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX648allocRegENS1_7SizeX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %0, i8 noundef zeroext %i.v, i32 noundef %i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit
  %.sroa.096.0 = phi i8 [ %.sroa.095.0.copyload, %_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit ], [ %i.at, %bb.j ] ; 9 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !42, !align !50 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.e, %i.ax
  %i.az = lshr exact i64 %i.ay, 6
  %i.ba = and i64 %i.az, 4294967295               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 184
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !69
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %.not.i.i = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i.i, label %bb.l, label %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ba
  %i.bk = load i64, ptr %i.bj, align 4
  %i.bl = and i64 %i.bk, 72057594037927935
  br label %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit

_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit: ; preds = %bb.k, %bb.l
  %.sroa.023.1.i.i = phi i64 [ 0, %bb.k ], [ %i.bl, %bb.l ] ; 5 uses
  %i.bm = and i8 %.sroa.096.0, 7                  ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 5                     ; 3 uses
  %i.bo = and i8 %.sroa.096.0, -8
  %i.bp = or disjoint i8 %i.bo, 4                 ; 3 uses
  %.sroa.069.0 = select i1 %i.bn, i8 %i.bp, i8 92
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0357 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12 ; 4 uses
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !104 ; 4 uses
  %.not = icmp eq i8 %i.bt, -1
  br i1 %.not, label %bb.x, label %bb.m

bb.m:                                             ; preds = %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit
  %i.bu = load i8, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, align 8, !tbaa !40, !range !41, !noundef !42
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = icmp ult i8 %i.bt, 26
  %or.cond348.not = or i1 %i.bw, %i.bv
  br i1 %or.cond348.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = zext i8 %i.bt to i64
  %i.by = shl nuw nsw i64 %i.bx, 34
  br i1 %i.bn, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %.pre369 = zext i8 %i.bp to i64
  %.pre370 = shl nuw nsw i64 %.pre369, 16         ; 2 uses
  %.pre371 = or disjoint i64 %.pre370, 268468224
  %i.bz = or disjoint i64 %.pre370, 32768
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !71, !nonnull !42, !align !50
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.cb, i64 275215843329, i64 274497536)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %.sroa.2215.0.insert.insert.pre-phi = phi i64 [ %.pre371, %._crit_edge ], [ 274497536, %bb.o ] ; 2 uses
  %.sroa.3216.0.insert.shift.pre-phi = phi i64 [ %i.bz, %._crit_edge ], [ 6062080, %bb.o ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !71, !nonnull !42, !align !50
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.cd, i64 %.sroa.2215.0.insert.insert.pre-phi, i64 103422918657)
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !71, !nonnull !42, !align !50
  %.sroa.5203.0.insert.insert = add nuw nsw i64 %i.by, 5738344742912
  %.sroa.5202.0.insert.insert = or disjoint i64 %.sroa.5203.0.insert.insert, %.sroa.3216.0.insert.shift.pre-phi
  %.sroa.0201.0.insert.insert = or disjoint i64 %.sroa.5202.0.insert.insert, 1
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.ce, i64 %.sroa.2215.0.insert.insert.pre-phi, i64 %.sroa.0201.0.insert.insert)
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.cf = zext i8 %i.bt to i32
  %i.cg = shl nuw nsw i32 %i.cf, 2
  %.sroa.0194.0.insert.insert = add nuw nsw i32 %i.cg, 72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.13.0 = phi i8 [ 36, %bb.q ], [ %.sroa.069.0, %bb.p ] ; 2 uses
  %.sroa.23.0 = phi i32 [ %.sroa.0194.0.insert.insert, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.sroa.14.0 = or disjoint i8 %i.bm, 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !105 ; 4 uses
  switch i8 %i.ci, label %bb.u [
    i8 7, label %bb.s
    i8 4, label %bb.s
    i8 6, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s
  %.sroa.14.1 = phi i8 [ %.sroa.14.0, %bb.r ], [ 20, %bb.s ], [ 19, %bb.t ] ; 2 uses
  %i.cj = load i8, ptr %i.bs, align 4, !tbaa !104 ; 2 uses
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = zext i8 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Luau7CodeGen3X64L15kValueDwordSizeE, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !48
  %i.co = add i32 %i.cn, %i.ck                    ; 2 uses
  %i.cp = icmp ugt i32 %i.co, %i.ck
  br i1 %i.cp, label %.lr.ph359, label %.loopexit

.lr.ph359:                                        ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cr = zext i8 %i.cj to i64
  %wide.trip.count = zext i32 %i.co to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph359, %_ZNSt6bitsetILm512EE3setEmb.exit
  %indvars.iv = phi i64 [ %i.cr, %.lr.ph359 ], [ %indvars.iv.next, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 4 uses
  %exitcond367 = icmp eq i64 %indvars.iv, 512
  br i1 %exitcond367, label %bb.w, label %_ZNSt6bitsetILm512EE3setEmb.exit

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i64 noundef 512, i64 noundef 512) #24
  unreachable

_ZNSt6bitsetILm512EE3setEmb.exit:                 ; preds = %bb.v
  %i.cs = and i64 %indvars.iv, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = xor i64 %i.ct, -1
  %i.cv = lshr i64 %indvars.iv, 6
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cv ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !72
  %i.cy = and i64 %i.cx, %i.cu
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond368.not, label %.loopexit, label %bb.v, !llvm.loop !175

bb.x:                                             ; preds = %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit
  %i.cz = tail call i64 @_ZN4Luau7CodeGen3X6413IrRegAllocX6417getRestoreAddressERKNS0_6IrInstENS0_20ValueRestoreLocationE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(59) %1, i64 %.sroa.023.1.i.i) ; 5 uses
  %.sroa.13.0.extract.shift = lshr i64 %i.cz, 16
  %.sroa.13.0.extract.trunc = trunc i64 %.sroa.13.0.extract.shift to i8
  %.sroa.14.0.extract.shift = lshr i64 %i.cz, 24
  %.sroa.14.0.extract.trunc = trunc i64 %.sroa.14.0.extract.shift to i8
  %.sroa.23.0.extract.shift = lshr i64 %i.cz, 32
  %.sroa.23.0.extract.trunc = trunc nuw i64 %.sroa.23.0.extract.shift to i32
  %i.da = and i64 %i.cz, 65280
  %i.db = and i64 %i.cz, 255
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !105
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6bitsetILm512EE3setEmb.exit, %bb.u, %bb.x
  %i.dc = phi i8 [ %.pre, %bb.x ], [ %i.ci, %bb.u ], [ %i.ci, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 4 uses
  %.sroa.0228.1 = phi i64 [ %i.db, %bb.x ], [ 1, %bb.u ], [ 1, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 6 uses
  %.sroa.12.1 = phi i64 [ %i.da, %bb.x ], [ 32768, %bb.u ], [ 32768, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 6 uses
  %.sroa.13.1 = phi i8 [ %.sroa.13.0.extract.trunc, %bb.x ], [ %.sroa.13.0, %bb.u ], [ %.sroa.13.0, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 6 uses
  %.sroa.14.2 = phi i8 [ %.sroa.14.0.extract.trunc, %bb.x ], [ %.sroa.14.1, %bb.u ], [ %.sroa.14.1, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 6 uses
  %.sroa.23.1 = phi i32 [ %.sroa.23.0.extract.trunc, %bb.x ], [ %.sroa.23.0, %bb.u ], [ %.sroa.23.0, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  switch i8 %i.dc, label %bb.aa [
    i8 8, label %bb.y
    i8 7, label %bb.z
  ]

bb.y:                                             ; preds = %.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !71, !nonnull !42, !align !50
  %.sroa.23.0.insert.ext337 = zext i32 %.sroa.23.1 to i64
  %.sroa.23.0.insert.shift338 = shl nuw i64 %.sroa.23.0.insert.ext337, 32
  %.sroa.14.0.insert.ext310 = zext i8 %.sroa.14.2 to i64
  %.sroa.14.0.insert.shift311 = shl nuw nsw i64 %.sroa.14.0.insert.ext310, 24
  %.sroa.14.0.insert.insert313 = or disjoint i64 %.sroa.23.0.insert.shift338, %.sroa.14.0.insert.shift311
  %.sroa.13.0.insert.ext286 = zext i8 %.sroa.13.1 to i64
  %.sroa.13.0.insert.shift287 = shl nuw nsw i64 %.sroa.13.0.insert.ext286, 16
  %.sroa.13.0.insert.insert289 = or disjoint i64 %.sroa.14.0.insert.insert313, %.sroa.13.0.insert.shift287
  %.sroa.12.0.insert.insert265 = or disjoint i64 %.sroa.13.0.insert.insert289, %.sroa.12.1
  %.sroa.0228.0.insert.insert243 = or disjoint i64 %.sroa.12.0.insert.insert265, %.sroa.0228.1
  %.sroa.3191.0.insert.ext = zext i8 %.sroa.096.0 to i64
  %.sroa.3191.0.insert.shift = shl nuw nsw i64 %.sroa.3191.0.insert.ext, 16
  %.sroa.2190.0.insert.insert = or disjoint i64 %.sroa.3191.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.df, i64 %.sroa.2190.0.insert.insert, i64 %.sroa.0228.0.insert.insert243)
  br label %bb.ai

bb.z:                                             ; preds = %.loopexit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !71, !nonnull !42, !align !50
  %.sroa.23.0.insert.ext333 = zext i32 %.sroa.23.1 to i64
  %.sroa.23.0.insert.shift334 = shl nuw i64 %.sroa.23.0.insert.ext333, 32
  %.sroa.14.0.insert.ext306 = zext i8 %.sroa.14.2 to i64
  %.sroa.14.0.insert.shift307 = shl nuw nsw i64 %.sroa.14.0.insert.ext306, 24
  %.sroa.14.0.insert.insert309 = or disjoint i64 %.sroa.23.0.insert.shift334, %.sroa.14.0.insert.shift307
  %.sroa.13.0.insert.ext282 = zext i8 %.sroa.13.1 to i64
  %.sroa.13.0.insert.shift283 = shl nuw nsw i64 %.sroa.13.0.insert.ext282, 16
  %.sroa.13.0.insert.insert285 = or disjoint i64 %.sroa.14.0.insert.insert309, %.sroa.13.0.insert.shift283
  %.sroa.12.0.insert.insert261 = or disjoint i64 %.sroa.13.0.insert.insert285, %.sroa.12.1
  %.sroa.0228.0.insert.insert240 = or disjoint i64 %.sroa.12.0.insert.insert261, %.sroa.0228.1
  %.sroa.3186.0.insert.ext = zext i8 %.sroa.096.0 to i64
  %.sroa.3186.0.insert.shift = shl nuw nsw i64 %.sroa.3186.0.insert.ext, 16
  %.sroa.2185.0.insert.insert = or disjoint i64 %.sroa.3186.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646vmovsdENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.dh, i64 %.sroa.2185.0.insert.insert, i64 %.sroa.0228.0.insert.insert240)
  br label %bb.ai

bb.aa:                                            ; preds = %.loopexit
  %i.di = icmp eq i8 %i.dc, 3
  %i.dj = and i64 %.sroa.023.1.i.i, 1095216660480
  %i.dk = icmp eq i64 %i.dj, 30064771072
  %or.cond = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.sroa.076.5.extract.shift139 = lshr i64 %.sroa.023.1.i.i, 40
  %.sroa.076.5.extract.trunc = trunc i64 %.sroa.076.5.extract.shift139 to i8
  switch i8 %.sroa.076.5.extract.trunc, label %bb.ai [
    i8 107, label %bb.ac
    i8 109, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !71, !nonnull !42, !align !50
  %.sroa.23.0.insert.ext329 = zext i32 %.sroa.23.1 to i64
  %.sroa.23.0.insert.shift330 = shl nuw i64 %.sroa.23.0.insert.ext329, 32
  %.sroa.14.0.insert.ext302 = zext i8 %.sroa.14.2 to i64
  %.sroa.14.0.insert.shift303 = shl nuw nsw i64 %.sroa.14.0.insert.ext302, 24
  %.sroa.14.0.insert.insert305 = or disjoint i64 %.sroa.23.0.insert.shift330, %.sroa.14.0.insert.shift303
  %.sroa.13.0.insert.ext278 = zext i8 %.sroa.13.1 to i64
  %.sroa.13.0.insert.shift279 = shl nuw nsw i64 %.sroa.13.0.insert.ext278, 16
  %.sroa.13.0.insert.insert281 = or disjoint i64 %.sroa.14.0.insert.insert305, %.sroa.13.0.insert.shift279
  %.sroa.12.0.insert.insert257 = or disjoint i64 %.sroa.13.0.insert.insert281, %.sroa.12.1
  %.sroa.0228.0.insert.insert237 = or disjoint i64 %.sroa.12.0.insert.insert257, %.sroa.0228.1
  %.sroa.3181.0.insert.ext = zext i8 %.sroa.096.0 to i64
  %.sroa.3181.0.insert.shift = shl nuw nsw i64 %.sroa.3181.0.insert.ext, 16
  %.sroa.2180.0.insert.insert = or disjoint i64 %.sroa.3181.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410vcvttsd2siENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.dm, i64 %.sroa.2180.0.insert.insert, i64 %.sroa.0228.0.insert.insert237)
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !71, !nonnull !42, !align !50
  %.sroa.23.0.insert.ext325 = zext i32 %.sroa.23.1 to i64
  %.sroa.23.0.insert.shift326 = shl nuw i64 %.sroa.23.0.insert.ext325, 32
  %.sroa.14.0.insert.ext298 = zext i8 %.sroa.14.2 to i64
  %.sroa.14.0.insert.shift299 = shl nuw nsw i64 %.sroa.14.0.insert.ext298, 24
  %.sroa.14.0.insert.insert301 = or disjoint i64 %.sroa.23.0.insert.shift326, %.sroa.14.0.insert.shift299
  %.sroa.13.0.insert.ext274 = zext i8 %.sroa.13.1 to i64
  %.sroa.13.0.insert.shift275 = shl nuw nsw i64 %.sroa.13.0.insert.ext274, 16
  %.sroa.13.0.insert.insert277 = or disjoint i64 %.sroa.14.0.insert.insert301, %.sroa.13.0.insert.shift275
  %.sroa.12.0.insert.insert253 = or disjoint i64 %.sroa.13.0.insert.insert277, %.sroa.12.1
  %.sroa.0228.0.insert.insert234 = or disjoint i64 %.sroa.12.0.insert.insert253, %.sroa.0228.1
  %.sroa.3176.0.insert.ext = zext i8 %i.bp to i64
  %.sroa.3176.0.insert.shift = shl nuw nsw i64 %.sroa.3176.0.insert.ext, 16
  %.sroa.2175.0.insert.insert = or disjoint i64 %.sroa.3176.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410vcvttsd2siENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.do, i64 %.sroa.2175.0.insert.insert, i64 %.sroa.0228.0.insert.insert234)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.aa
  %i.dp = add i8 %i.dc, -2
  %i.dq = icmp ult i8 %i.dp, 4
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !71, !nonnull !42, !align !50
  %.sroa.23.0.insert.ext321 = zext i32 %.sroa.23.1 to i64
  %.sroa.23.0.insert.shift322 = shl nuw i64 %.sroa.23.0.insert.ext321, 32
  %.sroa.14.0.insert.ext294 = zext i8 %.sroa.14.2 to i64
  %.sroa.14.0.insert.shift295 = shl nuw nsw i64 %.sroa.14.0.insert.ext294, 24
  %.sroa.14.0.insert.insert297 = or disjoint i64 %.sroa.23.0.insert.shift322, %.sroa.14.0.insert.shift295
  %.sroa.13.0.insert.ext270 = zext i8 %.sroa.13.1 to i64
  %.sroa.13.0.insert.shift271 = shl nuw nsw i64 %.sroa.13.0.insert.ext270, 16
  %.sroa.13.0.insert.insert273 = or disjoint i64 %.sroa.14.0.insert.insert297, %.sroa.13.0.insert.shift271
  %.sroa.12.0.insert.insert249 = or disjoint i64 %.sroa.13.0.insert.insert273, %.sroa.12.1
  %.sroa.0228.0.insert.insert231 = or disjoint i64 %.sroa.12.0.insert.insert249, %.sroa.0228.1
  %.sroa.3171.0.insert.ext = zext i8 %.sroa.096.0 to i64
  %.sroa.3171.0.insert.shift = shl nuw nsw i64 %.sroa.3171.0.insert.ext, 16
  %.sroa.2170.0.insert.insert = or disjoint i64 %.sroa.3171.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.ds, i64 %.sroa.2170.0.insert.insert, i64 %.sroa.0228.0.insert.insert231)
  br label %bb.ai
end_hunk_0
