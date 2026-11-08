Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FindInstancesProcess?download=true
inline.NumInlined: 330
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z12CompareBonesPK6aiMeshS1_:bb.a
  %i.br = fcmp oeq float %i.bo, %i.bq
  br i1 %i.br, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 1100
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 1100
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fcmp oeq float %i.bt, %i.bv
  br i1 %i.bw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 1104
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 1104
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fcmp oeq float %i.by, %i.ca
  br i1 %i.cb, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 1108
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 1108
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = fcmp oeq float %i.cd, %i.cf
  br i1 %i.cg, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 1112
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 1112
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = fcmp oeq float %i.ci, %i.ck
  br i1 %i.cl, label %_ZNK12aiMatrix4x4tIfEneERKS0_.exit, label %.thread

_ZNK12aiMatrix4x4tIfEneERKS0_.exit:               ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 1116
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 1116
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = fcmp une float %i.cn, %i.cp
  br i1 %i.cq, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK12aiMatrix4x4tIfEneERKS0_.exit
  %.not3237.not = icmp eq i32 %i.m, 0
  br i1 %.not3237.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 1048
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 1048
  %i.cu = load ptr, ptr %i.ct, align 8
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !15

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %.not31 = icmp eq i32 %i.cw, %i.cy
  br i1 %.not31, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load float, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = fsub float %i.da, %i.dc
  %i.de = fcmp olt float %i.dd, f0x3C23D70A
  br i1 %i.de, label %.thread, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %.preheader
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.thread, label %bb.b, !llvm.loop !16

.thread:                                          ; preds = %._crit_edge, %bb.b, %_ZNK12aiMatrix4x4tIfEneERKS0_.exit, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.s, %bb.t, %bb.a
  %i.df = phi i1 [ true, %bb.a ], [ false, %bb.s ], [ false, %bb.t ], [ true, %._crit_edge ], [ false, %bb.b ], [ false, %_ZNK12aiMatrix4x4tIfEneERKS0_.exit ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %i.df
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z17UpdateMeshIndicesP6aiNodePj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 !guid !20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %i.h, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.preheader, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph16, %bb.c
  %indvars.iv19 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next20, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv19
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_Z17UpdateMeshIndicesP6aiNodePj(ptr noundef %i.r, ptr noundef %1)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %i.s = load i32, ptr %i.d, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next20, %i.t
  br i1 %i.u, label %bb.c, label %._crit_edge, !llvm.loop !19
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef captures(none) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !guid !30 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.bw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #21 ; 4 uses
  %i.h = load i32, ptr %i.c, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21
          to label %.preheader288 unwind label %bb.c ; 6 uses

.preheader288:                                    ; preds = %bb.b
  %i.l = load i32, ptr %i.c, align 8
  %.not332 = icmp eq i32 %i.l, 0
  br i1 %.not332, label %._crit_edge325.thread, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader288
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.d

._crit_edge325:                                   ; preds = %bb.bl
  %i.o = icmp eq i32 %.1145, %i.rl
  br i1 %i.o, label %._crit_edge325.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge325
  %.not338 = icmp eq i32 %.1145, 0
  br i1 %.not338, label %._crit_edge331, label %.lr.ph330

.lr.ph330:                                        ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre380 = load ptr, ptr %i.p, align 8
  br label %bb.bm

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249

bb.d:                                             ; preds = %.lr.ph324, %bb.bl
  %i.r = phi ptr [ %.pre, %.lr.ph324 ], [ %i.rg, %bb.bl ]
  %indvars.iv374 = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next375, %bb.bl ] ; 8 uses
  %.0144322 = phi i32 [ 0, %.lr.ph324 ], [ %.1145, %bb.bl ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv374
  %i.t = load ptr, ptr %i.s, align 8              ; 25 uses
  %i.u = invoke noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef %i.t)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw i64 %i.v, 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = shl i32 %i.y, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = xor i32 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = shl i32 %i.ae, 4
  %i.ag = xor i32 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 232 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl i32 %i.ai, 15
  %i.ak = xor i32 %i.ag, %i.aj
  %i.al = load i32, ptr %i.t, align 8
  %i.am = shl i32 %i.al, 28
  %i.an = xor i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = or disjoint i64 %i.w, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv374 ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %i.t)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.as = fmul float %i.ar, %i.ar                 ; 4 uses
  %i.at = trunc nuw i64 %indvars.iv374 to i32
  %.0140318 = add i32 %i.at, -1                   ; 2 uses
  %i.au = icmp sgt i32 %.0140318, -1
  br i1 %i.au, label %.lr.ph321, label %.loopexit

