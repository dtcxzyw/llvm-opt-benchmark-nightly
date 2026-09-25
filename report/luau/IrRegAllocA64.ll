Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrRegAllocA64?download=true
inline.NumInlined: 360
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Luau7CodeGen3A6413IrRegAllocA645spillEjSt16initializer_listINS1_11RegisterA64EE:bb.a
  %i.bw = xor i32 %i.bv, 31
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !32
  tail call void @_ZN4Luau7CodeGen3A6413IrRegAllocA645spillERNS2_3SetEjj(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(140) %.0.i64.1, i32 noundef %1, i32 noundef %i.bz)
  %i.ca = lshr exact i32 -2147483648, %i.bv
  %i.cb = xor i32 %i.ca, -1
  %i.cc = and i32 %.04974.1, %i.cb                ; 2 uses
  %.not60.1 = icmp eq i32 %i.cc, 0
  br i1 %.not60.1, label %.loopexit66.1, label %bb.f, !llvm.loop !156

.loopexit66.1:                                    ; preds = %bb.f, %bb.e, %.loopexit66
  %i.cd = load i8, ptr @_ZN5FFlag20DebugCodegenChaosA64E, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.preheader, label %.loopexit

bb.g:                                             ; preds = %.preheader, %bb.k
  %.076 = phi i32 [ 0, %.preheader ], [ %i.cq, %bb.k ] ; 4 uses
  %i.cf = shl nuw i32 1, %.076                    ; 2 uses
  %i.cg = and i32 %i.cf, %.1
  %.not58 = icmp eq i32 %i.cg, 0
  br i1 %.not58, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !70, !nonnull !43, !align !52
  %i.ci = trunc nuw nsw i32 %.076 to i8
  %i.cj = shl nuw i8 %i.ci, 3
  %i.ck = or disjoint i8 %i.cj, 2
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184) %i.ch, i8 %i.ck, i32 noundef 57005)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cl = and i32 %i.cf, %.154
  %.not59 = icmp eq i32 %i.cl, 0
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = load ptr, ptr %i.av, align 8, !tbaa !70, !nonnull !43, !align !52
  %i.cn = trunc nuw nsw i32 %.076 to i8
  %i.co = shl nuw i8 %i.cn, 3
  %i.cp = or disjoint i8 %i.co, 4
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %i.cm, i8 %i.cp, double noundef -1.250000e-01)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cq = add nuw nsw i32 %.076, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cq, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !157

