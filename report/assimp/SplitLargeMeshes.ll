inline.NumInlined: 641
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex7ExecuteEP7aiScene:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.k, %bb.f
  %i.bb = phi ptr [ %.pre58, %bb.f ], [ %i.p, %bb.k ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.an, %bb.k ]
  %.not.i.i.i36 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit37

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit37: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.0", align 8     ; 14 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::vector.10", align 8    ; 13 uses
  %6 = alloca %struct.aiString, align 4           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 21 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ugt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.dz

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6Assimp28ComputeVertexBoneWeightTableEPK6aiMesh(ptr noundef nonnull %2) ; 5 uses
  %i.h = load i32, ptr %i.b, align 4              ; 3 uses
  %i.i = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 -1, ptr %i.a, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not299 = icmp eq i32 %i.h, 0
  br i1 %.not299, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %bb.i

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c
  %i.l = udiv i32 %i.h, %i.i
  %i.m = add i32 %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = udiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = add i32 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ae = zext i32 %i.r to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not148 = icmp eq ptr %i.g, null               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.0118 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %.3121, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit ] ; 2 uses
  %i.bu = load i32, ptr %i.d, align 8
  %.fr = freeze i32 %i.bu                         ; 9 uses
  %i.bv = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #17
          to label %bb.e unwind label %bb.j       ; 64 uses

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 27 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 224 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1272
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1312
  store ptr null, ptr %i.cb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.by, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.bz, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ca, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bv, i8 0, i64 12, i1 false)
  %i.cc = load i32, ptr %i.s, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  store i32 %i.cc, ptr %i.cd, align 8
  %i.ce = icmp eq ptr %i.bv, %2
  br i1 %i.ce, label %_ZN8aiStringaSERKS_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 236
  %i.cg = load i32, ptr %i.t, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.cg, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 240 ; 2 uses
  %i.ci = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr nonnull align 4 %i.u, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  store i8 0, ptr %i.cj, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.e, %bb.f
  %i.ck = load ptr, ptr %i.v, align 8
  %.not.i = icmp ne ptr %i.ck, null
  %i.cl = load i32, ptr %i.w, align 8             ; 2 uses
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = select i1 %.not.i, i1 %i.cm, i1 false
  br i1 %i.cn, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.co = zext i32 %i.cl to i64
  %i.cp = shl nuw nsw i64 %i.co, 3                ; 2 uses
  %i.cq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #17
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.cq, ptr %i.bz, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cq, i8 0, i64 %i.cp, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.dx

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.k:                                             ; preds = %bb.h, %_ZN8aiStringaSERKS_.exit
  %.not = icmp eq i32 %.0118, 0
  br i1 %.not, label %.loopexit318, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %4, align 8               ; 3 uses
  %i.cu = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not300326 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not300326, label %.loopexit318, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %7 = ptrtoaddr ptr %i.cu to i64
  %8 = ptrtoaddr ptr %i.ct to i64
  %i.cv = add i64 %7, -4
  %i.cw = sub i64 %i.cv, %8
  %i.cx = and i64 %i.cw, -4
  %i.cy = add i64 %i.cx, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 -1, i64 %i.cy, i1 false)
  br label %.loopexit318

.loopexit318:                                     ; preds = %.lr.ph.preheader, %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.cz = load ptr, ptr %i.x, align 8
  %.not.i158 = icmp ne ptr %i.cz, null
  %i.da = load i32, ptr %i.b, align 4
  %.fr351 = freeze i32 %i.da
  %i.db = icmp ne i32 %.fr351, 0                  ; 4 uses
  %i.dc = and i1 %.not.i158, %i.db
  br i1 %i.dc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.loopexit318
  %i.dd = zext i32 %.fr to i64
  %i.de = mul nuw nsw i64 %i.dd, 12               ; 2 uses
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #17
          to label %bb.n unwind label %.loopexit319 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.dg = icmp eq i32 %.fr, 0
  br i1 %i.dg, label %.loopexit317, label %.loopexit317.loopexit

.loopexit317.loopexit:                            ; preds = %bb.n
  %i.dh = add nsw i64 %i.de, -12                  ; 2 uses
  %i.di = urem i64 %i.dh, 12
  %i.dj = sub nuw nsw i64 %i.dh, %i.di
  %i.dk = add nsw i64 %i.dj, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.df, i8 0, i64 %i.dk, i1 false)
  br label %.loopexit317

