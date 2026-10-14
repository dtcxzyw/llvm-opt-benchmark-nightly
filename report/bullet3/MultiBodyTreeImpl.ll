Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/MultiBodyTreeImpl?download=true
inline.NumInlined: 1044
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
@switch.table._ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl15getJointTypeStrEiPPKc = private unnamed_addr constant [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 8

@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImplC1Eii = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImplC2Eii

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImplC2Eii(ptr noundef nonnull align 8 dereferenceable(400) initializes((0, 8), (28, 36), (40, 49), (60, 68), (72, 81), (92, 100), (104, 113), (124, 132), (136, 145), (156, 164), (168, 177), (188, 196), (200, 209), (220, 228), (232, 241), (252, 260), (264, 273), (284, 292), (296, 305), (312, 332), (340, 348), (352, 361), (372, 380), (384, 393)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %4 = alloca %"struct.btInverseDynamicsBullet3::RigidBody", align 8 ; 16 uses
  %5 = alloca %class.b3AlignedObjectArray.0, align 8 ; 9 uses
  store i32 %1, ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.e, align 4, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i8 1, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  store ptr null, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  store i32 0, ptr %i.i, align 4, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 0, ptr %i.n, align 4, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.p, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.q, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.r, align 4, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.s, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.v, align 4, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.w, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.x, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.z, align 4, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.aa, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.ab, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.ad, align 4, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  store i8 1, ptr %i.af, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 5 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  store i8 1, ptr %i.aj, align 8, !tbaa !100
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 13 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 5 uses
  store i32 0, ptr %i.al, align 4, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  store i32 0, ptr %i.am, align 8, !tbaa !102
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  store i32 3, ptr %i.an, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %2, ptr %i.ao, align 4, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.ap, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 0, ptr %i.aq, align 4, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.ar, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 1, ptr %i.as, align 8, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  store i32 0, ptr %i.au, align 4, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 0, ptr %i.av, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 1, ptr %i.aw, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.ax, align 8, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 0, ptr %i.ay, align 4, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.az, align 8, !tbaa !66
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.an, i32 noundef 3, i32 noundef %2)
          to label %_ZN24btInverseDynamicsBullet35mat3xC2Eii.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.bb) #17
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.bc) #17
  br label %.body

_ZN24btInverseDynamicsBullet35mat3xC2Eii.exit:    ; preds = %bb.a
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !41
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.an, i32 noundef 3, i32 noundef %i.bd)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZN24btInverseDynamicsBullet35mat3xC2Eii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.33)
          to label %.noexc35 unwind label %bb.x

.noexc35:                                         ; preds = %.noexc
  %i.be = load i32, ptr %i.au, align 4, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %bb.c, label %_Z9btSetZeroIfEvPT_i.exit.i.i.i

_Z9btSetZeroIfEvPT_i.exit.i.i.i:                  ; preds = %.noexc35
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.bg = sext i32 %i.be to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.bh, i1 false), !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %.noexc35, %_Z9btSetZeroIfEvPT_i.exit.i.i.i
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %4, i8 0, i64 816, i1 false)
  store i8 1, ptr %i.bi, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 636
  store i32 0, ptr %i.bj, align 4, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 688
  store i8 1, ptr %i.bk, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 668
  store i32 0, ptr %i.bl, align 4, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 696
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.bn, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 724
  store i32 0, ptr %i.bo, align 4, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 776
  store i8 1, ptr %i.bp, align 8, !tbaa !63
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 756
  store i32 0, ptr %i.bq, align 4, !tbaa !65
  invoke void @_ZN20b3AlignedObjectArrayIN24btInverseDynamicsBullet39RigidBodyEE6resizeEiRKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(816) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %bb.c
  call void @_ZN24btInverseDynamicsBullet39RigidBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.br = load i32, ptr %i.i, align 4, !tbaa !48  ; 2 uses
  %i.bs = icmp sgt i32 %1, %i.br
  br i1 %i.bs, label %bb.e, label %.loopexit99

bb.e:                                             ; preds = %bb.d
  %i.bt = load i32, ptr %i.j, align 8, !tbaa !49
  %i.bu = icmp slt i32 %i.bt, %1
  br i1 %i.bu, label %bb.f, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.e
  %.pre103 = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i36 = icmp eq i32 %1, 0
  br i1 %.not.i.i.i36, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.f
  %i.bv = sext i32 %1 to i64
  %i.bw = shl nsw i64 %i.bv, 2
  %i.bx = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.bw, i32 noundef 16)
          to label %.noexc37 unwind label %bb.z   ; 12 uses

.noexc37:                                         ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %6 = ptrtoaddr ptr %i.bx to i64
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc37
  %i.bz = load i32, ptr %i.i, align 4, !tbaa !48  ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %.pre102 = load ptr, ptr %i.h, align 8, !tbaa !47 ; 11 uses
  br i1 %i.ca, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %.pre102139 = ptrtoaddr ptr %.pre102 to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bz to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bz, 8
  %i.cb = sub i64 %.pre102139, %6
  %diff.check = icmp ugt i64 %i.cb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <4 x i32>, ptr %i.cd, align 4, !tbaa !69
  %wide.load140 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !69
  store <4 x i32> %wide.load140, ptr %i.cf, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i.prol
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv.i.i.i.prol
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !69
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !91

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ck = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv.i.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !69
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !69
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.i.i.i
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv.next.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !69
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.i.i.i.1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv.next.i.i.i.1
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !69
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.i.i.i.2
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv.next.i.i.i.2
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !69
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph, !llvm.loop !92

