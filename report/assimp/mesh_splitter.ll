Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/mesh_splitter?download=true
inline.NumInlined: 607
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE:bb.a
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
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %bb.n

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
  %.fr479 = freeze i32 %i.ct                      ; 11 uses
  %i.cu = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #15
          to label %bb.j unwind label %bb.o       ; 62 uses

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 27 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 224 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 1272
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 1312
  store ptr null, ptr %i.da, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.cx, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.cy, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cz, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cu, i8 0, i64 12, i1 false)
  %i.db = load i32, ptr %i.ar, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  store i32 %i.db, ptr %i.dc, align 8
  %i.dd = icmp eq ptr %i.cu, %2
  br i1 %i.dd, label %_ZN8aiStringaSERKS_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 236
  %i.df = load i32, ptr %i.as, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.df, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 240 ; 2 uses
  %i.dh = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.at, i64 %i.dh, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  store i8 0, ptr %i.di, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.j, %bb.k
  %i.dj = load ptr, ptr %i.au, align 8
  %.not.i159 = icmp ne ptr %i.dj, null
  %i.dk = load i32, ptr %i.av, align 8            ; 2 uses
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = select i1 %.not.i159, i1 %i.dl, i1 false
  br i1 %i.dm, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.dn = zext i32 %i.dk to i64
  %i.do = shl nuw nsw i64 %i.dn, 3                ; 2 uses
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #15
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 0, i64 %i.do, i1 false)
  store ptr %i.dp, ptr %i.cy, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.o:                                             ; preds = %bb.l, %bb.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.p:                                             ; preds = %bb.m, %_ZN8aiStringaSERKS_.exit
  %.not146 = icmp eq i32 %.0117, 0
  br i1 %.not146, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = load ptr, ptr %4, align 8               ; 3 uses
  %i.dt = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ds, %i.dt
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = ptrtoaddr ptr %i.ds to i64
  %i.dw = add i64 %i.du, -4
  %i.dx = sub i64 %i.dw, %i.dv
  %i.dy = and i64 %i.dx, -4
  %i.dz = add i64 %i.dy, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 -1, i64 %i.dz, i1 false)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ea = load ptr, ptr %i.aw, align 8
  %.not.i160 = icmp ne ptr %i.ea, null
  %i.eb = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = select i1 %.not.i160, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %i.ee = zext i32 %.fr479 to i64
  %i.ef = mul nuw nsw i64 %i.ee, 12               ; 2 uses
  %i.eg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ef) #15
          to label %bb.s unwind label %.loopexit323 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.eh = icmp eq i32 %.fr479, 0
  br i1 %i.eh, label %.loopexit322, label %.loopexit322.loopexit

.loopexit322.loopexit:                            ; preds = %bb.s
  %i.ei = add nsw i64 %i.ef, -12                  ; 2 uses
  %i.ej = urem i64 %i.ei, 12
  %i.ek = sub nuw nsw i64 %i.ei, %i.ej
  %i.el = add nsw i64 %i.ek, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eg, i8 0, i64 range(i64 0, 51539607541) %i.el, i1 false)
  br label %.loopexit322

.loopexit322:                                     ; preds = %.loopexit322.loopexit, %bb.s
  store ptr %i.eg, ptr %i.cx, align 8
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.t

.loopexit323:                                     ; preds = %bb.r, %bb.u, %bb.x, %.loopexit320, %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread, %.loopexit317, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i188
  %lpad.loopexit325 = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp324:                            ; preds = %bb.dk
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.t:                                             ; preds = %.loopexit322, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %i.em = phi i32 [ %.pre, %.loopexit322 ], [ %i.eb, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit ] ; 2 uses
  %i.en = load ptr, ptr %i.ax, align 8
  %.not.i161 = icmp ne ptr %i.en, null
  %i.eo = icmp ne i32 %i.em, 0
  %i.ep = select i1 %.not.i161, i1 %i.eo, i1 false
  br i1 %i.ep, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eq = zext i32 %.fr479 to i64
  %i.er = mul nuw nsw i64 %i.eq, 12               ; 2 uses
  %i.es = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.er) #15
          to label %bb.v unwind label %.loopexit323 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.et = icmp eq i32 %.fr479, 0
  br i1 %i.et, label %.loopexit321, label %.loopexit321.loopexit

.loopexit321.loopexit:                            ; preds = %bb.v
  %i.eu = add nsw i64 %i.er, -12                  ; 2 uses
  %i.ev = urem i64 %i.eu, 12
  %i.ew = sub nuw nsw i64 %i.eu, %i.ev
  %i.ex = add nsw i64 %i.ew, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.es, i8 0, i64 range(i64 0, 51539607541) %i.ex, i1 false)
  br label %.loopexit321

.loopexit321:                                     ; preds = %.loopexit321.loopexit, %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.es, ptr %i.ey, align 8
  %.pre386.pre = load i32, ptr %i.a, align 4
  br label %bb.w

bb.w:                                             ; preds = %.loopexit321, %bb.t
  %.pre386 = phi i32 [ %.pre386.pre, %.loopexit321 ], [ %i.em, %bb.t ] ; 2 uses
  %i.ez = load ptr, ptr %i.ay, align 8
  %.not.i162 = icmp eq ptr %i.ez, null
  %i.fa = load ptr, ptr %i.az, align 8
  %.not1.i = icmp eq ptr %i.fa, null
  %or.cond.i = select i1 %.not.i162, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.w
  %.not307 = icmp eq i32 %.pre386, 0
  %i.fb = zext i32 %.fr479 to i64                 ; 2 uses
  br i1 %.not307, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread, label %bb.x

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.fc = icmp eq i32 %.fr479, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.x:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.fe = mul nuw nsw i64 %i.fb, 12               ; 4 uses
  %i.ff = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fe) #15
          to label %bb.y unwind label %.loopexit323 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.fg = icmp eq i32 %.fr479, 0                  ; 2 uses
  br i1 %i.fg, label %.loopexit320, label %.loopexit320.loopexit

.loopexit320.loopexit:                            ; preds = %bb.y
  %i.fh = add nsw i64 %i.fe, -12                  ; 2 uses
  %i.fi = urem i64 %i.fh, 12
  %i.fj = sub nuw nsw i64 %i.fh, %i.fi
  %i.fk = add nsw i64 %i.fj, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ff, i8 0, i64 range(i64 0, 51539607541) %i.fk, i1 false)
  br label %.loopexit320

