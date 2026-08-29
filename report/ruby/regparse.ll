Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regparse?download=true
inline.NumInlined: 253
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@quantify_property_node:bb.a
  store i32 0, ptr %i.s, align 4, !tbaa !13
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = getelementptr i8, ptr %i.q, i64 16
  store <2 x i32> %i.p, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %i.q, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr i8, ptr %i.q, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = load ptr, ptr %0, align 8, !tbaa !90
  store ptr %i.x, ptr %i.t, align 8, !tbaa !13
  store ptr %i.q, ptr %0, align 8, !tbaa !90
  br label %quantify_node.exit

quantify_node.exit:                               ; preds = %bb.c, %node_new_cclass.exit.thread.i, %bb.g, %bb.f, %create_property_node.exit
  %.010 = phi i32 [ -11, %create_property_node.exit ], [ -5, %bb.f ], [ 0, %bb.g ], [ %.0.i12.i, %bb.c ], [ -5, %node_new_cclass.exit.thread.i ]
  ret i32 %.010
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @create_property_node(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_cclass.exit.thread, label %bb.b

node_new_cclass.exit.thread:                      ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !90
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = tail call i32 %i.i(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %2, ptr noundef %i.e) #25, !inline_history !193 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %add_property_to_cc.exit.thread, label %add_property_to_cc.exit

add_property_to_cc.exit.thread:                   ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 56
  store ptr %2, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr i8, ptr %1, i64 64
  store ptr %i.e, ptr %i.m, align 8, !tbaa !96
  br label %bb.c

add_property_to_cc.exit:                          ; preds = %bb.b
  %i.n = tail call fastcc i32 @add_ctype_to_cc(ptr noundef nonnull %i.a, i32 noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %add_property_to_cc.exit.thread, %add_property_to_cc.exit
  %.0.i12 = phi i32 [ %i.j, %add_property_to_cc.exit.thread ], [ %i.n, %add_property_to_cc.exit ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %node_new_cclass.exit.thread, %add_property_to_cc.exit, %bb.c
  %.0 = phi i32 [ -5, %node_new_cclass.exit.thread ], [ %.0.i12, %bb.c ], [ 0, %add_property_to_cc.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @create_node_from_array(i32 noundef range(i32 0, 2) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %i.a = sext i32 %.0 to i64
  %i.b = getelementptr [8 x i8], ptr %2, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %.not = icmp eq ptr %i.c, null
  %i.d = add i32 %.0, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !139

.preheader:                                       ; preds = %bb.b
  %i.e = add i32 %.0, -1
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = icmp eq i32 %0, 0
  %i.h = zext i32 %indvars.iv to i64              ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.c ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227.us = phi ptr [ %i.o, %bb.c ], [ null, %.lr.ph ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %2, i64 %indvars.iv44 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.k = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %node_new_list.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  store i32 8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store ptr %.02227.us, ptr %i.n, align 8, !tbaa !13
  store ptr %i.k, ptr %1, align 8, !tbaa !90
  store ptr null, ptr %i.i, align 8, !tbaa !90
  %i.o = load ptr, ptr %1, align 8, !tbaa !90
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %i.p = icmp sgt i64 %indvars.iv44, 0
  br i1 %i.p, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !140

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.d ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227 = phi ptr [ %i.w, %bb.d ], [ null, %.lr.ph ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %2, i64 %indvars.iv40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90
  %i.s = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %node_new_list.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  store i32 9, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store ptr %.02227, ptr %i.v, align 8, !tbaa !13
  store ptr %i.s, ptr %1, align 8, !tbaa !90
  store ptr null, ptr %i.q, align 8, !tbaa !90
  %i.w = load ptr, ptr %1, align 8, !tbaa !90
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %i.x = icmp sgt i64 %indvars.iv40, 0
  br i1 %i.x, label %.lr.ph.split, label %.loopexit, !llvm.loop !140

node_new_list.exit:                               ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.02227.us, %.lr.ph.split.us ], [ %.02227, %.lr.ph.split ]
  %.us-phi28.in = phi i64 [ %indvars.iv44, %.lr.ph.split.us ], [ %indvars.iv40, %.lr.ph.split ] ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !90
  %i.y = and i64 %.us-phi28.in, 2147483648
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %node_new_list.exit
  %i.aa = and i64 %.us-phi28.in, 2147483647
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %indvars.iv47 = phi i64 [ %i.aa, %.lr.ph32.preheader ], [ %indvars.iv.next48, %.lr.ph32 ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %2, i64 %indvars.iv47 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.ac)
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  store ptr null, ptr %i.ab, align 8, !tbaa !90
  %.not58 = icmp eq i64 %indvars.iv47, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph32, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph32, %node_new_list.exit
  tail call void @onig_node_free(ptr noundef %.us-phi)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader, %._crit_edge
  %.023 = phi i32 [ -5, %._crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @not_code_range_buf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !138
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47
  %i.d = icmp sgt i32 %i.c, 1
  %i.e = select i1 %i.d, i32 0, i32 128
  br label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = icmp slt i32 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  %i.l = icmp sgt i32 %i.k, 1
  %i.m = select i1 %i.l, i32 0, i32 128
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03250 = phi i32 [ %i.m, %bb.d ], [ %i.w, %bb.h ] ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.n = shl i32 %indvars.iv.tr, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %i.t = add i32 %i.q, -1                         ; 2 uses
  %.not = icmp ugt i32 %.03250, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.03250, i32 noundef %i.t, i32 noundef 1) ; 2 uses
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = icmp eq i32 %i.s, -1
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.s, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.sink.split, label %bb.e, !llvm.loop !194

.thread.sink.split:                               ; preds = %bb.h, %bb.b
  %.lcssa.sink = phi i32 [ %i.e, %bb.b ], [ %i.w, %bb.h ]
  %i.x = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.lcssa.sink, i32 noundef -1, i32 noundef 1)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %.thread.sink.split
  %.036 = phi i32 [ %i.x, %.thread.sink.split ], [ 0, %bb.g ], [ %i.u, %bb.f ]
  ret i32 %.036
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_ctype_to_cc_by_range(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !7      ; 6 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = icmp sgt i32 %i.a, 0                     ; 3 uses
  br i1 %i.b, label %.preheader, label %.preheader144

.preheader144:                                    ; preds = %bb.a
  br i1 %i.c, label %.preheader142.lr.ph, label %.preheader140

.preheader142.lr.ph:                              ; preds = %.preheader144
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader142

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph171, label %.loopexit

.lr.ph171:                                        ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %2, i64 16
  %i.i = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count203 = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %._crit_edge168
  %indvars.iv200 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next201, %._crit_edge168 ] ; 4 uses
  %sext220 = shl i64 %indvars.iv200, 33
  %i.j = ashr exact i64 %sext220, 30
  %i.k = getelementptr i8, ptr %4, i64 %i.j       ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 4 uses
  %indvars.iv200.tr = trunc i64 %indvars.iv200 to i32
  %i.n = shl i32 %indvars.iv200.tr, 1
  %i.o = add i32 %i.n, 2
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 2 uses
  %.not119164 = icmp ugt i32 %i.m, %i.r
  br i1 %.not119164, label %._crit_edge168, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %bb.b
  %umax198 = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %3) ; 3 uses
  %exitcond199.not14.not = icmp ult i32 %i.m, %3
  br i1 %exitcond199.not14.not, label %.lr.ph16, label %.lr.ph167.preheader._crit_edge

.lr.ph167:                                        ; preds = %CC_DUP_WARN.exit
  %i.s = add nuw i32 %.010216515, 1               ; 2 uses
  %exitcond199.not = icmp eq i32 %i.s, %umax198
  br i1 %exitcond199.not, label %.lr.ph167.preheader._crit_edge, label %.lr.ph16, !llvm.loop !195

.lr.ph167.preheader._crit_edge:                   ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.lcssa = phi i32 [ %i.av, %.lr.ph167 ], [ %i.r, %.lr.ph167.preheader ]
  %i.t = getelementptr i8, ptr %i.k, i64 4
  %i.u = trunc nuw nsw i64 %indvars.iv200 to i32  ; 2 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !7
  %i.w = icmp ugt i32 %umax198, %i.v
  br i1 %i.w, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph167.preheader._crit_edge
  %i.x = getelementptr i8, ptr %0, i64 40
  %i.y = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.x, ptr noundef %2, i32 noundef %umax198, i32 noundef %.lcssa, i32 noundef 1) ; 2 uses
  %.not122 = icmp eq i32 %i.y, 0
  br i1 %.not122, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.z = add i32 %i.u, 1
  br label %.loopexit

.lr.ph16:                                         ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.010216515 = phi i32 [ %i.s, %.lr.ph167 ], [ %i.m, %.lr.ph167.preheader ] ; 4 uses
  %i.aa = sdiv i32 %.010216515, 32
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %i.g, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = and i32 %.010216515, 31
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = and i32 %i.ad, %i.af
  %.not121 = icmp eq i32 %i.ag, 0
  %i.ah = load ptr, ptr @onig_warn, align 8
  %i.ai = icmp eq ptr %i.ah, @onig_null_warn
  %or.cond = select i1 %.not121, i1 true, i1 %i.ai
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph16
  %i.aj = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57
  %i.al = and i64 %i.ak, -5
  %.not5.i = icmp eq i64 %i.al, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !60
  %i.ap = and i32 %i.ao, 67108864
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !137 ; 2 uses
  %i.ar = and i32 %i.aq, 67108864
  %.not4.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i, label %bb.h, label %CC_DUP_WARN.exit

bb.h:                                             ; preds = %bb.g
  %i.as = or disjoint i32 %i.aq, 67108864
  store i32 %i.as, ptr %i.i, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph16
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.au = or i32 %i.at, %i.af
  store i32 %i.au, ptr %i.ac, align 4, !tbaa !7
  %i.av = load i32, ptr %i.q, align 4, !tbaa !7   ; 2 uses
  %.not119.not = icmp ult i32 %.010216515, %i.av
  br i1 %.not119.not, label %.lr.ph167, label %._crit_edge168, !llvm.loop !195

._crit_edge168:                                   ; preds = %CC_DUP_WARN.exit, %bb.b
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %.thread, label %bb.b, !llvm.loop !196

.loopexit:                                        ; preds = %.preheader, %.lr.ph167.preheader._crit_edge, %bb.d
  %.1105 = phi i32 [ %i.z, %bb.d ], [ %i.u, %.lr.ph167.preheader._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 40
  %i.ax = icmp slt i32 %.1105, %i.a
  br i1 %i.ax, label %.lr.ph175.preheader, label %.thread

.lr.ph175.preheader:                              ; preds = %.loopexit
  %i.ay = zext i32 %.1105 to i64
  br label %.lr.ph175

bb.i:                                             ; preds = %.lr.ph175
  %indvars.iv.next206 = add i64 %indvars.iv205, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next206 to i32
  %exitcond208.not = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond208.not, label %.thread, label %.lr.ph175, !llvm.loop !197

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %bb.i
  %indvars.iv205 = phi i64 [ %i.ay, %.lr.ph175.preheader ], [ %indvars.iv.next206, %bb.i ] ; 2 uses
  %i.az = trunc i64 %indvars.iv205 to i32
  %i.ba = shl i32 %i.az, 1                        ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %4, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = add i32 %i.ba, 2
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [4 x i8], ptr %4, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.aw, ptr noundef %2, i32 noundef %i.be, i32 noundef %i.bi, i32 noundef 1) ; 2 uses
  %.not123 = icmp eq i32 %i.bj, 0
  br i1 %.not123, label %bb.i, label %.thread

.preheader142:                                    ; preds = %.preheader142.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0155 = phi i32 [ 0, %.preheader142.lr.ph ], [ %i.cw, %._crit_edge ] ; 4 uses
  %sext = shl i64 %indvars.iv, 33
end_hunk_0
begin_hunk_1_@and_cclass:bb.a
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = trunc i32 %i.h to i1                     ; 4 uses
  %i.j = and i32 %i.h, 1
  %i.k = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !145  ; 2 uses
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = and i32 %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load <4 x i32>, ptr %i.k, align 8, !tbaa !7
  %i.v = xor <4 x i32> %i.u, splat (i32 -1)
  store <4 x i32> %i.v, ptr %i.b, align 16, !tbaa !7
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <4 x i32>, ptr %i.w, align 8, !tbaa !7
  %i.z = xor <4 x i32> %i.y, splat (i32 -1)
  store <4 x i32> %i.z, ptr %i.x, align 16, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !7   ; 2 uses
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.c, align 16, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.af = xor <4 x i32> %i.ae, splat (i32 -1)
  store <4 x i32> %i.af, ptr %i.ad, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !7
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !7
  %i.ak = getelementptr i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = xor i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ao = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.r, %bb.c ]  ; 7 uses
  %i.ap = load i32, ptr %.044, align 4, !tbaa !7
  %i.aq = and i32 %i.ap, %i.ao                    ; 2 uses
  store i32 %i.aq, ptr %.044, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = and i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.044, i64 8      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = and i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.044, i64 12     ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = and i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %i.bg = getelementptr i8, ptr %.0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %.044, i64 16     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = and i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %.044, i64 20     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = and i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr i8, ptr %.044, i64 24     ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = and i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  %i.bv = getelementptr i8, ptr %.0, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %.044, i64 28     ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = and i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %.not = icmp eq ptr %.044, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.aq, ptr %i.k, align 8, !tbaa !7
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !7
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !7
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !7
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cn = getelementptr i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = load <4 x i32>, ptr %i.k, align 8, !tbaa !7
  %i.cp = xor <4 x i32> %i.co, splat (i32 -1)
  store <4 x i32> %i.cp, ptr %i.k, align 8, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 8, !tbaa !7
  %i.cs = xor <4 x i32> %i.cr, splat (i32 -1)
  store <4 x i32> %i.cs, ptr %i.cq, align 8, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr i8, ptr %i.f, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bbuf_free.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cw = call fastcc i32 @or_code_range_buf(ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef 0, ptr noundef %i.t, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull %2)
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.cx = call fastcc i32 @and_code_range_buf(ptr noundef %i.m, i32 noundef %i.j, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond3 = and i1 %i.cy, %i.i
  br i1 %or.cond3, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !138 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !138
  %i.da = icmp eq ptr %i.cz, null                 ; 2 uses
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.db = getelementptr i8, ptr %i.f, i64 20
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !47
  %i.dd = icmp sgt i32 %i.dc, 1
  %i.de = select i1 %i.dd, i32 0, i32 128
  br label %.thread.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 4
  %i.di = icmp slt i32 %i.dg, 1
  br i1 %i.di, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr i8, ptr %i.f, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !47
  %i.dl = icmp sgt i32 %i.dk, 1
  %i.dm = select i1 %i.dl, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.dg to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %.03250.i = phi i32 [ %i.dm, %bb.o ], [ %i.dw, %bb.s ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.dn = shl i32 %indvars.iv.tr.i, 1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [4 x i8], ptr %i.dh, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7  ; 2 uses
  %i.dt = add i32 %i.dq, -1                       ; 2 uses
  %.not.i = icmp ugt i32 %.03250.i, %i.dt
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.03250.i, i32 noundef %i.dt, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.du, 0
  br i1 %.not44.i, label %bb.r, label %not_code_range_buf.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dv = icmp eq i32 %i.ds, -1
  br i1 %i.dv, label %not_code_range_buf.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = add nuw i32 %i.ds, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.p, !llvm.loop !194

.thread.sink.split.i:                             ; preds = %bb.s, %bb.m
  %.lcssa.sink.i = phi i32 [ %i.de, %bb.m ], [ %i.dw, %bb.s ]
  %i.dx = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %not_code_range_buf.exit

not_code_range_buf.exit:                          ; preds = %bb.q, %bb.r, %.thread.sink.split.i
  %.036.i = phi i32 [ %i.dx, %.thread.sink.split.i ], [ %i.du, %bb.q ], [ 0, %bb.r ]
  br i1 %i.da, label %bbuf_free.exit, label %bb.t

bb.t:                                             ; preds = %not_code_range_buf.exit
  %i.dy = load ptr, ptr %i.cz, align 8, !tbaa !66
  call void @free(ptr noundef %i.dy) #25
  call void @free(ptr noundef nonnull %i.cz) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %not_code_range_buf.exit, %bb.t
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bbuf_free.exit, %bb.j
  %.045 = phi i32 [ %i.cw, %bb.j ], [ %.036.i, %bbuf_free.exit ], [ %i.cx, %bb.k ] ; 3 uses
  %.not48 = icmp eq i32 %.045, 0
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !138 ; 3 uses
  br i1 %.not48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i50 = icmp eq ptr %i.ea, null
  br i1 %.not.i50, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bb.w:                                             ; preds = %bb.u
  store ptr %i.ea, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %bb.w, %bb.v
  %.sink63 = phi ptr [ %i.ea, %bb.v ], [ %i.m, %bb.w ] ; 2 uses
  %.046.ph = phi i32 [ %.045, %bb.v ], [ 0, %bb.w ]
  %i.eb = load ptr, ptr %.sink63, align 8, !tbaa !66
  call void @free(ptr noundef %i.eb) #25
  call void @free(ptr noundef nonnull %.sink63) #25
  br label %bbuf_free.exit51

bbuf_free.exit51:                                 ; preds = %bbuf_free.exit51.sink.split, %bb.w, %bb.v, %bb.h
  %.046 = phi i32 [ 0, %bb.w ], [ 0, %bb.h ], [ %.045, %bb.v ], [ %.046.ph, %bbuf_free.exit51.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.046
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @or_cclass(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  %i.c = alloca [8 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = trunc i32 %i.h to i1                     ; 4 uses
  %i.j = and i32 %i.h, 1
  %i.k = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 6 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !145  ; 2 uses
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = and i32 %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load <4 x i32>, ptr %i.k, align 8, !tbaa !7
  %i.v = xor <4 x i32> %i.u, splat (i32 -1)
  store <4 x i32> %i.v, ptr %i.b, align 16, !tbaa !7
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <4 x i32>, ptr %i.w, align 8, !tbaa !7
  %i.z = xor <4 x i32> %i.y, splat (i32 -1)
  store <4 x i32> %i.z, ptr %i.x, align 16, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !7   ; 2 uses
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.c, align 16, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.af = xor <4 x i32> %i.ae, splat (i32 -1)
  store <4 x i32> %i.af, ptr %i.ad, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !7
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !7
  %i.ak = getelementptr i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = xor i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ao = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.r, %bb.c ]  ; 7 uses
  %i.ap = load i32, ptr %.044, align 4, !tbaa !7
  %i.aq = or i32 %i.ap, %i.ao                     ; 2 uses
  store i32 %i.aq, ptr %.044, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.044, i64 8      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.044, i64 12     ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = or i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %i.bg = getelementptr i8, ptr %.0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %.044, i64 16     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %.044, i64 20     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr i8, ptr %.044, i64 24     ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = or i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  %i.bv = getelementptr i8, ptr %.0, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %.044, i64 28     ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %.not = icmp eq ptr %.044, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.aq, ptr %i.k, align 8, !tbaa !7
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !7
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !7
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !7
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cn = getelementptr i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = load <4 x i32>, ptr %i.k, align 8, !tbaa !7
  %i.cp = xor <4 x i32> %i.co, splat (i32 -1)
  store <4 x i32> %i.cp, ptr %i.k, align 8, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 8, !tbaa !7
  %i.cs = xor <4 x i32> %i.cr, splat (i32 -1)
  store <4 x i32> %i.cs, ptr %i.cq, align 8, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr i8, ptr %i.f, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bbuf_free.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !138
  %i.cw = icmp eq ptr %i.m, null
  br i1 %i.cw, label %bbuf_free.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp eq ptr %i.t, null
  br i1 %i.cx, label %and_code_range_buf.exit.thread.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !66  ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7  ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !66  ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 4      ; 2 uses
  %i.de = icmp ne i32 %i.dc, 0
  %i.df = icmp ne i32 %i.cz, 0
  %or.cond129.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond129.i, label %.lr.ph125.preheader.i, label %and_code_range_buf.exit.thread.thread

.lr.ph125.preheader.i:                            ; preds = %bb.l
  %wide.trip.count151.i = zext i32 %i.dc to i64
  %wide.trip.count146.i = zext i32 %i.cz to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %._crit_edge.i, %.lr.ph125.preheader.i
  %indvars.iv148.i = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %indvars.iv.next149.i, %._crit_edge.i ] ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv148.i to i32
  %i.dh = shl i32 %i.dg, 1                        ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr [4 x i8], ptr %i.dd, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7  ; 2 uses
  %i.dl = or disjoint i32 %i.dh, 1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %i.dd, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph125.i
  %indvars.iv143.i = phi i64 [ 0, %.lr.ph125.i ], [ %indvars.iv.next144.i, %bb.p ] ; 2 uses
  %i.dp = trunc nuw i64 %indvars.iv143.i to i32
  %i.dq = shl i32 %i.dp, 1                        ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr [4 x i8], ptr %i.da, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7  ; 2 uses
  %i.du = or disjoint i32 %i.dq, 1
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr [4 x i8], ptr %i.da, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7  ; 2 uses
  %i.dy = icmp ugt i32 %i.dt, %i.do
  br i1 %i.dy, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = icmp ult i32 %i.dx, %i.dk
  br i1 %i.dz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ea = call i32 @llvm.umax.i32(i32 %i.dk, i32 %i.dt)
  %i.eb = call i32 @llvm.umin.i32(i32 %i.do, i32 %i.dx)
  %i.ec = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %i.ea, i32 noundef %i.eb, i32 noundef 1) ; 2 uses
  %.not94.i = icmp eq i32 %i.ec, 0
  br i1 %.not94.i, label %bb.p, label %and_code_range_buf.exit.thread56

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !202

._crit_edge.i:                                    ; preds = %bb.p, %bb.m
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %and_code_range_buf.exit.thread, label %.lr.ph125.i, !llvm.loop !203

bb.q:                                             ; preds = %bb.i
  %i.ed = call fastcc i32 @or_code_range_buf(ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef %i.j, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  %or.cond3 = and i1 %i.ee, %i.i
  br i1 %or.cond3, label %bb.r, label %and_code_range_buf.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !138 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !138
  %i.eg = icmp eq ptr %i.ef, null                 ; 2 uses
  br i1 %i.eg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.eh = getelementptr i8, ptr %i.f, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47
  %i.ej = icmp sgt i32 %i.ei, 1
  %i.ek = select i1 %i.ej, i32 0, i32 128
  br label %.thread.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !66 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7  ; 2 uses
  %i.en = getelementptr i8, ptr %i.el, i64 4
  %i.eo = icmp slt i32 %i.em, 1
  br i1 %i.eo, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr i8, ptr %i.f, i64 20
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !47
  %i.er = icmp sgt i32 %i.eq, 1
  %i.es = select i1 %i.er, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.em to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %indvars.iv.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.i, %bb.y ] ; 2 uses
  %.03250.i = phi i32 [ %i.es, %bb.u ], [ %i.fc, %bb.y ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.et = shl i32 %indvars.iv.tr.i, 1
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr [4 x i8], ptr %i.en, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7
  %i.ex = getelementptr i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7  ; 2 uses
  %i.ez = add i32 %i.ew, -1                       ; 2 uses
  %.not.i = icmp ugt i32 %.03250.i, %i.ez
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.03250.i, i32 noundef %i.ez, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.fa, 0
  br i1 %.not44.i, label %bb.x, label %not_code_range_buf.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fb = icmp eq i32 %i.ey, -1
  br i1 %i.fb, label %not_code_range_buf.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = add nuw i32 %i.ey, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.v, !llvm.loop !194

.thread.sink.split.i:                             ; preds = %bb.y, %bb.s
  %.lcssa.sink.i = phi i32 [ %i.ek, %bb.s ], [ %i.fc, %bb.y ]
  %i.fd = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %not_code_range_buf.exit

not_code_range_buf.exit:                          ; preds = %bb.w, %bb.x, %.thread.sink.split.i
  %.036.i = phi i32 [ %i.fd, %.thread.sink.split.i ], [ %i.fa, %bb.w ], [ 0, %bb.x ]
  br i1 %i.eg, label %bbuf_free.exit, label %bb.z

bb.z:                                             ; preds = %not_code_range_buf.exit
  %i.fe = load ptr, ptr %i.ef, align 8, !tbaa !66
  call void @free(ptr noundef %i.fe) #25
  call void @free(ptr noundef nonnull %i.ef) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %not_code_range_buf.exit, %bb.z
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %and_code_range_buf.exit

and_code_range_buf.exit:                          ; preds = %bb.q, %bbuf_free.exit
  %.045 = phi i32 [ %i.ed, %bb.q ], [ %.036.i, %bbuf_free.exit ] ; 2 uses
  %.not48 = icmp eq i32 %.045, 0
  br i1 %.not48, label %and_code_range_buf.exit.thread, label %and_code_range_buf.exit.thread56

and_code_range_buf.exit.thread56:                 ; preds = %bb.o, %and_code_range_buf.exit
  %.04559 = phi i32 [ %.045, %and_code_range_buf.exit ], [ %i.ec, %bb.o ] ; 2 uses
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fg, null
  br i1 %.not.i50, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread.thread:            ; preds = %bb.k, %bb.l
  store ptr null, ptr %i.l, align 8, !tbaa !63
  br label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread:                   ; preds = %._crit_edge.i, %and_code_range_buf.exit
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !138
  store ptr %i.fh, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %and_code_range_buf.exit.thread, %and_code_range_buf.exit.thread.thread, %and_code_range_buf.exit.thread56
  %.sink83 = phi ptr [ %i.fg, %and_code_range_buf.exit.thread56 ], [ %i.m, %and_code_range_buf.exit.thread.thread ], [ %i.m, %and_code_range_buf.exit.thread ] ; 2 uses
  %.046.ph = phi i32 [ %.04559, %and_code_range_buf.exit.thread56 ], [ 0, %and_code_range_buf.exit.thread.thread ], [ 0, %and_code_range_buf.exit.thread ]
  %i.fi = load ptr, ptr %.sink83, align 8, !tbaa !66
  call void @free(ptr noundef %i.fi) #25
  call void @free(ptr noundef nonnull %.sink83) #25
  br label %bbuf_free.exit51

bbuf_free.exit51:                                 ; preds = %bbuf_free.exit51.sink.split, %bb.j, %and_code_range_buf.exit.thread, %and_code_range_buf.exit.thread56, %bb.h
  %.046 = phi i32 [ 0, %bb.j ], [ 0, %bb.h ], [ %.04559, %and_code_range_buf.exit.thread56 ], [ 0, %and_code_range_buf.exit.thread ], [ %.046.ph, %bbuf_free.exit51.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.046
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @or_code_range_buf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef readonly captures(address) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !138
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  %i.b = icmp eq ptr %3, null                     ; 5 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %4, %2
  %or.cond3.not = icmp eq i32 %i.c, 0
  br i1 %or.cond3.not, label %bbuf_clone.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  %i.f = icmp sgt i32 %i.e, 1
  %i.g = select i1 %i.f, i32 0, i32 128
  %i.h = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.g, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.d:                                             ; preds = %bb.a
  %brmerge = or i1 %i.b, %i.a
  %.mux158 = select i1 %i.b, ptr %1, ptr %3       ; 5 uses
  %.mux159 = select i1 %i.b, i32 %2, i32 %4
  br i1 %brmerge, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.d
  %.mux = select i1 %i.b, i32 %4, i32 %2
  %.not80 = icmp eq i32 %.mux, 0
  br i1 %.not80, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47
  %i.k = icmp sgt i32 %i.j, 1
  %i.l = select i1 %i.k, i32 0, i32 128
  %i.m = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.l, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.f:                                             ; preds = %.thread
  %i.n = icmp eq i32 %.mux159, 0
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !138
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bbuf_clone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %.mux158, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !181
  %i.s = zext i32 %i.r to i64
  %i.t = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.o, i64 noundef %i.s) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.i, label %bbuf_clone.exit

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %.mux158, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !183  ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 8
  store i32 %i.v, ptr %i.w, align 8, !tbaa !183
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.y = load ptr, ptr %.mux158, align 8, !tbaa !66
  %i.z = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.x, ptr noundef nonnull align 1 %i.y, i64 noundef %i.z, i1 noundef false) #25
  br label %bbuf_clone.exit

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp eq ptr %.mux158, null
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.ad = icmp sgt i32 %i.ac, 1
  %i.ae = select i1 %i.ad, i32 0, i32 128
  br label %.thread.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %.mux158, align 8, !tbaa !66 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = icmp slt i32 %i.ag, 1
  br i1 %i.ai, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %0, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  %i.al = icmp sgt i32 %i.ak, 1
  %i.am = select i1 %i.al, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %indvars.iv.i = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.03250.i = phi i32 [ %i.am, %bb.m ], [ %i.aw, %bb.q ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.an = shl i32 %indvars.iv.tr.i, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr [4 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %i.at = add i32 %i.aq, -1                       ; 2 uses
  %.not.i81 = icmp ugt i32 %.03250.i, %i.at
  br i1 %.not.i81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.03250.i, i32 noundef %i.at, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.au, 0
  br i1 %.not44.i, label %bb.p, label %bbuf_clone.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = icmp eq i32 %i.as, -1
  br i1 %i.av, label %bbuf_clone.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nuw i32 %i.as, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.n, !llvm.loop !194

.thread.sink.split.i:                             ; preds = %bb.q, %bb.k
  %.lcssa.sink.i = phi i32 [ %i.ae, %bb.k ], [ %i.aw, %bb.q ]
  %i.ax = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.r:                                             ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 4      ; 2 uses
  %i.bb = icmp eq i32 %4, 0
  br i1 %i.bb, label %bb.t, label %.thread112

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !138
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bbuf_clone.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr i8, ptr %3, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !181
  %i.bg = zext i32 %i.bf to i64
  %i.bh = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #25 ; 2 uses
  %.not.i82 = icmp eq i32 %i.bh, 0
  br i1 %.not.i82, label %bb.v, label %bbuf_clone.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr i8, ptr %3, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !183 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bc, i64 8
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !183
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !66
  %i.bm = load ptr, ptr %3, align 8, !tbaa !66
  %i.bn = zext i32 %i.bj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bl, ptr noundef nonnull align 1 %i.bm, i64 noundef %i.bn, i1 noundef false) #25
  br label %.preheader

bb.w:                                             ; preds = %bb.r
  %i.bo = icmp eq i32 %4, 0
  %i.bp = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4      ; 2 uses
  br i1 %i.bo, label %.thread112, label %.preheader

.thread112:                                       ; preds = %bb.s, %bb.w
  %.170110115 = phi ptr [ %1, %bb.w ], [ %3, %bb.s ]
  %i.bs = phi i32 [ %i.bq, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %i.bt = phi ptr [ %i.br, %bb.w ], [ %i.ba, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %.170110115, align 8, !tbaa !66 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 4
  %i.bx = icmp slt i32 %i.bv, 1
  %i.by = getelementptr i8, ptr %0, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = icmp sgt i32 %i.bz, 1
  %i.cb = select i1 %i.ca, i32 0, i32 128         ; 2 uses
  br i1 %i.bx, label %bbuf_clone.exit84, label %bb.x

bb.x:                                             ; preds = %.thread112
  %wide.trip.count.i85 = zext nneg i32 %i.bv to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.x
  %indvars.iv.i86 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i92, %bb.ab ] ; 2 uses
  %.03250.i87 = phi i32 [ %i.cb, %bb.x ], [ %i.cl, %bb.ab ] ; 2 uses
  %indvars.iv.tr.i88 = trunc i64 %indvars.iv.i86 to i32
  %i.cc = shl i32 %indvars.iv.tr.i88, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %i.bw, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = getelementptr i8, ptr %i.ce, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7  ; 2 uses
  %i.ci = add i32 %i.cf, -1                       ; 2 uses
  %.not.i89 = icmp ugt i32 %.03250.i87, %i.ci
  br i1 %.not.i89, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.03250.i87, i32 noundef %i.ci, i32 noundef 1) ; 2 uses
  %.not44.i90 = icmp eq i32 %i.cj, 0
  br i1 %.not44.i90, label %bb.aa, label %bbuf_clone.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ck = icmp eq i32 %i.ch, -1
  br i1 %i.ck, label %.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = add nuw i32 %i.ch, 1                    ; 2 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i85
  br i1 %exitcond.not.i93, label %bbuf_clone.exit84, label %bb.y, !llvm.loop !194

bbuf_clone.exit84:                                ; preds = %bb.ab, %.thread112
  %.lcssa.sink.i95 = phi i32 [ %i.cb, %.thread112 ], [ %i.cl, %bb.ab ]
  %i.cm = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.lcssa.sink.i95, i32 noundef -1, i32 noundef 1) ; 2 uses
  %.not78 = icmp eq i32 %i.cm, 0
  br i1 %.not78, label %.preheader, label %bbuf_clone.exit

.preheader:                                       ; preds = %bb.aa, %bb.v, %bb.w, %bbuf_clone.exit84
  %i.cn = phi i32 [ %i.bs, %bbuf_clone.exit84 ], [ %i.bq, %bb.w ], [ %i.az, %bb.v ], [ %i.bs, %bb.aa ] ; 2 uses
  %i.co = phi ptr [ %i.bt, %bbuf_clone.exit84 ], [ %i.br, %bb.w ], [ %i.ba, %bb.v ], [ %i.bt, %bb.aa ] ; 2 uses
  %.not127 = icmp eq i32 %i.cn, 0
  br i1 %.not127, label %bbuf_clone.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.cn to i64
  br label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bbuf_clone.exit, label %.lr.ph, !llvm.loop !204

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = shl i32 %i.cp, 1                        ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = or disjoint i32 %i.cq, 1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.co, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef 1) ; 2 uses
  %.not79 = icmp eq i32 %i.cy, 0
  br i1 %.not79, label %bb.ac, label %bbuf_clone.exit

bbuf_clone.exit:                                  ; preds = %bb.z, %.lr.ph, %bb.ac, %bb.p, %bb.o, %.preheader, %bb.t, %bb.u, %.thread.sink.split.i, %bb.i, %bb.h, %bb.g, %bbuf_clone.exit84, %bb.b, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 0, %.preheader ], [ %i.m, %bb.e ], [ 0, %bb.p ], [ %i.t, %bb.h ], [ 0, %bb.b ], [ %i.cm, %bbuf_clone.exit84 ], [ 0, %bb.i ], [ -5, %bb.g ], [ -5, %bb.t ], [ %i.bh, %bb.u ], [ %i.ax, %.thread.sink.split.i ], [ 0, %bb.ac ], [ %i.au, %bb.o ], [ %i.cy, %.lr.ph ], [ %i.cj, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @and_code_range_buf(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %4, ptr nofree noundef captures(none) %5) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %4, align 8, !tbaa !138
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %1, 0
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bbuf_clone.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bbuf_clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !181
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.d, i64 noundef %i.h) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.e:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not95 = icmp eq i32 %3, 0
  br i1 %.not95, label %bbuf_clone.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !138
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bbuf_clone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !181
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.k, i64 noundef %i.o) #25 ; 2 uses
  %.not.i96 = icmp eq i32 %i.p, 0
  br i1 %.not.i96, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.i:                                             ; preds = %bb.e
  %.not = icmp eq i32 %1, 0
  %i.q = load ptr, ptr %2, align 8, !tbaa !66     ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 4 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.t = icmp eq i32 %3, 0
  %i.u = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  br i1 %i.t, label %.preheader113, label %bbuf_clone.exit

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 3 uses
  %i.y = getelementptr i8, ptr %i.w, i64 4        ; 3 uses
  %i.z = icmp eq i32 %3, 0
  br i1 %i.z, label %.preheader, label %.preheader113

.preheader113:                                    ; preds = %.thread, %bb.j
  %.ph = phi i32 [ %i.x, %bb.j ], [ %i.r, %.thread ] ; 2 uses
  %.ph114 = phi i32 [ %i.r, %bb.j ], [ %i.v, %.thread ] ; 2 uses
  %.ph115 = phi ptr [ %i.y, %bb.j ], [ %i.s, %.thread ] ; 4 uses
  %i.aa = phi ptr [ %i.q, %bb.j ], [ %i.u, %.thread ]
  %.not130 = icmp eq i32 %.ph, 0
  br i1 %.not130, label %bbuf_clone.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader113
  %i.ab = icmp sgt i32 %.ph114, 0
  %wide.trip.count.i = zext nneg i32 %.ph114 to i64
  %wide.trip.count141 = zext i32 %.ph to i64      ; 2 uses
  br i1 %i.ab, label %.lr.ph.preheader.i.us.preheader, label %._crit_edge.i

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %and_code_range1.exit.us
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next139, %and_code_range1.exit.us ] ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv138 to i32
  %i.ae = shl i32 %i.ad, 1                        ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %.ph115, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = or disjoint i32 %i.ae, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr [4 x i8], ptr %.ph115, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.s, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.s ] ; 2 uses
  %.03854.i.us = phi i32 [ %i.ah, %.lr.ph.preheader.i.us ], [ %.2.i.us, %bb.s ] ; 6 uses
  %.03953.i.us = phi i32 [ %i.al, %.lr.ph.preheader.i.us ], [ %.241.i.us, %bb.s ] ; 6 uses
  %indvars.iv.tr.i.us = trunc i64 %indvars.iv.i.us to i32
  %i.am = shl i32 %indvars.iv.tr.i.us, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ac, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7  ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7  ; 4 uses
  %i.as = icmp ult i32 %i.ap, %.03854.i.us
  br i1 %i.as, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us
  %.not.i99.us = icmp ugt i32 %i.ap, %.03953.i.us
  br i1 %.not.i99.us, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ult i32 %i.ar, %.03953.i.us
  %i.au = add i32 %i.ap, -1                       ; 3 uses
  br i1 %i.at, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not49.i.us = icmp ugt i32 %.03854.i.us, %i.au
  br i1 %.not49.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.03854.i.us, i32 noundef %i.au, i32 noundef 1) ; 2 uses
  %.not50.i.us = icmp eq i32 %i.av, 0
  br i1 %.not50.i.us, label %bb.o, label %bbuf_clone.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = add nuw i32 %i.ar, 1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.us
  %i.ax = icmp ult i32 %i.ar, %.03854.i.us
  br i1 %i.ax, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = add i32 %i.ar, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.k
  %.140.i.us = phi i32 [ %.03953.i.us, %bb.q ], [ %.03953.i.us, %bb.o ], [ %.03953.i.us, %bb.k ], [ %i.au, %bb.l ] ; 3 uses
  %.1.i.us = phi i32 [ %i.ay, %bb.q ], [ %i.aw, %bb.o ], [ %i.ap, %bb.k ], [ %.03854.i.us, %bb.l ] ; 3 uses
  %i.az = icmp ugt i32 %.1.i.us, %.140.i.us
  br i1 %i.az, label %._crit_edge.i.loopexit.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.241.i.us = phi i32 [ %.03953.i.us, %bb.p ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.2.i.us = phi i32 [ %.03854.i.us, %bb.p ], [ %.1.i.us, %bb.r ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %.lr.ph.i.us, !llvm.loop !205

bb.t:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.ba = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.3.i.ph.us, i32 noundef %.342.i.ph.us, i32 noundef 1) ; 2 uses
  %.not52.i.us = icmp eq i32 %i.ba, 0
  br i1 %.not52.i.us, label %and_code_range1.exit.us, label %bbuf_clone.exit

and_code_range1.exit.us:                          ; preds = %bb.t, %._crit_edge.i.loopexit.us
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %bbuf_clone.exit, label %.lr.ph.preheader.i.us, !llvm.loop !206

._crit_edge.i.loopexit.us:                        ; preds = %bb.s, %bb.r
  %.342.i.ph.us = phi i32 [ %.241.i.us, %bb.s ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.3.i.ph.us = phi i32 [ %.2.i.us, %bb.s ], [ %.1.i.us, %bb.r ] ; 2 uses
  %.not51.i.us = icmp ugt i32 %.3.i.ph.us, %.342.i.ph.us
  br i1 %.not51.i.us, label %and_code_range1.exit.us, label %bb.t

.preheader:                                       ; preds = %bb.j
  %i.bb = icmp ne i32 %i.x, 0
  %i.bc = icmp ne i32 %i.r, 0
  %or.cond129 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond129, label %.lr.ph125.preheader, label %bbuf_clone.exit

.lr.ph125.preheader:                              ; preds = %.preheader
  %wide.trip.count151 = zext i32 %i.x to i64
  %wide.trip.count146 = zext i32 %i.r to i64
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %._crit_edge
  %indvars.iv148 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next149, %._crit_edge ] ; 2 uses
  %i.bd = trunc nuw i64 %indvars.iv148 to i32
  %i.be = shl i32 %i.bd, 1                        ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr [4 x i8], ptr %i.y, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7  ; 2 uses
  %i.bi = or disjoint i32 %i.be, 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %i.y, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7  ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph125, %bb.x
  %indvars.iv143 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next144, %bb.x ] ; 2 uses
  %i.bm = trunc nuw i64 %indvars.iv143 to i32
  %i.bn = shl i32 %i.bm, 1                        ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %i.s, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7  ; 2 uses
  %i.br = or disjoint i32 %i.bn, 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.s, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7  ; 2 uses
  %i.bv = icmp ugt i32 %i.bq, %i.bl
  br i1 %i.bv, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = icmp ult i32 %i.bu, %i.bh
  br i1 %i.bw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = tail call i32 @llvm.umax.i32(i32 %i.bh, i32 %i.bq)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.bu)
  %i.bz = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %i.bx, i32 noundef %i.by, i32 noundef 1) ; 2 uses
  %.not94 = icmp eq i32 %i.bz, 0
  br i1 %.not94, label %bb.x, label %bbuf_clone.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %._crit_edge, label %bb.u, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.u, %bb.x
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %bbuf_clone.exit, label %.lr.ph125, !llvm.loop !203