.split7.i.i:                                      ; preds = %.noexc37, %bb.f
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 301)
          to label %.noexc38 unwind label %bb.z

.noexc38:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.38)
          to label %.noexc39 unwind label %bb.z

.noexc39:                                         ; preds = %.noexc38
  store i32 0, ptr %i.i, align 4, !tbaa !48
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %.noexc39, %.split.i.i
  %i.cy = phi ptr [ %.pre, %.noexc39 ], [ %.pre102, %.split.i.i ] ; 2 uses
  %.0.i12.i.i = phi ptr [ null, %.noexc39 ], [ %i.bx, %.split.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.noexc39 ], [ %1, %.split.i.i ] ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.0.i.i128 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %1, %middle.block ], [ %1, %scalar.ph ], [ %1, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i12.i.i126 = phi ptr [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %i.bx, %middle.block ], [ %i.bx, %scalar.ph ], [ %i.bx, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.cz = phi ptr [ %i.cy, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %.pre102, %middle.block ], [ %.pre102, %scalar.ph ], [ %.pre102, %scalar.ph.prol.loopexit ]
  %i.da = load i8, ptr %i.g, align 8, !tbaa !46, !range !74, !noundef !75
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.g, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cz)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i unwind label %bb.z

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.0.i.i129 = phi i32 [ %.0.i.i128, %bb.g ], [ %.0.i.i128, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread ], [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  %.0.i12.i.i127 = phi ptr [ %.0.i12.i.i126, %bb.g ], [ %.0.i12.i.i126, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread ], [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ] ; 2 uses
  store i8 1, ptr %i.g, align 8, !tbaa !46
  store ptr %.0.i12.i.i127, ptr %i.h, align 8, !tbaa !47
  store i32 %.0.i.i129, ptr %i.j, align 8, !tbaa !49
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.dc = phi ptr [ %.pre103, %..lr.ph.i_crit_edge ], [ %.0.i12.i.i127, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ]
  %i.dd = sext i32 %i.br to i64                   ; 2 uses
  %wide.trip.count.i = sext i32 %1 to i64
  %i.de = shl nsw i64 %i.dd, 2
  %scevgep = getelementptr i8, ptr %i.dc, i64 %i.de
  %i.df = sub nsw i64 %wide.trip.count.i, %i.dd
  %i.dg = shl nsw i64 %i.df, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.dg, i1 false), !tbaa !69
  br label %.loopexit99

.loopexit99:                                      ; preds = %.lr.ph.i, %bb.d
  store i32 %1, ptr %i.i, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i8 1, ptr %i.dh, align 8, !tbaa !46
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.di, align 8, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.dj, align 4, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.dk, align 8, !tbaa !49
  %i.dl = load i32, ptr %i.n, align 4, !tbaa !52  ; 4 uses
  %i.dm = icmp slt i32 %1, %i.dl
  br i1 %i.dm, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %.loopexit99
  %i.dn = sext i32 %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i, %.preheader.i
  %indvars.iv25.i = phi i64 [ %i.dn, %.preheader.i ], [ %indvars.iv.next26.i, %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i ] ; 2 uses
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.dp = getelementptr inbounds [32 x i8], ptr %i.do, i64 %indvars.iv25.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !range !74
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.du, i1 false
  br i1 %or.cond.i.i.i, label %bb.i, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.dr)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #18
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit.i:          ; preds = %bb.i, %bb.h
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %lftr.wideiv28.i = trunc i64 %indvars.iv.next26.i to i32
  %exitcond29.not.i = icmp eq i32 %i.dl, %lftr.wideiv28.i
  br i1 %exitcond29.not.i, label %.loopexit96, label %bb.h, !llvm.loop !0

bb.k:                                             ; preds = %.loopexit99
  %i.dx = icmp sgt i32 %1, %i.dl
  br i1 %i.dx, label %.lr.ph.i41, label %.loopexit96

.lr.ph.i41:                                       ; preds = %bb.k
  invoke void @_ZN20b3AlignedObjectArrayIS_IiEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %i.k, i32 noundef %1)
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %.lr.ph.i41
  %i.dy = sext i32 %i.dl to i64
  br label %bb.l

bb.l:                                             ; preds = %.noexc46, %.noexc45
  %indvars.iv.i42 = phi i64 [ %i.dy, %.noexc45 ], [ %indvars.iv.next.i43, %.noexc46 ] ; 2 uses
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.dz, i64 %indvars.iv.i42
  invoke void @_ZN20b3AlignedObjectArrayIiEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.ea, ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %.noexc46 unwind label %.loopexit97

.noexc46:                                         ; preds = %bb.l
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i43 to i32
  %exitcond.not.i44 = icmp eq i32 %1, %lftr.wideiv.i
  br i1 %exitcond.not.i44, label %.loopexit96, label %bb.l, !llvm.loop !1

.loopexit96:                                      ; preds = %.noexc46, %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i, %bb.k
  store i32 %1, ptr %i.n, align 4, !tbaa !52
  %i.eb = load ptr, ptr %i.di, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i47 = icmp ne ptr %i.eb, null
  %i.ec = load i8, ptr %i.dh, align 8, !range !74
  %i.ed = trunc nuw i8 %i.ec to i1
  %or.cond.i.i = select i1 %.not.i.i.i47, i1 %i.ed, i1 false
  br i1 %or.cond.i.i, label %bb.m, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit

bb.m:                                             ; preds = %.loopexit96
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.eb)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #18
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit:            ; preds = %.loopexit96, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.eg = load i32, ptr %i.ah, align 4, !tbaa !48 ; 2 uses
  %i.eh = icmp sgt i32 %1, %i.eg
  br i1 %i.eh, label %bb.o, label %.loopexit95

bb.o:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit
  %i.ei = load i32, ptr %i.ai, align 8, !tbaa !49
  %i.ej = icmp slt i32 %i.ei, %1
  br i1 %i.ej, label %bb.p, label %..lr.ph.i48_crit_edge

..lr.ph.i48_crit_edge:                            ; preds = %bb.o
  %.pre106 = load ptr, ptr %i.ag, align 8, !tbaa !47
  br label %.lr.ph.i48

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i54 = icmp eq i32 %1, 0
  br i1 %.not.i.i.i54, label %.split7.i.i67, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i55

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i55: ; preds = %bb.p
  %i.ek = sext i32 %1 to i64
  %i.el = shl nsw i64 %i.ek, 2
  %i.em = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.el, i32 noundef 16)
          to label %.noexc68 unwind label %bb.ab  ; 12 uses

.noexc68:                                         ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i55
  %7 = ptrtoaddr ptr %i.em to i64
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.split7.i.i67, label %.split.i.i56

.split.i.i56:                                     ; preds = %.noexc68
  %i.eo = load i32, ptr %i.ah, align 4, !tbaa !48 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  %.pre105 = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 11 uses
  br i1 %i.ep, label %.lr.ph.i.i.i62, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57

.lr.ph.i.i.i62:                                   ; preds = %.split.i.i56
  %.pre105142 = ptrtoaddr ptr %.pre105 to i64
  %wide.trip.count.i.i.i63 = zext nneg i32 %i.eo to i64 ; 5 uses
  %min.iters.check145 = icmp ult i32 %i.eo, 8
  %i.eq = sub i64 %.pre105142, %7
  %diff.check143 = icmp ugt i64 %i.eq, -32
  %or.cond156 = select i1 %min.iters.check145, i1 true, i1 %diff.check143
  br i1 %or.cond156, label %scalar.ph144.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph.i.i.i62
  %n.vec147 = and i64 %wide.trip.count.i.i.i63, 2147483640 ; 3 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next152, %vector.body148 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index149 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.pre105, i64 %index149 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load150 = load <4 x i32>, ptr %i.es, align 4, !tbaa !69
  %wide.load151 = load <4 x i32>, ptr %i.et, align 4, !tbaa !69
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x i32> %wide.load150, ptr %i.er, align 4, !tbaa !69
  store <4 x i32> %wide.load151, ptr %i.eu, align 4, !tbaa !69
  %index.next152 = add nuw i64 %index149, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.ev, label %middle.block153, label %vector.body148, !llvm.loop !93

middle.block153:                                  ; preds = %vector.body148
  %cmp.n154 = icmp eq i64 %n.vec147, %wide.trip.count.i.i.i63
  br i1 %cmp.n154, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %.lr.ph.i.i.i62, %middle.block153
  %indvars.iv.i.i.i64.ph = phi i64 [ 0, %.lr.ph.i.i.i62 ], [ %n.vec147, %middle.block153 ] ; 3 uses
  %xtraiter158 = and i64 %wide.trip.count.i.i.i63, 3 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol

scalar.ph144.prol:                                ; preds = %scalar.ph144.preheader, %scalar.ph144.prol
  %indvars.iv.i.i.i64.prol = phi i64 [ %indvars.iv.next.i.i.i65.prol, %scalar.ph144.prol ], [ %indvars.iv.i.i.i64.ph, %scalar.ph144.preheader ] ; 3 uses
  %prol.iter160 = phi i64 [ %prol.iter160.next, %scalar.ph144.prol ], [ 0, %scalar.ph144.preheader ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i.i.i64.prol
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.pre105, i64 %indvars.iv.i.i.i64.prol
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !69
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !69
  %indvars.iv.next.i.i.i65.prol = add nuw nsw i64 %indvars.iv.i.i.i64.prol, 1 ; 2 uses
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol, !llvm.loop !94

scalar.ph144.prol.loopexit:                       ; preds = %scalar.ph144.prol, %scalar.ph144.preheader
  %indvars.iv.i.i.i64.unr = phi i64 [ %indvars.iv.i.i.i64.ph, %scalar.ph144.preheader ], [ %indvars.iv.next.i.i.i65.prol, %scalar.ph144.prol ]
  %i.ez = sub nsw i64 %indvars.iv.i.i.i64.ph, %wide.trip.count.i.i.i63
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread, label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.prol.loopexit, %scalar.ph144
  %indvars.iv.i.i.i64 = phi i64 [ %indvars.iv.next.i.i.i65.3, %scalar.ph144 ], [ %indvars.iv.i.i.i64.unr, %scalar.ph144.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i.i.i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.pre105, i64 %indvars.iv.i.i.i64
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !69
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !69
  %indvars.iv.next.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i64, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next.i.i.i65
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.pre105, i64 %indvars.iv.next.i.i.i65
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !69
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !69
  %indvars.iv.next.i.i.i65.1 = add nuw nsw i64 %indvars.iv.i.i.i64, 2 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next.i.i.i65.1
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.pre105, i64 %indvars.iv.next.i.i.i65.1
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !69
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !69
  %indvars.iv.next.i.i.i65.2 = add nuw nsw i64 %indvars.iv.i.i.i64, 3 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next.i.i.i65.2
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.pre105, i64 %indvars.iv.next.i.i.i65.2
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !69
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !69
  %indvars.iv.next.i.i.i65.3 = add nuw nsw i64 %indvars.iv.i.i.i64, 4 ; 2 uses
  %exitcond.not.i.i.i66.3 = icmp eq i64 %indvars.iv.next.i.i.i65.3, %wide.trip.count.i.i.i63
  br i1 %exitcond.not.i.i.i66.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread, label %scalar.ph144, !llvm.loop !95

.split7.i.i67:                                    ; preds = %.noexc68, %bb.p
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 301)
          to label %.noexc69 unwind label %bb.ab

.noexc69:                                         ; preds = %.split7.i.i67
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.38)
          to label %.noexc70 unwind label %bb.ab

