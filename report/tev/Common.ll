Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Common?download=true
inline.NumInlined: 8078
inline.NumDeleted: 2931
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN3tev15toDisplayStringERKNSt3__14__fs10filesystem4pathE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.f = select i1 %i.b, ptr %i.d, ptr %i.e
  %i.g = tail call i64 @getxattr(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef null, i64 noundef 0) #35 ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tev8toStringERKNSt3__14__fs10filesystem4pathE(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.g, i8 noundef signext 0)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit unwind label %bb.g ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit.thread: ; preds = %bb.c
  %i.k = load i8, ptr %1, align 8
  %i.l = trunc i8 %i.k to i1
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = select i1 %i.l, ptr %i.m, ptr %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  br label %bb.e

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit: ; preds = %bb.d
  %.pre = load i8, ptr %2, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre.fr = freeze i8 %.pre
  %i.q = trunc i8 %.pre.fr to i1
  %i.r = load i8, ptr %1, align 8
  %i.s = trunc i8 %i.r to i1
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = select i1 %i.s, ptr %i.t, ptr %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %spec.select = select i1 %i.q, ptr %.pre20, ptr %i.w
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit.thread
  %i.x = phi ptr [ %i.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit.thread ], [ %i.w, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit ] ; 2 uses
  %i.y = phi ptr [ %i.o, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit.thread ], [ %i.v, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit ] ; 3 uses
  %i.z = phi ptr [ %i.n, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit.thread ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit ]
  %i.aa = phi ptr [ %i.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit.thread ], [ %spec.select, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit ]
  %i.ab = call i64 @getxattr(ptr noundef %i.z, ptr noundef nonnull @.str, ptr noundef %i.aa, i64 noundef %i.g) #35 ; 6 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3tev8toStringERKNSt3__14__fs10filesystem4pathE(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN3tev10ensureUtf8ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.d, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.r, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.bn, %bb.r ], [ %i.bn, %bb.q ]
  %i.ae = load i8, ptr %2, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.h:                                             ; preds = %.body
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.ai = load i64, ptr %2, align 8
  %i.aj = and i64 %i.ai, -2
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %.body, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %2, align 8                ; 2 uses
  %i.al = trunc i8 %i.ak to i1                    ; 2 uses
  %i.am = load i64, ptr %i.i, align 8
  %i.an = lshr i8 %i.ak, 1
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = select i1 %i.al, i64 %i.am, i64 %i.ao   ; 2 uses
  %i.aq = icmp ugt i64 %i.ab, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = sub nuw nsw i64 %i.ab, %i.ap
  %i.as = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ar, i8 noundef signext 0)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit18 unwind label %bb.g ; 0 uses

bb.k:                                             ; preds = %bb.i
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.y, align 8
  store i64 %i.ab, ptr %i.i, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne180100Em.exit.i.i16

