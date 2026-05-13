inline.NumInlined: 330
inline.NumDeleted: 230
begin_hunk_0_@_Z12CompareBonesPK6aiMeshS1_:bb.a
  br i1 %i.ao, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 1076
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 1076
  %i.as = load float, ptr %i.ar, align 4
  %i.at = fcmp oeq float %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 1080
  %i.av = load float, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 1080
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = fcmp oeq float %i.av, %i.ax
  br i1 %i.ay, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 1084
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 1084
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = fcmp oeq float %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 1088
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 1088
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fcmp oeq float %i.bf, %i.bh
  br i1 %i.bi, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 1092
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 1092
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = fcmp oeq float %i.bk, %i.bm
  br i1 %i.bn, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 1096
  %i.bp = load float, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 1096
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = fcmp oeq float %i.bp, %i.br
  br i1 %i.bs, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 1100
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 1100
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = fcmp oeq float %i.bu, %i.bw
  br i1 %i.bx, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 1104
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = fcmp oeq float %i.bz, %i.cb
  br i1 %i.cc, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 1108
  %i.ce = load float, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 1108
  %i.cg = load float, ptr %i.cf, align 4
  %i.ch = fcmp oeq float %i.ce, %i.cg
  br i1 %i.ch, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 1112
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 1112
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = fcmp oeq float %i.cj, %i.cl
  br i1 %i.cm, label %_ZNK12aiMatrix4x4tIfEneERKS0_.exit, label %.thread

_ZNK12aiMatrix4x4tIfEneERKS0_.exit:               ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 1116
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 1116
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fcmp une float %i.co, %i.cq
  br i1 %i.cr, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK12aiMatrix4x4tIfEneERKS0_.exit
  %.not3237.not = icmp eq i32 %i.n, 0
  br i1 %.not3237.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 1048
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 1048
  %i.cv = load ptr, ptr %i.cu, align 8
  %wide.trip.count = zext i32 %i.n to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !3

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %.not31 = icmp eq i32 %i.cx, %i.cz
  br i1 %.not31, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.db = load float, ptr %i.da, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = fsub float %i.db, %i.dd
  %i.df = fcmp olt float %i.de, f0x3C23D70A
  br i1 %i.df, label %.thread, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %.preheader
  %i.dg = add nuw i32 %.02739, 1                  ; 2 uses
  %exitcond78.not = icmp eq i32 %i.dg, %i.b
  br i1 %exitcond78.not, label %.thread, label %bb.b, !llvm.loop !5

.thread:                                          ; preds = %._crit_edge, %bb.b, %_ZNK12aiMatrix4x4tIfEneERKS0_.exit, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.s, %bb.t, %bb.a
  %i.dh = phi i1 [ true, %bb.a ], [ false, %bb.s ], [ false, %bb.t ], [ true, %._crit_edge ], [ false, %bb.b ], [ false, %_ZNK12aiMatrix4x4tIfEneERKS0_.exit ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %i.dh
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z17UpdateMeshIndicesP6aiNodePj(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
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
  br i1 %i.o, label %bb.b, label %.preheader, !llvm.loop !6

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
  br i1 %i.u, label %bb.c, label %._crit_edge, !llvm.loop !7
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef captures(none) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.cb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #21 ; 4 uses
  %i.h = shl nuw nsw i64 %i.e, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
          to label %.lr.ph322 unwind label %bb.c  ; 6 uses

.lr.ph322:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.d

._crit_edge323:                                   ; preds = %bb.bo
  %.not161 = icmp eq i32 %.1147, %i.rl
  br i1 %.not161, label %bb.bz, label %.preheader

.preheader:                                       ; preds = %._crit_edge323
  %.not336 = icmp eq i32 %.1147, 0
  br i1 %.not336, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bp

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249

bb.d:                                             ; preds = %.lr.ph322, %bb.bo
  %i.n = phi ptr [ %.pre, %.lr.ph322 ], [ %i.rg, %bb.bo ]
  %indvars.iv369 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next370, %bb.bo ] ; 8 uses
  %indvars.iv364 = phi i32 [ -1, %.lr.ph322 ], [ %indvars.iv.next365, %bb.bo ] ; 2 uses
  %.0146321 = phi i32 [ 0, %.lr.ph322 ], [ %.1147, %bb.bo ] ; 3 uses
  %i.o = zext i32 %indvars.iv364 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv369
  %i.q = load ptr, ptr %i.p, align 8              ; 25 uses
  %i.r = invoke noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef %i.q)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 216 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = shl i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = xor i32 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = shl i32 %i.ab, 4
  %i.ad = xor i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 232 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = shl i32 %i.af, 15
  %i.ah = xor i32 %i.ad, %i.ag
  %i.ai = load i32, ptr %i.q, align 8
  %i.aj = shl i32 %i.ai, 28
  %i.ak = xor i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = or disjoint i64 %i.t, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv369 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %i.q)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ap = fmul float %i.ao, %i.ao                 ; 4 uses
  %i.aq = trunc nuw i64 %indvars.iv369 to i32
  %.0155316 = add i32 %i.aq, -1
  %i.ar = icmp sgt i32 %.0155316, -1
  br i1 %i.ar, label %.lr.ph319, label %.loopexit