.noexc70:                                         ; preds = %.noexc69
  store i32 0, ptr %i.ah, align 4, !tbaa !48
  %.pre104 = load ptr, ptr %i.ag, align 8, !tbaa !47
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57: ; preds = %.noexc70, %.split.i.i56
  %i.fn = phi ptr [ %.pre104, %.noexc70 ], [ %.pre105, %.split.i.i56 ] ; 2 uses
  %.0.i12.i.i58 = phi ptr [ null, %.noexc70 ], [ %i.em, %.split.i.i56 ] ; 2 uses
  %.0.i.i59 = phi i32 [ 0, %.noexc70 ], [ %1, %.split.i.i56 ] ; 2 uses
  %.not.i10.i.i60 = icmp eq ptr %i.fn, null
  br i1 %.not.i10.i.i60, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i61, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread: ; preds = %scalar.ph144.prol.loopexit, %scalar.ph144, %middle.block153, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57
  %.0.i.i59135 = phi i32 [ %.0.i.i59, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57 ], [ %1, %middle.block153 ], [ %1, %scalar.ph144 ], [ %1, %scalar.ph144.prol.loopexit ] ; 2 uses
  %.0.i12.i.i58133 = phi ptr [ %.0.i12.i.i58, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57 ], [ %i.em, %middle.block153 ], [ %i.em, %scalar.ph144 ], [ %i.em, %scalar.ph144.prol.loopexit ] ; 2 uses
  %i.fo = phi ptr [ %i.fn, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57 ], [ %.pre105, %middle.block153 ], [ %.pre105, %scalar.ph144 ], [ %.pre105, %scalar.ph144.prol.loopexit ]
  %i.fp = load i8, ptr %i.af, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.q, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i61

bb.q:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.fo)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i61 unwind label %bb.ab

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i61: ; preds = %bb.q, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57
  %.0.i.i59136 = phi i32 [ %.0.i.i59135, %bb.q ], [ %.0.i.i59135, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread ], [ %.0.i.i59, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57 ]
  %.0.i12.i.i58134 = phi ptr [ %.0.i12.i.i58133, %bb.q ], [ %.0.i12.i.i58133, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57.thread ], [ %.0.i12.i.i58, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i57 ] ; 2 uses
  store i8 1, ptr %i.af, align 8, !tbaa !46
  store ptr %.0.i12.i.i58134, ptr %i.ag, align 8, !tbaa !47
  store i32 %.0.i.i59136, ptr %i.ai, align 8, !tbaa !49
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %..lr.ph.i48_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i61
  %i.fr = phi ptr [ %.pre106, %..lr.ph.i48_crit_edge ], [ %.0.i12.i.i58134, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i61 ]
  %i.fs = sext i32 %i.eg to i64                   ; 2 uses
  %wide.trip.count.i49 = sext i32 %1 to i64
  %i.ft = shl nsw i64 %i.fs, 2
  %scevgep101 = getelementptr i8, ptr %i.fr, i64 %i.ft
  %i.fu = sub nsw i64 %wide.trip.count.i49, %i.fs
  %i.fv = shl nsw i64 %i.fu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep101, i8 0, i64 %i.fv, i1 false), !tbaa !69
  br label %.loopexit95

.loopexit95:                                      ; preds = %.lr.ph.i48, %_ZN20b3AlignedObjectArrayIiED2Ev.exit
  store i32 %1, ptr %i.ah, align 4, !tbaa !48
  %i.fw = load i32, ptr %i.al, align 4, !tbaa !101 ; 2 uses
  %i.fx = icmp sgt i32 %1, %i.fw
  br i1 %i.fx, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.loopexit95
  %i.fy = load i32, ptr %i.am, align 8, !tbaa !102
  %i.fz = icmp slt i32 %i.fy, %1
  br i1 %i.fz, label %bb.s, label %.lr.ph.i73

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i79 = icmp eq i32 %1, 0
  br i1 %.not.i.i.i79, label %.split7.i.i89, label %_ZN20b3AlignedObjectArrayIPvE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIPvE8allocateEi.exit.i.i: ; preds = %bb.s
  %i.ga = sext i32 %1 to i64
  %i.gb = shl nsw i64 %i.ga, 3
  %i.gc = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.gb, i32 noundef 16)
          to label %.noexc90 unwind label %bb.ac  ; 9 uses

.noexc90:                                         ; preds = %_ZN20b3AlignedObjectArrayIPvE8allocateEi.exit.i.i
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.split7.i.i89, label %.split.i.i80

.split.i.i80:                                     ; preds = %.noexc90
  %i.ge = load i32, ptr %i.al, align 4, !tbaa !101 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i.i84, label %_ZNK20b3AlignedObjectArrayIPvE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i84:                                   ; preds = %.split.i.i80
  %wide.trip.count.i.i.i85 = zext nneg i32 %i.ge to i64 ; 2 uses
  %xtraiter161 = and i64 %wide.trip.count.i.i.i85, 3 ; 3 uses
  %i.gg = icmp ult i32 %i.ge, 4
  br i1 %i.gg, label %.epil.preheader, label %.lr.ph.i.i.i84.new

