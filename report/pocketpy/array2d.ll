Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/array2d?download=true
begin_hunk_0_@array2d_like_count_neighbors:bb.a
  %i.an = load i32, ptr %i.e, align 4, !tbaa !30
  %i.ao = icmp slt i32 %i.ai, %i.an
  br i1 %i.ao, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.aq = tail call ptr %i.ap(ptr noundef nonnull %i.b, i32 noundef %i.af, i32 noundef %i.ai) #20
  %i.ar = tail call i32 @py_equal(ptr noundef %i.aq, ptr noundef nonnull %i.o) #20 ; 2 uses
  %.not75.not = icmp eq i32 %i.ar, -1             ; 2 uses
  %narrow = select i1 %.not75.not, i32 0, i32 %i.ar
  %i.as = sext i32 %narrow to i64
  %.1 = add nsw i64 %.05589, %i.as
  br i1 %.not75.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.384 = phi i64 [ %.1, %bb.j ], [ %.05589, %bb.i ], [ %.05589, %bb.h ], [ %.05589, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.063
  br i1 %exitcond.not, label %bb.k, label %bb.g, !llvm.loop !134

bb.k:                                             ; preds = %.thread
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.au = load i32, ptr %i.h, align 8, !tbaa !13
  %i.av = mul nsw i32 %i.au, %.05794
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [24 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %indvars.iv97
  tail call void @py_newint(ptr noundef %i.ay, i64 noundef %.384) #20
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.az = load i32, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %.not78 = icmp slt i64 %indvars.iv.next98, %i.ba
  br i1 %.not78, label %.preheader, label %.critedge79.loopexit, !llvm.loop !135

.critedge79.loopexit:                             ; preds = %bb.k
  %.pre = load i32, ptr %i.e, align 4, !tbaa !30
  br label %.critedge79

.critedge79:                                      ; preds = %.critedge79.loopexit, %.preheader87
  %i.bb = phi i32 [ %.pre, %.critedge79.loopexit ], [ %i.aa, %.preheader87 ] ; 2 uses
  %i.bc = phi i32 [ %i.az, %.critedge79.loopexit ], [ %i.ab, %.preheader87 ]
  %i.bd = add nuw nsw i32 %.05794, 1              ; 2 uses
  %.not77 = icmp slt i32 %i.bd, %i.bb
  br i1 %.not77, label %.preheader87, label %.critedge81, !llvm.loop !136

.critedge81:                                      ; preds = %.critedge79, %.preheader87.lr.ph, %bb.f
  %i.be = tail call ptr (...) @py_retval() #20
  %i.bf = tail call ptr @py_peek(i32 noundef -1) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !tbaa.struct !25
  tail call void (...) @py_pop() #20
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.e, %.critedge81, %bb.b
  %.10 = phi i1 [ %i.a, %bb.b ], [ true, %.critedge81 ], [ %i.v, %bb.e ], [ false, %bb.j ]
  ret i1 %.10
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @array2d_like_convolve(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str, i32 noundef 3, i32 noundef %0) #20
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = tail call zeroext i1 @py_checkinstance(ptr noundef nonnull %i.b, i16 noundef signext 79) #20
  br i1 %i.c, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.d, i16 noundef signext 3) #20
  br i1 %i.e, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @py_touserdata(ptr noundef nonnull %1) #20 ; 8 uses
  %i.g = tail call ptr @py_touserdata(ptr noundef nonnull %i.b) #20 ; 5 uses
  %i.h = tail call i64 @py_toint(ptr noundef nonnull %i.d) #20
  %i.i = load i32, ptr %i.g, align 8, !tbaa !33   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %.not96 = icmp eq i32 %i.i, %i.k
  br i1 %.not96, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.47) #20
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.m = and i32 %i.i, 1
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.48) #20
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %.neg138 = sdiv i32 %i.i, -2                    ; 2 uses
  %i.p = tail call ptr (...) @py_pushtmp() #20    ; 2 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30   ; 2 uses
  %i.t = mul nsw i32 %i.s, %i.q                   ; 2 uses
  %i.u = tail call ptr @py_newobject(ptr noundef %i.p, i16 noundef signext 81, i32 noundef %i.t, i32 noundef 40) #20 ; 8 uses
  store i32 %i.q, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.s, ptr %i.v, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.t, ptr %i.w, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @c11_array2d__get, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @c11_array2d__set, ptr %i.y, align 8, !tbaa !17
  %i.z = tail call ptr @py_getslot(ptr noundef %i.p, i32 noundef 0) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !18
  %i.ab = load i32, ptr %i.r, align 4, !tbaa !30
  %.not99.not135 = icmp sgt i32 %i.ab, 0
  br i1 %.not99.not135, label %.preheader115.lr.ph, label %.critedge104