.loopexit317:                                     ; preds = %.loopexit317.loopexit, %bb.n
  store ptr %i.df, ptr %i.by, align 8
  br label %bb.o

.loopexit319:                                     ; preds = %bb.m, %bb.p, %bb.s, %.loopexit315, %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, %.loopexit312, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp320:                            ; preds = %bb.df
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.o:                                             ; preds = %.loopexit317, %.loopexit318
  %i.dl = load ptr, ptr %i.y, align 8
  %.not.i159 = icmp ne ptr %i.dl, null
  %i.dm = and i1 %.not.i159, %i.db
  br i1 %i.dm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dn = zext i32 %.fr to i64
  %i.do = mul nuw nsw i64 %i.dn, 12               ; 2 uses
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #17
          to label %bb.q unwind label %.loopexit319 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.dq = icmp eq i32 %.fr, 0
  br i1 %i.dq, label %.loopexit316, label %.loopexit316.loopexit

.loopexit316.loopexit:                            ; preds = %bb.q
  %i.dr = add nsw i64 %i.do, -12                  ; 2 uses
  %i.ds = urem i64 %i.dr, 12
  %i.dt = sub nuw nsw i64 %i.dr, %i.ds
  %i.du = add nsw i64 %i.dt, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dp, i8 0, i64 %i.du, i1 false)
  br label %.loopexit316

.loopexit316:                                     ; preds = %.loopexit316.loopexit, %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.dp, ptr %i.dv, align 8
  br label %bb.r

bb.r:                                             ; preds = %.loopexit316, %bb.o
  %i.dw = load ptr, ptr %i.z, align 8
  %.not.i160 = icmp ne ptr %i.dw, null
  %i.dx = load ptr, ptr %i.aa, align 8
  %.not1.i = icmp ne ptr %i.dx, null
  %or.cond.i.not301 = select i1 %.not.i160, i1 %.not1.i, i1 false
  %brmerge.not = and i1 %or.cond.i.not301, %i.db
  %i.dy = zext i32 %.fr to i64                    ; 3 uses
  br i1 %brmerge.not, label %bb.s, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.dz = mul nuw nsw i64 %i.dy, 12               ; 4 uses
  %i.ea = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #17
          to label %bb.t unwind label %.loopexit319 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.eb = icmp eq i32 %.fr, 0                     ; 2 uses
  br i1 %i.eb, label %.loopexit315, label %.loopexit315.loopexit

.loopexit315.loopexit:                            ; preds = %bb.t
  %i.ec = add nsw i64 %i.dz, -12                  ; 2 uses
  %i.ed = urem i64 %i.ec, 12
  %i.ee = sub nuw nsw i64 %i.ec, %i.ed
  %i.ef = add nsw i64 %i.ee, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ea, i8 0, i64 %i.ef, i1 false)
  br label %.loopexit315

.loopexit315:                                     ; preds = %.loopexit315.loopexit, %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.ea, ptr %i.eg, align 8
  %i.eh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #17
          to label %bb.u unwind label %.loopexit319 ; 2 uses

bb.u:                                             ; preds = %.loopexit315
  br i1 %i.eb, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread, label %.loopexit314.loopexit

.loopexit314.loopexit:                            ; preds = %bb.u
  %i.ei = add nsw i64 %i.dz, -12                  ; 2 uses
  %i.ej = urem i64 %i.ei, 12
  %i.ek = sub nuw nsw i64 %i.ei, %i.ej
  %i.el = add nsw i64 %i.ek, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eh, i8 0, i64 %i.el, i1 false)
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread: ; preds = %bb.u, %.loopexit314.loopexit
  %i.em = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr %i.eh, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  br i1 %i.db, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.ep = phi ptr [ %i.en, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.thread ], [ %i.eo, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ] ; 10 uses
  %i.eq = shl nuw nsw i64 %i.dy, 4                ; 16 uses
  %i.er = icmp eq i32 %.fr, 0                     ; 16 uses
  %i.es = load ptr, ptr %i.ab, align 8
  %.not.i161.not = icmp eq ptr %i.es, null
  br i1 %.not.i161.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.w

_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.et = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split