.lr.ph.i.i.i84.new:                               ; preds = %.lr.ph.i.i.i84
  %unroll_iter = and i64 %wide.trip.count.i.i.i85, 2147483644
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i84.new
  %indvars.iv.i.i.i86 = phi i64 [ 0, %.lr.ph.i.i.i84.new ], [ %indvars.iv.next.i.i.i87.3, %bb.t ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i84.new ], [ %niter.next.3, %bb.t ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.i.i.i86
  %i.gi = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv.i.i.i86
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !76
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !76
  %indvars.iv.next.i.i.i87 = or disjoint i64 %indvars.iv.i.i.i86, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next.i.i.i87
  %i.gm = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next.i.i.i87
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !76
  store ptr %i.go, ptr %i.gl, align 8, !tbaa !76
  %indvars.iv.next.i.i.i87.1 = or disjoint i64 %indvars.iv.i.i.i86, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next.i.i.i87.1
  %i.gq = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next.i.i.i87.1
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !76
  store ptr %i.gs, ptr %i.gp, align 8, !tbaa !76
  %indvars.iv.next.i.i.i87.2 = or disjoint i64 %indvars.iv.i.i.i86, 3 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next.i.i.i87.2
  %i.gu = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i.i87.2
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !76
  store ptr %i.gw, ptr %i.gt, align 8, !tbaa !76
  %indvars.iv.next.i.i.i87.3 = add nuw nsw i64 %indvars.iv.i.i.i86, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK20b3AlignedObjectArrayIPvE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !96

.split7.i.i89:                                    ; preds = %.noexc90, %bb.s
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 301)
          to label %.noexc91 unwind label %bb.ac
end_hunk_0
begin_hunk_1_@_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl22getBodyDotJacobianRotUEiPNS_4vec3E:bb.a

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl20getBodyJacobianTransEiPNS_5mat3xE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.btInverseDynamicsBullet3::mat33", align 4 ; 15 uses
  %i.a = icmp sgt i32 %1, -1
  %i.b = load i32, ptr %0, align 8
  %.not = icmp slt i32 %1, %i.b
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1271)
  %i.c = load i32, ptr %0, align 8, !tbaa !40
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, i32 noundef %1, i32 noundef %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [816 x i8], ptr %i.e, i64 %i.f ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 260
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %i.q = load float, ptr %i.h, align 4, !tbaa !68, !noalias !267
  %i.r = load float, ptr %i.i, align 4, !tbaa !68, !noalias !267
  %i.s = load float, ptr %i.j, align 4, !tbaa !68, !noalias !267
  %i.t = load float, ptr %i.k, align 4, !tbaa !68, !noalias !267
  %i.u = load float, ptr %i.l, align 4, !tbaa !68, !noalias !267
  %i.v = load float, ptr %i.m, align 4, !tbaa !68, !noalias !267
  %i.w = load float, ptr %i.n, align 4, !tbaa !68, !noalias !267
  %i.x = load float, ptr %i.o, align 4, !tbaa !68, !noalias !267
  %i.y = load float, ptr %i.p, align 4, !tbaa !68, !noalias !267
  store float %i.q, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.r, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.s, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.t, ptr %i.z, align 4
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.u, ptr %.sroa.9.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.v, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.w, ptr %i.aa, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.x, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.y, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  call void @_ZN24btInverseDynamicsBullet33mulERKNS_5mat33ERKNS_5mat3xEPS3_(ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl18getBodyJacobianRotEiPNS_5mat3xE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.btInverseDynamicsBullet3::mat33", align 4 ; 15 uses
  %i.a = icmp sgt i32 %1, -1
  %i.b = load i32, ptr %0, align 8
  %.not = icmp slt i32 %1, %i.b
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1279)
  %i.c = load i32, ptr %0, align 8, !tbaa !40
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, i32 noundef %1, i32 noundef %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [816 x i8], ptr %i.e, i64 %i.f ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 260
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %i.q = load float, ptr %i.h, align 4, !tbaa !68, !noalias !270
  %i.r = load float, ptr %i.i, align 4, !tbaa !68, !noalias !270
  %i.s = load float, ptr %i.j, align 4, !tbaa !68, !noalias !270
  %i.t = load float, ptr %i.k, align 4, !tbaa !68, !noalias !270
  %i.u = load float, ptr %i.l, align 4, !tbaa !68, !noalias !270
  %i.v = load float, ptr %i.m, align 4, !tbaa !68, !noalias !270
  %i.w = load float, ptr %i.n, align 4, !tbaa !68, !noalias !270
  %i.x = load float, ptr %i.o, align 4, !tbaa !68, !noalias !270
  %i.y = load float, ptr %i.p, align 4, !tbaa !68, !noalias !270
  store float %i.q, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.r, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.s, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.t, ptr %i.z, align 4
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.u, ptr %.sroa.9.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.v, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.w, ptr %i.aa, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.x, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.y, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  call void @_ZN24btInverseDynamicsBullet33mulERKNS_5mat33ERKNS_5mat3xEPS3_(ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !57
  store i32 %1, ptr %0, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.31)
  %i.e = mul nsw i32 %2, %1                       ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61   ; 3 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !62
  %i.k = icmp slt i32 %i.j, %i.e
  br i1 %i.k, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.e to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.m, i32 noundef 16)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !61
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.c
  %i.o = phi i32 [ %.pre.i, %.noexc ], [ %i.g, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %.noexc ], [ null, %bb.c ] ; 9 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60   ; 9 uses
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %4 = ptrtoaddr ptr %i.r to i64
  %.0.i.i.i9 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.o to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  %i.s = sub i64 %4, %.0.i.i.i9
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !68
  %wide.load10 = load <4 x float>, ptr %i.v, align 4, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x float> %wide.load, ptr %i.t, align 4, !tbaa !68
  store <4 x float> %wide.load10, ptr %i.w, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.prol
  %i.aa = load float, ptr %i.z, align 4, !tbaa !68
  store float %i.aa, ptr %i.y, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !272

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !68
  store float %i.af, ptr %i.ad, align 4, !tbaa !68
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68
  store float %i.ai, ptr %i.ag, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.1
  %i.al = load float, ptr %i.ak, align 4, !tbaa !68
  store float %i.al, ptr %i.aj, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.2
  %i.ao = load float, ptr %i.an, align 4, !tbaa !68
  store float %i.ao, ptr %i.am, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !273

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !59, !range !74, !noundef !75
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.r)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i unwind label %bb.f

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.as, align 8, !tbaa !59
  store ptr %.0.i.i.i, ptr %i.q, align 8, !tbaa !60
  store i32 %i.e, ptr %i.i, align 8, !tbaa !62
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.at = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.au = sext i32 %i.g to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.e to i64
  %i.av = shl nsw i64 %i.au, 2
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.av
  %i.aw = sub nsw i64 %wide.trip.count.i, %i.au
  %i.ax = shl nsw i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ax, i1 false), !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a
  store i32 %i.e, ptr %i.f, align 4, !tbaa !61
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !74
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i:        ; preds = %bb.c, %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.n = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.n, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i, label %bb.b, !llvm.loop !2

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !63, !range !74, !noundef !75
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i, %bb.f
  ret void

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !74
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
end_hunk_1
begin_hunk_2_@_ZN24btInverseDynamicsBullet35mat3xC2ERKS0_:bb.a
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ai
  store float %i.ak, ptr %i.al, align 4, !tbaa !68
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !276

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.i.ph, %i.x
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ab
  %invariant.op9 = add nuw nsw i64 2, %i.ab
  %invariant.op11 = add nuw nsw i64 3, %i.ab
  br label %scalar.ph

