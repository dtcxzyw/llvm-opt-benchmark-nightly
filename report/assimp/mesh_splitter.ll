Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/mesh_splitter?download=true
inline.NumInlined: 607
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12MeshSplitter7ExecuteEP7aiScene:bb.a
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge37.loopexit.unr-lcssa, label %.lr.ph36, !llvm.loop !15

bb.i:                                             ; preds = %._crit_edge37, %._crit_edge
  %.not.i.i.i28 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.be) #14
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit29

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit29: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !35 {
bb.a:
  %4 = alloca %"class.std::vector.0", align 8     ; 14 uses
  %5 = alloca %"class.std::vector.12", align 8    ; 15 uses
  %6 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 39 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load i32, ptr %0, align 4
  %.not = icmp ugt i32 %i.b, %i.c
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %1, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.d, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %3, align 8                ; 5 uses
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #15 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %1, ptr %i.x, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !36
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ad) #14
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.v, ptr %3, align 8
  store ptr %i.aa, ptr %i.d, align 8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ae, ptr %i.f, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.a
  %i.af = tail call noundef ptr @_Z28ComputeVertexBoneWeightTablePK6aiMesh(ptr noundef nonnull %2) ; 5 uses
  %i.ag = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ah = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not306 = icmp eq i32 %i.ag, 0
  br i1 %.not306, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i32 %i.ag to i64
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, i64 noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(4) @_ZL14WAS_NOT_COPIED)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.h, %bb.g
  %i.ak = udiv i32 %i.ag, %i.ah
  %i.al = add i32 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = udiv i32 %i.an, %i.al                   ; 2 uses
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bd = zext i32 %i.aq to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.not148 = icmp eq ptr %i.af, null              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.0117 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %.3, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit ] ; 2 uses
  %i.ct = load i32, ptr %0, align 4
  %.fr515 = freeze i32 %i.ct                      ; 11 uses
  %i.cu = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #15
          to label %bb.j unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 62 uses

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  store i32 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 224 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 1272
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 1312
  store ptr null, ptr %i.cz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.cw, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.cx, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cy, i8 0, i64 36, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 27 uses
  %i.da = load i32, ptr %i.ar, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  store i32 %i.da, ptr %i.db, align 8
  %i.dc = icmp eq ptr %i.cu, %2
  br i1 %i.dc, label %_ZN8aiStringaSERKS_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 236
  %i.de = load i32, ptr %i.as, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.de, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 240 ; 2 uses
  %i.dg = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 8 %i.at, i64 %i.dg, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i8 0, ptr %i.dh, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.j, %bb.k
  %i.di = load ptr, ptr %i.au, align 8
  %.not.i159 = icmp ne ptr %i.di, null
  %i.dj = load i32, ptr %i.av, align 8            ; 2 uses
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = select i1 %.not.i159, i1 %i.dk, i1 false
  br i1 %i.dl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.dm = zext i32 %i.dj to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3                ; 2 uses
  %i.do = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dn) #15
          to label %bb.m unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.do, i8 0, i64 %i.dn, i1 false)
  store ptr %i.do, ptr %i.cx, align 8
  br label %bb.n

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.i, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp337

bb.n:                                             ; preds = %bb.m, %_ZN8aiStringaSERKS_.exit
  %.not146 = icmp eq i32 %.0117, 0
  br i1 %.not146, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %4, align 8               ; 3 uses
  %i.dq = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dp, %i.dq
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.o
  %i.dr = ptrtoaddr ptr %i.dq to i64
  %i.ds = ptrtoaddr ptr %i.dp to i64
  %i.dt = add i64 %i.dr, -4
  %i.du = sub i64 %i.dt, %i.ds
  %i.dv = and i64 %i.du, -4
  %i.dw = add i64 %i.dv, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dp, i8 -1, i64 %i.dw, i1 false)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.dx = load ptr, ptr %i.aw, align 8
  %.not.i160 = icmp ne ptr %i.dx, null
  %i.dy = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = select i1 %.not.i160, i1 %i.dz, i1 false
  br i1 %i.ea, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %i.eb = zext i32 %.fr515 to i64
  %i.ec = mul nuw nsw i64 %i.eb, 12               ; 2 uses
  %i.ed = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ec) #15
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ee = icmp eq i32 %.fr515, 0
  br i1 %i.ee, label %.loopexit335, label %.loopexit335.loopexit

.loopexit335.loopexit:                            ; preds = %bb.q
  %i.ef = add nsw i64 %i.ec, -12                  ; 2 uses
  %i.eg = urem i64 %i.ef, 12
  %i.eh = sub nuw nsw i64 %i.ef, %i.eg
  %i.ei = add nsw i64 %i.eh, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ed, i8 0, i64 %i.ei, i1 false)
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit, %bb.q
  store ptr %i.ed, ptr %i.cw, align 8
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.r