.preheader115.lr.ph:                              ; preds = %bb.i
  %.not101.not121 = icmp sgt i32 %i.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext = shl i64 %i.h, 32
  %i.ad = ashr exact i64 %sext, 32                ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader115, label %.critedge104

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.critedge102
  %i.ah = phi i32 [ %i.bz, %.critedge102 ], [ %i.af, %.preheader115.lr.ph ] ; 2 uses
  %.077136 = phi i32 [ %i.ca, %.critedge102 ], [ 0, %.preheader115.lr.ph ] ; 4 uses
  %.not100133 = icmp sgt i32 %i.ah, 0
  br i1 %.not100133, label %.preheader114.lr.ph, label %.critedge102

.preheader114.lr.ph:                              ; preds = %.preheader115
  %i.ai = add i32 %.077136, %.neg138
  br i1 %.not101.not121, label %.preheader114.us, label %.preheader114

.preheader114.us:                                 ; preds = %.preheader114.lr.ph, %..thread111_crit_edge.split.us.us
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %..thread111_crit_edge.split.us.us ], [ 0, %.preheader114.lr.ph ] ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv148 to i32
  %i.ak = add i32 %.neg138, %i.aj
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader114.us
  %.073123.us.us = phi i32 [ 0, %.preheader114.us ], [ %2, %._crit_edge.us.us ] ; 4 uses
  %.074122.us.us = phi i64 [ 0, %.preheader114.us ], [ %.us-phi.us.us, %._crit_edge.us.us ] ; 2 uses
  %i.al = add i32 %i.ai, %.073123.us.us
  %.fr = freeze i32 %i.al                         ; 3 uses
  %i.am = icmp slt i32 %.fr, 0
  br i1 %i.am, label %.lr.ph.split.us.us.us, label %.lr.ph.split.us131.us

.lr.ph.split.us131.us:                            ; preds = %.preheader.us.us, %bb.n
  %.072120.us126.us = phi i32 [ %i.bb, %bb.n ], [ 0, %.preheader.us.us ] ; 3 uses
  %.175119.us127.us = phi i64 [ %i.ba, %bb.n ], [ %.074122.us.us, %.preheader.us.us ]
  %i.an = add i32 %i.ak, %.072120.us126.us        ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us131.us
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !33
  %.not139 = icmp slt i32 %i.an, %i.ap
  br i1 %.not139, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !30
  %.not97.us.us = icmp slt i32 %.fr, %i.aq
  br i1 %.not97.us.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.as = tail call ptr %i.ar(ptr noundef nonnull %i.f, i32 noundef %i.an, i32 noundef %.fr) #20 ; 2 uses
  %i.at = tail call zeroext i1 @py_checktype(ptr noundef %i.as, i16 noundef signext 3) #20
  br i1 %i.at, label %.thread.us.us, label %.critedge

.thread.us.us:                                    ; preds = %bb.l
  %i.au = tail call i64 @py_toint(ptr noundef %i.as) #20
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us131.us, %bb.j, %bb.k, %.thread.us.us
  %.1.us.us = phi i64 [ %i.au, %.thread.us.us ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ], [ %i.ad, %.lr.ph.split.us131.us ]
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.aw = tail call ptr %i.av(ptr noundef nonnull %i.g, i32 noundef %.072120.us126.us, i32 noundef %.073123.us.us) #20 ; 2 uses
  %i.ax = tail call zeroext i1 @py_checktype(ptr noundef %i.aw, i16 noundef signext 3) #20
  br i1 %i.ax, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call i64 @py_toint(ptr noundef %i.aw) #20
  %i.az = mul nsw i64 %i.ay, %.1.us.us
  %i.ba = add nsw i64 %i.az, %.175119.us127.us    ; 2 uses
  %i.bb = add nuw nsw i32 %.072120.us126.us, 1    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.i
  br i1 %exitcond.not, label %._crit_edge.us.us, label %.lr.ph.split.us131.us, !llvm.loop !137

