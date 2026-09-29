Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/decNumber?download=true
inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z22uprv_decNumberClass_78PK9decNumberP10decContext:bb.a
  %i.g = and i8 %i.b, 112
  %.not.i = icmp ne i8 %i.g, 0                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !18 ; 2 uses
  br i1 %.not.i, label %uprv_decNumberIsNormal_78.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i8 %.pre, 0
  %.pre.i = load i32, ptr %0, align 4, !tbaa !17  ; 2 uses
  %i.i = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %uprv_decNumberIsNormal_78.exit.thread.thread, label %uprv_decNumberIsNormal_78.exit

uprv_decNumberIsNormal_78.exit:                   ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %i.k, %.pre.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %.not9.i.not = icmp sgt i32 %i.l, %i.n
  br i1 %.not9.i.not, label %bb.g, label %uprv_decNumberIsNormal_78.exit.thread

bb.g:                                             ; preds = %uprv_decNumberIsNormal_78.exit
  %.not15 = icmp sgt i8 %i.b, -1
  %.19 = select i1 %.not15, i32 8, i32 3
  br label %bb.j

uprv_decNumberIsNormal_78.exit.thread:            ; preds = %bb.e, %uprv_decNumberIsNormal_78.exit
  %i.o = icmp eq i8 %.pre, 0
  br i1 %i.o, label %uprv_decNumberIsNormal_78.exit.thread.thread, label %bb.i

uprv_decNumberIsNormal_78.exit.thread.thread:     ; preds = %bb.f, %uprv_decNumberIsNormal_78.exit.thread
  %i.p = load i32, ptr %0, align 4, !tbaa !17
  %i.q = icmp ne i32 %i.p, 1
  %brmerge = or i1 %.not.i, %i.q
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %uprv_decNumberIsNormal_78.exit.thread.thread
  %.not14 = icmp sgt i8 %i.b, -1
  %.20 = select i1 %.not14, i32 6, i32 5
  br label %bb.j