_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader:   ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader, %.loopexit310, %.loopexit310.1, %.loopexit310.2, %.loopexit310.3, %.loopexit310.4, %.loopexit310.5, %.loopexit310.6, %.loopexit310.7
  %i.eu = mul nuw nsw i64 %i.dy, 12               ; 9 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bv, i64 112 ; 10 uses
  %i.ew = add nsw i64 %i.eu, -12                  ; 2 uses
  %i.ex = urem i64 %i.ew, 12
  %i.ey = sub nuw nsw i64 %i.ew, %i.ex
  %i.ez = add nsw i64 %i.ey, 12                   ; 8 uses
  %i.fa = load ptr, ptr %i.ac, align 8
  %.not.i162.not = icmp eq ptr %i.fa, null
  br i1 %.not.i162.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.an

bb.v:                                             ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.w:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader
  %i.fc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #17
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.x:                                             ; preds = %bb.w
  br i1 %i.er, label %.loopexit310, label %.loopexit310.loopexit

.loopexit310.loopexit:                            ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fc, i8 0, i64 %i.eq, i1 false)
  br label %.loopexit310

.loopexit310:                                     ; preds = %.loopexit310.loopexit, %bb.x
  store ptr %i.fc, ptr %i.ep, align 8
  %i.fd = load ptr, ptr %i.al, align 8
  %.not.i161.not.1 = icmp eq ptr %i.fd, null
  br i1 %.not.i161.not.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.y

bb.y:                                             ; preds = %.loopexit310
  %i.fe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #17
          to label %bb.z unwind label %bb.v       ; 2 uses

bb.z:                                             ; preds = %bb.y
  br i1 %i.er, label %.loopexit310.1, label %.loopexit310.loopexit.1

.loopexit310.loopexit.1:                          ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fe, i8 0, i64 %i.eq, i1 false)
  br label %.loopexit310.1

.loopexit310.1:                                   ; preds = %.loopexit310.loopexit.1, %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store ptr %i.fe, ptr %i.ff, align 8
  %i.fg = load ptr, ptr %i.am, align 8
  %.not.i161.not.2 = icmp eq ptr %i.fg, null
  br i1 %.not.i161.not.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.aa

bb.aa:                                            ; preds = %.loopexit310.1
  %i.fh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #17
          to label %bb.ab unwind label %bb.v      ; 2 uses

end_hunk_0
begin_hunk_1_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  %i.pc = load ptr, ptr %i.gk, align 8
  %i.pd = load i32, ptr %i.bw, align 4
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [12 x i8], ptr %i.pc, i64 %i.pe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pf, ptr noundef nonnull align 4 dereferenceable(12) %i.pb, i64 12, i1 false)
  %.pre394 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.preheader

_ZNK6aiMesh15HasVertexColorsEj.exit176.preheader: ; preds = %bb.ca, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.7
  %i.pg = phi i32 [ %.pre394, %bb.ca ], [ %i.ox, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.7 ] ; 2 uses
  %i.ph = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i174 = icmp ne ptr %i.ph, null
  %i.pi = icmp ne i32 %i.pg, 0
  %i.pj = select i1 %.not.i174, i1 %i.pi, i1 false
  br i1 %i.pj, label %bb.cb, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.1

bb.cb:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.preheader
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.ph, i64 %i.le
  %i.pl = load ptr, ptr %i.fz, align 8
  %i.pm = load i32, ptr %i.bw, align 4
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %i.pn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.po, ptr noundef nonnull align 4 dereferenceable(16) %i.pk, i64 16, i1 false)
  %.pre395 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.1

_ZNK6aiMesh15HasVertexColorsEj.exit176.1:         ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.preheader, %bb.cb
  %i.pp = phi i32 [ %i.pg, %_ZNK6aiMesh15HasVertexColorsEj.exit176.preheader ], [ %.pre395, %bb.cb ] ; 2 uses
  %i.pq = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i174.1 = icmp ne ptr %i.pq, null
  %i.pr = icmp ne i32 %i.pp, 0
  %i.ps = select i1 %.not.i174.1, i1 %i.pr, i1 false
  br i1 %i.ps, label %bb.cc, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.2

bb.cc:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.1
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %i.pq, i64 %i.le
  %i.pu = load ptr, ptr %i.gl, align 8
  %i.pv = load i32, ptr %i.bw, align 4
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.pw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.px, ptr noundef nonnull align 4 dereferenceable(16) %i.pt, i64 16, i1 false)
  %.pre396 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.2