.loopexit320:                                     ; preds = %.loopexit320.loopexit, %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.ff, ptr %i.fl, align 8
  %i.fm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fe) #15
          to label %bb.z unwind label %.loopexit323 ; 2 uses

bb.z:                                             ; preds = %.loopexit320
  br i1 %i.fg, label %.loopexit319, label %.loopexit319.loopexit

.loopexit319.loopexit:                            ; preds = %bb.z
  %i.fn = add nsw i64 %i.fe, -12                  ; 2 uses
  %i.fo = urem i64 %i.fn, 12
  %i.fp = sub nuw nsw i64 %i.fn, %i.fo
  %i.fq = add nsw i64 %i.fp, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fm, i8 0, i64 range(i64 0, 51539607541) %i.fq, i1 false)
  br label %.loopexit319

.loopexit319:                                     ; preds = %.loopexit319.loopexit, %bb.z
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store ptr %i.fm, ptr %i.fr, align 8
  %.pre385 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.w, %.loopexit319
  %i.fs = phi i32 [ %.pre386, %bb.w ], [ %.pre385, %.loopexit319 ] ; 2 uses
  %i.ft = zext i32 %.fr479 to i64                 ; 10 uses
  %i.fu = shl nuw nsw i64 %i.ft, 4                ; 16 uses
  %i.fv = icmp eq i32 %.fr479, 0                  ; 17 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 10 uses
  %i.fx = load ptr, ptr %i.ba, align 8
  %.not.i163 = icmp ne ptr %i.fx, null
  %i.fy = icmp ne i32 %i.fs, 0
  %i.fz = select i1 %.not.i163, i1 %i.fy, i1 false
  br i1 %i.fz, label %bb.ab, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

_ZNK6aiMesh15HasVertexColorsEj.exit.preheader:    ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread, %.loopexit315.7, %.loopexit315.6, %.loopexit315.5, %.loopexit315.4, %.loopexit315.3, %.loopexit315.2, %.loopexit315.1, %.loopexit315, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.ga = phi ptr [ %i.fw, %.loopexit315.7 ], [ %i.fw, %.loopexit315.6 ], [ %i.fw, %.loopexit315.5 ], [ %i.fw, %.loopexit315.4 ], [ %i.fw, %.loopexit315.3 ], [ %i.fw, %.loopexit315.2 ], [ %i.fw, %.loopexit315.1 ], [ %i.fw, %.loopexit315 ], [ %i.fw, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %i.fd, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread ]
  %i.gb = phi i1 [ %i.fv, %.loopexit315.7 ], [ %i.fv, %.loopexit315.6 ], [ %i.fv, %.loopexit315.5 ], [ %i.fv, %.loopexit315.4 ], [ %i.fv, %.loopexit315.3 ], [ %i.fv, %.loopexit315.2 ], [ %i.fv, %.loopexit315.1 ], [ %i.fv, %.loopexit315 ], [ %i.fv, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %i.fc, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread ] ; 8 uses
  %i.gc = phi i64 [ %i.ft, %.loopexit315.7 ], [ %i.ft, %.loopexit315.6 ], [ %i.ft, %.loopexit315.5 ], [ %i.ft, %.loopexit315.4 ], [ %i.ft, %.loopexit315.3 ], [ %i.ft, %.loopexit315.2 ], [ %i.ft, %.loopexit315.1 ], [ %i.ft, %.loopexit315 ], [ %i.ft, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %i.fb, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread ]
  %i.gd = phi i32 [ %.pre387, %.loopexit315.7 ], [ %i.ia, %.loopexit315.6 ], [ %i.hu, %.loopexit315.5 ], [ %i.ho, %.loopexit315.4 ], [ %i.hi, %.loopexit315.3 ], [ %i.hc, %.loopexit315.2 ], [ %i.gw, %.loopexit315.1 ], [ %i.gq, %.loopexit315 ], [ %i.fs, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ 0, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread ]
  %i.ge = mul nuw nsw i64 %i.gc, 12               ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cu, i64 112 ; 2 uses
  %i.gg = add nsw i64 %i.ge, -12                  ; 2 uses
  %i.gh = urem i64 %i.gg, 12
  %i.gi = sub nuw nsw i64 %i.gg, %i.gh
  %i.gj = add nsw i64 %i.gi, 12                   ; 8 uses
  %i.gk = load ptr, ptr %i.bb, align 8
  %.not.i164 = icmp ne ptr %i.gk, null
  %i.gl = icmp ne i32 %i.gd, 0
  %i.gm = select i1 %.not.i164, i1 %i.gl, i1 false
  br i1 %i.gm, label %bb.as, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.aa:                                            ; preds = %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.ab:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.go = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.fv, label %.loopexit315, label %.loopexit315.loopexit

.loopexit315.loopexit:                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.go, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315

.loopexit315:                                     ; preds = %.loopexit315.loopexit, %bb.ac
  store ptr %i.go, ptr %i.fw, align 8
  %i.gp = load ptr, ptr %i.bk, align 8
  %.not.i163.1 = icmp ne ptr %i.gp, null
  %i.gq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = select i1 %.not.i163.1, i1 %i.gr, i1 false
  br i1 %i.gs, label %bb.ad, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.ad:                                            ; preds = %.loopexit315
  %i.gt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.ae unwind label %bb.aa     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fv, label %.loopexit315.1, label %.loopexit315.loopexit.1

.loopexit315.loopexit.1:                          ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gt, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315.1

.loopexit315.1:                                   ; preds = %.loopexit315.loopexit.1, %bb.ae
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = load ptr, ptr %i.bl, align 8
  %.not.i163.2 = icmp ne ptr %i.gv, null
  %i.gw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = select i1 %.not.i163.2, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.af, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.af:                                            ; preds = %.loopexit315.1
  %i.gz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.ag unwind label %bb.aa     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %i.fv, label %.loopexit315.2, label %.loopexit315.loopexit.2

.loopexit315.loopexit.2:                          ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gz, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315.2

.loopexit315.2:                                   ; preds = %.loopexit315.loopexit.2, %bb.ag
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  store ptr %i.gz, ptr %i.ha, align 8
  %i.hb = load ptr, ptr %i.bm, align 8
  %.not.i163.3 = icmp ne ptr %i.hb, null
  %i.hc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hd = icmp ne i32 %i.hc, 0
  %i.he = select i1 %.not.i163.3, i1 %i.hd, i1 false
  br i1 %i.he, label %bb.ah, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.ah:                                            ; preds = %.loopexit315.2
  %i.hf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.ai unwind label %bb.aa     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fv, label %.loopexit315.3, label %.loopexit315.loopexit.3