bb.i:                                             ; preds = %uprv_decNumberIsNormal_78.exit.thread.thread, %uprv_decNumberIsNormal_78.exit.thread
  %.not13 = icmp sgt i8 %i.b, -1
  %.21 = select i1 %.not13, i32 7, i32 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %.20, %bb.h ], [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ], [ %.19, %bb.g ], [ %.21, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @uprv_decNumberClassToString_78(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.uprv_decNumberClassToString_78, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberCopyNegate_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %uprv_decNumberCopy_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4, !tbaa !15
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !20
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !18
  %i.k = load i32, ptr %1, align 4, !tbaa !17     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %uprv_decNumberCopy_78.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = icmp samesign ult i32 %i.k, 50
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  br i1 %i.n, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  %i.r = zext i8 %i.q to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.c, %bb.d
  %.pn.i = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.u = add i64 %.pn.i, %i.a
  %i.v = add i64 %i.u, 9
  %i.w = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.w)
  %i.x = add i64 %umax, -10
  %i.y = sub i64 %i.x, %i.a                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ac = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep7, align 1, !tbaa !18
  %wide.load8 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !18
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !18
  store <16 x i8> %wide.load8, ptr %i.ae, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.y, -8                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %n.vec10
  %i.ah = getelementptr i8, ptr %i.t, i64 %n.vec10
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.m, i64 %index11
  %next.gep13 = getelementptr i8, ptr %i.t, i64 %index11
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !tbaa !18
  store <8 x i8> %wide.load14, ptr %next.gep12, align 1, !tbaa !18
  %index.next15 = add nuw i64 %index11, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !176

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.y, %n.vec10
  br i1 %cmp.n16, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.02631.i, align 1, !tbaa !18
  store i8 %i.aj, ptr %.032.i, align 1, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.am = icmp ult ptr %i.ak, %i.s
  br i1 %i.am, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !177

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !15
  %i.ap = xor i8 %i.ao, -128
  store i8 %i.ap, ptr %i.an, align 4, !tbaa !15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberGetBCD_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(address, ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  %.not13 = icmp slt i32 %i.a, 1
  br i1 %.not13, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 2 uses
  %.01012 = getelementptr i8, ptr %i.c, i64 -1    ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 9          ; 7 uses
  %i.e = add i64 %2, %i.b                         ; 2 uses
  %i.f = sub i64 1, %i.e
  %i.g = sub i64 0, %2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = add i64 %i.h, %i.e                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.j = add i64 %3, %i.b                         ; 2 uses
  %i.k = add i64 %i.j, -2
  %i.l = add i64 %3, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.m = add i64 %umin, 1
  %i.n = sub i64 %i.m, %3
  %scevgep = getelementptr i8, ptr %1, i64 %i.n
  %i.o = add i64 %i.j, 8
  %i.p = sub i64 %i.o, %umin
  %scevgep16 = getelementptr i8, ptr %0, i64 %i.p
  %bound0 = icmp ult ptr %scevgep, %scevgep16
  %bound1 = icmp ult ptr %i.d, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.r = sub i64 0, %n.vec
  %i.s = getelementptr i8, ptr %.01012, i64 %i.r
  %i.t = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.01012, i64 %i.u ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep19, align 1, !tbaa !18, !alias.scope !184
  %wide.load20 = load <16 x i8>, ptr %i.v, align 1, !tbaa !18, !alias.scope !184
  %i.w = getelementptr i8, ptr %next.gep, i64 -15
  %i.x = getelementptr i8, ptr %next.gep, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse21 = shufflevector <16 x i8> %wide.load20, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.w, align 1, !tbaa !18, !alias.scope !185, !noalias !184
  store <16 x i8> %reverse21, ptr %i.x, align 1, !tbaa !18, !alias.scope !185, !noalias !184
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.i, -8                     ; 4 uses
  %i.z = sub i64 0, %n.vec23
  %i.aa = getelementptr i8, ptr %.01012, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.d, i64 %n.vec23
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = sub i64 0, %index24
  %next.gep25.a = getelementptr i8, ptr %.01012, i64 %i.ac
  %next.gep26 = getelementptr i8, ptr %i.d, i64 %index24
  %wide.load27 = load <8 x i8>, ptr %next.gep26, align 1, !tbaa !18, !alias.scope !184
  %i.ad = getelementptr i8, ptr %next.gep25.a, i64 -7
  %reverse28 = shufflevector <8 x i8> %wide.load27, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse28, ptr %i.ad, align 1, !tbaa !18, !alias.scope !185, !noalias !184
  %index.next29 = add nuw i64 %index24, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next29, %n.vec23
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !182

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.i, %n.vec23
  br i1 %cmp.n30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01015.ph = phi ptr [ %.01012, %iter.check ], [ %.01012, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.014.ph = phi ptr [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01015 = phi ptr [ %.010, %.lr.ph ], [ %.01015.ph, %.lr.ph.preheader ] ; 2 uses
  %.014 = phi ptr [ %i.ag, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %i.af = load i8, ptr %.014, align 1, !tbaa !18
  store i8 %i.af, ptr %.01015, align 1, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.010 = getelementptr inbounds i8, ptr %.01015, i64 -1 ; 2 uses
  %.not = icmp ult ptr %.010, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !183

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberSetBCD_78(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !17     ; 3 uses
  %i.c = icmp slt i32 %i.b, 50
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
  %i.g = zext i8 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.i = zext i32 %2 to i64                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.k = zext nneg i32 %i.h to i64                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.n = add i64 %i.a, %i.i
  %i.o = add i64 %i.a, 1
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = sub i64 %umax20, %i.a                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %i.q = add i64 %3, %i.i
  %i.r = add i64 %3, 1
  %4 = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r) ; 2 uses
  %i.s = add i64 %3, %i.k
  %5 = add i64 %i.s, 9
  %i.t = sub i64 %5, %4
  %scevgep = getelementptr i8, ptr %0, i64 %i.t
  %i.u = getelementptr i8, ptr %0, i64 %i.k
  %scevgep18 = getelementptr i8, ptr %i.u, i64 9
  %i.v = sub i64 %4, %3
  %scevgep19 = getelementptr i8, ptr %1, i64 %i.v
  %bound0 = icmp ult ptr %scevgep, %scevgep19
  %bound1 = icmp ult ptr %1, %scevgep18
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.p, 24
  %n.vec = and i64 %i.p, -32                      ; 5 uses
  %i.x = getelementptr i8, ptr %1, i64 %n.vec
  %i.y = sub i64 0, %n.vec
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.aa = sub i64 0, %index
  %next.gep22 = getelementptr i8, ptr %i.m, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18, !alias.scope !192
  %wide.load23 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !18, !alias.scope !192
  %i.ac = getelementptr i8, ptr %next.gep22, i64 -15
  %i.ad = getelementptr i8, ptr %next.gep22, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse24 = shufflevector <16 x i8> %wide.load23, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ac, align 1, !tbaa !18, !alias.scope !193, !noalias !192
  store <16 x i8> %reverse24, ptr %i.ad, align 1, !tbaa !18, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.p, -8                     ; 4 uses
  %i.af = getelementptr i8, ptr %1, i64 %n.vec26
  %i.ag = sub i64 0, %n.vec26
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %next.gep28.a = getelementptr i8, ptr %1, i64 %index27
  %i.ai = sub i64 0, %index27
  %next.gep29 = getelementptr i8, ptr %i.m, i64 %i.ai
  %wide.load30 = load <8 x i8>, ptr %next.gep28.a, align 1, !tbaa !18, !alias.scope !192
  %i.aj = getelementptr i8, ptr %next.gep29, i64 -7
  %reverse31 = shufflevector <8 x i8> %wide.load30, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse31, ptr %i.aj, align 1, !tbaa !18, !alias.scope !193, !noalias !192
  %index.next32 = add nuw i64 %index27, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next32, %n.vec26
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !190

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %i.p, %n.vec26
  br i1 %cmp.n33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.01416.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.017 = phi ptr [ %i.am, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader ] ; 2 uses
  %.01416 = phi ptr [ %i.an, %.lr.ph ], [ %.01416.ph, %.lr.ph.preheader ] ; 2 uses
  %i.al = load i8, ptr %.017, align 1, !tbaa !18
  store i8 %i.al, ptr %.01416, align 1, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.01416, i64 -1
  %i.ao = icmp ult ptr %i.am, %i.j
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !191

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  store i32 %2, ptr %0, align 4, !tbaa !17
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uprv_decNumberIsSubnormal_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15
  %i.c = and i8 %i.b, 112
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18
  %i.f = icmp eq i8 %i.e, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !17    ; 2 uses
  %i.g = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = add nsw i32 %.pre, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %.not9 = icmp sle i32 %i.j, %i.l
  %. = zext i1 %.not9 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberTrim_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %1 = alloca %struct.decContext, align 4         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.b = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.c = call fastcc noundef ptr @_ZL7decTrimP9decNumberP10decContexthhPi(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @uprv_decNumberVersion_78() local_unnamed_addr #11 {
bb.a:
  ret ptr @.str.15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL13decUnitAddSubPKhiS0_iiPhi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, -2147483648) %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %5, i64 %i.a ; 3 uses
  %i.c = zext nneg i32 %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 %i.c ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.loopexit154, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %4 to i64                       ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 3 uses
  %i.g = icmp ne ptr %0, %5
  %.not144 = icmp sgt i32 %4, %1
  %or.cond = or i1 %.not144, %i.g
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.e ; 2 uses
  br i1 %or.cond, label %.preheader153, label %bb.c

.preheader153:                                    ; preds = %bb.b
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit154

.lr.ph:                                           ; preds = %.preheader153
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.a
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.e
  br label %.loopexit154

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0121156 = phi ptr [ %0, %.lr.ph ], [ %i.n, %bb.f ] ; 3 uses
  %.0126155 = phi ptr [ %5, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %i.l = icmp ult ptr %.0121156, %i.j
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %.0121156, align 1, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i8 [ %i.m, %bb.e ], [ 0, %bb.d ]
  store i8 %storemerge, ptr %.0126155, align 1, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.0121156, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0126155, i64 1 ; 3 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %bb.d, label %.loopexit154, !llvm.loop !194

.loopexit154:                                     ; preds = %bb.f, %.preheader153, %bb.c, %bb.a
  %.1127 = phi ptr [ %i.h, %bb.c ], [ %5, %bb.a ], [ %5, %.preheader153 ], [ %i.o, %bb.f ] ; 3 uses
  %.1122 = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ], [ %0, %.preheader153 ], [ %i.n, %bb.f ] ; 2 uses
  %.0119 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.a ], [ %i.f, %.preheader153 ], [ %i.f, %bb.f ] ; 3 uses
  %i.q = icmp ugt ptr %.0119, %i.b                ; 2 uses
  %spec.select = select i1 %i.q, ptr %i.b, ptr %.0119 ; 2 uses
  %spec.select150 = select i1 %i.q, ptr %.0119, ptr %i.b ; 4 uses
  %i.r = icmp ult ptr %.1127, %spec.select
  br i1 %i.r, label %.lr.ph162, label %._crit_edge
end_hunk_0