.lr.ph319:                                        ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.h:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.i:                                             ; preds = %.lr.ph319, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273
  %indvars.iv366 = phi i64 [ %i.o, %.lr.ph319 ], [ %indvars.iv.next367, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273 ] ; 5 uses
  %i.bi = load i64, ptr %i.an, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv366
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.j, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.j, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv366
  %i.bo = load ptr, ptr %i.bn, align 8            ; 28 uses
  %.not163 = icmp eq ptr %i.bo, null
  br i1 %.not163, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = load i32, ptr %i.u, align 8
  %.not164 = icmp eq i32 %i.bq, %i.br
  br i1 %.not164, label %bb.l, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = load i32, ptr %i.aa, align 8
  %.not165 = icmp eq i32 %i.bt, %i.bu
  br i1 %.not165, label %bb.m, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4            ; 10 uses
  %i.bx = load i32, ptr %i.x, align 4
  %.not166 = icmp eq i32 %i.bw, %i.bx
  br i1 %.not166, label %bb.n, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = load i32, ptr %i.ae, align 8
  %.not167 = icmp eq i32 %i.bz, %i.ca
  br i1 %.not167, label %bb.o, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.o:                                             ; preds = %bb.n
  %i.cb = load i32, ptr %i.bo, align 8
  %i.cc = load i32, ptr %i.q, align 8
  %.not168 = icmp eq i32 %i.cb, %i.cc
  br i1 %.not168, label %bb.p, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i = icmp ne ptr %i.ce, null
  %i.cf = icmp ne i32 %i.bw, 0                    ; 3 uses
  %i.cg = and i1 %i.cf, %.not.i
  br i1 %i.cg, label %bb.q, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.as, align 8
  %i.ci = zext i32 %i.bw to i64
  %.idx.i = mul nuw nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.01015.i = phi ptr [ %i.db, %bb.r ], [ %i.ce, %bb.q ] ; 4 uses
  %.01214.i = phi ptr [ %i.dc, %bb.r ], [ %i.ch, %bb.q ] ; 4 uses
  %i.ck = load float, ptr %.01015.i, align 4
  %i.cl = load float, ptr %.01214.i, align 4
  %i.cm = fsub float %i.ck, %i.cl                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01015.i, i64 4
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01015.i, i64 8
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fsub float %i.ct, %i.cv                 ; 2 uses
  %i.cx = fmul float %i.cr, %i.cr
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.cx)
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cy)
  %i.da = fcmp ult float %i.cz, %i.ap
  br i1 %i.da, label %bb.r, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.r:                                             ; preds = %.lr.ph.i
  %i.db = getelementptr inbounds nuw i8, ptr %.01015.i, i64 12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 12
  %.not.i183 = icmp eq ptr %i.db, %i.cj
  br i1 %.not.i183, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread, label %.lr.ph.i, !llvm.loop !8

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread: ; preds = %bb.r, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i184 = icmp ne ptr %i.de, null
  %i.df = and i1 %i.cf, %.not.i184
  br i1 %i.df, label %bb.s, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread

bb.s:                                             ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread
  %i.dg = load ptr, ptr %i.at, align 8
  %i.dh = zext i32 %i.bw to i64
  %.idx.i185 = mul nuw nsw i64 %i.dh, 12
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i185
  br label %.lr.ph.i187

end_hunk_0
begin_hunk_1_@_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene:bb.a
bb.bi:                                            ; preds = %bb.bh
  %i.pm = load i32, ptr %i.bv, align 4
  %i.pn = zext i32 %i.pm to i64
  %i.po = shl nuw nsw i64 %i.pn, 2
  %i.pp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.po) #21
          to label %.preheader281 unwind label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239 ; 3 uses

.preheader281:                                    ; preds = %bb.bi
  %i.pq = load i32, ptr %i.bs, align 8
  %.not333 = icmp eq i32 %i.pq, 0
  br i1 %.not333, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236, label %.lr.ph315

.lr.ph315:                                        ; preds = %.preheader281
  %i.pr = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  br label %bb.bk

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236: ; preds = %._crit_edge313, %.preheader281
  %i.ps = load i32, ptr %i.bv, align 4
  %i.pt = zext i32 %i.ps to i64
  %i.pu = shl nuw nsw i64 %i.pt, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.pp, ptr nonnull %i.pl, i64 %i.pu)
  %.not179 = icmp eq i32 %bcmp, 0
  tail call void @_ZdaPv(ptr noundef nonnull %i.pp) #22
  tail call void @_ZdaPv(ptr noundef nonnull %i.pl) #22
  br i1 %.not179, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread276, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.bj:                                            ; preds = %bb.bh
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239: ; preds = %bb.bi
  %i.pw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.pl) #22
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.bk:                                            ; preds = %.lr.ph315, %._crit_edge313
  %indvars.iv361 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next362, %._crit_edge313 ] ; 5 uses
  %i.px = load ptr, ptr %i.pr, align 8
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %indvars.iv361 ; 3 uses
  %i.pz = load i32, ptr %i.py, align 8
  %.not334 = icmp eq i32 %i.pz, 0
  br i1 %.not334, label %._crit_edge, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.bk
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qb = trunc nuw i64 %indvars.iv361 to i32
  br label %bb.bl

._crit_edge:                                      ; preds = %bb.bl, %bb.bk
  %i.qc = load ptr, ptr %i.ay, align 8
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %indvars.iv361 ; 3 uses
  %i.qe = load i32, ptr %i.qd, align 8
  %.not335 = icmp eq i32 %i.qe, 0
  br i1 %.not335, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %._crit_edge
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qg = trunc nuw i64 %indvars.iv361 to i32
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph309, %bb.bl
  %indvars.iv355 = phi i64 [ 0, %.lr.ph309 ], [ %indvars.iv.next356, %bb.bl ] ; 2 uses
  %i.qh = load ptr, ptr %i.qa, align 8
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv355
  %i.qj = load i32, ptr %i.qi, align 4
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.qk
  store i32 %i.qb, ptr %i.ql, align 4
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %i.qm = load i32, ptr %i.py, align 8
  %i.qn = zext i32 %i.qm to i64
  %i.qo = icmp samesign ult i64 %indvars.iv.next356, %i.qn
  br i1 %i.qo, label %bb.bl, label %._crit_edge, !llvm.loop !13