.loopexit315.loopexit.3:                          ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hf, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315.3

.loopexit315.3:                                   ; preds = %.loopexit315.loopexit.3, %bb.ai
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  store ptr %i.hf, ptr %i.hg, align 8
  %i.hh = load ptr, ptr %i.bn, align 8
  %.not.i163.4 = icmp ne ptr %i.hh, null
  %i.hi = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = select i1 %.not.i163.4, i1 %i.hj, i1 false
  br i1 %i.hk, label %bb.aj, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.aj:                                            ; preds = %.loopexit315.3
  %i.hl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.ak unwind label %bb.aa     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.fv, label %.loopexit315.4, label %.loopexit315.loopexit.4

.loopexit315.loopexit.4:                          ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hl, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315.4

.loopexit315.4:                                   ; preds = %.loopexit315.loopexit.4, %bb.ak
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  store ptr %i.hl, ptr %i.hm, align 8
  %i.hn = load ptr, ptr %i.bo, align 8
  %.not.i163.5 = icmp ne ptr %i.hn, null
  %i.ho = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hp = icmp ne i32 %i.ho, 0
  %i.hq = select i1 %.not.i163.5, i1 %i.hp, i1 false
  br i1 %i.hq, label %bb.al, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.al:                                            ; preds = %.loopexit315.4
  %i.hr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.am unwind label %bb.aa     ; 2 uses

bb.am:                                            ; preds = %bb.al
  br i1 %i.fv, label %.loopexit315.5, label %.loopexit315.loopexit.5

.loopexit315.loopexit.5:                          ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hr, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315.5

.loopexit315.5:                                   ; preds = %.loopexit315.loopexit.5, %bb.am
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  store ptr %i.hr, ptr %i.hs, align 8
  %i.ht = load ptr, ptr %i.bp, align 8
  %.not.i163.6 = icmp ne ptr %i.ht, null
  %i.hu = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hv = icmp ne i32 %i.hu, 0
  %i.hw = select i1 %.not.i163.6, i1 %i.hv, i1 false
  br i1 %i.hw, label %bb.an, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.an:                                            ; preds = %.loopexit315.5
  %i.hx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.ao unwind label %bb.aa     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  br i1 %i.fv, label %.loopexit315.6, label %.loopexit315.loopexit.6

.loopexit315.loopexit.6:                          ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hx, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315.6

.loopexit315.6:                                   ; preds = %.loopexit315.loopexit.6, %bb.ao
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  store ptr %i.hx, ptr %i.hy, align 8
  %i.hz = load ptr, ptr %i.bq, align 8
  %.not.i163.7 = icmp ne ptr %i.hz, null
  %i.ia = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ib = icmp ne i32 %i.ia, 0
  %i.ic = select i1 %.not.i163.7, i1 %i.ib, i1 false
  br i1 %i.ic, label %bb.ap, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

bb.ap:                                            ; preds = %.loopexit315.6
  %i.id = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #15
          to label %bb.aq unwind label %bb.aa     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.fv, label %.loopexit315.7, label %.loopexit315.loopexit.7

.loopexit315.loopexit.7:                          ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.id, i8 0, i64 range(i64 0, 68719476721) %i.fu, i1 false)
  br label %.loopexit315.7

.loopexit315.7:                                   ; preds = %.loopexit315.loopexit.7, %bb.aq
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  store ptr %i.id, ptr %i.ie, align 8
  %.pre387 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit.thread:      ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.1, %_ZNK6aiMesh15HasVertexColorsEj.exit, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bd)
          to label %.preheader318 unwind label %.loopexit323

.preheader318:                                    ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread
  %i.if = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.ii = zext i32 %.0117 to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cu, i64 128
  %i.il = getelementptr inbounds nuw i8, ptr %i.cu, i64 136
  %i.im = getelementptr inbounds nuw i8, ptr %i.cu, i64 144
  %i.in = getelementptr inbounds nuw i8, ptr %i.cu, i64 152
  %i.io = getelementptr inbounds nuw i8, ptr %i.cu, i64 160
  %i.ip = getelementptr inbounds nuw i8, ptr %i.cu, i64 168
  %i.iq = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.is = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.it = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.iu = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %i.iv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.iw = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  br label %bb.bi

bb.ar:                                            ; preds = %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.as:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader
  %i.iy = getelementptr inbounds nuw i8, ptr %i.cu, i64 176
  %i.iz = load i32, ptr %i.bc, align 8
  store i32 %i.iz, ptr %i.iy, align 8
  %i.ja = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.at unwind label %bb.ar     ; 2 uses

bb.at:                                            ; preds = %bb.as
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit:     ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ja, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit:              ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit, %bb.at
  store ptr %i.ja, ptr %i.gf, align 8
  %i.jb = load ptr, ptr %i.br, align 8
  %.not.i164.1 = icmp ne ptr %i.jb, null
  %i.jc = load i32, ptr %i.a, align 4
  %i.jd = icmp ne i32 %i.jc, 0
  %i.je = select i1 %.not.i164.1, i1 %i.jd, i1 false
  br i1 %i.je, label %bb.au, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.au:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit
  %i.jf = load i32, ptr %i.bs, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.cu, i64 180
  store i32 %i.jf, ptr %i.jg, align 4
  %i.jh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.av unwind label %bb.ar     ; 2 uses

