Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/nghttp2_http?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nghttp2_http_on_header:bb.a
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !35 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !31
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !32
  %i.os = tail call fastcc i64 @parse_uint(ptr noundef %i.op, i64 noundef %i.or) ; 2 uses
  store i64 %i.os, ptr %i.ok, align 8, !tbaa !20
  %i.ot = icmp eq i64 %i.os, -1
  br i1 %i.ot, label %http_response_on_header.exit, label %memieq.exit58.i

bb.cy:                                            ; preds = %bb.cl
  %i.ou = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !35 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !32
  %i.oy = icmp eq i64 %i.ox, 8
  br i1 %i.oy, label %bb.cz, label %http_response_on_header.exit

bb.cz:                                            ; preds = %bb.cy
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !31 ; 8 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !12  ; 3 uses
  %i.pc = add i8 %i.pb, -65
  %or.cond.i10.i53.i = icmp ult i8 %i.pc, 26
  %i.pd = or disjoint i8 %i.pb, 32
  %.in.i11.i54.i = select i1 %or.cond.i10.i53.i, i8 %i.pd, i8 %i.pb
  %.not.i55.i = icmp eq i8 %.in.i11.i54.i, 116
  br i1 %.not.i55.i, label %bb.da, label %http_response_on_header.exit

bb.da:                                            ; preds = %bb.cz
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !12  ; 3 uses
  %i.pg = add i8 %i.pf, -65
  %or.cond.i10.i53.1.i = icmp ult i8 %i.pg, 26
  %i.ph = or disjoint i8 %i.pf, 32
  %.in.i11.i54.1.i = select i1 %or.cond.i10.i53.1.i, i8 %i.ph, i8 %i.pf
  %.not.i55.1.i = icmp eq i8 %.in.i11.i54.1.i, 114
  br i1 %.not.i55.1.i, label %bb.db, label %http_response_on_header.exit

bb.db:                                            ; preds = %bb.da
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 2
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !12  ; 3 uses
  %i.pk = add i8 %i.pj, -65
  %or.cond.i10.i53.2.i = icmp ult i8 %i.pk, 26
  %i.pl = or disjoint i8 %i.pj, 32
  %.in.i11.i54.2.i = select i1 %or.cond.i10.i53.2.i, i8 %i.pl, i8 %i.pj
  %.not.i55.2.i = icmp eq i8 %.in.i11.i54.2.i, 97
  br i1 %.not.i55.2.i, label %bb.dc, label %http_response_on_header.exit

bb.dc:                                            ; preds = %bb.db
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pa, i64 3
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !12  ; 3 uses
  %i.po = add i8 %i.pn, -65
  %or.cond.i10.i53.3.i = icmp ult i8 %i.po, 26
  %i.pp = or disjoint i8 %i.pn, 32
  %.in.i11.i54.3.i = select i1 %or.cond.i10.i53.3.i, i8 %i.pp, i8 %i.pn
  %.not.i55.3.i = icmp eq i8 %.in.i11.i54.3.i, 105
  br i1 %.not.i55.3.i, label %bb.dd, label %http_response_on_header.exit

bb.dd:                                            ; preds = %bb.dc
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !12  ; 3 uses
  %i.ps = add i8 %i.pr, -65
  %or.cond.i10.i53.4.i = icmp ult i8 %i.ps, 26
  %i.pt = or disjoint i8 %i.pr, 32
  %.in.i11.i54.4.i = select i1 %or.cond.i10.i53.4.i, i8 %i.pt, i8 %i.pr
  %.not.i55.4.i = icmp eq i8 %.in.i11.i54.4.i, 108
  br i1 %.not.i55.4.i, label %bb.de, label %http_response_on_header.exit

bb.de:                                            ; preds = %bb.dd
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pa, i64 5
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !12  ; 3 uses
  %i.pw = add i8 %i.pv, -65
  %or.cond.i10.i53.5.i = icmp ult i8 %i.pw, 26
  %i.px = or disjoint i8 %i.pv, 32
  %.in.i11.i54.5.i = select i1 %or.cond.i10.i53.5.i, i8 %i.px, i8 %i.pv
  %.not.i55.5.i = icmp eq i8 %.in.i11.i54.5.i, 101
  br i1 %.not.i55.5.i, label %bb.df, label %http_response_on_header.exit

bb.df:                                            ; preds = %bb.de
  %i.py = getelementptr inbounds nuw i8, ptr %i.pa, i64 6
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !12  ; 3 uses
  %i.qa = add i8 %i.pz, -65
  %or.cond.i10.i53.6.i = icmp ult i8 %i.qa, 26
  %i.qb = or disjoint i8 %i.pz, 32
  %.in.i11.i54.6.i = select i1 %or.cond.i10.i53.6.i, i8 %i.qb, i8 %i.pz
  %.not.i55.6.i = icmp eq i8 %.in.i11.i54.6.i, 114
  br i1 %.not.i55.6.i, label %bb.dg, label %http_response_on_header.exit