_ZNK6aiMesh15HasVertexColorsEj.exit176.2:         ; preds = %bb.cc, %_ZNK6aiMesh15HasVertexColorsEj.exit176.1
  %i.py = phi i32 [ %.pre396, %bb.cc ], [ %i.pp, %_ZNK6aiMesh15HasVertexColorsEj.exit176.1 ] ; 2 uses
  %i.pz = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i174.2 = icmp ne ptr %i.pz, null
  %i.qa = icmp ne i32 %i.py, 0
  %i.qb = select i1 %.not.i174.2, i1 %i.qa, i1 false
  br i1 %i.qb, label %bb.cd, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.3

bb.cd:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.2
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.pz, i64 %i.le
  %i.qd = load ptr, ptr %i.gm, align 8
  %i.qe = load i32, ptr %i.bw, align 4
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.qd, i64 %i.qf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qg, ptr noundef nonnull align 4 dereferenceable(16) %i.qc, i64 16, i1 false)
  %.pre397 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.3

_ZNK6aiMesh15HasVertexColorsEj.exit176.3:         ; preds = %bb.cd, %_ZNK6aiMesh15HasVertexColorsEj.exit176.2
  %i.qh = phi i32 [ %.pre397, %bb.cd ], [ %i.py, %_ZNK6aiMesh15HasVertexColorsEj.exit176.2 ] ; 2 uses
  %i.qi = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i174.3 = icmp ne ptr %i.qi, null
  %i.qj = icmp ne i32 %i.qh, 0
  %i.qk = select i1 %.not.i174.3, i1 %i.qj, i1 false
  br i1 %i.qk, label %bb.ce, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.4

bb.ce:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.3
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %i.le
  %i.qm = load ptr, ptr %i.gn, align 8
  %i.qn = load i32, ptr %i.bw, align 4
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.qo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qp, ptr noundef nonnull align 4 dereferenceable(16) %i.ql, i64 16, i1 false)
  %.pre398 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.4

_ZNK6aiMesh15HasVertexColorsEj.exit176.4:         ; preds = %bb.ce, %_ZNK6aiMesh15HasVertexColorsEj.exit176.3
  %i.qq = phi i32 [ %.pre398, %bb.ce ], [ %i.qh, %_ZNK6aiMesh15HasVertexColorsEj.exit176.3 ] ; 2 uses
  %i.qr = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i174.4 = icmp ne ptr %i.qr, null
  %i.qs = icmp ne i32 %i.qq, 0
  %i.qt = select i1 %.not.i174.4, i1 %i.qs, i1 false
  br i1 %i.qt, label %bb.cf, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.5

bb.cf:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.4
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %i.le
  %i.qv = load ptr, ptr %i.go, align 8
  %i.qw = load i32, ptr %i.bw, align 4
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %i.qx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qy, ptr noundef nonnull align 4 dereferenceable(16) %i.qu, i64 16, i1 false)
  %.pre399 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.5

_ZNK6aiMesh15HasVertexColorsEj.exit176.5:         ; preds = %bb.cf, %_ZNK6aiMesh15HasVertexColorsEj.exit176.4
  %i.qz = phi i32 [ %.pre399, %bb.cf ], [ %i.qq, %_ZNK6aiMesh15HasVertexColorsEj.exit176.4 ] ; 2 uses
  %i.ra = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i174.5 = icmp ne ptr %i.ra, null
  %i.rb = icmp ne i32 %i.qz, 0
  %i.rc = select i1 %.not.i174.5, i1 %i.rb, i1 false
  br i1 %i.rc, label %bb.cg, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.6

bb.cg:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.5
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %i.ra, i64 %i.le
  %i.re = load ptr, ptr %i.gp, align 8
  %i.rf = load i32, ptr %i.bw, align 4
  %i.rg = zext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %i.re, i64 %i.rg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rh, ptr noundef nonnull align 4 dereferenceable(16) %i.rd, i64 16, i1 false)
  %.pre400 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.6