.loopexit:                                        ; preds = %bb.k, %.loopexit66.1
  %i.cr = ptrtoint ptr %i.c to i64
  %i.cs = ptrtoint ptr %i.d to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  ret i64 %i.cu
}

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184), i8, i32 noundef) local_unnamed_addr #7

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184), i8, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrRegAllocA647restoreEm(ptr noundef nonnull align 8 dereferenceable(389) %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::CodeGen::A64::IrRegAllocA64::Spill", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %.lr.ph, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE6resizeEm.exit

._crit_edge:                                      ; preds = %.lr.ph
  %i.j = icmp ugt i64 %1, %i.ak
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = sub nuw i64 %1, %i.ak
  tail call void @_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.k)
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.l = icmp ult i64 %1, %i.ak
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen3A6413IrRegAllocA645SpillES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen3A6413IrRegAllocA645SpillES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.m, ptr %i.b, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE6resizeEm.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.n = phi ptr [ %i.ag, %.lr.ph ], [ %i.d, %bb.a ]
  %.011 = phi i64 [ %i.ae, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.011
  %i.p = load i64, ptr %i.o, align 4              ; 3 uses
  store i64 %i.p, ptr %2, align 8
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc i64 %i.q to i8                     ; 3 uses
  %i.s = trunc i64 %i.p to i32
  %i.t = and i8 %i.r, 7
  %.off.i.i = add nsw i8 %i.t, -1
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %.0.v.i.i = select i1 %switch.i.i, i64 36, i64 176
  %.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i.i ; 2 uses
  %i.u = lshr i8 %i.r, 3                          ; 2 uses
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = xor i32 %i.w, -1
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %i.aa = and i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  %i.ac = zext nneg i8 %i.u to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  store i32 %i.s, ptr %i.ad, align 4, !tbaa !32
  call void @_ZN4Luau7CodeGen3A6413IrRegAllocA647restoreERKNS2_5SpillENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, i8 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ae = add nuw i64 %.011, 1                    ; 2 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = icmp ult i64 %i.ae, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !159

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen3A6413IrRegAllocA645SpillES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrRegAllocA647restoreERKNS2_5SpillENS1_11RegisterA64E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i8 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !43, !align !52 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %1, align 4, !tbaa !102
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !103   ; 4 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, align 8, !tbaa !41, !range !42, !noundef !43
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = icmp samesign ult i8 %i.i, 22
  %or.cond146.not = or i1 %i.m, %i.l
  br i1 %or.cond146.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i8 %i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 35
  %i.p = and i8 %2, 7                             ; 3 uses
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.r = and i8 %2, -8
  %i.s = or disjoint i8 %i.r, 2
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i8 %i.p, 2
  %.sroa.062.0.copyload.sroa.speculated = select i1 %i.t, i8 %2, i8 -118 ; 3 uses
  %i.u = add nsw i8 %i.p, -1
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70, !nonnull !43, !align !52
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.x, i8 %.sroa.062.0.copyload.sroa.speculated, i64 309254092801)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e
  %i.y = phi i1 [ true, %.thread ], [ true, %bb.d ], [ false, %bb.e ]
  %.sroa.062.0138 = phi i8 [ %i.s, %.thread ], [ %.sroa.062.0.copyload.sroa.speculated, %bb.d ], [ %.sroa.062.0.copyload.sroa.speculated, %bb.e ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70, !nonnull !43, !align !52
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.aa, i8 %.sroa.062.0138, i64 103095638529)
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !70, !nonnull !43, !align !52
  %.sroa.2128.0.insert.ext = zext i8 %.sroa.062.0138 to i64
  %.sroa.2128.0.insert.shift = shl nuw nsw i64 %.sroa.2128.0.insert.ext, 8 ; 2 uses
  %.sroa.0127.0.insert.insert = or disjoint i64 %.sroa.2128.0.insert.shift, 6184769290241
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.ab, i8 %.sroa.062.0138, i64 %.sroa.0127.0.insert.insert)
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !70, !nonnull !43, !align !52
  %.sroa.3124.0.insert.insert = add nsw i64 %i.o, -755897860096
  %.sroa.2123.0.insert.insert = or disjoint i64 %.sroa.2128.0.insert.shift, %.sroa.3124.0.insert.insert
  %.sroa.0122.0.insert.insert = or disjoint i64 %.sroa.2123.0.insert.insert, 1
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.ac, i8 %2, i64 %.sroa.0122.0.insert.insert)
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !70, !nonnull !43, !align !52
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.ad, i8 %.sroa.062.0138, i64 309254092801)
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70, !nonnull !43, !align !52
  %i.ag = zext nneg i8 %i.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 35
  %.sroa.0.0.insert.insert = add nuw nsw i64 %i.ah, 343613831169
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.af, i8 %2, i64 %.sroa.0.0.insert.insert)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = load i8, ptr %i.h, align 1, !tbaa !103  ; 2 uses
  %.not117 = icmp eq i8 %i.ai, 64
  br i1 %.not117, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ak = and i8 %2, 7
  %i.al = icmp eq i8 %i.ak, 5
  %i.am = select i1 %i.al, i64 3, i64 1
  %i.an = zext nneg i8 %i.ai to i64
  %i.ao = shl i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !97
  %i.aq = or i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.aj, align 8, !tbaa !97
  %i.ar = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %.not118 = icmp eq ptr %i.ar, null
  br i1 %.not118, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84, !nonnull !43, !align !52
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 117
  %i.au = load i8, ptr %i.at, align 1, !tbaa !95, !range !42, !noundef !43
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !99
  %i.ax = tail call noundef zeroext i8 @_ZN4Luau7CodeGen15getCmdValueKindENS0_5IrCmdE(i8 noundef zeroext %i.aw)
  %i.ay = tail call noundef ptr @_ZN4Luau7CodeGen16getValueKindNameENS0_11IrValueKindE(i8 noundef zeroext %i.ax)
  %i.az = load ptr, ptr %0, align 8, !tbaa !30
  %i.ba = load i32, ptr %1, align 4, !tbaa !102
  %i.bb = load i8, ptr %i.h, align 1, !tbaa !103
  %i.bc = sext i8 %i.bb to i32
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder22formatAppendWithPrefixEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull @.str.5, i32 noundef %i.ba, ptr noundef %i.ay, i32 noundef %i.bc)
  br label %bb.aa

