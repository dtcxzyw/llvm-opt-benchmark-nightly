Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SplitLargeMeshes?download=true
inline.NumInlined: 641
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp11BaseProcessC2Ev
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp32SplitLargeMeshesProcess_Triangle8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 !guid !30 {
bb.a:
  %i.a = and i32 %1, 128
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !33 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre44 = load ptr, ptr %2, align 8
  %i.i = zext i32 %i.u to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit
  %i.j = phi ptr [ %.pre44, %._crit_edge.loopexit ], [ null, %bb.b ] ; 6 uses
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.i, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 4 uses
  %i.p = icmp eq i64 %i.o, %.lcssa
  br i1 %i.p, label %bb.e, label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = trunc nuw i64 %indvars.iv to i32
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.t, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.f, align 8              ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !31

bb.e:                                             ; preds = %._crit_edge
  %i.x = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre45 = load ptr, ptr %2, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.m, %bb.l, %._crit_edge36, %bb.j, %bb.f, %bb.e
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.y = phi ptr [ %.pre45, %.loopexit.split-lp.loopexit ], [ %i.j, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %lpad.phi

bb.h:                                             ; preds = %bb.f, %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = trunc i64 %i.o to i32
  store i32 %i.ah, ptr %i.f, align 8
  %i.ai = icmp ugt i64 %i.o, 2305843009213693951
  %i.aj = ashr exact i64 %i.n, 1
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #17
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  store ptr %i.al, ptr %i.ae, align 8
  %.not37 = icmp eq ptr %i.k, %i.j
  br i1 %.not37, label %._crit_edge36, label %.lr.ph35

._crit_edge36:                                    ; preds = %.lr.ph35, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph35:                                         ; preds = %bb.k, %.lr.ph35
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph35 ], [ 0, %bb.k ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv41
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.ae, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv41
  store ptr %i.ap, ptr %i.ar, align 8
  %indvars.iv.next42 = add i64 %indvars.iv41, 1   ; 2 uses
  %i.as = and i64 %indvars.iv.next42, 4294967295
  %i.at = icmp ugt i64 %i.o, %i.as
  br i1 %i.at, label %.lr.ph35, label %._crit_edge36, !llvm.loop !32

bb.l:                                             ; preds = %._crit_edge36
  %i.au = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i27 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ay) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !53 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.bz

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.5)
  %i.g = load i32, ptr %i.a, align 8              ; 2 uses
  %i.h = load i32, ptr %i.c, align 8
  %i.i = udiv i32 %i.g, %i.h                      ; 3 uses
  %i.j = add i32 %i.i, 1                          ; 3 uses
  %i.k = udiv i32 %i.g, %i.j                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.o = mul i32 %i.i, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 36 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %5 = zext i32 %i.i to i64
  %6 = zext i32 %i.j to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit
  %i.ay = icmp eq ptr %2, null
  br i1 %i.ay, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192, label %bb.by

bb.d:                                             ; preds = %bb.b, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit
  %indvars.iv378 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next379, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit ] ; 3 uses
  %i.az = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #17 ; 63 uses
  store i32 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 224 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 1272
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 1312
  store ptr null, ptr %i.bf, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.bc, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.bd, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.be, i8 0, i64 36, i1 false)
  store i32 %i.k, ptr %i.bb, align 8
  %i.bg = load i32, ptr %i.l, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 232
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = icmp eq ptr %i.az, %2
  br i1 %i.bi, label %_ZN8aiStringaSERKS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 236
  %i.bk = load i32, ptr %i.m, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 240 ; 2 uses
  %i.bm = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.n, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bn, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.bo = icmp eq i64 %indvars.iv378, %5          ; 2 uses
  br i1 %i.bo, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.bp = load i32, ptr %i.a, align 8
  %.reass = sub i32 %i.bp, %i.o                   ; 2 uses
  store i32 %.reass, ptr %i.bb, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN8aiStringaSERKS_.exit, %bb.f
  %i.bq = phi i32 [ %.reass, %bb.f ], [ %i.k, %_ZN8aiStringaSERKS_.exit ] ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 5 uses
  %i.bs = shl nuw nsw i64 %i.br, 4
  %i.bt = or disjoint i64 %i.bs, 8
  %i.bu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #17 ; 2 uses
  store i64 %i.br, ptr %i.bu, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = icmp eq i32 %i.bq, 0
  br i1 %i.bw, label %.loopexit284, label %bb.g