._crit_edge15.i:                                  ; preds = %._crit_edge.i
  %i.ao = mul i32 %i.o, %i.m
  %i.ap = add i32 %.promoted16.i, %i.ao
  store i32 %i.ap, ptr %i.t, align 8, !tbaa !58
  br label %_ZN24btInverseDynamicsBullet35mat3xaSERKS0_.exit

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %._crit_edge15.i, label %.preheader.i, !llvm.loop !5

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.3, %scalar.ph ] ; 5 uses
  %i.aq = add nuw nsw i64 %indvars.iv.i, %i.ab    ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !68
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.aq
  store float %i.as, ptr %i.at, align 4, !tbaa !68
  %.reass = add nuw nsw i64 %indvars.iv.i, %invariant.op ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.reass
  %i.av = load float, ptr %i.au, align 4, !tbaa !68
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass
  store float %i.av, ptr %i.aw, align 4, !tbaa !68
  %.reass10 = add nuw nsw i64 %indvars.iv.i, %invariant.op9 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.reass10
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !68
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass10
  store float %i.ay, ptr %i.az, align 4, !tbaa !68
  %.reass12 = add nuw nsw i64 %indvars.iv.i, %invariant.op11 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.reass12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !68
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass12
  store float %i.bb, ptr %i.bc, align 4, !tbaa !68
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.x
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !277

_ZN24btInverseDynamicsBullet35mat3xaSERKS0_.exit: ; preds = %._crit_edge15.i, %.preheader.lr.ph.i, %.preheader12.i
  ret void

bb.d:                                             ; preds = %.noexc, %bb.c, %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #17
  resume { ptr, i32 } %i.bd
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIS_IiEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.split7, label %_ZN20b3AlignedObjectArrayIS_IiEE8allocateEi.exit

_ZN20b3AlignedObjectArrayIS_IiEE8allocateEi.exit: ; preds = %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = shl nsw i64 %i.d, 5
  %i.f = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16) ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.split7, label %.split

.split:                                           ; preds = %_ZN20b3AlignedObjectArrayIS_IiEE8allocateEi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !52   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN20b3AlignedObjectArrayIS_IiEE7destroyEii.exit

.lr.ph.i:                                         ; preds = %.split
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext = zext nneg i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv.i
  tail call void @_ZN20b3AlignedObjectArrayIiEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.l, ptr noundef nonnull align 8 dereferenceable(25) %i.n)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.o, label %_ZNK20b3AlignedObjectArrayIS_IiEE4copyEiiPS0_.exit, label %bb.c, !llvm.loop !278

.split7:                                          ; preds = %bb.b, %_ZN20b3AlignedObjectArrayIS_IiEE8allocateEi.exit
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.38)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !52
  br label %_ZN20b3AlignedObjectArrayIS_IiEE7destroyEii.exit

_ZNK20b3AlignedObjectArrayIS_IiEE4copyEiiPS0_.exit: ; preds = %bb.c
  %.pre = load i32, ptr %i.h, align 4, !tbaa !52  ; 2 uses
  %i.q = icmp sgt i32 %.pre, 0
  br i1 %i.q, label %.lr.ph.i10, label %_ZN20b3AlignedObjectArrayIS_IiEE7destroyEii.exit