bb.m:                                             ; preds = %bb.k
  %i.au = trunc i64 %i.ab to i8
  %i.av = shl i8 %i.au, 1
  store i8 %i.av, ptr %2, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne180100Em.exit.i.i16

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne180100Em.exit.i.i16: ; preds = %bb.m, %bb.l
  %i.aw = phi ptr [ %i.at, %bb.l ], [ %i.x, %bb.m ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ab
  store i8 0, ptr %i.ax, align 1, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit18

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit18: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne180100Em.exit.i.i16, %bb.j
  %i.ay = load i8, ptr %2, align 8                ; 2 uses
  %i.az = trunc i8 %i.ay to i1                    ; 2 uses
  %i.ba = load ptr, ptr %i.y, align 8
  %i.bb = select i1 %i.az, ptr %i.ba, ptr %i.x    ; 2 uses
  %i.bc = load i64, ptr %i.i, align 8
  %i.bd = lshr i8 %i.ay, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = select i1 %i.az, i64 %i.bc, i64 %i.be
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !485
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  %i.bh = load atomic i8, ptr @_ZGVZN4utf815replace_invalidIPKcNSt3__120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEET0_T_SD_SC_E18replacement_marker acquire, align 8, !noalias !485
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.p, !prof !90

bb.n:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit18
  %i.bj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4utf815replace_invalidIPKcNSt3__120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEET0_T_SD_SC_E18replacement_marker) #35, !noalias !485
  %.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 65533, ptr @_ZZN4utf815replace_invalidIPKcNSt3__120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEET0_T_SD_SC_E18replacement_marker, align 4, !tbaa !91, !noalias !485
  %i.bk = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4utf815replace_invalidIPKcNSt3__120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEET0_T_SD_SC_E18replacement_marker), !noalias !485 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4utf815replace_invalidIPKcNSt3__120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEET0_T_SD_SC_E18replacement_marker) #35, !noalias !485
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit18
  %i.bl = load i32, ptr @_ZZN4utf815replace_invalidIPKcNSt3__120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEET0_T_SD_SC_E18replacement_marker, align 4, !tbaa !91, !noalias !485
  %i.bm = invoke ptr @_ZN4utf815replace_invalidIPKcNSt3__120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEET0_T_SD_SC_j(ptr noundef %i.bb, ptr noundef %i.bg, ptr nonnull align 8 %0, i32 noundef %i.bl)
          to label %_ZN3tev10ensureUtf8ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load i8, ptr %0, align 8, !alias.scope !485
  %i.bp = trunc i8 %i.bo to i1
  br i1 %i.bp, label %bb.r, label %.body

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !88, !alias.scope !485
  %i.bs = load i64, ptr %0, align 8, !alias.scope !485
  %i.bt = and i64 %i.bs, -2
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bt) #36
  br label %.body

_ZN3tev10ensureUtf8ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %bb.p, %bb.f
  %i.bu = load i8, ptr %2, align 8
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.s, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19