bb.g:                                             ; preds = %thread-pre-split
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.br
  %i.by = add nuw nsw i64 %i.br, 1152921504606846975
  %i.bz = and i64 %i.by, 1152921504606846975
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %i.ca = phi ptr [ %i.cc, %.prol.preheader ], [ %i.bv, %bb.g ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.g ]
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr null, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !34

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.unr = phi ptr [ %i.bv, %bb.g ], [ %i.cc, %.prol.preheader ]
  %i.cd = icmp samesign ult i64 %i.bz, 7
  br i1 %i.cd, label %.loopexit284, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ce = phi ptr [ %i.cu, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr null, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr null, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store i32 0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  store ptr null, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  store i32 0, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  store ptr null, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  store i32 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  store ptr null, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  store i32 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  store ptr null, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  store ptr null, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 128 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bx
  br i1 %i.cv, label %.loopexit284, label %.new

.loopexit284:                                     ; preds = %.prol.loopexit, %.new, %thread-pre-split
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 208 ; 4 uses
  store ptr %i.bv, ptr %i.cw, align 8
  %7 = trunc nuw i64 %indvars.iv378 to i32        ; 2 uses
  %i.cx = mul i32 %i.k, %7                        ; 6 uses
  %i.cy = load i32, ptr %i.bb, align 8            ; 4 uses
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = icmp ult i32 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit284
  %i.db = load ptr, ptr %i.p, align 8             ; 5 uses
  %i.dc = zext i32 %i.cx to i64                   ; 2 uses
  %i.dd = add i32 %i.cy, -1
  %xtraiter506 = and i32 %i.cy, 3                 ; 3 uses
  %i.de = icmp ult i32 %i.dd, 3
  br i1 %i.de, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.cy, -4
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod507.not = icmp eq i32 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv346.epil.init = phi i64 [ %i.dc, %.lr.ph ], [ %indvars.iv.next347.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0128300.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.dx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod509 = icmp ne i32 %xtraiter506, 0
  tail call void @llvm.assume(i1 %lcmp.mod509)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv346.epil = phi i64 [ %indvars.iv346.epil.init, %.epil.preheader ], [ %indvars.iv.next347.epil, %bb.h ] ; 2 uses
  %.0128300.epil = phi i32 [ %.0128300.epil.init, %.epil.preheader ], [ %i.dh, %bb.h ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv346.epil
  %i.dg = load i32, ptr %i.df, align 8
  %.fr.epil = freeze i32 %i.dg
  %i.dh = add i32 %.fr.epil, %.0128300.epil       ; 2 uses
  %indvars.iv.next347.epil = add nuw nsw i64 %indvars.iv346.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter506
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !35

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %.loopexit284
  %.0128.lcssa = phi i32 [ 0, %.loopexit284 ], [ %i.dx, %._crit_edge.loopexit.unr-lcssa ], [ %i.dh, %bb.h ] ; 9 uses
  store i32 %.0128.lcssa, ptr %i.ba, align 4
  %i.di = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv346 = phi i64 [ %i.dc, %.lr.ph.new ], [ %indvars.iv.next347.3, %bb.i ] ; 5 uses
  %.0128300 = phi i32 [ 0, %.lr.ph.new ], [ %i.dx, %bb.i ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv346
  %i.dk = load i32, ptr %i.dj, align 8
  %.fr = freeze i32 %i.dk
  %i.dl = add i32 %.fr, %.0128300
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv346
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i32, ptr %i.dn, align 8
  %.fr.1 = freeze i32 %i.do
  %i.dp = add i32 %.fr.1, %i.dl
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv346
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load i32, ptr %i.dr, align 8
  %.fr.2 = freeze i32 %i.ds
  %i.dt = add i32 %.fr.2, %i.dp
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv346
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load i32, ptr %i.dv, align 8
  %.fr.3 = freeze i32 %i.dw
  %i.dx = add i32 %.fr.3, %i.dt                   ; 3 uses
  %indvars.iv.next347.3 = add nuw nsw i64 %indvars.iv346, 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !36

bb.j:                                             ; preds = %._crit_edge
  %i.dy = zext i32 %.0128.lcssa to i64
  %i.dz = mul nuw nsw i64 %i.dy, 12               ; 2 uses
  %i.ea = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #17 ; 2 uses
  %i.eb = icmp eq i32 %.0128.lcssa, 0
  br i1 %i.eb, label %.loopexit283, label %.loopexit283.loopexit

.loopexit283.loopexit:                            ; preds = %bb.j
  %i.ec = add nsw i64 %i.dz, -12                  ; 2 uses
  %i.ed = urem i64 %i.ec, 12
  %i.ee = sub nuw nsw i64 %i.ec, %i.ed
  %i.ef = add nsw i64 %i.ee, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ea, i8 0, i64 %i.ef, i1 false)
  br label %.loopexit283

.loopexit283:                                     ; preds = %.loopexit283.loopexit, %bb.j
  store ptr %i.ea, ptr %i.bc, align 8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit283, %._crit_edge
  %i.eg = load ptr, ptr %i.r, align 8
  %.not.i = icmp ne ptr %i.eg, null
  %i.eh = load i32, ptr %i.s, align 4             ; 2 uses
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = select i1 %.not.i, i1 %i.ei, i1 false
  br i1 %i.ej, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ek = zext i32 %.0128.lcssa to i64
  %i.el = mul nuw nsw i64 %i.ek, 12               ; 2 uses
  %i.em = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #17 ; 2 uses
  %i.en = icmp eq i32 %.0128.lcssa, 0
  br i1 %i.en, label %.loopexit282, label %.loopexit282.loopexit

.loopexit282.loopexit:                            ; preds = %bb.l
  %i.eo = add nsw i64 %i.el, -12                  ; 2 uses
  %i.ep = urem i64 %i.eo, 12
  %i.eq = sub nuw nsw i64 %i.eo, %i.ep
  %i.er = add nsw i64 %i.eq, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.em, i8 0, i64 %i.er, i1 false)
  br label %.loopexit282

.loopexit282:                                     ; preds = %.loopexit282.loopexit, %bb.l
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.em, ptr %i.es, align 8
  %.pre378.pre = load i32, ptr %i.s, align 4
  br label %bb.m

bb.m:                                             ; preds = %.loopexit282, %bb.k
  %.pre378 = phi i32 [ %.pre378.pre, %.loopexit282 ], [ %i.eh, %bb.k ] ; 2 uses
  %i.et = load ptr, ptr %i.t, align 8
  %.not.i146 = icmp eq ptr %i.et, null
  %i.eu = load ptr, ptr %i.u, align 8
  %.not1.i = icmp eq ptr %i.eu, null
  %or.cond.i = select i1 %.not.i146, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.m
  %.not272 = icmp eq i32 %.pre378, 0
  br i1 %.not272, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.ev = zext i32 %.0128.lcssa to i64
  %i.ew = mul nuw nsw i64 %i.ev, 12               ; 4 uses
  %i.ex = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17 ; 3 uses
  %i.ey = icmp eq i32 %.0128.lcssa, 0
  br i1 %i.ey, label %.thread, label %.loopexit281.loopexit

.thread:                                          ; preds = %bb.n
  %i.ez = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr %i.ex, ptr %i.ez, align 8
  %i.fa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
  br label %.loopexit281

.loopexit281.loopexit:                            ; preds = %bb.n
  %i.fb = add nsw i64 %i.ew, -12                  ; 2 uses
  %i.fc = urem i64 %i.fb, 12
  %i.fd = sub nuw nsw i64 %i.fb, %i.fc
  %i.fe = add nsw i64 %i.fd, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ex, i8 0, i64 %i.fe, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr %i.ex, ptr %i.ff, align 8
  %i.fg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fg, i8 0, i64 %i.fe, i1 false)
  br label %.loopexit281

.loopexit281:                                     ; preds = %.loopexit281.loopexit, %.thread
  %i.fh = phi ptr [ %i.fa, %.thread ], [ %i.fg, %.loopexit281.loopexit ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store ptr %i.fh, ptr %i.fi, align 8
  %.pre = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.m, %.loopexit281, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.fj = phi i32 [ %.pre378, %bb.m ], [ %.pre, %.loopexit281 ], [ 0, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.fl = zext i32 %.0128.lcssa to i64            ; 2 uses
  %i.fm = mul nuw nsw i64 %i.fl, 12               ; 9 uses
  %i.fn = icmp eq i32 %.0128.lcssa, 0             ; 16 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.az, i64 112 ; 2 uses
  %i.fp = add nsw i64 %i.fm, -12                  ; 2 uses
  %i.fq = urem i64 %i.fp, 12
  %i.fr = sub nsw i64 %i.fp, %i.fq
  %i.fs = add nsw i64 %i.fr, 12                   ; 8 uses
  %i.ft = load i32, ptr %i.v, align 8
  store i32 %i.ft, ptr %i.fk, align 8
  %i.fu = load ptr, ptr %i.w, align 8
  %.not.i147 = icmp ne ptr %i.fu, null
  %i.fv = icmp ne i32 %i.fj, 0
  %i.fw = select i1 %.not.i147, i1 %i.fv, i1 false
  br i1 %i.fw, label %bb.o, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

bb.o:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.fx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fm) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit276, label %.loopexit276.loopexit

.loopexit276.loopexit:                            ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fx, i8 0, i64 %i.fs, i1 false)
  br label %.loopexit276

.loopexit276:                                     ; preds = %.loopexit276.loopexit, %bb.o
  store ptr %i.fx, ptr %i.fo, align 8
  %.pre379 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, %.loopexit276
  %i.fy = phi i32 [ %i.fj, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %.pre379, %.loopexit276 ] ; 2 uses
  %i.fz = load i32, ptr %i.ad, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.az, i64 180
  store i32 %i.fz, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.ae, align 8
  %.not.i147.1 = icmp ne ptr %i.gb, null
end_hunk_0
begin_hunk_1_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  store ptr %i.ia, ptr %i.ib, align 8
  %.pre386 = load i32, ptr %i.s, align 4
  br label %.preheader280

.preheader280:                                    ; preds = %.loopexit276.7, %_ZNK6aiMesh16HasTextureCoordsEj.exit.7
  %i.ic = phi i32 [ %.pre386, %.loopexit276.7 ], [ %i.hu, %_ZNK6aiMesh16HasTextureCoordsEj.exit.7 ] ; 2 uses
  %i.id = shl nuw nsw i64 %i.fl, 4                ; 16 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.if = load ptr, ptr %i.x, align 8
  %.not.i149 = icmp ne ptr %i.if, null
  %i.ig = icmp ne i32 %i.ic, 0
  %i.ih = select i1 %.not.i149, i1 %i.ig, i1 false
  br i1 %i.ih, label %bb.w, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

bb.w:                                             ; preds = %.preheader280
  %i.ii = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275, label %.loopexit275.loopexit

.loopexit275.loopexit:                            ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ii, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275

.loopexit275:                                     ; preds = %.loopexit275.loopexit, %bb.w
  store ptr %i.ii, ptr %i.ie, align 8
  %.pre387 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %.preheader280, %.loopexit275
  %i.ij = phi i32 [ %i.ic, %.preheader280 ], [ %.pre387, %.loopexit275 ] ; 2 uses
  %i.ik = load ptr, ptr %i.ar, align 8
  %.not.i149.1 = icmp ne ptr %i.ik, null
  %i.il = icmp ne i32 %i.ij, 0
  %i.im = select i1 %.not.i149.1, i1 %i.il, i1 false
  br i1 %i.im, label %bb.x, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

bb.x:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.in = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275.1, label %.loopexit275.loopexit.1

.loopexit275.loopexit.1:                          ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.in, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275.1

.loopexit275.1:                                   ; preds = %.loopexit275.loopexit.1, %bb.x
  %i.io = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store ptr %i.in, ptr %i.io, align 8
  %.pre388 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %.loopexit275.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.ip = phi i32 [ %.pre388, %.loopexit275.1 ], [ %i.ij, %_ZNK6aiMesh15HasVertexColorsEj.exit.1 ] ; 2 uses
  %i.iq = load ptr, ptr %i.as, align 8
  %.not.i149.2 = icmp ne ptr %i.iq, null
  %i.ir = icmp ne i32 %i.ip, 0
  %i.is = select i1 %.not.i149.2, i1 %i.ir, i1 false
  br i1 %i.is, label %bb.y, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

bb.y:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.it = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275.2, label %.loopexit275.loopexit.2

.loopexit275.loopexit.2:                          ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.it, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275.2

.loopexit275.2:                                   ; preds = %.loopexit275.loopexit.2, %bb.y
  %i.iu = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  store ptr %i.it, ptr %i.iu, align 8
  %.pre389 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %.loopexit275.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.iv = phi i32 [ %.pre389, %.loopexit275.2 ], [ %i.ip, %_ZNK6aiMesh15HasVertexColorsEj.exit.2 ] ; 2 uses
  %i.iw = load ptr, ptr %i.at, align 8
  %.not.i149.3 = icmp ne ptr %i.iw, null
  %i.ix = icmp ne i32 %i.iv, 0
  %i.iy = select i1 %.not.i149.3, i1 %i.ix, i1 false
  br i1 %i.iy, label %bb.z, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

bb.z:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.iz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275.3, label %.loopexit275.loopexit.3

.loopexit275.loopexit.3:                          ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iz, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275.3

.loopexit275.3:                                   ; preds = %.loopexit275.loopexit.3, %bb.z
  %i.ja = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  store ptr %i.iz, ptr %i.ja, align 8
  %.pre390 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %.loopexit275.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.jb = phi i32 [ %.pre390, %.loopexit275.3 ], [ %i.iv, %_ZNK6aiMesh15HasVertexColorsEj.exit.3 ] ; 2 uses
  %i.jc = load ptr, ptr %i.au, align 8
  %.not.i149.4 = icmp ne ptr %i.jc, null
  %i.jd = icmp ne i32 %i.jb, 0
  %i.je = select i1 %.not.i149.4, i1 %i.jd, i1 false
  br i1 %i.je, label %bb.aa, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

bb.aa:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.jf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275.4, label %.loopexit275.loopexit.4

.loopexit275.loopexit.4:                          ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jf, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275.4

.loopexit275.4:                                   ; preds = %.loopexit275.loopexit.4, %bb.aa
  %i.jg = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  store ptr %i.jf, ptr %i.jg, align 8
  %.pre391 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %.loopexit275.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.jh = phi i32 [ %.pre391, %.loopexit275.4 ], [ %i.jb, %_ZNK6aiMesh15HasVertexColorsEj.exit.4 ] ; 2 uses
  %i.ji = load ptr, ptr %i.av, align 8
  %.not.i149.5 = icmp ne ptr %i.ji, null
  %i.jj = icmp ne i32 %i.jh, 0
  %i.jk = select i1 %.not.i149.5, i1 %i.jj, i1 false
  br i1 %i.jk, label %bb.ab, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

bb.ab:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.jl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275.5, label %.loopexit275.loopexit.5

.loopexit275.loopexit.5:                          ; preds = %bb.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jl, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275.5

.loopexit275.5:                                   ; preds = %.loopexit275.loopexit.5, %bb.ab
  %i.jm = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  store ptr %i.jl, ptr %i.jm, align 8
  %.pre392 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %.loopexit275.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.jn = phi i32 [ %.pre392, %.loopexit275.5 ], [ %i.jh, %_ZNK6aiMesh15HasVertexColorsEj.exit.5 ] ; 2 uses
  %i.jo = load ptr, ptr %i.aw, align 8
  %.not.i149.6 = icmp ne ptr %i.jo, null
  %i.jp = icmp ne i32 %i.jn, 0
  %i.jq = select i1 %.not.i149.6, i1 %i.jp, i1 false
  br i1 %i.jq, label %bb.ac, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

bb.ac:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275.6, label %.loopexit275.loopexit.6

.loopexit275.loopexit.6:                          ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jr, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275.6

.loopexit275.6:                                   ; preds = %.loopexit275.loopexit.6, %bb.ac
  %i.js = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store ptr %i.jr, ptr %i.js, align 8
  %.pre393 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %.loopexit275.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jt = phi i32 [ %.pre393, %.loopexit275.6 ], [ %i.jn, %_ZNK6aiMesh15HasVertexColorsEj.exit.6 ]
  %i.ju = load ptr, ptr %i.ax, align 8
  %.not.i149.7 = icmp ne ptr %i.ju, null
  %i.jv = icmp ne i32 %i.jt, 0
  %i.jw = select i1 %.not.i149.7, i1 %i.jv, i1 false
  br i1 %i.jw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #17 ; 2 uses
  br i1 %i.fn, label %.loopexit275.7, label %.loopexit275.loopexit.7

.loopexit275.loopexit.7:                          ; preds = %bb.ad
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jx, i8 0, i64 %i.id, i1 false)
  br label %.loopexit275.7

