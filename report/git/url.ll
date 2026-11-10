Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/url?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }

@sane_ctype = external local_unnamed_addr constant [256 x i8], align 16
@strbuf_slopbuf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@__const.str_end_url_with_slash.buf = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"git+ssh\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ssh+git\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@hexval_table = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @is_rfc3986_unreserved(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  %.fr13 = freeze i8 %i.c
  %i.d = and i8 %.fr13, 6
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %switch.early.test, label %bb.c

switch.early.test:                                ; preds = %bb.a
  switch i8 %0, label %bb.b [
    i8 95, label %bb.c
    i8 46, label %bb.c
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %switch.early.test
  %i.e = icmp eq i8 %0, 126
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 1, %switch.early.test ], [ 1, %bb.a ], [ 1, %switch.early.test ], [ 1, %switch.early.test ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @is_casefolding_rfc3986_unreserved(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -97
  %or.cond = icmp ult i8 %i.a, 26
  %i.b = add i8 %0, -48
  %or.cond5 = icmp ult i8 %i.b, 10
  %or.cond22 = or i1 %or.cond, %or.cond5
  br i1 %or.cond22, label %bb.c, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i8 %0, label %bb.b [
    i8 95, label %bb.c
    i8 46, label %bb.c
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %switch.early.test
  %i.c = icmp eq i8 %0, 126
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.a, %bb.b
  %i.e = phi i32 [ 1, %switch.early.test ], [ 1, %bb.a ], [ %i.d, %bb.b ], [ 1, %switch.early.test ], [ 1, %switch.early.test ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @is_urlschemechar(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %switch.edge

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 255
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = and i8 %i.e, 6
  %i.g = icmp ne i8 %i.f, 0
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  %i.i = icmp ult i32 %1, 47
  %switch.cast = zext nneg i32 %1 to i47
  %switch.downshift = lshr i47 -26388279066624, %switch.cast
  %switch.masked = trunc i47 %switch.downshift to i1
  %i.j = select i1 %i.i, i1 %switch.masked, i1 false
  %.not = icmp eq i32 %0, 0
  %i.k = and i1 %.not, %i.j
  %narrow = or i1 %i.h, %i.k
  %i.l = zext i1 %narrow to i32
  ret i32 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @is_url(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %is_urlschemechar.exit, label %.critedge

is_urlschemechar.exit:                            ; preds = %bb.b
  %i.c = zext nneg i8 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = and i8 %i.e, 6
  %.not16 = icmp eq i8 %i.f, 0
  br i1 %.not16, label %.critedge, label %.preheader

.preheader:                                       ; preds = %is_urlschemechar.exit, %.preheader.backedge
  %.pn = phi ptr [ %.0, %.preheader.backedge ], [ %0, %is_urlschemechar.exit ] ; 3 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.g = load i8, ptr %.0, align 1, !tbaa !12     ; 4 uses
  %i.h = zext nneg i8 %i.g to i64
  switch i8 %i.g, label %bb.c [
    i8 58, label %bb.f
    i8 0, label %.critedge
  ]

bb.c:                                             ; preds = %.preheader
  %i.i = icmp sgt i8 %i.g, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = and i8 %i.k, 6
  %.not17 = icmp eq i8 %i.l, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i1 [ true, %bb.c ], [ %.not17, %bb.d ]
  switch i8 %i.g, label %is_urlschemechar.exit15 [
    i8 45, label %.preheader.backedge
    i8 43, label %.preheader.backedge
    i8 46, label %.preheader.backedge
  ]

.preheader.backedge:                              ; preds = %bb.e, %bb.e, %bb.e, %is_urlschemechar.exit15
  br label %.preheader

is_urlschemechar.exit15:                          ; preds = %bb.e
  br i1 %i.m, label %.critedge, label %.preheader.backedge

bb.f:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = icmp eq i8 %i.o, 47
  br i1 %i.p, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.pn, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = icmp eq i8 %i.r, 47
  %i.t = zext i1 %i.s to i32
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %is_urlschemechar.exit15, %bb.b, %bb.f, %bb.g, %bb.a, %is_urlschemechar.exit
  %.08 = phi i32 [ 0, %bb.a ], [ %i.t, %bb.g ], [ 0, %is_urlschemechar.exit ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %is_urlschemechar.exit15 ], [ 0, %.preheader ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local ptr @url_decode(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.str_end_url_with_slash.buf, i64 24, i1 false)
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 58, i64 noundef %i.d) #8 ; 3 uses
  %i.f = icmp ult ptr %0, %i.e
  br i1 %i.f, label %bb.b, label %url_decode_mem.exit

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef %i.i) #9
  %.neg.i = sub i64 %i.h, %i.g
  %i.j = trunc i64 %.neg.i to i32
  %i.k = add i32 %i.j, %i.c
  store ptr %i.e, ptr %i.a, align 8, !tbaa !15
  br label %url_decode_mem.exit

url_decode_mem.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ %i.c, %bb.a ]
  %i.l = call fastcc ptr @url_decode_internal(ptr noundef nonnull %i.a, i32 noundef %.0.i, ptr noundef null, ptr noundef %1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define dso_local ptr @url_decode_mem(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.strbuf, align 8             ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.str_end_url_with_slash.buf, i64 24, i1 false)
  %i.b = sext i32 %1 to i64
  %i.c = tail call ptr @memchr(ptr noundef %0, i32 noundef 58, i64 noundef %i.b) #8 ; 3 uses
  %i.d = icmp ult ptr %0, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %i.g) #9
  %.neg = sub i64 %i.f, %i.e
  %i.h = trunc i64 %.neg to i32
  %i.i = add i32 %1, %i.h
  store ptr %i.c, ptr %i.a, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.b ], [ %1, %bb.a ]
  %i.j = call fastcc ptr @url_decode_internal(ptr noundef nonnull %i.a, i32 noundef %.0, ptr noundef null, ptr noundef %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret ptr %i.j
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @url_decode_internal(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2, ptr noundef nonnull %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not76 = icmp eq i32 %1, 0
  br i1 %.not76, label %.thread71, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not43 = icmp eq ptr %2, null
  %i.b = icmp ne i32 %4, 0
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %strbuf_addch.exit55
  %.03378 = phi ptr [ %i.a, %.lr.ph ], [ %i.ao, %strbuf_addch.exit55 ] ; 6 uses
  %.03577 = phi i32 [ %1, %.lr.ph ], [ %i.ap, %strbuf_addch.exit55 ] ; 2 uses
  %i.e = load i8, ptr %.03378, align 1, !tbaa !12 ; 7 uses
  %.not42 = icmp eq i8 %i.e, 0
  br i1 %.not42, label %.thread71, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not43, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext i8 %i.e to i32
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.f) #8
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.03378, i64 1
  br label %.thread71

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = icmp eq i8 %i.e, 37
  %or.cond = icmp ugt i32 %.03577, 2
  %or.cond45 = and i1 %or.cond, %i.i
  br i1 %or.cond45, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.03378, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @hexval_table, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12    ; 2 uses
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = icmp ugt i8 %i.n, 15
  br i1 %i.p, label %hex2chr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i32 %i.o, 4
  %i.r = getelementptr inbounds nuw i8, ptr %.03378, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @hexval_table, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %i.w = sext i8 %i.v to i32
  %i.x = or i32 %i.q, %i.w
  br label %hex2chr.exit

hex2chr.exit:                                     ; preds = %bb.g, %bb.h
  %i.y = phi i32 [ %i.x, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %.thread69, label %bb.i

bb.i:                                             ; preds = %hex2chr.exit
  %i.aa = load i64, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.i
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %.neg.i = add i64 %i.ab, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %bb.j

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.i
  tail call void @strbuf_grow(ptr noundef nonnull %3, i64 noundef 1) #9
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %bb.j

bb.j:                                             ; preds = %strbuf_avail.exit.thread.i, %strbuf_avail.exit.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.ac = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.ab, %strbuf_avail.exit.i ]
  %i.ad = trunc i32 %i.y to i8
  br label %strbuf_addch.exit55

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp eq i8 %i.e, 43
  %or.cond4 = and i1 %i.b, %i.ae
  br i1 %or.cond4, label %bb.l, label %.thread69

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not.i.i46 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i46, label %strbuf_addch.exit55.sink.split, label %strbuf_avail.exit.i47

strbuf_avail.exit.i47:                            ; preds = %bb.l
end_hunk_0
begin_hunk_1_@end_url_with_slash:bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %strbuf_complete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %.not6.i = icmp eq i8 %i.h, 47
  br i1 %.not6.i, label %strbuf_complete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %.neg.i.i = add i64 %i.c, 1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, %.neg.i.i
  %or.cond.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_addch.exit.i

strbuf_avail.exit.thread.i.i:                     ; preds = %bb.c
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #9
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i, 1
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %strbuf_addch.exit.i

strbuf_addch.exit.i:                              ; preds = %strbuf_avail.exit.thread.i.i, %bb.c
  %i.j = phi ptr [ %.pre.i, %strbuf_avail.exit.thread.i.i ], [ %i.e, %bb.c ]
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %strbuf_avail.exit.thread.i.i ], [ %.neg.i.i, %bb.c ]
  %i.k = phi i64 [ %.pre.i.i, %strbuf_avail.exit.thread.i.i ], [ %i.c, %bb.c ]
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 47, ptr %i.l, align 1, !tbaa !12
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.n = load i64, ptr %i.b, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !12
  br label %strbuf_complete.exit

strbuf_complete.exit:                             ; preds = %bb.a, %bb.b, %strbuf_addch.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @str_end_url_with_slash(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.str_end_url_with_slash.buf, i64 24, i1 false)
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %0, i64 noundef %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %end_url_with_slash.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %.not6.i.i = icmp eq i8 %i.h, 47
  br i1 %.not6.i.i, label %end_url_with_slash.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %2, align 8, !tbaa !18     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  %.neg.i.i.i = add i64 %i.c, 1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, %.neg.i.i.i
  %or.cond.i.i = or i1 %.not.i.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i, label %strbuf_avail.exit.thread.i.i.i, label %strbuf_addch.exit.i.i

strbuf_avail.exit.thread.i.i.i:                   ; preds = %bb.c
  call void @strbuf_grow(ptr noundef nonnull %2, i64 noundef 1) #9
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %.pre7.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %strbuf_addch.exit.i.i

strbuf_addch.exit.i.i:                            ; preds = %strbuf_avail.exit.thread.i.i.i, %bb.c
  %i.j = phi ptr [ %.pre.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %i.e, %bb.c ]
  %.pre-phi.i.i.i = phi i64 [ %.pre7.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %.neg.i.i.i, %bb.c ]
  %i.k = phi i64 [ %.pre.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %i.c, %bb.c ]
  store i64 %.pre-phi.i.i.i, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 47, ptr %i.l, align 1, !tbaa !12
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.n = load i64, ptr %i.b, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !12
  br label %end_url_with_slash.exit

end_url_with_slash.exit:                          ; preds = %bb.a, %bb.b, %strbuf_addch.exit.i.i
  %i.p = load ptr, ptr %1, align 8, !tbaa !15
  call void @free(ptr noundef %i.p) #9
  %i.q = call ptr @strbuf_detach(ptr noundef nonnull %2, ptr noundef null) #9
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @url_is_local_not_ssh(ptr nofree noundef readonly %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #8 ; 2 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %.not8 = icmp ne ptr %i.b, null
  %i.c = icmp ult ptr %i.b, %i.a
  %or.cond = and i1 %.not8, %i.c
  %narrow = select i1 %.not, i1 true, i1 %or.cond
  %i.d = zext i1 %narrow to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 5) i32 @url_get_scheme(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.2) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.3) #8
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.4) #8
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.5) #8
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.6) #8
  %.not8 = icmp eq i32 %i.e, 0
  %. = select i1 %.not8, i32 2, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.d ], [ %., %bb.e ], [ 3, %bb.c ], [ 4, %bb.b ], [ 3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"strbuf", !16, i64 0, !16, i64 8, !14, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!17, !14, i64 16}
end_hunk_1