bb.av:                                            ; preds = %bb.au
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1:   ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jh, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1, %bb.av
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  store ptr %i.jh, ptr %i.ji, align 8
  %i.jj = load ptr, ptr %i.bt, align 8
  %.not.i164.2 = icmp ne ptr %i.jj, null
  %i.jk = load i32, ptr %i.a, align 4
  %i.jl = icmp ne i32 %i.jk, 0
  %i.jm = select i1 %.not.i164.2, i1 %i.jl, i1 false
  br i1 %i.jm, label %bb.aw, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.aw:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.jn = load i32, ptr %i.bu, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.cu, i64 184
  store i32 %i.jn, ptr %i.jo, align 8
  %i.jp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.ax unwind label %bb.ar     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2:   ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jp, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2, %bb.ax
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cu, i64 128
  store ptr %i.jp, ptr %i.jq, align 8
  %i.jr = load ptr, ptr %i.bv, align 8
  %.not.i164.3 = icmp ne ptr %i.jr, null
  %i.js = load i32, ptr %i.a, align 4
  %i.jt = icmp ne i32 %i.js, 0
  %i.ju = select i1 %.not.i164.3, i1 %i.jt, i1 false
  br i1 %i.ju, label %bb.ay, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.ay:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.jv = load i32, ptr %i.bw, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cu, i64 188
  store i32 %i.jv, ptr %i.jw, align 4
  %i.jx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.az unwind label %bb.ar     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3:   ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jx, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3, %bb.az
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cu, i64 136
  store ptr %i.jx, ptr %i.jy, align 8
  %i.jz = load ptr, ptr %i.bx, align 8
  %.not.i164.4 = icmp ne ptr %i.jz, null
  %i.ka = load i32, ptr %i.a, align 4
  %i.kb = icmp ne i32 %i.ka, 0
  %i.kc = select i1 %.not.i164.4, i1 %i.kb, i1 false
  br i1 %i.kc, label %bb.ba, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.ba:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.kd = load i32, ptr %i.by, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cu, i64 192
  store i32 %i.kd, ptr %i.ke, align 8
  %i.kf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.bb unwind label %bb.ar     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4:   ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kf, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4, %bb.bb
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cu, i64 144
  store ptr %i.kf, ptr %i.kg, align 8
  %i.kh = load ptr, ptr %i.bz, align 8
  %.not.i164.5 = icmp ne ptr %i.kh, null
  %i.ki = load i32, ptr %i.a, align 4
  %i.kj = icmp ne i32 %i.ki, 0
  %i.kk = select i1 %.not.i164.5, i1 %i.kj, i1 false
  br i1 %i.kk, label %bb.bc, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.bc:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.kl = load i32, ptr %i.ca, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.cu, i64 196
  store i32 %i.kl, ptr %i.km, align 4
  %i.kn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.bd unwind label %bb.ar     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5:   ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kn, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5, %bb.bd
  %i.ko = getelementptr inbounds nuw i8, ptr %i.cu, i64 152
  store ptr %i.kn, ptr %i.ko, align 8
  %i.kp = load ptr, ptr %i.cb, align 8
  %.not.i164.6 = icmp ne ptr %i.kp, null
  %i.kq = load i32, ptr %i.a, align 4
  %i.kr = icmp ne i32 %i.kq, 0
  %i.ks = select i1 %.not.i164.6, i1 %i.kr, i1 false
  br i1 %i.ks, label %bb.be, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.be:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.kt = load i32, ptr %i.cc, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.cu, i64 200
  store i32 %i.kt, ptr %i.ku, align 8
  %i.kv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.bf unwind label %bb.ar     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6:   ; preds = %bb.bf
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kv, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6, %bb.bf
  %i.kw = getelementptr inbounds nuw i8, ptr %i.cu, i64 160
  store ptr %i.kv, ptr %i.kw, align 8
  %i.kx = load ptr, ptr %i.cd, align 8
  %.not.i164.7 = icmp ne ptr %i.kx, null
  %i.ky = load i32, ptr %i.a, align 4
  %i.kz = icmp ne i32 %i.ky, 0
  %i.la = select i1 %.not.i164.7, i1 %i.kz, i1 false
  br i1 %i.la, label %bb.bg, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.bg:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.lb = load i32, ptr %i.ce, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.cu, i64 204
  store i32 %i.lb, ptr %i.lc, align 4
  %i.ld = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #15
          to label %bb.bh unwind label %bb.ar     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gb, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7:   ; preds = %bb.bh
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ld, i8 0, i64 range(i64 0, 51539607541) %i.gj, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7, %bb.bh
  %i.le = getelementptr inbounds nuw i8, ptr %i.cu, i64 168
  store ptr %i.ld, ptr %i.le, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread

bb.bi:                                            ; preds = %.preheader318, %._crit_edge343
  %indvars.iv374 = phi i64 [ %i.ii, %.preheader318 ], [ %indvars.iv.next375, %._crit_edge343 ] ; 6 uses
  %i.lf = load i32, ptr %i.am, align 8
  %i.lg = zext i32 %i.lf to i64
  %i.lh = icmp samesign ult i64 %indvars.iv374, %i.lg
  br i1 %i.lh, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %bb.bi
  %i.li = load ptr, ptr %i.be, align 8
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %indvars.iv374 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8            ; 5 uses
  %.not352 = icmp eq i32 %i.lk, 0                 ; 2 uses
  br i1 %.not352, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8            ; 5 uses
  %i.ln = load ptr, ptr %4, align 8               ; 5 uses
  %wide.trip.count = zext i32 %i.lk to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.lo = icmp ult i32 %i.lk, 4
  br i1 %i.lo, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.bl

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bl
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0113332.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod505 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod505)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.bk ] ; 2 uses
  %.0113332.epil = phi i32 [ %.0113332.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.bk ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bk ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.epil
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = icmp eq i32 %i.lt, -1
  %i.lv = zext i1 %i.lu to i32
  %spec.select.epil = add i32 %.0113332.epil, %i.lv ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.bk, !llvm.loop !14

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.bk, %bb.bj
  %.0113.lcssa = phi i32 [ 0, %bb.bj ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.bk ]
  %i.lw = load i32, ptr %i.cv, align 4
  %i.lx = add i32 %i.lw, %.0113.lcssa
  %i.ly = icmp ugt i32 %i.lx, %.fr479
  br i1 %i.ly, label %.thread, label %bb.bm

bb.bl:                                            ; preds = %bb.bl, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.bl ] ; 5 uses
  %.0113332 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.bl ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.bl ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4
  %i.me = icmp eq i32 %i.md, -1
  %i.mf = zext i1 %i.me to i32
  %spec.select = add i32 %.0113332, %i.mf
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mi = load i32, ptr %i.mh, align 4
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4
  %i.mm = icmp eq i32 %i.ml, -1
  %i.mn = zext i1 %i.mm to i32
  %spec.select.1 = add i32 %spec.select, %i.mn
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i32, ptr %i.mp, align 4
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = icmp eq i32 %i.mt, -1
  %i.mv = zext i1 %i.mu to i32
  %spec.select.2 = add i32 %spec.select.1, %i.mv
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 12
  %i.my = load i32, ptr %i.mx, align 4
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4
  %i.nc = icmp eq i32 %i.nb, -1
  %i.nd = zext i1 %i.nc to i32
  %spec.select.3 = add i32 %spec.select.2, %i.nd  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bl, !llvm.loop !15