.loopexit275.7:                                   ; preds = %.loopexit275.loopexit.7, %bb.ad
  %i.jy = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  store ptr %i.jx, ptr %i.jy, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit275.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jz = load ptr, ptr %i.y, align 8
  %.not.i148 = icmp ne ptr %i.jz, null
  %i.ka = load i32, ptr %i.z, align 8             ; 2 uses
  %i.kb = icmp ne i32 %i.ka, 0
  %i.kc = select i1 %.not.i148, i1 %i.kb, i1 false
  br i1 %i.kc, label %bb.af, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.kd = zext i32 %i.ka to i64
  %i.ke = shl nuw nsw i64 %i.kd, 3
  %i.kf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ke) #17
  store ptr %i.kf, ptr %i.bd, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.az, i64 216 ; 4 uses
  %i.kh = load i32, ptr %i.kg, align 8
  %.not334 = icmp eq i32 %i.kh, 0
  br i1 %.not334, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit.lr.ph

_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit.lr.ph: ; preds = %bb.af
  %i.ki = add i32 %7, 3
  %i.kj = mul i32 %i.ki, %i.k
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit

._crit_edge317:                                   ; preds = %bb.aw
  %.not.i.i.i = icmp eq ptr %.sroa.0.1.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge317
  %i.kk = ptrtoint ptr %.sroa.27.1.lcssa to i64
  %i.kl = ptrtoint ptr %.sroa.0.1.lcssa to i64
  %i.km = sub i64 %i.kk, %i.kl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.lcssa, i64 noundef %i.km) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit.lr.ph, %bb.aw
  %indvars.iv360 = phi i64 [ 0, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit.lr.ph ], [ %indvars.iv.next361, %bb.aw ] ; 2 uses
  %.sroa.27.0315 = phi ptr [ null, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.27.1.lcssa, %bb.aw ] ; 3 uses
  %.sroa.15.0314 = phi ptr [ null, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.15.1.lcssa, %bb.aw ] ; 2 uses
  %.sroa.0.0313 = phi ptr [ null, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit.lr.ph ], [ %.sroa.0.1.lcssa, %bb.aw ] ; 7 uses
  %i.kn = load ptr, ptr %i.bd, align 8
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv360
  %i.kp = load ptr, ptr %i.ko, align 8            ; 6 uses
  %.not.i.i = icmp eq ptr %.sroa.15.0314, %.sroa.0.0313
  %spec.select = select i1 %.not.i.i, ptr %.sroa.15.0314, ptr %.sroa.0.0313 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1028 ; 3 uses
  %i.kr = load i32, ptr %i.kq, align 4            ; 2 uses
  %i.ks = udiv i32 %i.kr, %i.j
  %i.kt = zext i32 %i.ks to i64                   ; 3 uses
  %i.ku = ptrtoint ptr %.sroa.27.0315 to i64
  %i.kv = ptrtoint ptr %.sroa.0.0313 to i64       ; 2 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 2 uses
  %i.kx = ashr exact i64 %i.kw, 3
  %i.ky = icmp ult i64 %i.kx, %i.kt
  br i1 %i.ky, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit
  %i.kz = ptrtoint ptr %spec.select to i64
  %i.la = sub i64 %i.kz, %i.kv
  %i.lb = shl nuw nsw i64 %i.kt, 3
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #17
          to label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i unwind label %.loopexit.split-lp.loopexit ; 3 uses

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %.sroa.0.0313, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0313, i64 noundef %i.kw) #16
  br label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.ah, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.kt
  %.pre394 = load i32, ptr %i.kq, align 4
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.lf = phi i32 [ %.pre394, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.kr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.lc, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %.sroa.0.0313, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit ] ; 2 uses
  %.sroa.15.4 = phi ptr [ %i.ld, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %spec.select, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit ] ; 2 uses
  %.sroa.27.4 = phi ptr [ %i.le, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %.sroa.27.0315, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit ] ; 2 uses
  %.not335 = icmp eq i32 %i.lf, 0
  br i1 %.not335, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kp, i64 1048
  br label %bb.ai