bb.dg:                                            ; preds = %bb.df
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pa, i64 7
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !12  ; 3 uses
  %i.qe = add i8 %i.qd, -65
  %or.cond.i10.i53.7.i = icmp ult i8 %i.qe, 26
  %i.qf = or disjoint i8 %i.qd, 32
  %.in.i11.i54.7.i = select i1 %or.cond.i10.i53.7.i, i8 %i.qf, i8 %i.qd
  %.not.i55.7.i = icmp eq i8 %.in.i11.i54.7.i, 115
  br i1 %.not.i55.7.i, label %memieq.exit58.i, label %http_response_on_header.exit

bb.dh:                                            ; preds = %bb.cl
  br i1 %i.mh, label %http_response_on_header.exit, label %memieq.exit58.i

memieq.exit58.i:                                  ; preds = %bb.dh, %bb.dg, %bb.cx, %parse_uint.exit.i
  %i.qg = load i8, ptr %i.mf, align 1, !tbaa !12
  %.not47.i = icmp eq i8 %i.qg, 58
  br i1 %.not47.i, label %http_response_on_header.exit, label %bb.di

bb.di:                                            ; preds = %memieq.exit58.i
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !19
  %i.qj = or i32 %i.qi, 64
  store i32 %i.qj, ptr %i.qh, align 8, !tbaa !19
  br label %http_response_on_header.exit