bb.bm:                                            ; preds = %._crit_edge
  %i.ne = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.nf = load ptr, ptr %i.bg, align 8
  %.not.i166 = icmp eq ptr %i.ne, %i.nf
  br i1 %.not.i166, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store ptr null, ptr %i.ng, align 8
  %i.nh = load ptr, ptr %i.bf, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  store ptr %i.ni, ptr %i.bf, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.bo:                                            ; preds = %bb.bm
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ne)
          to label %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge unwind label %bb.bq

._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.bo
  %.pre388 = load ptr, ptr %i.bf, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge, %bb.bn
  %i.nj = phi ptr [ %.pre388, %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge ], [ %i.ni, %bb.bn ] ; 2 uses
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 -16 ; 2 uses
  store i32 %i.lk, ptr %i.nk, align 8
  %i.nl = zext i32 %i.lk to i64                   ; 2 uses
  %i.nm = shl nuw nsw i64 %i.nl, 2
  %i.nn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nm) #15
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.no = getelementptr inbounds i8, ptr %i.nj, i64 -8 ; 3 uses
  store ptr %i.nn, ptr %i.no, align 8
  %i.np = load i32, ptr %i.nk, align 8
  %i.nq = load i32, ptr %i.cu, align 8
  %switch.tableidx = add i32 %i.np, -1            ; 2 uses
  %i.nr = icmp ult i32 %switch.tableidx, 3
  br i1 %i.nr, label %switch.lookup, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.br:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

switch.lookup:                                    ; preds = %bb.bp
  %i.nu = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE, i64 %i.nu
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %switch.lookup
  %.sink499 = phi i32 [ %switch.ext, %switch.lookup ], [ 8, %bb.bp ]
  %i.nv = or i32 %i.nq, %.sink499
  store i32 %i.nv, ptr %i.cu, align 8
  br i1 %.not352, label %._crit_edge343, label %.lr.ph342

._crit_edge343:                                   ; preds = %bb.cx, %bb.bs
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %i.nw = load i32, ptr %i.cv, align 4
  %i.nx = icmp eq i32 %i.nw, %.fr479
  br i1 %i.nx, label %.thread, label %bb.bi

.lr.ph342:                                        ; preds = %bb.bs, %bb.cx
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %bb.cx ], [ 0, %bb.bs ] ; 4 uses
  %i.ny = load ptr, ptr %i.be, align 8
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %indvars.iv374
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv369
  %i.od = load i32, ptr %i.oc, align 4
  %i.oe = zext i32 %i.od to i64                   ; 22 uses
  %i.of = load ptr, ptr %4, align 8
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.oe
  %i.oh = load i32, ptr %i.og, align 4            ; 2 uses
  %.not147 = icmp eq i32 %i.oh, -1
  br i1 %.not147, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph342
  %i.oi = load ptr, ptr %i.no, align 8
end_hunk_0
begin_hunk_1_@_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE:bb.a

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.vt, ptr %i.vx, align 4
  %.sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  store float %i.vv, ptr %.sroa_idx220, align 4
  %i.wa = load ptr, ptr %i.vw, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store ptr %i.wb, ptr %i.vw, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

bb.cu:                                            ; preds = %bb.cs
  %i.wc = load ptr, ptr %.0106, align 8           ; 5 uses
  %i.wd = ptrtoint ptr %i.vx to i64
  %i.we = ptrtoint ptr %i.wc to i64               ; 2 uses
  %i.wf = sub i64 %i.wd, %i.we                    ; 3 uses
  %i.wg = icmp eq i64 %i.wf, 9223372036854775800
  br i1 %i.wg, label %bb.cv, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc181 unwind label %.loopexit.split-lp

.noexc181:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cu
  %i.wh = ashr exact i64 %i.wf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wh, i64 1)
  %i.wi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.wh ; 2 uses
  %i.wj = icmp ult i64 %i.wi, %i.wh
  %i.wk = call i64 @llvm.umin.i64(i64 %i.wi, i64 1152921504606846975)
  %i.wl = select i1 %i.wj, i64 1152921504606846975, i64 %i.wk ; 3 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.wl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.wm = shl nuw nsw i64 %i.wl, 3
  %i.wn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wm) #15
          to label %.noexc182 unwind label %.loopexit311 ; 5 uses

.noexc182:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wf ; 2 uses
  store i32 %i.vt, ptr %i.wo, align 4
  %.sroa_idx222 = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  store float %i.vv, ptr %.sroa_idx222, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.wc, %i.vx
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc182, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.wr, %.lr.ph.i.i.i.i.i.i ], [ %i.wn, %.noexc182 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.wq, %.lr.ph.i.i.i.i.i.i ], [ %i.wc, %.noexc182 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.wp = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !29, !noalias !28
  store i64 %i.wp, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !28, !noalias !29
  %i.wq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.wq, %i.vx
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !19

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc182
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.wn, %.noexc182 ], [ %i.wr, %.lr.ph.i.i.i.i.i.i ]
  %i.ws = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.wc, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  %i.wt = load ptr, ptr %i.vy, align 8
  %i.wu = ptrtoint ptr %i.wt to i64
  %i.wv = sub i64 %i.wu, %i.we
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %i.wv) #14
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.cw, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.wn, ptr %.0106, align 8
  store ptr %i.ws, ptr %i.vw, align 8
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wl
  store ptr %i.ww, ptr %i.vy, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.ct
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.0228.0337, i64 8 ; 2 uses
  %.not309 = icmp eq ptr %i.wx, %i.vh
  br i1 %.not309, label %.loopexit310.loopexit, label %.lr.ph339, !llvm.loop !20

.loopexit311:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp:                               ; preds = %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit310.loopexit:                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.pre406 = load i32, ptr %i.cv, align 4
  br label %.loopexit310

.loopexit310:                                     ; preds = %.loopexit310.loopexit, %bb.co, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread
  %i.wy = phi i32 [ %.pre406, %.loopexit310.loopexit ], [ %i.va, %bb.co ], [ %i.va, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ]
  %i.wz = load ptr, ptr %4, align 8
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.oe
  store i32 %i.wy, ptr %i.xa, align 4
  %i.xb = load i32, ptr %i.cv, align 4
  %i.xc = add i32 %i.xb, 1
  store i32 %i.xc, ptr %i.cv, align 4
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit310, %bb.bt
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %i.nl
  br i1 %exitcond373.not, label %._crit_edge343, label %.lr.ph342, !llvm.loop !21