._crit_edge309:                                   ; preds = %bb.ao, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.4, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ], [ %.sroa.0.2, %bb.ao ] ; 9 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.4, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ], [ %.sroa.15.2, %bb.ao ] ; 3 uses
  %.sroa.27.1.lcssa = phi ptr [ %.sroa.27.4, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ], [ %.sroa.27.2, %bb.ao ] ; 4 uses
  %i.lh = icmp eq ptr %.sroa.0.1.lcssa, %.sroa.15.1.lcssa
  br i1 %i.lh, label %bb.aw, label %bb.ap

bb.ai:                                            ; preds = %.lr.ph308, %bb.ao
  %i.li = phi i32 [ %i.lf, %.lr.ph308 ], [ %i.mv, %bb.ao ]
  %indvars.iv357 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next358, %bb.ao ] ; 2 uses
  %.sroa.27.1306 = phi ptr [ %.sroa.27.4, %.lr.ph308 ], [ %.sroa.27.2, %bb.ao ] ; 7 uses
  %.sroa.15.1305 = phi ptr [ %.sroa.15.4, %.lr.ph308 ], [ %.sroa.15.2, %bb.ao ] ; 4 uses
  %.sroa.0.1304 = phi ptr [ %.sroa.0.4, %.lr.ph308 ], [ %.sroa.0.2, %bb.ao ] ; 10 uses
  %i.lj = load ptr, ptr %i.lg, align 8
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv357 ; 5 uses
  %i.ll = load i32, ptr %i.lk, align 4            ; 2 uses
  %.not144 = icmp uge i32 %i.ll, %i.cx
  %i.lm = icmp ult i32 %i.ll, %i.kj
  %or.cond = and i1 %.not144, %i.lm
  br i1 %or.cond, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %.not.i151 = icmp eq ptr %.sroa.15.1305, %.sroa.27.1306
  br i1 %.not.i151, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ln = load i64, ptr %i.lk, align 4            ; 2 uses
  store i64 %i.ln, ptr %.sroa.15.1305, align 4
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