_ZNK6aiMesh15HasVertexColorsEj.exit176.6:         ; preds = %bb.cg, %_ZNK6aiMesh15HasVertexColorsEj.exit176.5
  %i.ri = phi i32 [ %.pre400, %bb.cg ], [ %i.qz, %_ZNK6aiMesh15HasVertexColorsEj.exit176.5 ] ; 2 uses
  %i.rj = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i174.6 = icmp ne ptr %i.rj, null
  %i.rk = icmp ne i32 %i.ri, 0
  %i.rl = select i1 %.not.i174.6, i1 %i.rk, i1 false
  br i1 %i.rl, label %bb.ch, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7

bb.ch:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.6
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.rj, i64 %i.le
  %i.rn = load ptr, ptr %i.gq, align 8
  %i.ro = load i32, ptr %i.bw, align 4
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.rp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rq, ptr noundef nonnull align 4 dereferenceable(16) %i.rm, i64 16, i1 false)
  %.pre401 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7

_ZNK6aiMesh15HasVertexColorsEj.exit176.7:         ; preds = %bb.ch, %_ZNK6aiMesh15HasVertexColorsEj.exit176.6
  %i.rr = phi i32 [ %.pre401, %bb.ch ], [ %i.ri, %_ZNK6aiMesh15HasVertexColorsEj.exit176.6 ]
  %i.rs = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i174.7 = icmp ne ptr %i.rs, null
  %i.rt = icmp ne i32 %i.rr, 0
  %i.ru = select i1 %.not.i174.7, i1 %i.rt, i1 false
  br i1 %i.ru, label %bb.ci, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread

bb.ci:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.7
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %i.le
  %i.rw = load ptr, ptr %i.gr, align 8
  %i.rx = load i32, ptr %i.bw, align 4
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.rw, i64 %i.ry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rz, ptr noundef nonnull align 4 dereferenceable(16) %i.rv, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread

_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread:  ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170, %bb.ci, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7
  %i.sa = load i32, ptr %i.bw, align 4            ; 4 uses
  %i.sb = load ptr, ptr %i.ko, align 8
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv369
  store i32 %i.sa, ptr %i.sc, align 4
  br i1 %.not148, label %.loopexit305, label %bb.cj

bb.cj:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread
  %i.sd = zext i32 %i.sa to i64
  %i.se = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.sd ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8            ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8
  %i.si = icmp eq ptr %i.sf, %i.sh
  br i1 %i.si, label %.loopexit305, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.cj, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.sroa.0215.0337 = phi ptr [ %i.ui, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit ], [ %i.sf, %bb.cj ] ; 4 uses
  %i.sj = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.sk = load i32, ptr %.sroa.0215.0337, align 4
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8            ; 2 uses
  %i.so = icmp eq ptr %i.sn, null
  br i1 %i.so, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %.lr.ph338
  %i.sp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %bb.cl unwind label %bb.cm     ; 3 uses

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i8 0, i64 24, i1 false)
  %i.sq = load i32, ptr %.sroa.0215.0337, align 4
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sr
  store ptr %i.sp, ptr %i.ss, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cn:                                            ; preds = %bb.cl, %.lr.ph338
  %.0115 = phi ptr [ %i.sp, %bb.cl ], [ %i.sn, %.lr.ph338 ] ; 4 uses
  %i.su = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0215.0337, i64 4
  %i.sw = load float, ptr %i.sv, align 4          ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.0115, i64 8 ; 4 uses
  %i.sy = load ptr, ptr %i.sx, align 8            ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0115, i64 16 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8
  %.not.i.i177 = icmp eq ptr %i.sy, %i.ta
  br i1 %.not.i.i177, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i32 %i.su, ptr %i.sy, align 4
  %.sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  store float %i.sw, ptr %.sroa_idx208, align 4
  %i.tb = load ptr, ptr %i.sx, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store ptr %i.tc, ptr %i.sx, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

bb.cp:                                            ; preds = %bb.cn
  %i.td = load ptr, ptr %.0115, align 8           ; 8 uses
  %i.te = ptrtoint ptr %i.sy to i64
  %i.tf = ptrtoint ptr %i.td to i64               ; 2 uses
  %i.tg = sub i64 %i.te, %i.tf                    ; 4 uses
  %i.th = icmp eq i64 %i.tg, 9223372036854775800
  br i1 %i.th, label %bb.cq, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc178 unwind label %.loopexit.split-lp