.thread:                                          ; preds = %._crit_edge343, %._crit_edge, %bb.bi
  %.3.in = phi i64 [ %indvars.iv374, %bb.bi ], [ %indvars.iv374, %._crit_edge ], [ %indvars.iv.next375, %._crit_edge343 ]
  %.3 = trunc i64 %.3.in to i32                   ; 2 uses
  %i.xd = load ptr, ptr %i.au, align 8
  %.not.i183 = icmp ne ptr %i.xd, null
  %i.xe = load i32, ptr %i.av, align 8            ; 2 uses
  %i.xf = icmp ne i32 %i.xe, 0
  %i.xg = select i1 %.not.i183, i1 %i.xf, i1 false
  br i1 %i.xg, label %.lr.ph347, label %.loopexit317

.lr.ph347:                                        ; preds = %.thread
  %i.xh = load ptr, ptr %i.cy, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.cu, i64 216 ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph347, %bb.de
  %i.xj = phi i32 [ %i.xe, %.lr.ph347 ], [ %i.zh, %bb.de ]
  %indvars.iv377 = phi i64 [ 0, %.lr.ph347 ], [ %indvars.iv.next378, %bb.de ] ; 3 uses
  %.0105344 = phi ptr [ %i.xh, %.lr.ph347 ], [ %.1, %bb.de ] ; 3 uses
  %i.xk = load ptr, ptr %i.cy, align 8
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv377
  %i.xm = load ptr, ptr %i.xl, align 8            ; 7 uses
  %.not153 = icmp eq ptr %i.xm, null
  br i1 %.not153, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xn = load ptr, ptr %i.au, align 8
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %indvars.iv377
  %i.xp = load ptr, ptr %i.xo, align 8            ; 3 uses
  %i.xq = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #15
          to label %bb.da unwind label %bb.dd     ; 13 uses

bb.da:                                            ; preds = %bb.cz
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.xq, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.xr, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 1060
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xt, align 4
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 1080
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xq, i64 1100
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xq, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xx, align 4
  %i.xy = getelementptr inbounds nuw i8, ptr %.0105344, i64 8
  store ptr %i.xq, ptr %.0105344, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.xz = load i32, ptr %i.xp, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bh, i8 0, i64 1024, i1 false)
  %spec.select.i184 = call i32 @llvm.umin.i32(i32 %i.xz, i32 1023) ; 3 uses
  store i32 %spec.select.i184, ptr %6, align 4
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.yb = zext nneg i32 %spec.select.i184 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr nonnull align 4 %i.ya, i64 %i.yb, i1 false)
  %i.yc = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.yb
  store i8 0, ptr %i.yc, align 1
  store i32 %spec.select.i184, ptr %i.xq, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xq, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yd, ptr nonnull align 4 %i.bh, i64 %i.yb, i1 false)
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 %i.yb
  store i8 0, ptr %i.ye, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xp, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xr, ptr noundef nonnull align 8 dereferenceable(64) %i.yf, i64 64, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8
  %i.yi = load ptr, ptr %i.xm, align 8
  %i.yj = ptrtoint ptr %i.yh to i64
  %i.yk = ptrtoint ptr %i.yi to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = ashr exact i64 %i.yl, 3                 ; 2 uses
  %i.yn = trunc i64 %i.ym to i32
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xq, i64 1028 ; 2 uses
  store i32 %i.yn, ptr %i.yo, align 4
  %i.yp = and i64 %i.ym, 4294967295               ; 2 uses
  %i.yq = shl nuw nsw i64 %i.yp, 3                ; 2 uses
  %i.yr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yq) #15
          to label %bb.db unwind label %bb.dd     ; 3 uses

bb.db:                                            ; preds = %bb.da
  %i.ys = icmp eq i64 %i.yp, 0
  br i1 %i.ys, label %.loopexit313, label %.loopexit313.loopexit

.loopexit313.loopexit:                            ; preds = %bb.db
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yr, i8 0, i64 range(i64 0, 34359738361) %i.yq, i1 false)
  br label %.loopexit313

.loopexit313:                                     ; preds = %.loopexit313.loopexit, %bb.db
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xq, i64 1048
  store ptr %i.yr, ptr %i.yt, align 8
  %i.yu = load ptr, ptr %i.xm, align 8
  %i.yv = load i32, ptr %i.yo, align 4
  %i.yw = zext i32 %i.yv to i64
  %i.yx = shl nuw nsw i64 %i.yw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yr, ptr nonnull align 4 %i.yu, i64 %i.yx, i1 false)
  %i.yy = load ptr, ptr %i.xm, align 8            ; 3 uses
  %.not.i.i.i186 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i.i186, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %.loopexit313
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = ptrtoint ptr %i.yy to i64
  %i.zd = sub i64 %i.zb, %i.zc
  call void @_ZdlPvm(ptr noundef nonnull %i.yy, i64 noundef %i.zd) #14
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %.loopexit313, %bb.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef 24) #14
  %i.ze = load i32, ptr %i.xi, align 8
  %i.zf = add i32 %i.ze, 1
  store i32 %i.zf, ptr %i.xi, align 8
  %.pre407 = load i32, ptr %i.av, align 8
  br label %bb.de

bb.dd:                                            ; preds = %bb.da, %bb.cz
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.de:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, %bb.cy
  %i.zh = phi i32 [ %.pre407, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %i.xj, %bb.cy ] ; 2 uses
  %.1 = phi ptr [ %i.xy, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %.0105344, %bb.cy ]
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.zi = zext i32 %i.zh to i64
  %i.zj = icmp samesign ult i64 %indvars.iv.next378, %i.zi
  br i1 %i.zj, label %bb.cy, label %.loopexit317, !llvm.loop !22

.loopexit317:                                     ; preds = %bb.de, %.thread
  %i.zk = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.zl = load ptr, ptr %5, align 8               ; 2 uses
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn                    ; 3 uses
  %i.zp = ashr exact i64 %i.zo, 4                 ; 2 uses
  %i.zq = icmp ugt i64 %i.zp, 1152921504606846975
  %i.zr = or disjoint i64 %i.zo, 8
  %i.zs = select i1 %i.zq, i64 -1, i64 %i.zr
  %i.zt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zs) #15
          to label %bb.df unwind label %.loopexit323 ; 2 uses