.lr.ph321:                                        ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %2 = zext nneg i32 %.0140318 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph321, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273
  %indvars.iv371 = phi i64 [ %2, %.lr.ph321 ], [ %indvars.iv.next372, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273 ] ; 5 uses
  %i.bj = load i64, ptr %i.aq, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv371
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp eq i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.h, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.m, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv371
  %i.bp = load ptr, ptr %i.bo, align 8            ; 28 uses
  %.not163 = icmp eq ptr %i.bp, null
  br i1 %.not163, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 216
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = load i32, ptr %i.x, align 8
  %.not164 = icmp eq i32 %i.br, %i.bs
  br i1 %.not164, label %bb.j, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = load i32, ptr %i.ad, align 8
  %.not165 = icmp eq i32 %i.bu, %i.bv
  br i1 %.not165, label %bb.k, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 8 uses
  %i.by = load i32, ptr %i.aa, align 4
  %.not166 = icmp eq i32 %i.bx, %i.by
  br i1 %.not166, label %bb.l, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 232
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = load i32, ptr %i.ah, align 8
  %.not167 = icmp eq i32 %i.ca, %i.cb
  br i1 %.not167, label %bb.m, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.m:                                             ; preds = %bb.l
  %i.cc = load i32, ptr %i.bp, align 8
  %i.cd = load i32, ptr %i.t, align 8
  %.not168 = icmp eq i32 %i.cc, %i.cd
  br i1 %.not168, label %bb.n, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not.i = icmp ne ptr %i.cf, null
  %i.cg = icmp ne i32 %i.bx, 0                    ; 12 uses
  %i.ch = and i1 %i.cg, %.not.i
  br i1 %i.ch, label %bb.o, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %i.av, align 8
  %i.cj = zext i32 %i.bx to i64
  %.idx.i = mul nuw nsw i64 %i.cj, 12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.p
  %.01015.i = phi ptr [ %i.dc, %bb.p ], [ %i.cf, %bb.o ] ; 4 uses
  %.01214.i = phi ptr [ %i.dd, %bb.p ], [ %i.ci, %bb.o ] ; 4 uses
  %i.cl = load float, ptr %.01015.i, align 4
  %i.cm = load float, ptr %.01214.i, align 4
  %i.cn = fsub float %i.cl, %i.cm                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01015.i, i64 4
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.cr = load float, ptr %i.cq, align 4
  %i.cs = fsub float %i.cp, %i.cr                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01015.i, i64 8
  %i.cu = load float, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = fsub float %i.cu, %i.cw                 ; 2 uses
  %i.cy = fmul float %i.cs, %i.cs
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cz)
  %i.db = fcmp ult float %i.da, %i.as
  br i1 %i.db, label %bb.p, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.p:                                             ; preds = %.lr.ph.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.01015.i, i64 12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01214.i, i64 12
  %.not.i183 = icmp eq ptr %i.dc, %i.ck
  br i1 %.not.i183, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread, label %.lr.ph.i, !llvm.loop !21

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread: ; preds = %bb.p, %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %.not.i184 = icmp ne ptr %i.df, null
  %i.dg = and i1 %i.cg, %.not.i184
  br i1 %i.dg, label %bb.q, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread

bb.q:                                             ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread
  %i.dh = load ptr, ptr %i.aw, align 8
  %i.di = zext i32 %i.bx to i64
  %.idx.i185 = mul nuw nsw i64 %i.di, 12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i185
  br label %.lr.ph.i187