.noexc178:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cp
  %i.ti = ashr exact i64 %i.tg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ti, i64 1)
  %i.tj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ti ; 2 uses
  %i.tk = icmp ult i64 %i.tj, %i.ti
  %i.tl = call i64 @llvm.umin.i64(i64 %i.tj, i64 1152921504606846975)
  %i.tm = select i1 %i.tk, i64 1152921504606846975, i64 %i.tl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.tm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.tn = shl nuw nsw i64 %i.tm, 3
  %i.to = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tn) #17
          to label %.noexc179 unwind label %.loopexit306 ; 8 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tg ; 2 uses
  store i32 %i.su, ptr %i.tp, align 4
  %.sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  store float %i.sw, ptr %.sroa_idx210, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.td, %i.sy
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc179
  %i.tq = ptrtoaddr ptr %i.to to i64
  %9 = ptrtoaddr ptr %i.sy to i64
  %10 = ptrtoaddr ptr %i.td to i64
  %i.tr = sub i64 %9, %10
  %i.ts = add i64 %i.tr, -8                       ; 2 uses
  %i.tt = lshr i64 %i.ts, 3
  %i.tu = add nuw nsw i64 %i.tt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ts, 24
  %i.tv = sub i64 %i.tf, %i.tq
  %diff.check = icmp ugt i64 %i.tv, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader497, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.tu, 4611686018427387900     ; 3 uses
  %i.tw = shl i64 %n.vec, 3                       ; 2 uses
  %i.tx = getelementptr i8, ptr %i.to, i64 %i.tw  ; 2 uses
  %i.ty = getelementptr i8, ptr %i.td, i64 %i.tw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.to, i64 %i.tz ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.td, i64 %i.tz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.ua = getelementptr i8, ptr %next.gep494, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep494, align 4, !alias.scope !37, !noalias !34
  %wide.load495 = load <2 x i64>, ptr %i.ua, align 4, !alias.scope !37, !noalias !34
  %i.ub = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !34, !noalias !37
  store <2 x i64> %wide.load495, ptr %i.ub, align 4, !alias.scope !34, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uc = icmp eq i64 %index.next, %n.vec
  br i1 %i.uc, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader497

.lr.ph.i.i.i.i.i.i.preheader497:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.to, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.tx, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.td, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ty, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader497, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader497 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ue, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader497 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.ud = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !37, !noalias !34
  store i64 %i.ud, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !34, !noalias !37
  %i.ue = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ue, %i.sy
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc179
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.to, %.noexc179 ], [ %i.tx, %middle.block ], [ %i.uf, %.lr.ph.i.i.i.i.i.i ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.tg) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.cr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.to, ptr %.0115, align 8
  store ptr %i.ug, ptr %i.sx, align 8
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %i.tm
  store ptr %i.uh, ptr %i.sz, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.co
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0215.0337, i64 8 ; 2 uses
  %i.uj = load ptr, ptr %i.sg, align 8
  %.not303 = icmp eq ptr %i.ui, %i.uj
  br i1 %.not303, label %.loopexit305.loopexit, label %.lr.ph338, !llvm.loop !43

.loopexit306:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp:                               ; preds = %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit305.loopexit:                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.pre402 = load i32, ptr %i.bw, align 4
  br label %.loopexit305

.loopexit305:                                     ; preds = %.loopexit305.loopexit, %bb.cj, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread
  %i.uk = phi i32 [ %i.sa, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread ], [ %.pre402, %.loopexit305.loopexit ], [ %i.sa, %bb.cj ]
  %i.ul = load ptr, ptr %4, align 8
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.le
  store i32 %i.uk, ptr %i.um, align 4
  %i.un = load i32, ptr %i.bw, align 4
  %i.uo = add i32 %i.un, 1
  store i32 %i.uo, ptr %i.bw, align 4
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit305, %bb.bo
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %i.kl
  br i1 %exitcond373.not, label %._crit_edge342, label %.lr.ph341, !llvm.loop !44

.thread:                                          ; preds = %._crit_edge342, %._crit_edge, %bb.bd
  %.3121.in = phi i64 [ %indvars.iv374, %bb.bd ], [ %indvars.iv374, %._crit_edge ], [ %indvars.iv.next375, %._crit_edge342 ]
  %.3121 = trunc i64 %.3121.in to i32             ; 2 uses
  %i.up = load ptr, ptr %i.v, align 8
  %.not.i180 = icmp ne ptr %i.up, null
  %i.uq = load i32, ptr %i.w, align 8             ; 2 uses
  %i.ur = icmp ne i32 %i.uq, 0
  %i.us = select i1 %.not.i180, i1 %i.ur, i1 false
  br i1 %i.us, label %.lr.ph346, label %.loopexit312