bb.df:                                            ; preds = %.loopexit317
  store i64 %i.zp, ptr %i.zt, align 16
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 3 uses
  %i.zv = icmp eq ptr %i.zk, %i.zl
  br i1 %i.zv, label %.loopexit316, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.zw = getelementptr inbounds i8, ptr %i.zu, i64 %i.zo
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %bb.dg
  %i.zx = phi ptr [ %i.zu, %bb.dg ], [ %i.zz, %bb.dh ] ; 3 uses
  store i32 0, ptr %i.zx, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  store ptr null, ptr %i.zy, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 16 ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.zw
  br i1 %i.aaa, label %.loopexit316, label %bb.dh

.loopexit316:                                     ; preds = %bb.dh, %bb.df
  %i.aab = getelementptr inbounds nuw i8, ptr %i.cu, i64 208 ; 2 uses
  store ptr %i.zu, ptr %i.aab, align 8
  %i.aac = load ptr, ptr %i.bf, align 8
  %i.aad = load ptr, ptr %5, align 8
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = ptrtoint ptr %i.aad to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  %i.aah = lshr exact i64 %i.aag, 4
  %i.aai = trunc i64 %i.aah to i32                ; 2 uses
  store i32 %i.aai, ptr %i.cw, align 8
  %.not355 = icmp eq i32 %i.aai, 0
  br i1 %.not355, label %._crit_edge351, label %.lr.ph350

._crit_edge351:                                   ; preds = %_ZN6aiFaceaSERKS_.exit, %.loopexit316
  %i.aaj = load ptr, ptr %i.bi, align 8           ; 6 uses
  %i.aak = load ptr, ptr %i.bj, align 8
  %.not.i187 = icmp eq ptr %i.aaj, %i.aak
  br i1 %.not.i187, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %._crit_edge351
  store ptr %i.cu, ptr %i.aaj, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  store i32 %1, ptr %i.aal, align 8
  %i.aam = load ptr, ptr %i.bi, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  store ptr %i.aan, ptr %i.bi, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202

bb.dj:                                            ; preds = %._crit_edge351
  %i.aao = load ptr, ptr %3, align 8              ; 5 uses
  %i.aap = ptrtoint ptr %i.aaj to i64
  %i.aaq = ptrtoint ptr %i.aao to i64             ; 2 uses
  %i.aar = sub i64 %i.aap, %i.aaq                 ; 3 uses
  %i.aas = icmp eq i64 %i.aar, 9223372036854775792
  br i1 %i.aas, label %bb.dk, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i188

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc200 unwind label %.loopexit.split-lp324

.noexc200:                                        ; preds = %bb.dk
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i188: ; preds = %bb.dj
  %i.aat = ashr exact i64 %i.aar, 4               ; 3 uses
  %.sroa.speculated.i.i.i189 = call i64 @llvm.umax.i64(i64 %i.aat, i64 1)
  %i.aau = add nsw i64 %.sroa.speculated.i.i.i189, %i.aat ; 2 uses
  %i.aav = icmp ult i64 %i.aau, %i.aat
  %i.aaw = call i64 @llvm.umin.i64(i64 %i.aau, i64 576460752303423487)
  %i.aax = select i1 %i.aav, i64 576460752303423487, i64 %i.aaw ; 3 uses
  %.not.i.i.i190 = icmp ne i64 %i.aax, 0
  call void @llvm.assume(i1 %.not.i.i.i190)
  %i.aay = shl nuw nsw i64 %i.aax, 4
  %i.aaz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aay) #15
          to label %.noexc201 unwind label %.loopexit323 ; 5 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i188
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aar ; 2 uses
  store ptr %i.cu, ptr %i.aba, align 8
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  store i32 %1, ptr %i.abb, align 8
  %.not10.i.i.i.i.i191 = icmp eq ptr %i.aao, %i.aaj
  br i1 %.not10.i.i.i.i.i191, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196, label %.lr.ph.i.i.i.i.i192

.lr.ph.i.i.i.i.i192:                              ; preds = %.noexc201, %.lr.ph.i.i.i.i.i192
  %.012.i.i.i.i.i193 = phi ptr [ %i.abd, %.lr.ph.i.i.i.i.i192 ], [ %i.aaz, %.noexc201 ] ; 2 uses
  %.0911.i.i.i.i.i194 = phi ptr [ %i.abc, %.lr.ph.i.i.i.i.i192 ], [ %i.aao, %.noexc201 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i193, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i194, i64 16, i1 false), !alias.scope !30
  %i.abc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 16 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 16 ; 2 uses
  %.not.i.i.i.i.i195 = icmp eq ptr %i.abc, %i.aaj
  br i1 %.not.i.i.i.i.i195, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196, label %.lr.ph.i.i.i.i.i192, !llvm.loop !13

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196: ; preds = %.lr.ph.i.i.i.i.i192, %.noexc201
  %.0.lcssa.i.i.i.i.i197 = phi ptr [ %i.aaz, %.noexc201 ], [ %i.abd, %.lr.ph.i.i.i.i.i192 ]
  %i.abe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i197, i64 16
  %.not.i34.i.i198 = icmp eq ptr %i.aao, null
  br i1 %.not.i34.i.i198, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i199, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196
  %i.abf = load ptr, ptr %i.bj, align 8
  %i.abg = ptrtoint ptr %i.abf to i64
  %i.abh = sub i64 %i.abg, %i.aaq
  call void @_ZdlPvm(ptr noundef nonnull %i.aao, i64 noundef %i.abh) #14
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i199

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i199: ; preds = %bb.dl, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i196
  store ptr %i.aaz, ptr %3, align 8
  store ptr %i.abe, ptr %i.bi, align 8
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.aaz, i64 %i.aax
  store ptr %i.abi, ptr %i.bj, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit202