bb.m:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !69 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %.not.i.i = icmp ugt i64 %i.bk, %i.e
  br i1 %.not.i.i, label %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit, label %_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit

_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit: ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.e
  %i.bm = load i64, ptr %i.bl, align 4            ; 8 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.bm to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.bm, 32
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8 ; 2 uses
  %i.bn = and i32 %.sroa.011.0.extract.trunc.i, 15
  switch i32 %i.bn, label %_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit [
    i32 6, label %bb.n
    i32 7, label %bb.o
  ]

bb.n:                                             ; preds = %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit
  %i.bo = and i64 %i.bm, 4294967280
  %i.bp = icmp eq i8 %.sroa.2.0.extract.trunc.i, 2
  %..i.i = select i1 %i.bp, i64 12, i64 0
  %i.bq = or disjoint i64 %..i.i, %i.bo
  br label %_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit

bb.o:                                             ; preds = %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit
  %i.br = and i64 %i.bm, 4294967280               ; 2 uses
  %i.bs = icmp samesign ult i64 %i.br, 4093
  br i1 %i.bs, label %bb.p, label %_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp eq i8 %.sroa.2.0.extract.trunc.i, 2
  %..i13.i = select i1 %i.bt, i64 12, i64 0
  %i.bu = or disjoint i64 %..i13.i, %i.br
  br label %_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit

_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit: ; preds = %bb.m, %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit, %bb.n, %bb.o, %bb.p
  %.sroa.023.1.i.i144 = phi i64 [ %i.bm, %bb.p ], [ %i.bm, %bb.n ], [ %i.bm, %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit ], [ %i.bm, %bb.o ], [ 0, %bb.m ] ; 4 uses
  %.sroa.1014.0.i = phi i64 [ %i.bu, %bb.p ], [ %i.bq, %bb.n ], [ 0, %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.sroa.4.0.i = phi i64 [ 45568, %bb.p ], [ 51712, %bb.n ], [ 64000, %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit ], [ 64000, %bb.o ], [ 64000, %bb.m ]
  %.sroa.1014.0.insert.shift.i = shl nuw i64 %.sroa.1014.0.i, 32
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.1014.0.insert.shift.i, %.sroa.4.0.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, 16384001 ; 2 uses
  %i.bv = load i8, ptr %i.g, align 8, !tbaa !99
  %i.bw = tail call noundef zeroext i8 @_ZN4Luau7CodeGen15getCmdValueKindENS0_5IrCmdE(i8 noundef zeroext %i.bv)
  %i.bx = icmp eq i8 %i.bw, 3
  %.sroa.024.4.extract.shift40111 = lshr i64 %.sroa.023.1.i.i144, 32
  %.sroa.024.4.extract.trunc41 = trunc i64 %.sroa.024.4.extract.shift40111 to i8 ; 2 uses
  %i.by = icmp eq i8 %.sroa.024.4.extract.trunc41, 7
  %or.cond = and i1 %i.by, %i.bx
  br i1 %or.cond, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit
  %i.bz = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %0, i8 noundef zeroext 4) ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !70, !nonnull !43, !align !52
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.cb, i8 %i.bz, i64 %.sroa.0.0.insert.insert.i)
  %.sroa.024.5.extract.shift112 = lshr i64 %.sroa.023.1.i.i144, 40
  %.sroa.024.5.extract.trunc = trunc i64 %.sroa.024.5.extract.shift112 to i8
  switch i8 %.sroa.024.5.extract.trunc, label %bb.t [
    i8 107, label %bb.r
    i8 109, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !70, !nonnull !43, !align !52
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646fcvtzsENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.cc, i8 %2, i8 %i.bz)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !70, !nonnull !43, !align !52
  %i.ce = and i8 %2, -8
  %i.cf = or disjoint i8 %i.ce, 2
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646fcvtzsENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.cd, i8 %i.cf, i8 %i.bz)
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %i.cg = and i8 %i.bz, 7
  %.off.i.i = add nsw i8 %i.cg, -1
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %.0.v.i.i = select i1 %switch.i.i, i64 36, i64 176
  %.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i.i ; 2 uses
  %i.ch = lshr i8 %i.bz, 3
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl nuw i32 1, %i.ci                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !34
  %i.cm = or i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !34
  %i.cn = xor i32 %i.cj, -1
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !35
  %i.cq = and i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !35
  br label %bb.v