.lr.ph.i187:                                      ; preds = %bb.q, %bb.r
  %.01015.i188 = phi ptr [ %i.eb, %bb.r ], [ %i.df, %bb.q ] ; 4 uses
  %.01214.i189 = phi ptr [ %i.ec, %bb.r ], [ %i.dh, %bb.q ] ; 4 uses
  %i.dk = load float, ptr %.01015.i188, align 4
  %i.dl = load float, ptr %.01214.i189, align 4
  %i.dm = fsub float %i.dk, %i.dl                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01015.i188, i64 4
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.01214.i189, i64 4
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = fsub float %i.do, %i.dq                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01015.i188, i64 8
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.01214.i189, i64 8
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = fsub float %i.dt, %i.dv                 ; 2 uses
  %i.dx = fmul float %i.dr, %i.dr
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dx)
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dy)
  %i.ea = fcmp ult float %i.dz, %i.as
  br i1 %i.ea, label %bb.r, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.r:                                             ; preds = %.lr.ph.i187
  %i.eb = getelementptr inbounds nuw i8, ptr %.01015.i188, i64 12 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01214.i189, i64 12
  %.not.i191 = icmp eq ptr %i.eb, %i.dj
  br i1 %.not.i191, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread, label %.lr.ph.i187, !llvm.loop !21

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread: ; preds = %bb.r, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %.not.i193 = icmp ne ptr %i.ee, null
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8            ; 3 uses
  %.not1.i = icmp ne ptr %i.eg, null
  %or.cond.i.not280 = select i1 %.not.i193, i1 %.not1.i, i1 false
  %brmerge.not = and i1 %i.cg, %or.cond.i.not280
  br i1 %brmerge.not, label %bb.s, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

bb.s:                                             ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread
  %i.eh = load ptr, ptr %i.ax, align 8
  %i.ei = zext i32 %i.bx to i64
  %.idx.i194 = mul nuw nsw i64 %i.ei, 12          ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i194
  br label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %bb.s, %bb.t
  %.01015.i197 = phi ptr [ %i.fb, %bb.t ], [ %i.ee, %bb.s ] ; 4 uses
  %.01214.i198 = phi ptr [ %i.fc, %bb.t ], [ %i.eh, %bb.s ] ; 4 uses
  %i.ek = load float, ptr %.01015.i197, align 4
  %i.el = load float, ptr %.01214.i198, align 4
  %i.em = fsub float %i.ek, %i.el                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01015.i197, i64 4
  %i.eo = load float, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.01214.i198, i64 4
  %i.eq = load float, ptr %i.ep, align 4
  %i.er = fsub float %i.eo, %i.eq                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.01015.i197, i64 8
  %i.et = load float, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.01214.i198, i64 8
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = fsub float %i.et, %i.ev                 ; 2 uses
  %i.ex = fmul float %i.er, %i.er
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.ex)
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ey)
  %i.fa = fcmp ult float %i.ez, %i.as
  br i1 %i.fa, label %bb.t, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.t:                                             ; preds = %.lr.ph.i196
  %i.fb = getelementptr inbounds nuw i8, ptr %.01015.i197, i64 12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.01214.i198, i64 12
  %.not.i200 = icmp eq ptr %i.fb, %i.ej
  br i1 %.not.i200, label %bb.u, label %.lr.ph.i196, !llvm.loop !21

bb.u:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.ay, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i194
  br label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.u, %bb.v
  %.01015.i205 = phi ptr [ %i.fw, %bb.v ], [ %i.eg, %bb.u ] ; 4 uses
  %.01214.i206 = phi ptr [ %i.fx, %bb.v ], [ %i.fd, %bb.u ] ; 4 uses
  %i.ff = load float, ptr %.01015.i205, align 4
  %i.fg = load float, ptr %.01214.i206, align 4
  %i.fh = fsub float %i.ff, %i.fg                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene:bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.idx.i227
  br i1 %i.cg, label %.lr.ph.i229.preheader, label %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread

.lr.ph.i229.preheader:                            ; preds = %bb.bc
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv357
  %i.of = load ptr, ptr %i.oe, align 8
  br label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %.lr.ph.i229.preheader, %bb.bd
  %.01115.i = phi ptr [ %i.pd, %bb.bd ], [ %i.oc, %.lr.ph.i229.preheader ] ; 5 uses
  %.01214.i230 = phi ptr [ %i.pe, %bb.bd ], [ %i.of, %.lr.ph.i229.preheader ] ; 5 uses
  %i.og = load float, ptr %.01115.i, align 4
  %i.oh = load float, ptr %.01214.i230, align 4
  %i.oi = fsub float %i.og, %i.oh                 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.01115.i, i64 4
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = getelementptr inbounds nuw i8, ptr %.01214.i230, i64 4
  %i.om = load float, ptr %i.ol, align 4
  %i.on = fsub float %i.ok, %i.om                 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.01115.i, i64 8
  %i.op = load float, ptr %i.oo, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.01214.i230, i64 8
  %i.or = load float, ptr %i.oq, align 4
  %i.os = fsub float %i.op, %i.or                 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.01115.i, i64 12
  %i.ou = load float, ptr %i.ot, align 4
  %i.ov = getelementptr inbounds nuw i8, ptr %.01214.i230, i64 12
  %i.ow = load float, ptr %i.ov, align 4
  %i.ox = fsub float %i.ou, %i.ow                 ; 2 uses
  %i.oy = fmul float %i.on, %i.on
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.oi, float %i.oi, float %i.oy)
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.os, float %i.os, float %i.oz)
  %i.pb = tail call noundef float @llvm.fmuladd.f32(float %i.ox, float %i.ox, float %i.pa)
  %i.pc = fcmp ult float %i.pb, 1.000000e-03
  br i1 %i.pc, label %bb.bd, label %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit

bb.bd:                                            ; preds = %.lr.ph.i229
  %i.pd = getelementptr inbounds nuw i8, ptr %.01115.i, i64 16 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.01214.i230, i64 16
  %.not.i232 = icmp eq ptr %i.pd, %i.od
  br i1 %.not.i232, label %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread, label %.lr.ph.i229, !llvm.loop !22

_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread: ; preds = %bb.bd, %bb.bc, %bb.bb
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count
  br i1 %exitcond.not, label %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread402, label %bb.bb, !llvm.loop !23

_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit: ; preds = %.lr.ph.i229
  %i.pf = trunc nuw nsw i64 %indvars.iv357 to i32
  %i.pg = icmp eq i32 %.0.lcssa.i.ph, %i.pf
  br i1 %i.pg, label %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread402, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread402: ; preds = %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread, %bb.at, %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit
  %i.ph = load i8, ptr %i.n, align 8, !range !31, !noundef !32
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread276, label %bb.be

bb.be:                                            ; preds = %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread402
  %i.pj = tail call noundef zeroext i1 @_Z12CompareBonesPK6aiMeshS1_(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.t)
  br i1 %i.pj, label %bb.bf, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.bf:                                            ; preds = %bb.be
  %i.pk = zext i32 %i.bx to i64
  %i.pl = shl nuw nsw i64 %i.pk, 2
  %i.pm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pl) #21
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bg:                                            ; preds = %bb.bf
  %i.pn = load i32, ptr %i.bw, align 4
  %i.po = zext i32 %i.pn to i64
  %i.pp = shl nuw nsw i64 %i.po, 2
  %i.pq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pp) #21
          to label %.preheader281 unwind label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239 ; 3 uses

.preheader281:                                    ; preds = %bb.bg
  %i.pr = load i32, ptr %i.bt, align 8
  %.not335 = icmp eq i32 %i.pr, 0
  br i1 %.not335, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236, label %.lr.ph317