._crit_edge.us.us:                                ; preds = %bb.n, %bb.o
  %.us-phi.us.us = phi i64 [ %i.bh, %bb.o ], [ %i.ba, %bb.n ] ; 2 uses
  %2 = add nuw nsw i32 %.073123.us.us, 1          ; 2 uses
  %exitcond147.not = icmp eq i32 %2, %i.i
  br i1 %exitcond147.not, label %..thread111_crit_edge.split.us.us, label %.preheader.us.us, !llvm.loop !138

.lr.ph.split.us.us.us:                            ; preds = %.preheader.us.us, %bb.o
  %.072120.us.us.us = phi i32 [ %i.bi, %bb.o ], [ 0, %.preheader.us.us ] ; 2 uses
  %.175119.us.us.us = phi i64 [ %i.bh, %bb.o ], [ %.074122.us.us, %.preheader.us.us ]
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.bd = tail call ptr %i.bc(ptr noundef nonnull %i.g, i32 noundef %.072120.us.us.us, i32 noundef %.073123.us.us) #20 ; 2 uses
  %i.be = tail call zeroext i1 @py_checktype(ptr noundef %i.bd, i16 noundef signext 3) #20
  br i1 %i.be, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph.split.us.us.us
  %i.bf = tail call i64 @py_toint(ptr noundef %i.bd) #20
  %i.bg = mul nsw i64 %i.bf, %i.ad
  %i.bh = add nsw i64 %i.bg, %.175119.us.us.us    ; 2 uses
  %i.bi = add nuw nsw i32 %.072120.us.us.us, 1    ; 2 uses
  %exitcond146.not = icmp eq i32 %i.bi, %i.i
  br i1 %exitcond146.not, label %._crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !137

..thread111_crit_edge.split.us.us:                ; preds = %._crit_edge.us.us
  %i.bj = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bk = load i32, ptr %i.u, align 8, !tbaa !13
  %i.bl = mul nsw i32 %i.bk, %.077136
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv148
  tail call void @py_newint(ptr noundef %i.bo, i64 noundef %.us-phi.us.us) #20
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.bp = load i32, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %.not100.us = icmp slt i64 %indvars.iv.next149, %i.bq
  br i1 %.not100.us, label %.preheader114.us, label %.critedge102, !llvm.loop !139

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.preheader114
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader114 ], [ 0, %.preheader114.lr.ph ] ; 2 uses
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bs = load i32, ptr %i.u, align 8, !tbaa !13
  %i.bt = mul nsw i32 %i.bs, %.077136
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [24 x i8], ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv
  tail call void @py_newint(ptr noundef %i.bw, i64 noundef 0) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i32, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %.not100 = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %.not100, label %.preheader114, label %.critedge102, !llvm.loop !139

.critedge102:                                     ; preds = %.preheader114, %..thread111_crit_edge.split.us.us, %.preheader115
  %i.bz = phi i32 [ %i.bp, %..thread111_crit_edge.split.us.us ], [ %i.ah, %.preheader115 ], [ %i.bx, %.preheader114 ]
  %i.ca = add nuw nsw i32 %.077136, 1             ; 2 uses
  %i.cb = load i32, ptr %i.r, align 4, !tbaa !30
  %.not99.not = icmp slt i32 %i.ca, %i.cb
  br i1 %.not99.not, label %.preheader115, label %.critedge104, !llvm.loop !140

.critedge104:                                     ; preds = %.critedge102, %.preheader115.lr.ph, %bb.i
  %i.cc = tail call ptr (...) @py_retval() #20
  %i.cd = tail call ptr @py_peek(i32 noundef -1) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !tbaa.struct !25
  tail call void (...) @py_pop() #20
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.l, %.lr.ph.split.us.us.us, %bb.f, %.critedge104, %bb.h, %bb.d, %bb.c, %bb.b
  %.15 = phi i1 [ %i.a, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %i.l, %bb.f ], [ %i.o, %bb.h ], [ true, %.critedge104 ], [ false, %.lr.ph.split.us.us.us ], [ false, %bb.l ], [ false, %bb.m ]
  ret i1 %.15
}