http_response_on_header.exit:                     ; preds = %bb.e, %bb.di, %memieq.exit58.i, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.ct, %memieq.exit.i73, %bb.cs, %bb.cr, %bb.cq, %parse_uint.exit.thread.i, %parse_uint.exit.i, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.ck, %bb.cj, %check_authority.exit.thread, %._crit_edge, %bb.c, %http_request_on_header.exit, %bb.z
  %.3 = phi i32 [ -531, %bb.c ], [ -105, %bb.z ], [ %.0.i68, %http_request_on_header.exit ], [ -531, %check_authority.exit.thread ], [ -105, %._crit_edge ], [ -531, %bb.da ], [ -531, %bb.cl ], [ -531, %bb.cy ], [ -531, %bb.dh ], [ -531, %parse_uint.exit.thread.i ], [ -531, %bb.co ], [ -531, %bb.cj ], [ -531, %bb.cz ], [ -106, %memieq.exit.i73 ], [ -531, %bb.cq ], [ -531, %bb.cr ], [ -531, %bb.ct ], [ -106, %bb.cv ], [ -531, %bb.cw ], [ -531, %bb.cx ], [ -531, %bb.ck ], [ -531, %parse_uint.exit.i ], [ -531, %bb.cm ], [ -531, %bb.cl ], [ -531, %bb.cl ], [ -531, %bb.cl ], [ -531, %bb.cl ], [ -531, %bb.cs ], [ 0, %bb.di ], [ 0, %memieq.exit58.i ], [ -531, %bb.cn ], [ -531, %bb.dg ], [ -531, %bb.df ], [ -531, %bb.de ], [ -531, %bb.dd ], [ -531, %bb.dc ], [ -531, %bb.db ], [ -531, %bb.e ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @nghttp2_check_header_name(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @nghttp2_check_method(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @nghttp2_check_path(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @nghttp2_check_header_value(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @nghttp2_check_header_value_rfc9113(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @nghttp2_http_on_request_headers(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 9 uses
  %i.c = and i32 %i.b, 32768
  %i.d = and i32 %i.b, 32896
  %or.cond.not = icmp eq i32 %i.d, 128
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 11
  %or.cond20.not = icmp eq i32 %i.e, 1
  br i1 %or.cond20.not, label %bb.c, label %check_path.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.f, align 8, !tbaa !20
  br label %check_path.exit.thread26

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 14
  %.not16 = icmp ne i32 %i.g, 14
  %i.h = and i32 %i.b, 17
  %i.i = icmp eq i32 %i.h, 0
  %or.cond22 = or i1 %.not16, %i.i
  br i1 %or.cond22, label %check_path.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq i32 %i.c, 0
  %i.j = and i32 %i.b, 129
  %or.cond24.not = icmp eq i32 %i.j, 129
  %or.cond = or i1 %.not17, %or.cond24.not
  br i1 %or.cond, label %bb.f, label %check_path.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.b, 10240
  %or.cond.i = icmp ne i32 %i.k, 8192
  %i.l = and i32 %i.b, 4608
  %or.cond28.not = icmp eq i32 %i.l, 4608
  %or.cond29 = or i1 %or.cond.i, %or.cond28.not
  br i1 %or.cond29, label %check_path.exit.thread26, label %check_path.exit.thread

check_path.exit.thread26:                         ; preds = %bb.f, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i8, ptr %i.m, align 4, !tbaa !12
  %i.o = icmp eq i8 %i.n, 5
  br i1 %i.o, label %bb.g, label %check_path.exit.thread

bb.g:                                             ; preds = %check_path.exit.thread26
  %i.p = and i32 %i.b, 1920
  store i32 %i.p, ptr %i.a, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.q, align 8, !tbaa !20
  br label %check_path.exit.thread

check_path.exit.thread:                           ; preds = %bb.f, %bb.e, %check_path.exit.thread26, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.e ], [ 0, %bb.g ], [ 0, %check_path.exit.thread26 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @nghttp2_http_on_response_headers(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = and i32 %i.b, 32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !21
  %.fr15 = freeze i16 %i.f                        ; 3 uses
  %.off = add i16 %.fr15, -100
  %i.g = icmp ult i16 %.off, 100
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.b, 1920
  %i.i = or disjoint i32 %i.h, 16384
  store i32 %i.i, ptr %i.a, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.j, align 8, !tbaa !20
  store i16 -1, ptr %i.e, align 4, !tbaa !21
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = and i32 %i.b, -16385
  store i32 %i.k, ptr %i.a, align 8, !tbaa !19
  %i.l = and i32 %i.b, 256
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %1, label %expect_response_body.exit.thread

1:                                                ; preds = %bb.d
  %2 = sext i16 %.fr15 to i32
  %.off.i = add nsw i32 %2, -100
  %.not.i = icmp ult i32 %.off.i, 100
  br i1 %.not.i, label %expect_response_body.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %1
  switch i16 %.fr15, label %bb.e [
    i16 304, label %expect_response_body.exit.thread
    i16 204, label %expect_response_body.exit.thread
  ]

expect_response_body.exit.thread:                 ; preds = %switch.early.test, %switch.early.test, %1, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8, !tbaa !20
  br label %bb.g

bb.e:                                             ; preds = %switch.early.test
  %i.o = and i32 %i.b, 1152
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.p, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %expect_response_body.exit.thread, %bb.f, %bb.e, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %expect_response_body.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 1) i32 @nghttp2_http_on_trailer_headers(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = and i8 %i.b, 1
  %sext = add nsw i8 %i.c, -1
  %. = sext i8 %sext to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 1) i32 @nghttp2_http_on_remote_end_stream(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = and i32 %i.b, 16384
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not5 = icmp eq i64 %i.e, -1
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %.not6 = icmp eq i64 %i.e, %i.g
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @nghttp2_http_on_data_chunk(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = add nsw i64 %i.b, %1                     ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = and i32 %i.e, 16384
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not7 = icmp ne i64 %i.h, -1
  %i.i = icmp sgt i64 %i.c, %i.h
  %or.cond = select i1 %.not7, i1 %i.i, i1 false
  %spec.select = sext i1 %or.cond to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @nghttp2_http_record_request_method(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !12
  switch i8 %i.b, label %.critedge [
    i8 1, label %bb.c
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink33 = phi i64 [ 24, %bb.b ], [ 40, %bb.a ]
  %.sink = phi i64 [ 32, %bb.b ], [ 48, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sink33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.023 = load i64, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %.024 = load ptr, ptr %i.c, align 8, !tbaa !12
  %.not = icmp eq i64 %.023, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.02230 = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.024, i64 %.02230 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !65   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = icmp eq i8 %i.k, 100
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.i, align 1
  %i.n = xor i32 1952804154, %i.m
  %i.o = getelementptr i8, ptr %i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 28520, %i.q
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66
  switch i64 %i.x, label %.critedge [
    i64 7, label %bb.g
    i64 4, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 1313754947, %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 1413694798, %i.ad
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge.sink.split, label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = icmp ne i32 1145128264, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.critedge.sink.split, label %.critedge

bb.i:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.ap = add nuw i64 %.02230, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %.023
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !62

.critedge.sink.split:                             ; preds = %bb.h, %bb.g
  %.sink37 = phi i32 [ 128, %bb.g ], [ 256, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !19
  %i.as = or i32 %i.ar, %.sink37
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !19
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.sink.split, %bb.c, %bb.f, %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -501, 1) i32 @nghttp2_http_parse_priority(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sfparse_parser, align 8     ; 4 uses
  %4 = alloca %struct.sfparse_vec, align 8        ; 5 uses
  %5 = alloca %struct.sfparse_value, align 8      ; 6 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !68
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @sfparse_parser_init(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.f, %bb.a
  %.sroa.5.0.ph.ph = phi i32 [ %i.h, %bb.f ], [ %.sroa.5.0.copyload, %bb.a ]
  %.sroa.0.0.ph.ph = phi i32 [ %.sroa.0.0.ph.ph41, %bb.f ], [ %.sroa.0.0.copyload, %bb.a ]
  br label %.outer.outer40
end_hunk_0