.lr.ph317:                                        ; preds = %.preheader281
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
  br label %bb.bh

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236: ; preds = %._crit_edge315, %.preheader281
  %i.pt = load i32, ptr %i.bw, align 4
  %i.pu = zext i32 %i.pt to i64
  %i.pv = shl nuw nsw i64 %i.pu, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.pq, ptr nonnull %i.pm, i64 %i.pv)
  %.not179 = icmp eq i32 %bcmp, 0
  tail call void @_ZdaPv(ptr noundef nonnull %i.pq) #22
  tail call void @_ZdaPv(ptr noundef nonnull %i.pm) #22
  br i1 %.not179, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread276, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.e, %bb.d, %._crit_edge331, %bb.bq, %._crit_edge325.thread, %bb.bv
  %lpad.loopexit.split-lp429 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239: ; preds = %bb.bg
  %i.pw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.pm) #22
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.bh:                                            ; preds = %.lr.ph317, %._crit_edge315
  %indvars.iv366 = phi i64 [ 0, %.lr.ph317 ], [ %indvars.iv.next367, %._crit_edge315 ] ; 5 uses
  %i.px = load ptr, ptr %i.ps, align 8
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %indvars.iv366 ; 3 uses
  %i.pz = load i32, ptr %i.py, align 8
  %.not336 = icmp eq i32 %i.pz, 0
  br i1 %.not336, label %._crit_edge, label %.lr.ph311

.lr.ph311:                                        ; preds = %bb.bh
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qb = trunc nuw i64 %indvars.iv366 to i32
  br label %bb.bi

._crit_edge:                                      ; preds = %bb.bi, %bb.bh
  %i.qc = load ptr, ptr %i.bb, align 8
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %indvars.iv366 ; 3 uses
  %i.qe = load i32, ptr %i.qd, align 8
  %.not337 = icmp eq i32 %i.qe, 0
  br i1 %.not337, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %._crit_edge
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qg = trunc nuw i64 %indvars.iv366 to i32
  br label %bb.bj

bb.bi:                                            ; preds = %.lr.ph311, %bb.bi
  %indvars.iv360 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next361, %bb.bi ] ; 2 uses
  %i.qh = load ptr, ptr %i.qa, align 8
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv360
  %i.qj = load i32, ptr %i.qi, align 4
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.qk
  store i32 %i.qb, ptr %i.ql, align 4
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %i.qm = load i32, ptr %i.py, align 8
  %i.qn = zext i32 %i.qm to i64
  %i.qo = icmp samesign ult i64 %indvars.iv.next361, %i.qn
  br i1 %i.qo, label %bb.bi, label %._crit_edge, !llvm.loop !24

._crit_edge315:                                   ; preds = %bb.bj, %._crit_edge
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.qp = load i32, ptr %i.bt, align 8
  %i.qq = zext i32 %i.qp to i64
  %i.qr = icmp samesign ult i64 %indvars.iv.next367, %i.qq
  br i1 %i.qr, label %bb.bh, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236, !llvm.loop !25

bb.bj:                                            ; preds = %.lr.ph314, %bb.bj
  %indvars.iv363 = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next364, %bb.bj ] ; 2 uses
  %i.qs = load ptr, ptr %i.qf, align 8
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv363
  %i.qu = load i32, ptr %i.qt, align 4
  %i.qv = zext i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.qv
  store i32 %i.qg, ptr %i.qw, align 4
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %i.qx = load i32, ptr %i.qd, align 8
  %i.qy = zext i32 %i.qx to i64
  %i.qz = icmp samesign ult i64 %indvars.iv.next364, %i.qy
  br i1 %i.qz, label %bb.bj, label %._crit_edge315, !llvm.loop !26

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread276: ; preds = %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread402, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv371
  %i.rb = load i32, ptr %i.ra, align 4
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv374
  store i32 %i.rb, ptr %i.rc, align 4
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.t) #20
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 1320) #22
  %i.rd = load ptr, ptr %i.m, align 8
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv374
  store ptr null, ptr %i.re, align 8
  br label %.loopexit

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273: ; preds = %.lr.ph.i, %.lr.ph.i187, %.lr.ph.i196, %.lr.ph.i204, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218, %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236, %bb.j, %bb.k, %bb.l, %bb.m, %bb.i, %bb.be, %bb.h, %bb.g
  %indvars.iv.next372 = add nsw i64 %indvars.iv371, -1
  %i.rf = icmp sgt i64 %indvars.iv371, 0
  br i1 %i.rf, label %bb.g, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273, %bb.f, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread276
  %i.rg = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv374
  %i.ri = load ptr, ptr %i.rh, align 8
  %.not180 = icmp eq ptr %i.ri, null
  br i1 %.not180, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  %i.rj = add i32 %.0144322, 1
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv374
  store i32 %.0144322, ptr %i.rk, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit
  %.1145 = phi i32 [ %i.rj, %bb.bk ], [ %.0144322, %.loopexit ] ; 6 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %i.rl = load i32, ptr %i.c, align 8             ; 2 uses
  %i.rm = zext i32 %i.rl to i64
  %i.rn = icmp samesign ult i64 %indvars.iv.next375, %i.rm
  br i1 %i.rn, label %bb.d, label %._crit_edge325, !llvm.loop !28