bb.s:                                             ; preds = %_ZN3tev10ensureUtf8ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.bx = load i64, ptr %2, align 8
  %i.by = and i64 %i.bx, -2
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19: ; preds = %_ZN3tev10ensureUtf8ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit19, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i64 @getxattr(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond77 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond77, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03379 = phi i64 [ %.2, %bb.c ], [ 0, %bb.a ]  ; 4 uses
  %.03578 = phi i64 [ %.237, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.03578
  %i.d = load i8, ptr %i.c, align 1, !tbaa !88    ; 2 uses
  %4 = sext i8 %i.d to i32
  %isdigittmp = add nsw i32 %4, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.03379
  %i.f = load i8, ptr %i.e, align 1, !tbaa !88    ; 3 uses
  %5 = sext i8 %i.f to i32
  %isdigittmp47 = add nsw i32 %5, -48
  %isdigit48.a = icmp ult i32 %isdigittmp47, 10
  %or.cond97 = select i1 %isdigit, i1 %isdigit48.a, i1 false
  %i.g = add nuw i64 %.03578, 1                   ; 2 uses
  %6 = sext i8 %i.d to i64                        ; 2 uses
  br i1 %or.cond97, label %.preheader.preheader, label %tolower.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.g) ; 2 uses
  %i.h = add i64 %.03578, 1                       ; 2 uses
  %i.i = add nsw i64 %6, -48                      ; 2 uses
  %i.j = icmp ult i64 %i.h, %1
  br i1 %i.j, label %.lr.ph101, label %.critedge3

.preheader:                                       ; preds = %.lr.ph101
  %i.k = mul i64 %i.p, 10
  %i.l = add i64 %i.q, 1                          ; 2 uses
  %7 = sext i8 %i.s to i64
  %i.m = add i64 %i.k, -48
  %i.n = add i64 %i.m, %7                         ; 2 uses
  %i.o = icmp ult i64 %i.l, %1
  br i1 %i.o, label %.lr.ph101, label %.critedge3, !llvm.loop !486

.lr.ph101:                                        ; preds = %.preheader.preheader, %.preheader
  %i.p = phi i64 [ %i.n, %.preheader ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %i.q = phi i64 [ %i.l, %.preheader ], [ %i.h, %.preheader.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !88    ; 2 uses
  %8 = sext i8 %i.s to i32
  %isdigittmp49 = add nsw i32 %8, -48
  %isdigit50 = icmp ult i32 %isdigittmp49, 10
  br i1 %isdigit50, label %.preheader, label %..critedge3_crit_edge, !llvm.loop !486

..critedge3_crit_edge:                            ; preds = %.lr.ph101
  br label %.critedge3, !llvm.loop !486

.critedge3:                                       ; preds = %.preheader, %..critedge3_crit_edge, %.preheader.preheader
  %.lcssa = phi i64 [ %i.i, %.preheader.preheader ], [ %i.p, %..critedge3_crit_edge ], [ %i.n, %.preheader ] ; 2 uses
  %.lcssa81 = phi i64 [ %umax, %.preheader.preheader ], [ %i.q, %..critedge3_crit_edge ], [ %umax, %.preheader ]
  %i.t = add nuw i64 %.03379, 1
  %umax86 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.t) ; 2 uses
  %i.u = add i64 %.03379, 1                       ; 2 uses
  %9 = sext i8 %i.f to i64
  %i.v = add nsw i64 %9, -48                      ; 2 uses
  %i.w = icmp ult i64 %i.u, %3
  br i1 %i.w, label %.lr.ph105, label %.critedge5

bb.b:                                             ; preds = %.lr.ph105
  %i.x = mul i64 %i.ac, 10
  %i.y = add i64 %i.ad, 1                         ; 2 uses
  %10 = sext i8 %i.af to i64
  %i.z = add i64 %i.x, -48
  %i.aa = add i64 %i.z, %10                       ; 2 uses
  %i.ab = icmp ult i64 %i.y, %3
  br i1 %i.ab, label %.lr.ph105, label %.critedge5, !llvm.loop !487

.lr.ph105:                                        ; preds = %.critedge3, %bb.b
  %i.ac = phi i64 [ %i.aa, %bb.b ], [ %i.v, %.critedge3 ] ; 2 uses
  %i.ad = phi i64 [ %i.y, %bb.b ], [ %i.u, %.critedge3 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !88  ; 2 uses
  %11 = sext i8 %i.af to i32
  %isdigittmp51 = add nsw i32 %11, -48
  %isdigit52 = icmp ult i32 %isdigittmp51, 10
  br i1 %isdigit52, label %bb.b, label %..critedge5_crit_edge108, !llvm.loop !487

..critedge5_crit_edge108:                         ; preds = %.lr.ph105
  br label %.critedge5, !llvm.loop !487

.critedge5:                                       ; preds = %bb.b, %..critedge5_crit_edge108, %.critedge3
  %.lcssa98 = phi i64 [ %i.v, %.critedge3 ], [ %i.ac, %..critedge5_crit_edge108 ], [ %i.aa, %bb.b ] ; 2 uses
  %.lcssa83 = phi i64 [ %umax86, %.critedge3 ], [ %i.ad, %..critedge5_crit_edge108 ], [ %umax86, %bb.b ]
  %.not53 = icmp eq i64 %.lcssa, %.lcssa98
  br i1 %.not53, label %bb.c, label %.loopexit.split.loop.exit73

tolower.exit:                                     ; preds = %.lr.ph
  %i.ag = tail call ptr @__ctype_tolower_loc() #39
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %6
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !91
  %i.ak = add nuw i64 %.03379, 1
  %i.al = sext i8 %i.f to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !91
  %i.ao = shl i32 %i.aj, 24
  %i.ap = ashr exact i32 %i.ao, 24                ; 2 uses
  %i.aq = shl i32 %i.an, 24
  %i.ar = ashr exact i32 %i.aq, 24                ; 2 uses
  %.not = icmp eq i32 %i.ap, %i.ar
  br i1 %.not, label %bb.c, label %.loopexit.split.loop.exit

bb.c:                                             ; preds = %tolower.exit, %.critedge5
  %.237 = phi i64 [ %.lcssa81, %.critedge5 ], [ %i.g, %tolower.exit ] ; 3 uses
  %.2 = phi i64 [ %.lcssa83, %.critedge5 ], [ %i.ak, %tolower.exit ] ; 3 uses
  %i.as = icmp ult i64 %.237, %1
  %i.at = icmp ult i64 %.2, %3
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !488

.critedge:                                        ; preds = %bb.c, %bb.a
  %.035.lcssa = phi i64 [ 0, %bb.a ], [ %.237, %bb.c ]
  %.033.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.c ]
  %i.au = sub i64 %1, %.035.lcssa
  %i.av = sub i64 %3, %.033.lcssa
  %i.aw = icmp ult i64 %i.au, %i.av
  br label %.loopexit

.loopexit.split.loop.exit:                        ; preds = %tolower.exit
  %i.ax = icmp slt i32 %i.ap, %i.ar
  br label %.loopexit

.loopexit.split.loop.exit73:                      ; preds = %.critedge5
  %i.ay = icmp ult i64 %.lcssa, %.lcssa98
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split.loop.exit, %.loopexit.split.loop.exit73, %.critedge
  %.4 = phi i1 [ %i.aw, %.critedge ], [ %i.ax, %.loopexit.split.loop.exit ], [ %i.ay, %.loopexit.split.loop.exit73 ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev5splitENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_b(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 initializes((0, 24)) %0, ptr %1, i64 %2, ptr nofree readonly captures(address) %3, i64 %4, i1 noundef zeroext %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 7 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i.i94 = or i1 %i.a, %i.b
  br i1 %or.cond.i.i94, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i1 %5 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.i = phi ptr [ null, %.lr.ph ], [ %.0.i49, %bb.m ] ; 7 uses
  %.01695 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %bb.m ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.01695 ; 3 uses
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %bb.b
  %.01526.i.i.i = phi ptr [ %i.o, %._crit_edge.i.i.i ], [ %i.j, %bb.b ] ; 4 uses
  %i.k = load i8, ptr %.01526.i.i.i, align 1, !tbaa !88
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.01324.i.i.i, i64 1 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not17.i.i.i, label %._crit_edge.i.i.i, label %bb.d, !llvm.loop !489

bb.d:                                             ; preds = %bb.c, %.preheader.i.i.i
  %.01324.i.i.i = phi ptr [ %3, %.preheader.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = load i8, ptr %.01324.i.i.i, align 1, !tbaa !88
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %_ZNSt3__118__find_first_of_ceB8ne180100IPKcS2_RDoFbccEEET_S5_S5_T0_S6_OT1_.exit.i.i, label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.01526.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread, label %.preheader.i.i.i, !llvm.loop !490

_ZNSt3__118__find_first_of_ceB8ne180100IPKcS2_RDoFbccEEET_S5_S5_T0_S6_OT1_.exit.i.i: ; preds = %bb.d
  %i.p = icmp eq ptr %.01526.i.i.i, %i.c
  %i.q = ptrtoint ptr %.01526.i.i.i to i64
  %i.r = sub i64 %i.q, %i.e                       ; 3 uses
  %i.s = icmp eq i64 %i.r, -1
  %or.cond = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread, label %bb.i

_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread: ; preds = %bb.m, %_ZNSt3__118__find_first_of_ceB8ne180100IPKcS2_RDoFbccEEET_S5_S5_T0_S6_OT1_.exit.i.i, %._crit_edge.i.i.i
  %i.t = phi ptr [ %i.i, %._crit_edge.i.i.i ], [ %i.i, %_ZNSt3__118__find_first_of_ceB8ne180100IPKcS2_RDoFbccEEET_S5_S5_T0_S6_OT1_.exit.i.i ], [ %.0.i49, %bb.m ]
  %.01693 = phi i64 [ %.01695, %._crit_edge.i.i.i ], [ %.01695, %_ZNSt3__118__find_first_of_ceB8ne180100IPKcS2_RDoFbccEEET_S5_S5_T0_S6_OT1_.exit.i.i ], [ %i.cj, %bb.m ] ; 2 uses
  %i.u = icmp ugt i64 %.01693, %2
  br i1 %i.u, label %bb.e, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread.thread

bb.e:                                             ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread
  invoke void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef nonnull @.str.68) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread.thread: ; preds = %bb.a, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread
  %.01693134 = phi i64 [ %.01693, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %i.t, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread ], [ null, %bb.a ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.01693134 ; 2 uses
  %i.x = sub nuw i64 %2, %.01693134               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %i.ab = icmp ult ptr %i.v, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread.thread
  store ptr %i.w, ptr %i.v, align 8, !tbaa !106
  %.sroa.668.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.x, ptr %.sroa.668.0..sroa_idx69, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.n

bb.g:                                             ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofB8ne180100ES3_m.exit.thread.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !111
  %i.ae = ptrtoint ptr %i.v to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = ashr exact i64 %i.ag, 4
  %i.ai = add nsw i64 %i.ah, 1                    ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 1152921504606846975
  br i1 %i.aj, label %.invoke, label %_ZNKSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE11__recommendB8ne180100Em.exit.i.i

.invoke:                                          ; preds = %bb.k, %bb.g
  invoke void @_ZNKSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.g
  %i.ak = ptrtoint ptr %i.aa to i64
  %i.al = sub i64 %i.ak, %i.af                    ; 2 uses
  %.not.i.i.i29 = icmp ult i64 %i.al, 9223372036854775792
  %i.am = ashr exact i64 %i.al, 3
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.ai)
  %.0.i.i.i = select i1 %.not.i.i.i29, i64 %.sroa.speculated.i.i.i, i64 1152921504606846975 ; 4 uses
  %i.an = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp ugt i64 %.0.i.i.i, 1152921504606846975
  br i1 %i.ao, label %.invoke147, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_17basic_string_viewIcNS_11char_traitsIcEEEEEEEEDaRT_m.exit.i.i.i

.invoke147:                                       ; preds = %_ZNKSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE11__recommendB8ne180100Em.exit.i.i37, %_ZNKSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE11__recommendB8ne180100Em.exit.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #37
          to label %.cont148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont148:                                         ; preds = %.invoke147
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_17basic_string_viewIcNS_11char_traitsIcEEEEEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE11__recommendB8ne180100Em.exit.i.i
  %i.ap = shl nuw i64 %.0.i.i.i, 4
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #38
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc32:                                         ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_17basic_string_viewIcNS_11char_traitsIcEEEEEEEEDaRT_m.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ag ; 5 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.0.i.i.i
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !106
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.x, ptr %.sroa.668.0..sroa_idx, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !112 ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !111   ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_17basic_string_viewIcNS_11char_traitsIcEEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc32, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ar, %.noexc32 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.au, %.noexc32 ]
  %i.ax = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !113, !noalias !510
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.av
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_17basic_string_viewIcNS_11char_traitsIcEEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !499

_ZNSt3__114__split_bufferINS_17basic_string_viewIcNS_11char_traitsIcEEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc32
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc32 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %0, align 8, !tbaa !105
  store ptr %i.at, ptr %i.y, align 8, !tbaa !105
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !105
  store ptr %i.as, ptr %i.z, align 8, !tbaa !105
  %.not.i5.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i5.i.i, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferINS_17basic_string_viewIcNS_11char_traitsIcEEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.ba = ptrtoint ptr %i.az to i64
end_hunk_0