bb.al:                                            ; preds = %bb.aj
  %i.lo = ptrtoint ptr %.sroa.27.1306 to i64      ; 2 uses
  %i.lp = ptrtoint ptr %.sroa.0.1304 to i64       ; 3 uses
  %i.lq = sub i64 %i.lo, %i.lp                    ; 4 uses
  %i.lr = icmp eq i64 %i.lq, 9223372036854775800
  br i1 %i.lr, label %bb.am, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc153:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.ls = ashr exact i64 %i.lq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ls, i64 1)
  %i.lt = add nsw i64 %.sroa.speculated.i.i.i, %i.ls ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %i.ls
  %i.lv = tail call i64 @llvm.umin.i64(i64 %i.lt, i64 1152921504606846975)
  %i.lw = select i1 %i.lu, i64 1152921504606846975, i64 %i.lv ; 3 uses
  %.not.i.i.i152 = icmp ne i64 %i.lw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i152)
  %i.lx = shl nuw nsw i64 %i.lw, 3
  %i.ly = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lx) #17
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lq
  %i.ma = load i64, ptr %i.lk, align 4
  store i64 %i.ma, ptr %i.lz, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0.1304, %.sroa.27.1306
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc154
  %i.mb = ptrtoaddr ptr %i.ly to i64
  %i.mc = add i64 %i.lo, -8
  %i.md = sub i64 %i.mc, %i.lp                    ; 2 uses
  %i.me = lshr i64 %i.md, 3
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.md, 24
  %i.mg = sub i64 %i.lp, %i.mb
  %diff.check = icmp ugt i64 %i.mg, -32
  %or.cond493 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond493, label %.lr.ph.i.i.i.i.i.preheader494, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.mf, 4611686018427387900     ; 3 uses
  %i.mh = shl i64 %n.vec, 3                       ; 2 uses
  %i.mi = getelementptr i8, ptr %i.ly, i64 %i.mh  ; 2 uses
  %i.mj = getelementptr i8, ptr %.sroa.0.1304, i64 %i.mh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ly, i64 %i.mk ; 2 uses
  %next.gep490 = getelementptr i8, ptr %.sroa.0.1304, i64 %i.mk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.ml = getelementptr i8, ptr %next.gep490, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep490, align 4, !alias.scope !55
  %wide.load491 = load <2 x i64>, ptr %i.ml, align 4, !alias.scope !55
  %i.mm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !54
  store <2 x i64> %wide.load491, ptr %i.mm, align 4, !alias.scope !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mn = icmp eq i64 %index.next, %n.vec
  br i1 %i.mn, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader494

