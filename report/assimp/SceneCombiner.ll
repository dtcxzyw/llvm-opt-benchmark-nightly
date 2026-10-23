Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SceneCombiner?download=true
inline.NumInlined: 1372
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN6Assimp13SceneCombiner4CopyEPP10aiNodeAnimPKS1_:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit

bb.h:                                             ; preds = %bb.d
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit

bb.i:                                             ; preds = %.loopexit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit: ; preds = %_ZN10aiNodeAnimaSERKS_.exit, %bb.g, %bb.h, %bb.i
  %i.aa = load i32, ptr %i.e, align 8             ; 3 uses
  %i.ab = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i13 = icmp eq ptr %i.ab, null
  br i1 %.not.i13, label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit
  %i.ac = zext i32 %i.aa to i64                   ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24               ; 2 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #22 ; 6 uses
  %i.af = icmp eq i32 %i.aa, 0
  br i1 %i.af, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ac
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = phi ptr [ %i.ae, %bb.k ], [ %i.aj, %bb.l ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ag
  br i1 %i.ak, label %.loopexit.i14, label %bb.l

.loopexit.i14:                                    ; preds = %bb.l
  store ptr %i.ae, ptr %i.f, align 8
  %.not9.i15 = icmp eq i32 %i.aa, 1
  br i1 %.not9.i15, label %bb.o, label %bb.m, !prof !16

bb.m:                                             ; preds = %.loopexit.i14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16

bb.n:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.f, align 8
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16

bb.o:                                             ; preds = %.loopexit.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16

_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16: ; preds = %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit, %bb.m, %bb.n, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 1040
  %i.am = load i32, ptr %i.al, align 8            ; 3 uses
  %i.an = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i17, label %_ZN6Assimp12GetArrayCopyI9aiQuatKeyEEvRPT_j.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16
  %i.ao = zext i32 %i.am to i64                   ; 4 uses
  %i.ap = shl nuw nsw i64 %i.ao, 5                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #22 ; 7 uses
  %i.ar = icmp eq i32 %i.am, 0
  br i1 %i.ar, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.ao
  %i.at = add nuw nsw i64 %i.ao, 576460752303423487
  %i.au = and i64 %i.at, 576460752303423487
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %i.av = phi ptr [ %i.ay, %.prol.preheader ], [ %i.aq, %bb.q ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.q ]
  store double 0.000000e+00, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !120

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.unr = phi ptr [ %i.aq, %bb.q ], [ %i.ay, %.prol.preheader ]
  %i.az = icmp samesign ult i64 %i.au, 7
  br i1 %i.az, label %.loopexit.i18, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ba = phi ptr [ %i.by, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store double 0.000000e+00, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store i32 1, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store double 0.000000e+00, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i32 1, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  store double 0.000000e+00, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  store i32 1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  store double 0.000000e+00, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  store i32 1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  store double 0.000000e+00, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  store i32 1, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  store double 0.000000e+00, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  store i32 1, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 224
  store double 0.000000e+00, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 248
  store i32 1, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 256 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.as
  br i1 %i.bz, label %.loopexit.i18, label %.new

.loopexit.i18:                                    ; preds = %.new, %.prol.loopexit
  store ptr %i.aq, ptr %i.d, align 8
  %.not9.i19 = icmp eq i32 %i.am, 1
  br i1 %.not9.i19, label %bb.t, label %bb.r, !prof !16

bb.r:                                             ; preds = %.loopexit.i18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiQuatKeyEEvRPT_j.exit

bb.s:                                             ; preds = %bb.p
  store ptr %i.aq, ptr %i.d, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiQuatKeyEEvRPT_j.exit

bb.t:                                             ; preds = %.loopexit.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aq, ptr noundef nonnull align 8 dereferenceable(28) %i.an, i64 28, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiQuatKeyEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI9aiQuatKeyEEvRPT_j.exit: ; preds = %bb.t, %bb.s, %bb.r, %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP15aiMeshMorphAnimPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1040) ptr @_Znwm(i64 noundef 1040) #22 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.c, i8 0, i64 1032, i1 false)
  store ptr %i.c, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %_ZN15aiMeshMorphAnimaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.g, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %_ZN15aiMeshMorphAnimaSERKS_.exit

_ZN15aiMeshMorphAnimaSERKS_.exit:                 ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1028 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1028
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1032 ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN6Assimp12GetArrayCopyI14aiMeshMorphKeyEEvRPT_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZN15aiMeshMorphAnimaSERKS_.exit
  %i.n = load i32, ptr %i.j, align 4              ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 8 uses
  %i.p = shl nuw nsw i64 %i.o, 5
  %i.q = or disjoint i64 %i.p, 8
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #22 ; 2 uses
  store i64 %i.o, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 7 uses
  %i.t = icmp eq i32 %i.n, 0
  br i1 %i.t, label %.loopexit.thread.i, label %bb.e

.loopexit.thread.i:                               ; preds = %bb.d
  store ptr %i.s, ptr %i.l, align 8
  br label %_ZN6Assimp12GetArrayCopyI14aiMeshMorphKeyEEvRPT_j.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.o
  %i.v = add nuw nsw i64 %i.o, 576460752303423487
  %i.w = and i64 %i.v, 576460752303423487
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %i.x = phi ptr [ %i.y, %.prol.preheader ], [ %i.s, %bb.e ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.e ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 0, i64 28, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !121

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.unr = phi ptr [ %i.s, %bb.e ], [ %i.y, %.prol.preheader ]
  %i.z = icmp samesign ult i64 %i.w, 7
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.aa = phi ptr [ %i.ai, %.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, i8 0, i64 28, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 256 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.u
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader.i, label %.new

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.new, %.prol.loopexit
  store ptr %i.s, ptr %i.l, align 8
  %xtraiter37 = and i64 %i.o, 3                   ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %4, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %3, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0811.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(28) %.0910.i.i.i.i.i.i.prol, i64 28, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 32 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 32 ; 2 uses
  %4 = add nsw i64 %.012.i.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !122

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ], [ %4, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader.i ], [ %3, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i ], [ %2, %.lr.ph.i.i.i.i.i.i.prol ]
  %5 = icmp ult i32 %i.n, 4
  br i1 %5, label %_ZN6Assimp12GetArrayCopyI14aiMeshMorphKeyEEvRPT_j.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.0910.i.i.i.i.i.i, i64 28, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(28) %8, i64 28, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 96
  %11 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, ptr noundef nonnull align 8 dereferenceable(28) %10, i64 28, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 128
  %i.am = add nsw i64 %.012.i.i.i.i.i.i, -4
  %12 = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %12, label %.lr.ph.i.i.i.i.i.i, label %_ZN6Assimp12GetArrayCopyI14aiMeshMorphKeyEEvRPT_j.exit, !llvm.loop !6

_ZN6Assimp12GetArrayCopyI14aiMeshMorphKeyEEvRPT_j.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN15aiMeshMorphAnimaSERKS_.exit, %.loopexit.thread.i
  %i.an = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12GetArrayCopyI14aiMeshMorphKeyEEvRPT_j.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 9 uses
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #22
  %i.aw = load ptr, ptr %i.l, align 8
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.l, align 8
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #22
  %i.bg = load ptr, ptr %i.l, align 8
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.l, align 8
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.ao, align 8
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %i.bq, i64 %i.bu, i1 false)
  %i.bv = load ptr, ptr %i.l, align 8
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %indvars.iv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.ao, align 8
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.by, ptr align 8 %i.cc, i64 %i.cg, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.j, align 4
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.f, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.f, %_ZN6Assimp12GetArrayCopyI14aiMeshMorphKeyEEvRPT_j.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP6aiBonePKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN6aiBoneaSERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #22 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.c, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1060
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1100
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4
  store ptr %i.c, ptr %0, align 8
  %i.k = icmp eq ptr %i.c, %1
  br i1 %i.k, label %_ZN6aiBoneaSERKS_.exit, label %_ZN8aiStringaSERKS_.exit.i

_ZN8aiStringaSERKS_.exit.i:                       ; preds = %bb.b
  %i.l = load i32, ptr %1, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.l, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.n, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1028
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1028 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, null
  %i.x = icmp eq i32 %i.r, 0
  %or.cond7 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8aiStringaSERKS_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1048
  store ptr null, ptr %i.y, align 8
  store i32 0, ptr %i.s, align 4
  br label %_ZN6aiBoneaSERKS_.exit

bb.d:                                             ; preds = %_ZN8aiStringaSERKS_.exit.i
  store i32 %i.r, ptr %i.s, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1048 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %bb.d
  %i.ab = zext i32 %i.r to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #22
  br label %.loopexit.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #24
  %.pr.i.i = load i32, ptr %i.s, align 4          ; 2 uses
  %i.ae = zext i32 %.pr.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #22 ; 2 uses
  %i.ah = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ah, label %.loopexit.i.i, label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.e, %.thread.i.i
  %.pre-phi.i.i = phi i64 [ %i.ac, %.thread.i.i ], [ %i.af, %bb.e ]
  %i.ai = phi ptr [ %i.ad, %.thread.i.i ], [ %i.ag, %bb.e ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %.pre-phi.i.i, i1 false)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %bb.e
  %i.aj = phi ptr [ %i.ag, %bb.e ], [ %i.ai, %.loopexit.loopexit.i.i ] ; 2 uses
  store ptr %i.aj, ptr %i.z, align 8
  %i.ak = load ptr, ptr %i.u, align 8
  %i.al = load i32, ptr %i.s, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %_ZN6aiBoneaSERKS_.exit

_ZN6aiBoneaSERKS_.exit:                           ; preds = %.loopexit.i.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP10aiMetadataPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8                ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.c, ptr %i.e, align 8
  %i.g = zext i32 %i.c to i64                     ; 3 uses
  %i.h = mul nuw nsw i64 %i.g, 1028               ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #22 ; 3 uses
  %i.j = add nsw i64 %i.h, -1028
  %i.k = urem i64 %i.j, 1028
  %i.l = sub nuw nsw i64 %i.h, %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.i, i8 0, i64 %i.l, i1 false)
  store ptr %i.i, ptr %i.f, align 8
  %i.m = shl nuw nsw i64 %i.g, 4                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22 ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.g
  %i.p = add nsw i64 %i.m, -16                    ; 2 uses
  %i.q = lshr exact i64 %i.p, 4
  %i.r = add nuw nsw i64 %i.q, 1
  %xtraiter = and i64 %i.r, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %i.s = phi ptr [ %i.u, %.prol.preheader ], [ %i.n, %bb.c ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  store i32 10, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !123

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.unr = phi ptr [ %i.n, %bb.c ], [ %i.u, %.prol.preheader ]
  %i.v = icmp ult i64 %i.p, 112
  br i1 %i.v, label %_ZN10aiMetadata5AllocEj.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.w = phi ptr [ %i.am, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 10, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 10, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 10, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i32 10, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store i32 10, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i32 10, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store i32 10, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 128 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.o
  br i1 %i.an, label %_ZN10aiMetadata5AllocEj.exit, label %.new

_ZN10aiMetadata5AllocEj.exit:                     ; preds = %.new, %.prol.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.ao, align 8
  store ptr %i.e, ptr %0, align 8
  %i.ap = load i32, ptr %1, align 8               ; 2 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN10aiMetadata5AllocEj.exit
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8aiStringaSERKS_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bb, %_ZN8aiStringaSERKS_.exit.i.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ba, %_ZN8aiStringaSERKS_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.az, %_ZN8aiStringaSERKS_.exit.i.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.at = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %i.at, label %_ZN8aiStringaSERKS_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = load i32, ptr %.0910.i.i.i.i.i, align 4
  %spec.select.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i, ptr %.0811.i.i.i.i.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ax = zext nneg i32 %spec.select.i.i.i.i.i.i to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull align 4 %i.aw, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 0, ptr %i.ay, align 1
  br label %_ZN8aiStringaSERKS_.exit.i.i.i.i.i

_ZN8aiStringaSERKS_.exit.i.i.i.i.i:               ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1028
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1028
  %i.bb = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bc = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %.lr.ph, !llvm.loop !124

.lr.ph:                                           ; preds = %_ZN8aiStringaSERKS_.exit.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv ; 9 uses
  %i.bg = load ptr, ptr %i.ao, align 8
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv ; 2 uses
  %i.bi = load i32, ptr %i.bf, align 8
  store i32 %i.bi, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.ao, align 8
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 8
  switch i32 %i.bl, label %bb.o [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #22 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load i8, ptr %i.bo, align 1, !range !18, !noundef !19
  store i8 %i.bp, ptr %i.bm, align 1
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.bq = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load i32, ptr %i.bs, align 4
  store i32 %i.bt, ptr %i.bq, align 4
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.bu = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.bu, align 8
  br label %.sink.split

bb.i:                                             ; preds = %bb.e
  %i.by = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load float, ptr %i.ca, align 4
  store float %i.cb, ptr %i.by, align 4
  br label %.sink.split

bb.j:                                             ; preds = %bb.e
  %i.cc = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load double, ptr %i.ce, align 8
  store double %i.cf, ptr %i.cc, align 8
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  %i.cg = tail call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #22 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ck, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.cg, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr nonnull align 4 %i.cl, i64 %i.cm, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  store i8 0, ptr %i.cn, align 1
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  %i.co = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #22 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %i.cq, i64 12, i1 false)
  br label %.sink.split

bb.m:                                             ; preds = %bb.e
  %i.cr = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %.sink.split unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 24) #24
  resume { ptr, i32 } %i.cu

.sink.split:                                      ; preds = %bb.m, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sink = phi ptr [ %i.bm, %bb.f ], [ %i.co, %bb.l ], [ %i.cg, %bb.k ], [ %i.cc, %bb.j ], [ %i.by, %bb.i ], [ %i.bu, %bb.h ], [ %i.bq, %bb.g ], [ %i.cr, %bb.m ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sink, ptr %i.cv, align 8
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = load i32, ptr %1, align 8
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %bb.e, label %.loopexit, !llvm.loop !125

.loopexit:                                        ; preds = %bb.o, %_ZN10aiMetadata5AllocEj.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiAnimMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1200) dereferenceable(1200) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.w
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #24
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZdaPv(ptr noundef nonnull %i.au) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %i.ax) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.ba) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZdaPv(ptr noundef nonnull %i.bd) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !127

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !128

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !128

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !128

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %1, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = invoke ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #24
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ai, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8
  invoke void @__cxa_rethrow() #25
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
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
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
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
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.02530, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.02530, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #24
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = load i32, ptr %0, align 8
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.o
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.g = icmp eq ptr %.pre, null
  br i1 %i.g, label %bb.p, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 12 uses
  %i.l = load i32, ptr %i.i, align 8
  switch i32 %i.l, label %bb.o [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.m
    i32 9, label %bb.n
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.o, label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.n = icmp eq ptr %i.k, null
  br i1 %i.n, label %bb.o, label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.o = icmp eq ptr %i.k, null
  br i1 %i.o, label %bb.o, label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.p = icmp eq ptr %i.k, null
  br i1 %i.p, label %bb.o, label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.q = icmp eq ptr %i.k, null
  br i1 %i.q, label %bb.o, label %.sink.split

bb.i:                                             ; preds = %.lr.ph
  %i.r = icmp eq ptr %i.k, null
  br i1 %i.r, label %bb.o, label %.sink.split

bb.j:                                             ; preds = %.lr.ph
  %i.s = icmp eq ptr %i.k, null
  br i1 %i.s, label %bb.o, label %.sink.split

bb.k:                                             ; preds = %.lr.ph
  %i.t = icmp eq ptr %i.k, null
  br i1 %i.t, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #23
  br label %.sink.split

bb.m:                                             ; preds = %.lr.ph
  %i.u = icmp eq ptr %i.k, null
  br i1 %i.u, label %bb.o, label %.sink.split

bb.n:                                             ; preds = %.lr.ph
  %i.v = icmp eq ptr %i.k, null
  br i1 %i.v, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.l
  %.sink = phi i64 [ 8, %bb.m ], [ 12, %bb.j ], [ 24, %bb.l ], [ 1028, %bb.i ], [ 8, %bb.h ], [ 4, %bb.g ], [ 8, %bb.f ], [ 4, %bb.e ], [ 1, %bb.d ], [ 4, %bb.n ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %.sink) #24
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.lr.ph, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %0, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !130

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.z = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %.preheader ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #24
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %._crit_edge.thread, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb0EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !131

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !132

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !132

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !132

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %1, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = invoke ptr @_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #24
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ai, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8
  invoke void @__cxa_rethrow() #25
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ] ; 3 uses
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
  br label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE.exit

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
  br label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE.exit

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.am = load i64, ptr %i.f, align 8
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.f, align 8
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP7aiSceneLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP7aiSceneLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP7aiSceneLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP7aiSceneLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.02530, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.02530, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #24
  br label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA2_KcRA1024_cES6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1024) %3, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(1024) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1024) %3) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(1024) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA1024_cERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(1024) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %6, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA1024_cERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(1024) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA1024_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(1024) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !143
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !143
  store i8 0, ptr %i.a, align 8, !alias.scope !143
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !143 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !143 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !143 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !143 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA1024_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1024) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1024) %3) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(1024) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !156
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !156
  store i8 0, ptr %i.c, align 8, !alias.scope !156
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !156 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !156 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !156 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !156 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !156
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #23
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  resume { ptr, i32 } %i.p
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #11 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = distinct !{!4, !14}
!5 = distinct !{!5, !14}
!6 = distinct !{!6, !14}
!7 = distinct !{!7, !14}
!8 = distinct !{!8, !14}
!9 = distinct !{!9, !14}
!10 = distinct !{!10, !14}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14, !15}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14, !15}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, i1 true, !"_ZSt19__relocate_object_aIN6Assimp18NodeAttachmentInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!46 = distinct !{!46, !45, !"_ZSt19__relocate_object_aIN6Assimp18NodeAttachmentInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !45, !"_ZSt19__relocate_object_aIN6Assimp18NodeAttachmentInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = !{!47, !46}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{null}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, i1 true, !"_ZSt19__relocate_object_aISt4pairIP6aiBonejES3_SaIS3_EEvPT_PT0_RT1_"}
!78 = distinct !{!78, !77, !"_ZSt19__relocate_object_aISt4pairIP6aiBonejES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!79 = distinct !{!79, !77, !"_ZSt19__relocate_object_aISt4pairIP6aiBonejES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, i1 true, !"_ZSt19__relocate_object_aISt4pairIP6aiBonejES3_SaIS3_EEvPT_PT0_RT1_"}
!82 = distinct !{!82, !81, !"_ZSt19__relocate_object_aISt4pairIP6aiBonejES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!83 = distinct !{!83, !81, !"_ZSt19__relocate_object_aISt4pairIP6aiBonejES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!84 = distinct !{!84, !14}
!85 = !{!79, !78}
!86 = !{!83, !82}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = distinct !{!109, !14}
!110 = distinct !{!110, !14}
!111 = distinct !{!111, !14}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
!115 = distinct !{!115, !14}
!116 = distinct !{!116, !14, !15}
!117 = distinct !{!117, !17}
!118 = distinct !{null}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!135 = distinct !{!135, !134, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!136 = distinct !{!136, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!137 = distinct !{!137, !136, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!138 = distinct !{!138, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!139 = distinct !{!139, !138, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = !{!135}
!141 = !{!137}
!142 = !{!139}
!143 = !{!139, !137, !135}
!144 = distinct !{!144, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!145 = distinct !{!145, !144, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!147 = distinct !{!147, !146, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!149 = distinct !{!149, !148, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!151 = distinct !{!151, !150, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!152 = !{!145}
!153 = !{!147}
!154 = !{!149}
!155 = !{!151}
!156 = !{!151, !149, !147, !145}
end_hunk_0