.lr.ph350:                                        ; preds = %.loopexit316, %_ZN6aiFaceaSERKS_.exit
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %_ZN6aiFaceaSERKS_.exit ], [ 0, %.loopexit316 ] ; 3 uses
  %i.abj = load ptr, ptr %5, align 8              ; 2 uses
  %i.abk = getelementptr inbounds nuw [16 x i8], ptr %i.abj, i64 %indvars.iv381 ; 2 uses
  %i.abl = load ptr, ptr %i.aab, align 8          ; 2 uses
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %indvars.iv381 ; 3 uses
  %i.abn = icmp eq ptr %i.abj, %i.abl
  br i1 %i.abn, label %_ZN6aiFaceaSERKS_.exit, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph350
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 3 uses
  %i.abp = load ptr, ptr %i.abo, align 8          ; 2 uses
  %i.abq = icmp eq ptr %i.abp, null
  br i1 %i.abq, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZdaPv(ptr noundef nonnull %i.abp) #14
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.abr = load i32, ptr %i.abk, align 8          ; 3 uses
  store i32 %i.abr, ptr %i.abm, align 8
  %.not.i203 = icmp eq i32 %i.abr, 0
  br i1 %.not.i203, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abs = zext i32 %i.abr to i64
  %i.abt = shl nuw nsw i64 %i.abs, 2
  %i.abu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abt) #15
          to label %.noexc204 unwind label %bb.dr ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12MeshSplitter10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS6_EE:bb.a
  store i32 %i.ah, ptr %.sroa.13.174, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.13.174, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = ptrtoint ptr %.sroa.21.275 to i64
  %i.ak = ptrtoint ptr %.sroa.0.273 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 6 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #15
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv to i32
  store i32 %i.av, ptr %i.au, align 4
  %i.aw = icmp sgt i64 %i.al, 0
  br i1 %i.aw, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %.sroa.0.273, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0.273, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.273, i64 noundef %i.al) #14
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.f, %bb.d
  %.sroa.0.3 = phi ptr [ %.sroa.0.273, %bb.d ], [ %i.at, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0.273, %bb.f ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.174, %bb.d ], [ %i.ax, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ai, %bb.f ] ; 2 uses
  %.sroa.21.3 = phi ptr [ %.sroa.21.275, %bb.d ], [ %i.ay, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.21.275, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !32

bb.k:                                             ; preds = %._crit_edge84
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 4) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge84
  %i.az = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.ba = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = lshr exact i64 %i.bb, 2
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr %i.a, align 8
  %i.be = and i64 %i.bb, 17179869180
  %i.bf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.m unwind label %bb.b

bb.m:                                             ; preds = %bb.l
  store ptr %i.bf, ptr %i.k, align 8
  %i.bg = load i32, ptr %i.a, align 8
  %.not98 = icmp eq i32 %i.bg, 0
  br i1 %.not98, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %.lr.ph90, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %.not99 = icmp eq i32 %i.bi, 0
  br i1 %.not99, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %._crit_edge91
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %wide.trip.count114 = zext i32 %i.bi to i64
  br label %bb.o

.lr.ph90:                                         ; preds = %bb.m, %.lr.ph90
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.lr.ph90 ], [ 0, %bb.m ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv108
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = load ptr, ptr %i.k, align 8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv108
  store i32 %i.bl, ptr %i.bn, align 4
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bo = load i32, ptr %i.a, align 8
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next109, %i.bp
  br i1 %i.bq, label %.lr.ph90, label %._crit_edge91, !llvm.loop !33

._crit_edge95:                                    ; preds = %bb.p, %._crit_edge91
  %.not.i.i.i37 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge95
  %i.br = ptrtoint ptr %.sroa.21.0.lcssa to i64
  %i.bs = sub i64 %i.br, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bs) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge95, %bb.n
  ret void

bb.o:                                             ; preds = %.lr.ph94, %bb.p
  %indvars.iv111 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next112, %bb.p ] ; 2 uses
  %i.bt = load ptr, ptr %i.bj, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv111
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void @_ZN12MeshSplitter10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS6_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge95, label %bb.o, !llvm.loop !34

bb.q:                                             ; preds = %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.b
  %.sroa.0.4 = phi ptr [ %.sroa.0.1, %bb.b ], [ %.sroa.0.0.lcssa, %bb.q ], [ %.sroa.0.273, %.loopexit ], [ %.sroa.0.273, %.loopexit.split-lp ] ; 3 uses
  %.sroa.21.4 = phi ptr [ %.sroa.21.1, %bb.b ], [ %.sroa.21.0.lcssa, %bb.q ], [ %.sroa.21.275, %.loopexit ], [ %.sroa.21.275, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.bw, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i38 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIjSaIjEED2Ev.exit39, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = ptrtoint ptr %.sroa.21.4 to i64
  %i.by = ptrtoint ptr %.sroa.0.4 to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.bz) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit39

_ZNSt6vectorIjSaIjEED2Ev.exit39:                  ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_Z28ComputeVertexBoneWeightTablePK6aiMesh(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.fr39 = freeze i32 %i.b                        ; 2 uses
  %.not19 = icmp eq i32 %.fr39, 0
  br i1 %.not19, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = zext i32 %.fr39 to i64                   ; 2 uses
  %i.f = mul nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 8
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #15 ; 2 uses
  store i64 %i.e, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = add nsw i64 %i.f, -24                    ; 2 uses
  %i.k = urem i64 %i.j, 24
  %i.l = sub nuw nsw i64 %i.j, %i.k
  %i.m = add nuw nsw i64 %i.l, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 range(i64 0, 103079215081) %i.m, i1 false)
  %i.n = load i32, ptr %i.c, align 8              ; 2 uses
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph25

.lr.ph25:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.p = phi i32 [ %i.n, %.lr.ph25 ], [ %i.y, %._crit_edge ]
  %indvars.iv29 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next30, %._crit_edge ] ; 4 uses
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv29
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1028 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1048
  %i.w = trunc nuw i64 %indvars.iv29 to i32
  %i.x = trunc nuw i64 %indvars.iv29 to i32
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %.pre = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.y = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.p, %bb.d ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next30, %i.z
  br i1 %i.aa, label %bb.d, label %.loopexit, !llvm.loop !35

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.w, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load float, ptr %i.ag, align 4
  store float %i.am, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.an, ptr %i.ah, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.af, align 8            ; 5 uses
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.h, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #15 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar ; 2 uses
  store i32 %i.x, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.ag, align 4
  store float %i.bc, ptr %i.bb, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ao, %i.ai
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !42, !noalias !41
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 4, !alias.scope !41, !noalias !42
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #14
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.az, ptr %i.af, align 8
  store ptr %i.bg, ptr %i.ah, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bh, ptr %i.aj, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.t, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.i, %.preheader ], [ %i.i, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = tail call noundef ptr @_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %i.k) ; 3 uses
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #14
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.e, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, %bb.d
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split ], [ %i.o, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #14
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

end_hunk_2