.lr.ph.i.i.i.i.i.preheader494:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.preheader ], [ %i.mi, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0.1304, %.lr.ph.i.i.i.i.i.preheader ], [ %i.mj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader494, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.mq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader494 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.mp, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader494 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.mo = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !55
  store i64 %i.mo, ptr %.012.i.i.i.i.i, align 4, !alias.scope !54
  %i.mp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mp, %.sroa.27.1306
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc154
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ly, %.noexc154 ], [ %i.mi, %middle.block ], [ %i.mq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i23.i.i = icmp eq ptr %.sroa.0.1304, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1304, i64 noundef %i.lq) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lw
end_hunk_1
begin_hunk_2_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nj
  store ptr %i.my, ptr %i.nk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.nl = load i32, ptr %i.kp, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aa, i8 0, i64 1024, i1 false)
  %spec.select.i155 = tail call i32 @llvm.umin.i32(i32 %i.nl, i32 1023) ; 3 uses
  store i32 %spec.select.i155, ptr %4, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.nn = zext nneg i32 %spec.select.i155 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr nonnull align 4 %i.nm, i64 %i.nn, i1 false)
  %i.no = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.nn
  store i8 0, ptr %i.no, align 1
  store i32 %spec.select.i155, ptr %i.my, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.np, ptr nonnull align 4 %i.aa, i64 %i.nn, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nn
  store i8 0, ptr %i.nq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.nr = ptrtoint ptr %.sroa.15.1.lcssa to i64
  %i.ns = ptrtoint ptr %.sroa.0.1.lcssa to i64
  %i.nt = sub i64 %i.nr, %i.ns                    ; 2 uses
  %i.nu = lshr exact i64 %i.nt, 3
  %i.nv = trunc i64 %i.nu to i32                  ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.my, i64 1028 ; 2 uses
  store i32 %i.nv, ptr %i.nw, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kp, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mz, ptr noundef nonnull align 8 dereferenceable(64) %i.nx, i64 64, i1 false)
  br i1 %i.bo, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kp, i64 1048 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.my, i64 1048 ; 2 uses
  store ptr %i.nz, ptr %i.oa, align 8
  store ptr null, ptr %i.ny, align 8
  %.pre397 = load ptr, ptr %i.oa, align 8
  br label %bb.av

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i, %bb.at, %bb.ap
  %.sroa.0.3.ph.ph = phi ptr [ %.sroa.0.0313, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i ], [ %.sroa.0.1.lcssa, %bb.at ], [ %.sroa.0.1.lcssa, %bb.ap ]
  %.sroa.27.3.ph.ph = phi ptr [ %.sroa.27.0315, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i ], [ %.sroa.27.1.lcssa, %bb.at ], [ %.sroa.27.1.lcssa, %bb.ap ]
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sroa.0.3 = phi ptr [ %.sroa.0.1304, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0.3.ph.ph, %.loopexit.split-lp.loopexit ] ; 3 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.1306, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.27.3.ph.ph, %.loopexit.split-lp.loopexit ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit277, %.loopexit.split-lp.loopexit ]
  %.not.i.i.i157 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit158, label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp
  %i.ob = ptrtoint ptr %.sroa.27.3 to i64
  %i.oc = ptrtoint ptr %.sroa.0.3 to i64
  %i.od = sub i64 %i.ob, %i.oc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.od) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit158

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit158: ; preds = %.loopexit.split-lp, %bb.as
  resume { ptr, i32 } %lpad.phi

bb.at:                                            ; preds = %bb.aq
  %i.oe = and i64 %i.nt, 34359738360              ; 2 uses
  %i.of = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oe) #17
          to label %bb.au unwind label %.loopexit.split-lp.loopexit ; 3 uses

bb.au:                                            ; preds = %bb.at
  %i.og = icmp eq i32 %i.nv, 0
  br i1 %i.og, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.au
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.of, i8 0, i64 %i.oe, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.au
  %i.oh = getelementptr inbounds nuw i8, ptr %i.my, i64 1048
  store ptr %i.of, ptr %i.oh, align 8
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %bb.ar
  %i.oi = phi ptr [ %i.of, %.loopexit ], [ %.pre397, %bb.ar ]
  %i.oj = load i32, ptr %i.nw, align 4
  %i.ok = zext i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oi, ptr nonnull align 4 %.sroa.0.1.lcssa, i64 %i.ol, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge309
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %i.om = load i32, ptr %i.kg, align 8
  %i.on = zext i32 %i.om to i64
  %i.oo = icmp samesign ult i64 %indvars.iv.next361, %i.on
  br i1 %i.oo, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE5clearEv.exit, label %._crit_edge317, !llvm.loop !43

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %bb.af, %bb.ag, %._crit_edge317, %bb.ae
  %i.op = load i32, ptr %i.bb, align 8
  %.not336 = icmp eq i32 %i.op, 0
  br i1 %.not336, label %._crit_edge331, label %.lr.ph330

.lr.ph330:                                        ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.or = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.os = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.ot = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.ou = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.ov = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.ow = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.ox = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.oy = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  %i.oz = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  %i.pa = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.pb = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.pd = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.pe = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.pf = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.pg = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %bb.bb

._crit_edge331:                                   ; preds = %._crit_edge326, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.ph = load ptr, ptr %i.ab, align 8            ; 6 uses
  %i.pi = load ptr, ptr %i.ac, align 8
  %.not.i159 = icmp eq ptr %i.ph, %i.pi
  br i1 %.not.i159, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge331
  store ptr %i.az, ptr %i.ph, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i32 %1, ptr %i.pj, align 8
  %i.pk = load ptr, ptr %i.ab, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store ptr %i.pl, ptr %i.ab, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.ay:                                            ; preds = %._crit_edge331
  %i.pm = load ptr, ptr %3, align 8               ; 5 uses
  %i.pn = ptrtoint ptr %i.ph to i64
  %i.po = ptrtoint ptr %i.pm to i64               ; 2 uses
  %i.pp = sub i64 %i.pn, %i.po                    ; 3 uses
  %i.pq = icmp eq i64 %i.pp, 9223372036854775792
  br i1 %i.pq, label %bb.az, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ay
  %i.pr = ashr exact i64 %i.pp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i160 = tail call i64 @llvm.umax.i64(i64 %i.pr, i64 1)
  %i.ps = add nsw i64 %.sroa.speculated.i.i.i160, %i.pr ; 2 uses
  %i.pt = icmp ult i64 %i.ps, %i.pr
  %i.pu = tail call i64 @llvm.umin.i64(i64 %i.ps, i64 576460752303423487)
  %i.pv = select i1 %i.pt, i64 576460752303423487, i64 %i.pu ; 3 uses
  %.not.i.i.i161 = icmp ne i64 %i.pv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i161)
  %i.pw = shl nuw nsw i64 %i.pv, 4
  %i.px = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pw) #17 ; 5 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pp ; 2 uses
  store ptr %i.az, ptr %i.py, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store i32 %1, ptr %i.pz, align 8
  %.not10.i.i.i.i.i162 = icmp eq ptr %i.pm, %i.ph
  br i1 %.not10.i.i.i.i.i162, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163