bb.r:                                             ; preds = %.loopexit335, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %i.ej = phi i32 [ %.pre, %.loopexit335 ], [ %i.dy, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit ] ; 2 uses
  %i.ek = load ptr, ptr %i.ax, align 8
  %.not.i161 = icmp ne ptr %i.ek, null
  %i.el = icmp ne i32 %i.ej, 0
  %i.em = select i1 %.not.i161, i1 %i.el, i1 false
  br i1 %i.em, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.en = zext i32 %.fr515 to i64
  %i.eo = mul nuw nsw i64 %i.en, 12               ; 2 uses
  %i.ep = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eo) #15
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.eq = icmp eq i32 %.fr515, 0
  br i1 %i.eq, label %.loopexit334, label %.loopexit334.loopexit

.loopexit334.loopexit:                            ; preds = %bb.t
  %i.er = add nsw i64 %i.eo, -12                  ; 2 uses
  %i.es = urem i64 %i.er, 12
  %i.et = sub nuw nsw i64 %i.er, %i.es
  %i.eu = add nsw i64 %i.et, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ep, i8 0, i64 %i.eu, i1 false)
  br label %.loopexit334

.loopexit334:                                     ; preds = %.loopexit334.loopexit, %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.ep, ptr %i.ev, align 8
  %.pre422.pre = load i32, ptr %i.a, align 4
  br label %bb.u

bb.u:                                             ; preds = %.loopexit334, %bb.r
  %.pre422 = phi i32 [ %.pre422.pre, %.loopexit334 ], [ %i.ej, %bb.r ] ; 2 uses
  %i.ew = load ptr, ptr %i.ay, align 8
  %.not.i162 = icmp eq ptr %i.ew, null
  %i.ex = load ptr, ptr %i.az, align 8
  %.not1.i = icmp eq ptr %i.ex, null
  %or.cond.i = select i1 %.not.i162, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.u
  %.not307 = icmp eq i32 %.pre422, 0
  %i.ey = zext i32 %.fr515 to i64                 ; 2 uses
  br i1 %.not307, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread, label %bb.v

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.ez = icmp eq i32 %.fr515, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.v:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.fb = mul nuw nsw i64 %i.ey, 12               ; 4 uses
  %i.fc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fb) #15
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.fd = icmp eq i32 %.fr515, 0                  ; 2 uses
  br i1 %i.fd, label %.loopexit333, label %.loopexit333.loopexit

.loopexit333.loopexit:                            ; preds = %bb.w
  %i.fe = add nsw i64 %i.fb, -12                  ; 2 uses
  %i.ff = urem i64 %i.fe, 12
  %i.fg = sub nuw nsw i64 %i.fe, %i.ff
  %i.fh = add nsw i64 %i.fg, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fc, i8 0, i64 %i.fh, i1 false)
  br label %.loopexit333

.loopexit333:                                     ; preds = %.loopexit333.loopexit, %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.fc, ptr %i.fi, align 8
  %i.fj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fb) #15
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %.loopexit333
  br i1 %i.fd, label %.loopexit332, label %.loopexit332.loopexit

.loopexit332.loopexit:                            ; preds = %bb.x
  %i.fk = add nsw i64 %i.fb, -12                  ; 2 uses
  %i.fl = urem i64 %i.fk, 12
  %i.fm = sub nuw nsw i64 %i.fk, %i.fl
  %i.fn = add nsw i64 %i.fm, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fj, i8 0, i64 %i.fn, i1 false)
  br label %.loopexit332

.loopexit332:                                     ; preds = %.loopexit332.loopexit, %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store ptr %i.fj, ptr %i.fo, align 8
  %.pre421 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.u, %.loopexit332
  %i.fp = phi i32 [ %.pre422, %bb.u ], [ %.pre421, %.loopexit332 ] ; 2 uses
  %i.fq = zext i32 %.fr515 to i64                 ; 10 uses
  %i.fr = shl nuw nsw i64 %i.fq, 4                ; 16 uses
  %i.fs = icmp eq i32 %.fr515, 0                  ; 17 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 10 uses
  %i.fu = load ptr, ptr %i.ba, align 8
  %.not.i163 = icmp ne ptr %i.fu, null
  %i.fv = icmp ne i32 %i.fp, 0
  %i.fw = select i1 %.not.i163, i1 %i.fv, i1 false
  br i1 %i.fw, label %bb.y, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

_ZNK6aiMesh15HasVertexColorsEj.exit.preheader:    ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread, %.loopexit315.7, %.loopexit315.6, %.loopexit315.5, %.loopexit315.4, %.loopexit315.3, %.loopexit315.2, %.loopexit315.1, %.loopexit315, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.fx = phi ptr [ %i.ft, %.loopexit315.7 ], [ %i.ft, %.loopexit315.6 ], [ %i.ft, %.loopexit315.5 ], [ %i.ft, %.loopexit315.4 ], [ %i.ft, %.loopexit315.3 ], [ %i.ft, %.loopexit315.2 ], [ %i.ft, %.loopexit315.1 ], [ %i.ft, %.loopexit315 ], [ %i.ft, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %i.fa, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread ]
end_hunk_0