.lr.ph346:                                        ; preds = %.thread
  %i.ut = load ptr, ptr %i.bz, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %i.bv, i64 216 ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph346, %bb.cz
  %i.uv = phi i32 [ %i.uq, %.lr.ph346 ], [ %i.wr, %bb.cz ]
  %indvars.iv377 = phi i64 [ 0, %.lr.ph346 ], [ %indvars.iv.next378, %bb.cz ] ; 3 uses
  %.0113343 = phi ptr [ %i.ut, %.lr.ph346 ], [ %.1114, %bb.cz ] ; 3 uses
  %i.uw = load ptr, ptr %i.bz, align 8
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %indvars.iv377
  %i.uy = load ptr, ptr %i.ux, align 8            ; 7 uses
  %.not152 = icmp eq ptr %i.uy, null
  br i1 %.not152, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uz = load ptr, ptr %i.v, align 8
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv377
  %i.vb = load ptr, ptr %i.va, align 8            ; 3 uses
  %i.vc = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #17
          to label %bb.cv unwind label %bb.cy     ; 13 uses

bb.cv:                                            ; preds = %bb.cu
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.vc, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.vd, align 4
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 1060
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ve, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vf, align 4
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 1080
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vh, align 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 1100
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vj, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %.0113343, i64 8
  store ptr %i.vc, ptr %.0113343, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.vl = load i32, ptr %i.vb, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ai, i8 0, i64 1024, i1 false)
  %spec.select.i181 = call i32 @llvm.umin.i32(i32 %i.vl, i32 1023) ; 3 uses
  store i32 %spec.select.i181, ptr %6, align 4
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vn = zext nneg i32 %spec.select.i181 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %i.vm, i64 %i.vn, i1 false)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.vn
  store i8 0, ptr %i.vo, align 1
  store i32 %spec.select.i181, ptr %i.vc, align 4
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vc, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vp, ptr nonnull align 4 %i.ai, i64 %i.vn, i1 false)
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vn
  store i8 0, ptr %i.vq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vb, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vd, ptr noundef nonnull align 8 dereferenceable(64) %i.vr, i64 64, i1 false)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = load ptr, ptr %i.uy, align 8
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw                    ; 2 uses
  %i.vy = ashr exact i64 %i.vx, 3                 ; 2 uses
  %i.vz = trunc i64 %i.vy to i32
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vc, i64 1028
  store i32 %i.vz, ptr %i.wa, align 4
  %i.wb = and i64 %i.vy, 4294967295               ; 2 uses
  %i.wc = shl nuw nsw i64 %i.wb, 3                ; 2 uses
  %i.wd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wc) #17
          to label %bb.cw unwind label %bb.cy     ; 3 uses

bb.cw:                                            ; preds = %bb.cv
  %i.we = icmp eq i64 %i.wb, 0
  br i1 %i.we, label %.loopexit308, label %.loopexit308.loopexit

.loopexit308.loopexit:                            ; preds = %bb.cw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wd, i8 0, i64 %i.wc, i1 false)
  br label %.loopexit308

.loopexit308:                                     ; preds = %.loopexit308.loopexit, %bb.cw
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vc, i64 1048
  store ptr %i.wd, ptr %i.wf, align 8
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #19
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %3, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.0
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %3, ptr %i.z, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %3, align 8
  store ptr %3, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %.not11.i = icmp eq ptr %i.ac, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.d, align 8
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  store ptr %3, ptr %i.aj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0
  store ptr %i.aa, ptr %i.al, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.am = load i64, ptr %i.f, align 8
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.f, align 8
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #16
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 14 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !60

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !61

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !62

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !64

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !60

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %4 = ptrtoaddr ptr %i.d to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.bg = sub i64 %4, %5
  %i.bh = add i64 %i.bg, -4                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !65

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !66

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec143, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cn = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.co, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cp, label %middle.block150, label %vector.body146, !llvm.loop !67

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ck, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !68

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !60

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !60

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #16
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 4
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #17
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i
end_hunk_2