._crit_edge331:                                   ; preds = %bb.bo, %.preheader
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8
  tail call void @_Z17UpdateMeshIndicesP6aiNodePj(ptr noundef %i.rp, ptr noundef nonnull %i.k)
  %i.rq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %.lr.ph330, %bb.bo
  %i.rr = phi ptr [ %.pre380, %.lr.ph330 ], [ %i.ry, %bb.bo ] ; 3 uses
  %.0329 = phi i32 [ 0, %.lr.ph330 ], [ %i.rz, %bb.bo ] ; 2 uses
  %.0134328 = phi i32 [ 0, %.lr.ph330 ], [ %.1, %bb.bo ] ; 3 uses
  %i.rs = zext i32 %.0329 to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rs
  %i.ru = load ptr, ptr %i.rt, align 8            ; 2 uses
  %.not162 = icmp eq ptr %i.ru, null
  br i1 %.not162, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rv = add nuw i32 %.0134328, 1
  %i.rw = zext i32 %.0134328 to i64
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rw
  store ptr %i.ru, ptr %i.rx, align 8
  %.pre379 = load ptr, ptr %i.p, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.ry = phi ptr [ %.pre379, %bb.bn ], [ %i.rr, %bb.bm ]
  %.1 = phi i32 [ %i.rv, %bb.bn ], [ %.0134328, %bb.bm ] ; 2 uses
  %i.rz = add i32 %.0329, 1
  %i.sa = icmp ult i32 %.1, %.1145
  br i1 %i.sa, label %bb.bm, label %._crit_edge331, !llvm.loop !29

bb.bp:                                            ; preds = %._crit_edge331
  br i1 %i.rq, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.sc = load i32, ptr %i.c, align 8
  %i.sd = sub i32 %i.sc, %.1145
  store i32 %i.sd, ptr %i.a, align 4
  invoke void @_ZN6Assimp6Logger4infoIJRA38_KcjRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sb, ptr noundef nonnull align 1 dereferenceable(38) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.3)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.bu:                                            ; preds = %bb.bs, %bb.bp
  store i32 %.1145, ptr %i.c, align 8
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit

._crit_edge325.thread:                            ; preds = %.preheader288, %._crit_edge325
  %i.sf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %._crit_edge325.thread
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.sf, ptr noundef nonnull @.str.4)
          to label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.bv, %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  call void @_ZdaPv(ptr noundef nonnull %i.g) #22
  br label %bb.bw

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239, %bb.bt
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pw, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239 ], [ %i.se, %bb.bt ], [ %lpad.loopexit.split-lp429, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246, %bb.c
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246 ], [ %i.q, %bb.c ]
  call void @_ZdaPv(ptr noundef nonnull %i.g) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.bw:                                            ; preds = %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare i32 @__gxx_personality_v0(...)

declare noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !36 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #22
  br label %bb.s

end_hunk_1