bb.u:                                             ; preds = %_ZN4Luau7CodeGen3A64L16getReloadAddressENS0_20ValueRestoreLocationE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !70, !nonnull !43, !align !52
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.cs, i8 %2, i64 %.sroa.0.0.insert.insert.i)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ct = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !84, !nonnull !43, !align !52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 117
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !95, !range !42, !noundef !43
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.024.5.extract.shift46113 = lshr i64 %.sroa.023.1.i.i144, 40
  %.sroa.024.5.extract.trunc47 = trunc i64 %.sroa.024.5.extract.shift46113 to i8
  %i.cy = tail call noundef ptr @_ZN4Luau7CodeGen22getConversionCmdSuffixENS0_5IrCmdE(i8 noundef zeroext %.sroa.024.5.extract.trunc47) ; 2 uses
  %i.cz = tail call noundef ptr @_ZN4Luau7CodeGen16getValueKindNameENS0_11IrValueKindE(i8 noundef zeroext %.sroa.024.4.extract.trunc41) ; 2 uses
  %.sroa.024.0.extract.trunc = trunc i64 %.sroa.023.1.i.i144 to i32 ; 3 uses
  %i.da = and i32 %.sroa.024.0.extract.trunc, 15
  switch i32 %i.da, label %bb.aa [
    i32 6, label %bb.y
    i32 7, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %0, align 8, !tbaa !30
  %i.dc = load i32, ptr %1, align 4, !tbaa !102
  %i.dd = lshr i32 %.sroa.024.0.extract.trunc, 4
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder22formatAppendWithPrefixEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull @.str.6, i32 noundef %i.dc, ptr noundef %i.cz, i32 noundef %i.dd, ptr noundef %i.cy)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.de = load ptr, ptr %0, align 8, !tbaa !30
  %i.df = load i32, ptr %1, align 4, !tbaa !102
  %i.dg = lshr i32 %.sroa.024.0.extract.trunc, 4
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder22formatAppendWithPrefixEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull @.str.7, i32 noundef %i.df, ptr noundef %i.cz, i32 noundef %i.dg, ptr noundef %i.cy)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.z, %bb.y, %bb.i, %bb.l, %bb.k, %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  store i8 0, ptr %i.dh, align 1, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  store i8 0, ptr %i.di, align 2, !tbaa !79
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 55
  store i8 %2, ptr %i.dj, align 1, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrRegAllocA6410restoreRegERNS0_6IrInstE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) %0, ptr noundef nonnull align 8 dereferenceable(59) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Luau::CodeGen::A64::IrRegAllocA64::Spill", align 8 ; 4 uses
end_hunk_0