._crit_edge313:                                   ; preds = %bb.bm, %._crit_edge
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.qp = load i32, ptr %i.bs, align 8
  %i.qq = zext i32 %i.qp to i64
  %i.qr = icmp samesign ult i64 %indvars.iv.next362, %i.qq
  br i1 %i.qr, label %bb.bk, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236, !llvm.loop !14

bb.bm:                                            ; preds = %.lr.ph312, %bb.bm
  %indvars.iv358 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next359, %bb.bm ] ; 2 uses
  %i.qs = load ptr, ptr %i.qf, align 8
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv358
  %i.qu = load i32, ptr %i.qt, align 4
  %i.qv = zext i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.qv
  store i32 %i.qg, ptr %i.qw, align 4
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %i.qx = load i32, ptr %i.qd, align 8
  %i.qy = zext i32 %i.qx to i64
  %i.qz = icmp samesign ult i64 %indvars.iv.next359, %i.qy
  br i1 %i.qz, label %bb.bm, label %._crit_edge313, !llvm.loop !15

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread276: ; preds = %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit.thread391, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv366
  %i.rb = load i32, ptr %i.ra, align 4
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv369
  store i32 %i.rb, ptr %i.rc, align 4
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.q) #20
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef 1320) #22
  %i.rd = load ptr, ptr %i.j, align 8
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv369
  store ptr null, ptr %i.re, align 8
  br label %.loopexit

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273: ; preds = %.lr.ph.i, %.lr.ph.i187, %.lr.ph.i196, %.lr.ph.i204, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218, %_ZN6Assimp13CompareArraysEPK9aiColor4tIfES3_jf.exit, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit236, %bb.l, %bb.m, %bb.n, %bb.o, %bb.k, %bb.bg, %bb.j, %bb.i
  %indvars.iv.next367 = add nsw i64 %indvars.iv366, -1
  %i.rf = icmp sgt i64 %indvars.iv366, 0
  br i1 %i.rf, label %bb.i, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273, %bb.f, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread276
  %i.rg = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv369
  %i.ri = load ptr, ptr %i.rh, align 8
  %.not180 = icmp eq ptr %i.ri, null
  br i1 %.not180, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.loopexit
  %i.rj = add i32 %.0146321, 1
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv369
  store i32 %.0146321, ptr %i.rk, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit
  %.1147 = phi i32 [ %i.rj, %bb.bn ], [ %.0146321, %.loopexit ] ; 6 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.rl = load i32, ptr %i.c, align 8             ; 2 uses
  %i.rm = zext i32 %i.rl to i64
  %i.rn = icmp samesign ult i64 %indvars.iv.next370, %i.rm
  %indvars.iv.next365 = add i32 %indvars.iv364, 1
  br i1 %i.rn, label %bb.d, label %._crit_edge323, !llvm.loop !17

._crit_edge329:                                   ; preds = %bb.br, %.preheader
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8
  tail call void @_Z17UpdateMeshIndicesP6aiNodePj(ptr noundef %i.rp, ptr noundef nonnull %i.i)
  %i.rq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.bs unwind label %bb.bw

bb.bp:                                            ; preds = %.lr.ph328, %bb.br
  %.0327 = phi i32 [ 0, %.lr.ph328 ], [ %i.ry, %bb.br ] ; 2 uses
  %.0134326 = phi i32 [ 0, %.lr.ph328 ], [ %.1, %bb.br ] ; 3 uses
  %i.rr = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.rs = zext i32 %.0327 to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rs
  %i.ru = load ptr, ptr %i.rt, align 8            ; 2 uses
  %.not162 = icmp eq ptr %i.ru, null
  br i1 %.not162, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rv = add nuw i32 %.0134326, 1
  %i.rw = zext i32 %.0134326 to i64
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rw
  store ptr %i.ru, ptr %i.rx, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.1 = phi i32 [ %i.rv, %bb.bq ], [ %.0134326, %bb.bp ] ; 2 uses
  %i.ry = add i32 %.0327, 1
  %i.rz = icmp ult i32 %.1, %.1147
  br i1 %i.rz, label %bb.bp, label %._crit_edge329, !llvm.loop !18