.lr.ph.i10:                                       ; preds = %_ZNK20b3AlignedObjectArrayIS_IiEE4copyEiiPS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext19 = zext nneg i32 %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv.i11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !74
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.y, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.v)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #18
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit.i:          ; preds = %bb.e, %bb.d
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ab = icmp eq i64 %indvars.iv.next.i12, %zext19
  br i1 %i.ab, label %_ZN20b3AlignedObjectArrayIS_IiEE7destroyEii.exit, label %bb.d, !llvm.loop !3

_ZN20b3AlignedObjectArrayIS_IiEE7destroyEii.exit: ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i, %.split, %.split7, %_ZNK20b3AlignedObjectArrayIS_IiEE4copyEiiPS0_.exit
  %.029 = phi i32 [ 0, %.split7 ], [ %1, %_ZNK20b3AlignedObjectArrayIS_IiEE4copyEiiPS0_.exit ], [ %1, %.split ], [ %1, %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i ]
  %.0.i1728 = phi ptr [ null, %.split7 ], [ %i.f, %_ZNK20b3AlignedObjectArrayIS_IiEE4copyEiiPS0_.exit ], [ %i.f, %.split ], [ %i.f, %_ZN20b3AlignedObjectArrayIiED2Ev.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ad, null
  br i1 %.not.i15, label %_ZN20b3AlignedObjectArrayIS_IiEE10deallocateEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayIS_IiEE7destroyEii.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !50, !range !74, !noundef !75
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %_ZN20b3AlignedObjectArrayIS_IiEE10deallocateEv.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ad)
  br label %_ZN20b3AlignedObjectArrayIS_IiEE10deallocateEv.exit

_ZN20b3AlignedObjectArrayIS_IiEE10deallocateEv.exit: ; preds = %bb.g, %bb.h, %_ZN20b3AlignedObjectArrayIS_IiEE7destroyEii.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ah, align 8, !tbaa !50
  store ptr %.0.i1728, ptr %i.ac, align 8, !tbaa !51
  store i32 %.029, ptr %i.a, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %_ZN20b3AlignedObjectArrayIS_IiEE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIiEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 10 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i, label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16) ; 16 uses
  %2 = ptrtoaddr ptr %i.j to i64                  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.l = load i32, ptr %i.c, align 4, !tbaa !48   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !47 ; 11 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %.pre1018 = ptrtoaddr ptr %.pre10 to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.n = sub i64 %.pre1018, %2
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !69
  %wide.load19 = load <4 x i32>, ptr %i.q, align 4, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %wide.load, ptr %i.o, align 4, !tbaa !69
  store <4 x i32> %wide.load19, ptr %i.r, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.prol
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.i.i.i.prol
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69
  store i32 %i.v, ptr %i.t, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !280

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !69
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !69
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.next.i.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !69
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.next.i.i.i.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !69
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.2
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.next.i.i.i.2
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !69
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph, !llvm.loop !281

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.38)
  store i32 0, ptr %i.c, align 4, !tbaa !48
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !47
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %.split7.i.i, %.split.i.i
  %i.ak = phi ptr [ %.pre, %.split7.i.i ], [ %.pre10, %.split.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.f, %.split.i.i ] ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i10.i.i, label %.lr.ph, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.0.i.i16 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %i.f, %middle.block ], [ %i.f, %scalar.ph ], [ %i.f, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.al = phi ptr [ %i.ak, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %.pre10, %middle.block ], [ %.pre10, %scalar.ph ], [ %.pre10, %scalar.ph.prol.loopexit ]
  %i.am = load i8, ptr %i.a, align 8, !tbaa !46, !range !74, !noundef !75
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.al)
  br label %.lr.ph

_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4, !tbaa !48
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.0.i.i17 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %.0.i.i16, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread ], [ %.0.i.i16, %bb.b ]
  store i8 1, ptr %i.a, align 8, !tbaa !46
  store ptr %i.j, ptr %i.b, align 8, !tbaa !47
  store i32 %.0.i.i17, ptr %i.d, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !69
  store i32 %i.f, ptr %i.c, align 4, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 5 uses
  %min.iters.check23 = icmp ult i32 %i.f, 8
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %2
  %diff.check21 = icmp ugt i64 %i.ar, -32
  %or.cond35 = select i1 %min.iters.check23, i1 true, i1 %diff.check21
  br i1 %or.cond35, label %scalar.ph22.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph
  %n.vec25 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next30, %vector.body26 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index27 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load28 = load <4 x i32>, ptr %i.as, align 4, !tbaa !69
  %wide.load29 = load <4 x i32>, ptr %i.at, align 4, !tbaa !69
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %wide.load28, ptr %i.au, align 4, !tbaa !69
  store <4 x i32> %wide.load29, ptr %i.av, align 4, !tbaa !69
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.aw, label %middle.block31, label %vector.body26, !llvm.loop !282

middle.block31:                                   ; preds = %vector.body26
  %cmp.n32 = icmp eq i64 %n.vec25, %wide.trip.count
  br i1 %cmp.n32, label %._crit_edge, label %scalar.ph22.preheader

scalar.ph22.preheader:                            ; preds = %.lr.ph, %middle.block31
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec25, %middle.block31 ] ; 3 uses
  %xtraiter36 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %scalar.ph22.prol.loopexit, label %scalar.ph22.prol