._crit_edge.i:                                    ; preds = %.lr.ph, %and_code_range1.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %and_code_range1.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ca = trunc nuw i64 %indvars.iv to i32
  %i.cb = shl i32 %i.ca, 1                        ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr %.ph115, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7  ; 2 uses
  %i.cf = or disjoint i32 %i.cb, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr [4 x i8], ptr %.ph115, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7  ; 2 uses
  %.not51.i = icmp ugt i32 %i.ce, %i.ci
  br i1 %.not51.i, label %and_code_range1.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i
  %i.cj = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %i.ce, i32 noundef %i.ci, i32 noundef 1) ; 2 uses
  %.not52.i = icmp eq i32 %i.cj, 0
  br i1 %.not52.i, label %and_code_range1.exit, label %bbuf_clone.exit

and_code_range1.exit:                             ; preds = %bb.y, %._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count141
  br i1 %exitcond.not, label %bbuf_clone.exit, label %._crit_edge.i, !llvm.loop !206

bbuf_clone.exit.sink.split:                       ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %2, %bb.d ], [ %0, %bb.h ]   ; 2 uses
  %.sink189 = phi ptr [ %i.d, %bb.d ], [ %i.k, %bb.h ] ; 2 uses
  %i.ck = getelementptr i8, ptr %.sink, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !183 ; 2 uses
  %i.cm = getelementptr i8, ptr %.sink189, i64 8
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !183
  %i.cn = load ptr, ptr %.sink189, align 8, !tbaa !66
  %i.co = load ptr, ptr %.sink, align 8, !tbaa !66
  %i.cp = zext i32 %i.cl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cn, ptr noundef nonnull align 1 %i.co, i64 noundef %i.cp, i1 noundef false) #25
  br label %bbuf_clone.exit

bbuf_clone.exit:                                  ; preds = %and_code_range1.exit, %bb.y, %and_code_range1.exit.us, %bb.t, %bb.n, %._crit_edge, %bb.w, %bbuf_clone.exit.sink.split, %.preheader113, %.preheader, %.thread, %bb.h, %bb.g, %bb.d, %bb.c, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %._crit_edge ], [ %i.ba, %bb.t ], [ %i.i, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.p, %bb.h ], [ 0, %.thread ], [ 0, %.preheader ], [ 0, %.preheader113 ], [ -5, %bb.c ], [ %i.bz, %bb.w ], [ -5, %bb.g ], [ 0, %bbuf_clone.exit.sink.split ], [ %i.av, %bb.n ], [ 0, %and_code_range1.exit.us ], [ 0, %and_code_range1.exit ], [ %i.cj, %bb.y ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @fetch_token_in_cc(ptr nofree noundef nonnull captures(none) initializes((0, 4)) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 13 uses
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load ptr, ptr %1, align 8, !tbaa !69     ; 5 uses
  %i.h = icmp ult ptr %i.g, %2
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !99
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 16       ; 15 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !70
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.g, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.f, i64 32
end_hunk_1