bb.bs:                                            ; preds = %._crit_edge329
  br i1 %i.rq, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sa = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.sb = load i32, ptr %i.c, align 8
  %i.sc = sub i32 %i.sb, %.1147
  store i32 %i.sc, ptr %i.a, align 4
  invoke void @_ZN6Assimp6Logger4infoIJRA38_KcjRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sa, ptr noundef nonnull align 1 dereferenceable(38) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.3)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.by

bb.bw:                                            ; preds = %bb.ca, %bb.bz, %bb.bt, %._crit_edge329
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.bx:                                            ; preds = %bb.bu
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.by:                                            ; preds = %bb.bv, %bb.bs
  store i32 %.1147, ptr %i.c, align 8
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit

bb.bz:                                            ; preds = %._crit_edge323
  %i.sf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ca unwind label %bb.bw

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.sf, ptr noundef nonnull @.str.4)
          to label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit unwind label %bb.bw

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.ca, %bb.by
  call void @_ZdaPv(ptr noundef nonnull %i.i) #22
  call void @_ZdaPv(ptr noundef nonnull %i.g) #22
  br label %bb.cb

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246: ; preds = %bb.bj, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239, %bb.g, %bb.h, %bb.bx, %bb.bw
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sd, %bb.bw ], [ %i.se, %bb.bx ], [ %i.bg, %bb.g ], [ %i.bh, %bb.h ], [ %i.pw, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit239 ], [ %i.pv, %bb.bj ]
  call void @_ZdaPv(ptr noundef nonnull %i.i) #22
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246, %bb.c
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246 ], [ %i.m, %bb.c ]
  call void @_ZdaPv(ptr noundef nonnull %i.g) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.cb:                                            ; preds = %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare i32 @__gxx_personality_v0(...)

declare noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 9 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.ah, label %.preheader47.preheader

bb.z:                                             ; preds = %.preheader47.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 1028) #22
  %.pre = load ptr, ptr %i.am, align 8
  br label %.preheader47.1

.preheader47.1:                                   ; preds = %.preheader47.preheader, %bb.z
  %i.ao = phi ptr [ %i.an, %.preheader47.preheader ], [ %.pre, %bb.z ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.preheader47.2, label %bb.aa

bb.aa:                                            ; preds = %.preheader47.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 1028) #22
  %.pre69 = load ptr, ptr %i.am, align 8
  br label %.preheader47.2

.preheader47.2:                                   ; preds = %bb.aa, %.preheader47.1
  %i.as = phi ptr [ %.pre69, %bb.aa ], [ %i.ao, %.preheader47.1 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.preheader47.3, label %bb.ab

bb.ab:                                            ; preds = %.preheader47.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 1028) #22
  %.pre70 = load ptr, ptr %i.am, align 8
  br label %.preheader47.3
end_hunk_1
begin_hunk_2_@_ZN10aiAnimMeshD2Ev:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #22
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.w
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #22
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZdaPv(ptr noundef nonnull %i.au) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %i.ax) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.ba) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZdaPv(ptr noundef nonnull %i.bd) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 6 uses
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
  %i.l = load ptr, ptr %1, align 8                ; 3 uses
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
  br i1 %i.o, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !22

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
  br i1 %i.x, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !23

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
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !23

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %4 = phi ptr [ %i.l, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %4, ptr %i.ag, align 8
  %i.ah = invoke ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #22
  resume { ptr, i32 } %i.ai

_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ah, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8
  invoke void @__cxa_rethrow() #24
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
  tail call void @__clang_call_terminate(ptr %i.q) #23
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
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
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
end_hunk_2