.lr.ph.i.i.i.i.i163:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i163
  %.012.i.i.i.i.i164 = phi ptr [ %i.qb, %.lr.ph.i.i.i.i.i163 ], [ %i.px, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i165 = phi ptr [ %i.qa, %.lr.ph.i.i.i.i.i163 ], [ %i.pm, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i165, i64 16, i1 false), !alias.scope !56
  %i.qa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i165, i64 16 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i164, i64 16 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq ptr %i.qa, %i.ph
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163, !llvm.loop !0

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i163, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i167 = phi ptr [ %i.px, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.qb, %.lr.ph.i.i.i.i.i163 ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i167, i64 16
  %.not.i34.i.i = icmp eq ptr %i.pm, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  %i.qd = load ptr, ptr %i.ac, align 8
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = sub i64 %i.qe, %i.po
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.qf) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ba, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.px, ptr %3, align 8
  store ptr %i.qc, ptr %i.ab, align 8
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.pv
  store ptr %i.qg, ptr %i.ac, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit: ; preds = %bb.ax, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %i.qh = icmp samesign ult i64 %indvars.iv.next379, %6
  br i1 %i.qh, label %bb.d, label %bb.c, !llvm.loop !47

bb.bb:                                            ; preds = %.lr.ph330, %._crit_edge326
  %indvars.iv375 = phi i64 [ 0, %.lr.ph330 ], [ %indvars.iv.next376, %._crit_edge326 ] ; 5 uses
  %.0120328 = phi i32 [ 0, %.lr.ph330 ], [ %.1.lcssa, %._crit_edge326 ] ; 2 uses
  %i.qi = load ptr, ptr %i.cw, align 8
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %indvars.iv375
  store i32 3, ptr %i.qj, align 8
  %i.qk = trunc nuw i64 %indvars.iv375 to i32
  %i.ql = add i32 %i.cx, %i.qk
  %i.qm = load ptr, ptr %i.p, align 8
  %i.qn = zext i32 %i.ql to i64                   ; 2 uses
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 8            ; 4 uses
  %i.qq = load ptr, ptr %i.cw, align 8
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %indvars.iv375
  store i32 %i.qp, ptr %i.qr, align 8
  %i.qs = load ptr, ptr %i.p, align 8
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %i.qn
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = zext i32 %i.qp to i64                   ; 2 uses
  %i.qx = shl nuw nsw i64 %i.qw, 2
  %i.qy = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.qx) #17 ; 2 uses
  %i.qz = load ptr, ptr %i.cw, align 8
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qz, i64 %indvars.iv375
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store ptr %i.qy, ptr %i.rb, align 8
  %i.rc = load i32, ptr %i.az, align 8            ; 2 uses
  %switch.tableidx = add i32 %i.qp, -1            ; 2 uses
  %i.rd = icmp ult i32 %switch.tableidx, 3
  br i1 %i.rd, label %switch.lookup, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.re = or i32 %i.rc, 8
  store i32 %i.re, ptr %i.az, align 8
  %.not337 = icmp eq i32 %i.qp, 0
  br i1 %.not337, label %._crit_edge326, label %.lr.ph325.preheader

.lr.ph325.preheader:                              ; preds = %switch.lookup, %bb.bc
  br label %.lr.ph325

switch.lookup:                                    ; preds = %bb.bb
  %i.rf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE, i64 %i.rf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.rg = or i32 %i.rc, %switch.ext
  store i32 %i.rg, ptr %i.az, align 8
  br label %.lr.ph325.preheader

._crit_edge326:                                   ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, %bb.bc
  %.1.lcssa = phi i32 [ %.0120328, %bb.bc ], [ %i.rm, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ]
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %i.rh = load i32, ptr %i.bb, align 8
  %i.ri = zext i32 %i.rh to i64
  %i.rj = icmp samesign ult i64 %indvars.iv.next376, %i.ri
  br i1 %i.rj, label %bb.bb, label %._crit_edge331, !llvm.loop !48

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ 0, %.lr.ph325.preheader ] ; 3 uses
  %.1322 = phi i32 [ %i.rm, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ %.0120328, %.lr.ph325.preheader ] ; 6 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv371
  %i.rl = load i32, ptr %i.rk, align 4            ; 4 uses
  %i.rm = add i32 %.1322, 1                       ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv371
  store i32 %.1322, ptr %i.rn, align 4
  %i.ro = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.ro, null
  br i1 %.not143, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph325
  %i.rp = zext i32 %i.rl to i64
  %i.rq = getelementptr inbounds nuw [12 x i8], ptr %i.ro, i64 %i.rp
  %i.rr = load ptr, ptr %i.bc, align 8
  %i.rs = zext i32 %.1322 to i64
  %i.rt = getelementptr inbounds nuw [12 x i8], ptr %i.rr, i64 %i.rs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rt, ptr noundef nonnull align 4 dereferenceable(12) %i.rq, i64 12, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph325
  %i.ru = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i168 = icmp ne ptr %i.ru, null
  %i.rv = load i32, ptr %i.s, align 4             ; 2 uses
  %i.rw = icmp ne i32 %i.rv, 0
  %i.rx = select i1 %.not.i168, i1 %i.rw, i1 false
  br i1 %i.rx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ry = zext i32 %i.rl to i64
  %i.rz = getelementptr inbounds nuw [12 x i8], ptr %i.ru, i64 %i.ry
  %i.sa = load ptr, ptr %i.oq, align 8
  %i.sb = zext i32 %.1322 to i64
  %i.sc = getelementptr inbounds nuw [12 x i8], ptr %i.sa, i64 %i.sb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sc, ptr noundef nonnull align 4 dereferenceable(12) %i.rz, i64 12, i1 false)
  %.pre399.pre = load i32, ptr %i.s, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre399 = phi i32 [ %.pre399.pre, %bb.bf ], [ %i.rv, %bb.be ] ; 2 uses
  %i.sd = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i169 = icmp eq ptr %i.sd, null
  %i.se = load ptr, ptr %i.u, align 8
  %.not1.i170 = icmp eq ptr %i.se, null
  %or.cond.i171 = select i1 %.not.i169, i1 true, i1 %.not1.i170
  br i1 %or.cond.i171, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172:  ; preds = %bb.bg
  %.not273 = icmp eq i32 %.pre399, 0
  br i1 %.not273, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, label %bb.bh