declare zeroext i1 @py_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @py_printexc(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
declare i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare void @py_newint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i64 @py_tovec2i(ptr noundef) local_unnamed_addr #2

declare i64 @py_toint(ptr noundef) local_unnamed_addr #2

declare void @py_newbool(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @py_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @py_str(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__dtor(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__write_sv(ptr noundef, ptr, i32) local_unnamed_addr #2

declare { ptr, i32 } @py_tosv(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__write_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @c11_sbuf__py_submit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @py_checkinstance(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @py_tocolor32(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__write_cstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @c11_color32_premult(ptr noundef) local_unnamed_addr #2

declare void @pk_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @py_tobool(ptr noundef) local_unnamed_addr #2

declare ptr @py_pushtmp(...) local_unnamed_addr #2

declare zeroext i1 @py_call(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @py_peek(i32 noundef) local_unnamed_addr #2

declare void @py_pop(...) local_unnamed_addr #2

declare void @py_newnone(ptr noundef) local_unnamed_addr #2

declare void @py_push(ptr noundef) local_unnamed_addr #2

declare void @py_pushnil(...) local_unnamed_addr #2

declare zeroext i1 @py_vectorcall(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare void @py_newlistn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @py_list_getitem(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @py_list_setitem(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @_array2d_like_broadcasted_zip_with(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef %0) #20
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #20 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = tail call zeroext i1 @py_isinstance(ptr noundef nonnull %i.c, i16 noundef signext 79) #20
  br i1 %i.d, label %bb.d, label %_array2d_like_check_same_shape.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @py_touserdata(ptr noundef nonnull %i.c) #20 ; 4 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 4
  %.val51 = load i32, ptr %i.f, align 4, !tbaa !30 ; 2 uses
  %.val52 = load i32, ptr %i.e, align 8, !tbaa !33 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 4
  %.val53 = load i32, ptr %i.g, align 4, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq i32 %.val, %.val52
  %.not9.i.i = icmp eq i32 %.val51, %.val53
  %or.cond.i.i = and i1 %.not.i.i, %.not9.i.i
  br i1 %or.cond.i.i, label %_array2d_like_check_same_shape.exit.thread, label %_array2d_like_check_same_shape.exit

_array2d_like_check_same_shape.exit:              ; preds = %bb.d
  %i.h = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.37, i32 noundef %.val, i32 noundef %.val51, i32 noundef %.val52, i32 noundef %.val53) #20
  br i1 %i.h, label %_array2d_like_check_same_shape.exit.thread, label %.critedge

_array2d_like_check_same_shape.exit.thread:       ; preds = %bb.d, %bb.c, %_array2d_like_check_same_shape.exit
  %.040 = phi ptr [ %i.e, %_array2d_like_check_same_shape.exit ], [ null, %bb.c ], [ %i.e, %bb.d ] ; 3 uses
  %i.i = tail call ptr (...) @py_pushtmp() #20    ; 2 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30   ; 2 uses
  %i.m = mul nsw i32 %i.l, %i.j                   ; 2 uses
  %i.n = tail call ptr @py_newobject(ptr noundef %i.i, i16 noundef signext 81, i32 noundef %i.m, i32 noundef 40) #20 ; 8 uses
  store i32 %i.j, ptr %i.n, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.l, ptr %i.o, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.m, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr @c11_array2d__get, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @c11_array2d__set, ptr %i.r, align 8, !tbaa !17
  %i.s = tail call ptr @py_getslot(ptr noundef %i.i, i32 noundef 0) #20
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !18
  %i.u = load i32, ptr %i.k, align 4, !tbaa !30
  %.not47.not57 = icmp sgt i32 %i.u, 0
  br i1 %.not47.not57, label %.preheader.lr.ph, label %.critedge50

.preheader.lr.ph:                                 ; preds = %_array2d_like_check_same_shape.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not45 = icmp eq ptr %.040, null
  %i.w = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.x = load i32, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader, label %.critedge50

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge48
  %i.z = phi i32 [ %i.ba, %.critedge48 ], [ %i.x, %.preheader.lr.ph ] ; 2 uses
  %.03858 = phi i32 [ %i.bb, %.critedge48 ], [ 0, %.preheader.lr.ph ] ; 6 uses
  %.not4655 = icmp sgt i32 %i.z, 0
  br i1 %.not4655, label %.lr.ph, label %.critedge48

.lr.ph:                                           ; preds = %.preheader
  br i1 %.not45, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.03756.us = phi i32 [ %i.ak, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.ab = tail call ptr %i.aa(ptr noundef nonnull %i.b, i32 noundef %.03756.us, i32 noundef %.03858) #20
  %i.ac = tail call zeroext i1 @py_binaryop(ptr noundef %i.ab, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef %3) #20
  br i1 %i.ac, label %bb.e, label %.critedge
end_hunk_0