scalar.ph22.prol:                                 ; preds = %scalar.ph22.preheader, %scalar.ph22.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph22.prol ], [ %indvars.iv.ph, %scalar.ph22.preheader ] ; 3 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %scalar.ph22.prol ], [ 0, %scalar.ph22.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !69
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.prol
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !69
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %scalar.ph22.prol.loopexit, label %scalar.ph22.prol, !llvm.loop !283

scalar.ph22.prol.loopexit:                        ; preds = %scalar.ph22.prol, %scalar.ph22.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph22.preheader ], [ %indvars.iv.next.prol, %scalar.ph22.prol ]
  %i.ba = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %scalar.ph22

._crit_edge:                                      ; preds = %scalar.ph22.prol.loopexit, %scalar.ph22, %middle.block31, %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit
  ret void

scalar.ph22:                                      ; preds = %scalar.ph22.prol.loopexit, %scalar.ph22
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph22 ], [ %indvars.iv.unr, %scalar.ph22.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !69
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !69
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !69
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !69
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !69
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !69
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph22, !llvm.loop !284
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <9 x float> @llvm.fmuladd.v9f32(<9 x float>, <9 x float>, <9 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !70}
!1 = distinct !{!1, !70}
!2 = distinct !{!2, !70}
!3 = distinct !{!3, !70}
!4 = distinct !{!4, !70}
!5 = distinct !{!5, !70}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"_ZTS9btVector3", !11, i64 0}
!16 = !{!"_ZTSN24btInverseDynamicsBullet34vec3E", !15, i64 0}
!17 = !{!"_ZTS18b3AlignedAllocatorIN24btInverseDynamicsBullet39RigidBodyELj16EE"}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"p1 _ZTSN24btInverseDynamicsBullet39RigidBodyE", !18, i64 0}
!20 = !{!"bool", !11, i64 0}
!21 = !{!"_ZTS20b3AlignedObjectArrayIN24btInverseDynamicsBullet39RigidBodyEE", !17, i64 0, !12, i64 4, !12, i64 8, !19, i64 16, !20, i64 24}
!22 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!23 = !{!"p1 int", !18, i64 0}
!24 = !{!"_ZTS20b3AlignedObjectArrayIiE", !22, i64 0, !12, i64 4, !12, i64 8, !23, i64 16, !20, i64 24}
!25 = !{!"_ZTS18b3AlignedAllocatorI20b3AlignedObjectArrayIiELj16EE"}
!26 = !{!"p1 _ZTS20b3AlignedObjectArrayIiE", !18, i64 0}
!27 = !{!"_ZTS20b3AlignedObjectArrayIS_IiEE", !25, i64 0, !12, i64 4, !12, i64 8, !26, i64 16, !20, i64 24}
!28 = !{!"_ZTS18b3AlignedAllocatorIPvLj16EE"}
!29 = !{!"any p2 pointer", !18, i64 0}
!30 = !{!"_ZTS20b3AlignedObjectArrayIPvE", !28, i64 0, !12, i64 4, !12, i64 8, !29, i64 16, !20, i64 24}
!31 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!32 = !{!"p1 float", !18, i64 0}
!33 = !{!"_ZTS20btAlignedObjectArrayIfE", !31, i64 0, !12, i64 4, !12, i64 8, !32, i64 16, !20, i64 24}
!34 = !{!"_ZTS18btAlignedAllocatorI20btAlignedObjectArrayIiELj16EE"}
!35 = !{!"p1 _ZTS20btAlignedObjectArrayIiE", !18, i64 0}
!36 = !{!"_ZTS20btAlignedObjectArrayIS_IiEE", !34, i64 0, !12, i64 4, !12, i64 8, !35, i64 16, !20, i64 24}
!37 = !{!"_ZTS9btMatrixXIfE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !33, i64 24, !36, i64 56}
!38 = !{!"_ZTSN24btInverseDynamicsBullet35mat3xE", !37, i64 0}
!39 = !{!"_ZTSN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImplE", !12, i64 0, !12, i64 4, !16, i64 8, !21, i64 24, !24, i64 56, !27, i64 88, !24, i64 120, !24, i64 152, !24, i64 184, !24, i64 216, !24, i64 248, !30, i64 280, !38, i64 312}
!40 = !{!39, !12, i64 0}
!41 = !{!39, !12, i64 4}
!42 = !{!21, !20, i64 24}
!43 = !{!21, !19, i64 16}
!44 = !{!21, !12, i64 4}
!45 = !{!21, !12, i64 8}
!46 = !{!24, !20, i64 24}
!47 = !{!24, !23, i64 16}
!48 = !{!24, !12, i64 4}
!49 = !{!24, !12, i64 8}
!50 = !{!27, !20, i64 24}
!51 = !{!27, !26, i64 16}
!52 = !{!27, !12, i64 4}
!53 = !{!27, !12, i64 8}
!54 = !{!30, !29, i64 16}
!55 = !{!37, !12, i64 0}
!56 = !{!37, !12, i64 4}
!57 = !{!37, !12, i64 12}
!58 = !{!37, !12, i64 16}
!59 = !{!33, !20, i64 24}
!60 = !{!33, !32, i64 16}
!61 = !{!33, !12, i64 4}
!62 = !{!33, !12, i64 8}
!63 = !{!36, !20, i64 24}
!64 = !{!36, !35, i64 16}
!65 = !{!36, !12, i64 4}
!66 = !{!36, !12, i64 8}
!67 = !{!"float", !11, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!12, !12, i64 0}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{i8 0, i8 2}
!75 = !{}
end_hunk_2