bb.bh:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172
  %i.sf = zext i32 %i.rl to i64                   ; 2 uses
  %i.sg = getelementptr inbounds nuw [12 x i8], ptr %i.sd, i64 %i.sf
  %i.sh = load ptr, ptr %i.or, align 8
  %i.si = zext i32 %.1322 to i64                  ; 2 uses
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.si
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sj, ptr noundef nonnull align 4 dereferenceable(12) %i.sg, i64 12, i1 false)
  %i.sk = load ptr, ptr %i.u, align 8
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %i.sk, i64 %i.sf
  %i.sm = load ptr, ptr %i.os, align 8
  %i.sn = getelementptr inbounds nuw [12 x i8], ptr %i.sm, i64 %i.si
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sn, ptr noundef nonnull align 4 dereferenceable(12) %i.sl, i64 12, i1 false)
  %.pre398 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread: ; preds = %bb.bg, %bb.bh
  %i.so = phi i32 [ %.pre399, %bb.bg ], [ %.pre398, %bb.bh ] ; 2 uses
  %i.sp = zext i32 %i.rl to i64                   ; 16 uses
  %i.sq = zext i32 %.1322 to i64                  ; 16 uses
  %i.sr = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i173 = icmp ne ptr %i.sr, null
  %i.ss = icmp ne i32 %i.so, 0
  %i.st = select i1 %.not.i173, i1 %i.ss, i1 false
  br i1 %i.st, label %bb.bi, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

bb.bi:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread
  %i.su = getelementptr inbounds nuw [12 x i8], ptr %i.sr, i64 %i.sp
  %i.sv = load ptr, ptr %i.fo, align 8
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.sv, i64 %i.sq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sw, ptr noundef nonnull align 4 dereferenceable(12) %i.su, i64 12, i1 false)
  %.pre400 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

_ZNK6aiMesh16HasTextureCoordsEj.exit175.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, %bb.bi
  %i.sx = phi i32 [ %i.so, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread ], [ %.pre400, %bb.bi ] ; 2 uses
  %i.sy = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i173.1 = icmp ne ptr %i.sy, null
  %i.sz = icmp ne i32 %i.sx, 0
  %i.ta = select i1 %.not.i173.1, i1 %i.sz, i1 false
  br i1 %i.ta, label %bb.bj, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

bb.bj:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.sy, i64 %i.sp
  %i.tc = load ptr, ptr %i.ot, align 8
  %i.td = getelementptr inbounds nuw [12 x i8], ptr %i.tc, i64 %i.sq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.td, ptr noundef nonnull align 4 dereferenceable(12) %i.tb, i64 12, i1 false)
  %.pre401 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

_ZNK6aiMesh16HasTextureCoordsEj.exit175.2:        ; preds = %bb.bj, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.te = phi i32 [ %.pre401, %bb.bj ], [ %i.sx, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1 ] ; 2 uses
  %i.tf = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i173.2 = icmp ne ptr %i.tf, null
  %i.tg = icmp ne i32 %i.te, 0
  %i.th = select i1 %.not.i173.2, i1 %i.tg, i1 false
  br i1 %i.th, label %bb.bk, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

bb.bk:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.ti = getelementptr inbounds nuw [12 x i8], ptr %i.tf, i64 %i.sp
  %i.tj = load ptr, ptr %i.ou, align 8
  %i.tk = getelementptr inbounds nuw [12 x i8], ptr %i.tj, i64 %i.sq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tk, ptr noundef nonnull align 4 dereferenceable(12) %i.ti, i64 12, i1 false)
  %.pre402 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

_ZNK6aiMesh16HasTextureCoordsEj.exit175.3:        ; preds = %bb.bk, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.tl = phi i32 [ %.pre402, %bb.bk ], [ %i.te, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2 ] ; 2 uses
  %i.tm = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i173.3 = icmp ne ptr %i.tm, null
  %i.tn = icmp ne i32 %i.tl, 0
  %i.to = select i1 %.not.i173.3, i1 %i.tn, i1 false
  br i1 %i.to, label %bb.bl, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

bb.bl:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.tp = getelementptr inbounds nuw [12 x i8], ptr %i.tm, i64 %i.sp
  %i.tq = load ptr, ptr %i.ov, align 8
  %i.tr = getelementptr inbounds nuw [12 x i8], ptr %i.tq, i64 %i.sq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tr, ptr noundef nonnull align 4 dereferenceable(12) %i.tp, i64 12, i1 false)
  %.pre403 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

_ZNK6aiMesh16HasTextureCoordsEj.exit175.4:        ; preds = %bb.bl, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.ts = phi i32 [ %.pre403, %bb.bl ], [ %i.tl, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3 ] ; 2 uses
  %i.tt = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i173.4 = icmp ne ptr %i.tt, null
  %i.tu = icmp ne i32 %i.ts, 0
  %i.tv = select i1 %.not.i173.4, i1 %i.tu, i1 false
  br i1 %i.tv, label %bb.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5

end_hunk_2
