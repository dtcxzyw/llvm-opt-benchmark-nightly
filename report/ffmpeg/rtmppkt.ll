Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rtmppkt?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
begin_hunk_0_@amf_tag_skip:bb.a
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bytestream2_get_be64.exit, label %bytestream2_get_byte.exit.thread

bb.w:                                             ; preds = %bytestream2_get_byte.exit42
  br label %bytestream2_get_be64.exit

bytestream2_get_be64.exit:                        ; preds = %bytestream2_get_byte.exit, %bb.v, %bb.u, %bytestream2_get_byte.exit.thread.us, %.critedge.thread.us, %bb.r, %bytestream2_get_byte.exit.thread.us.preheader, %bb.s, %bb.t, %bb.i, %bb.h, %bb.f, %bb.e, %bytestream2_get_byte.exit42, %bytestream2_get_byte.exit42, %bb.a, %bb.w, %bb.n, %bytestream2_get_be32.exit52, %bytestream2_get_be16.exit46, %bb.c
  %.4 = phi i32 [ 0, %bytestream2_get_byte.exit42 ], [ -1163346256, %bb.c ], [ -1, %bb.w ], [ 0, %bytestream2_get_byte.exit42 ], [ 0, %bb.f ], [ 0, %bytestream2_get_be16.exit46 ], [ 0, %bytestream2_get_be32.exit52 ], [ -1, %bb.a ], [ 0, %bb.n ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bytestream2_get_byte.exit.thread.us.preheader ], [ -1, %bb.r ], [ -1, %.critedge.thread.us ], [ 0, %bytestream2_get_byte.exit.thread.us ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bytestream2_get_byte.exit ]
  ret i32 %.4
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ff_amf_get_field_value(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.GetByteContext, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %.not = icmp ult ptr %0, %1
  br i1 %.not, label %bb.b, label %amf_get_field_value2.exit

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp ne ptr %0, null
  %i.e = and i64 %i.c, 2147483648
  %i.f = icmp eq i64 %i.e, 0
  %or.cond.i = and i1 %i.d, %i.f
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 141) #14
  tail call void @abort() #15
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  store ptr %0, ptr %5, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.g, align 8, !tbaa !28
  %i.h = and i64 %i.c, 2147483647
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !14
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #13 ; 2 uses
  %i.l = trunc i64 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bytestream2_init.exit
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !15     ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bytestream2_peek_byte.exit.thread.i, label %bytestream2_peek_byte.exit.i

bytestream2_peek_byte.exit.i:                     ; preds = %bb.d
  %i.s = load i8, ptr %i.n, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.s, 3
  br i1 %.not.i, label %.critedge.thread.i, label %bytestream2_peek_byte.exit.thread.i

bytestream2_peek_byte.exit.thread.i:              ; preds = %bytestream2_peek_byte.exit.i, %bb.d
  %i.t = trunc i64 %i.q to i32
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %amf_get_field_value2.exit

bb.e:                                             ; preds = %bytestream2_peek_byte.exit.thread.i
  %i.v = call fastcc i32 @amf_tag_skip(ptr noundef nonnull %5, i32 noundef 0)
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.d, label %amf_get_field_value2.exit, !llvm.loop !34

.critedge.thread.i:                               ; preds = %bytestream2_peek_byte.exit.i
  %i.x = trunc i64 %i.q to i32
  %i.y = icmp slt i32 %i.x, 3
  br i1 %i.y, label %amf_get_field_value2.exit, label %bytestream2_get_byte.exit58.i

bytestream2_get_byte.exit58.i:                    ; preds = %.critedge.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.aa = and i64 %i.k, 4294967295
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %bytestream2_get_byte.exit58.i
  %i.ab = phi ptr [ %i.ch, %bb.r ], [ %i.z, %bytestream2_get_byte.exit58.i ] ; 3 uses
  %i.ac = phi ptr [ %i.cg, %bb.r ], [ %i.m, %bytestream2_get_byte.exit58.i ] ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 8 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp slt i64 %i.af, 2
  br i1 %i.ag, label %amf_get_field_value2.exit, label %bytestream2_get_be16.exit62.i

bytestream2_get_be16.exit62.i:                    ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ai = load i16, ptr %i.ab, align 1, !tbaa !12 ; 2 uses
  %i.aj = tail call i16 @llvm.bswap.i16(i16 %i.ai) ; 2 uses
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  %.not48.i = icmp eq i16 %i.ai, 0
  br i1 %.not48.i, label %amf_get_field_value2.exit, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_be16.exit62.i
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ad, %i.al                    ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %.not49.i = icmp slt i32 %i.ak, %i.an
  br i1 %.not49.i, label %bb.h, label %amf_get_field_value2.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = zext i16 %i.aj to i64                   ; 2 uses
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.am, i64 %i.ao)
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 %..i.i ; 6 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !15
  %i.aq = icmp eq i32 %i.ak, %i.l
  br i1 %i.aq, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nsw i64 0, %i.ao
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.as, ptr nonnull readonly %2, i64 %i.aa)
  %.not50.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not50.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.ad, %i.at
  %i.av = icmp slt i64 %i.au, 1
  br i1 %i.av, label %bytestream2_get_byte.exit56.thread.i, label %bytestream2_get_byte.exit56.i

bytestream2_get_byte.exit56.i:                    ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 6 uses
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !12
  switch i8 %i.ax, label %amf_get_field_value2.exit [
    i8 0, label %bytestream2_get_byte.exit56._crit_edge.i
    i8 1, label %bb.l
    i8 2, label %bb.n
  ]

bytestream2_get_byte.exit56._crit_edge.i:         ; preds = %bytestream2_get_byte.exit56.i
  %.pre.i = ptrtoint ptr %i.aw to i64
  br label %bytestream2_get_byte.exit56.thread.i

bytestream2_get_byte.exit56.thread.i:             ; preds = %bytestream2_get_byte.exit56._crit_edge.i, %bb.j
  %.pre-phi.i = phi i64 [ %.pre.i, %bytestream2_get_byte.exit56._crit_edge.i ], [ %i.ad, %bb.j ]
  %i.ay = phi ptr [ %i.aw, %bytestream2_get_byte.exit56._crit_edge.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.az = sext i32 %4 to i64
  %i.ba = sub i64 %i.ad, %.pre-phi.i
  %i.bb = icmp slt i64 %i.ba, 8
  br i1 %i.bb, label %bytestream2_get_be64.exit.i, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_byte.exit56.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %5, align 8, !tbaa !11
  %i.bd = load i64, ptr %i.ay, align 1, !tbaa !12
  %i.be = tail call noundef i64 @llvm.bswap.i64(i64 %i.bd)
  %i.bf = bitcast i64 %i.be to double
  br label %bytestream2_get_be64.exit.i

bytestream2_get_be64.exit.i:                      ; preds = %bytestream2_get_byte.exit56.thread.i, %bb.k
  %.0.i59.i = phi double [ %i.bf, %bb.k ], [ 0.000000e+00, %bytestream2_get_byte.exit56.thread.i ]
  %i.bg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %3, i64 noundef %i.az, ptr noundef nonnull @.str.8, double noundef %.0.i59.i) #14 ; 0 uses
  br label %amf_get_field_value2.exit

bb.l:                                             ; preds = %bytestream2_get_byte.exit56.i
  %i.bh = sext i32 %4 to i64
  %i.bi = ptrtoint ptr %i.aw to i64
  %i.bj = sub i64 %i.ad, %i.bi
  %i.bk = icmp slt i64 %i.bj, 1
  br i1 %i.bk, label %bytestream2_get_byte.exit.thread.i, label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.l
  %i.bl = load i8, ptr %i.aw, align 1, !tbaa !12
  %.fr.i = freeze i8 %i.bl
  %.not52.i = icmp eq i8 %.fr.i, 0
  br i1 %.not52.i, label %bytestream2_get_byte.exit.thread.i, label %bb.m

bytestream2_get_byte.exit.thread.i:               ; preds = %bb.l, %bytestream2_get_byte.exit.i
  br label %bb.m

bb.m:                                             ; preds = %bytestream2_get_byte.exit.thread.i, %bytestream2_get_byte.exit.i
  %i.bm = phi ptr [ @.str.11, %bytestream2_get_byte.exit.thread.i ], [ @.str.10, %bytestream2_get_byte.exit.i ]
  %i.bn = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %3, i64 noundef %i.bh, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.bm) #14 ; 0 uses
  br label %amf_get_field_value2.exit

bb.n:                                             ; preds = %bytestream2_get_byte.exit56.i
  %i.bo = ptrtoint ptr %i.aw to i64
  %i.bp = sub i64 %i.ad, %i.bo
  %i.bq = icmp slt i64 %i.bp, 2
  br i1 %i.bq, label %bytestream2_get_be16.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bs = load i16, ptr %i.aw, align 1, !tbaa !12
  %i.bt = tail call i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = zext i16 %i.bt to i32
  br label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.i:                      ; preds = %bb.n, %bb.o
  %i.bv = phi ptr [ %i.br, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %.0.i60.i = phi i32 [ %i.bu, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.bw = icmp slt i32 %4, 1
  br i1 %i.bw, label %amf_get_field_value2.exit, label %bb.p

bb.p:                                             ; preds = %bytestream2_get_be16.exit.i
  %.not51.i = icmp samesign ugt i32 %4, %.0.i60.i
  %i.bx = add nsw i32 %4, -1
  %spec.select.i = select i1 %.not51.i, i32 %.0.i60.i, i32 %i.bx
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.ad, %i.by
  %i.ca = zext nneg i32 %spec.select.i to i64     ; 2 uses
  %i.cb = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.ca)
  %i.cc = and i64 %i.cb, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.bv, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !12
  br label %amf_get_field_value2.exit

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ce = call fastcc i32 @amf_tag_skip(ptr noundef nonnull %5, i32 noundef 0)
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %amf_get_field_value2.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp slt i32 %i.cl, 1
  br i1 %i.cm, label %amf_get_field_value2.exit, label %bb.f

amf_get_field_value2.exit:                        ; preds = %bb.e, %bytestream2_peek_byte.exit.thread.i, %bb.r, %bb.q, %bb.g, %bytestream2_get_be16.exit62.i, %bb.f, %bb.p, %bytestream2_get_be16.exit.i, %bb.m, %bytestream2_get_be64.exit.i, %bytestream2_get_byte.exit56.i, %.critedge.thread.i, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bytestream2_get_be16.exit.i ], [ -1, %.critedge.thread.i ], [ 0, %bb.p ], [ -1, %bb.r ], [ -1, %bytestream2_get_byte.exit56.i ], [ 0, %bytestream2_get_be64.exit.i ], [ 0, %bb.m ], [ -1, %bb.f ], [ -1, %bytestream2_get_be16.exit62.i ], [ -1, %bb.g ], [ -1, %bb.q ], [ -1, %bytestream2_peek_byte.exit.thread.i ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ff_amf_match_string(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp slt i32 %1, 1
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !12
  switch i8 %i.e, label %bb.i [
    i8 12, label %bb.c
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 5
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.i = load i32, ptr %i.d, align 1, !tbaa !12
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %1, 3
  br i1 %i.k, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %1, -3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i16, ptr %i.d, align 1, !tbaa !12
  %i.o = tail call i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.023 = phi ptr [ %i.h, %bb.d ], [ %i.m, %bb.f ]
  %.015 = phi i32 [ %i.g, %bb.d ], [ %i.l, %bb.f ]
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.p, %bb.f ]  ; 2 uses
  %i.q = icmp sle i32 %.0, %.015
  %.not = icmp eq i32 %.0, %i.b
  %or.cond = select i1 %i.q, i1 %.not, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %sext = shl i64 %i.a, 32
  %i.r = ashr exact i64 %sext, 32
  %bcmp = tail call i32 @bcmp(ptr nonnull %.023, ptr nonnull %2, i64 %i.r)
  %.not20 = icmp eq i32 %bcmp, 0
  %i.s = zext i1 %.not20 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %bb.h
  %.014 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.g ], [ %i.s, %bb.h ]
  ret i32 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @ffurl_read2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @ffurl_read_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @ffurl_write2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"GetByteContext", !10, i64 0, !10, i64 8, !10, i64 16}
!14 = !{!13, !10, i64 8}
!15 = !{!13, !10, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"p1 _ZTS10RTMPPacket", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"RTMPPacket", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40}
!20 = !{!19, !6, i64 32}
!21 = !{!19, !6, i64 4}
!22 = !{!19, !6, i64 16}
!23 = !{!19, !6, i64 12}
!24 = !{!19, !6, i64 8}
!25 = !{!19, !10, i64 24}
!26 = !{!19, !6, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!13, !10, i64 16}
!29 = !{!"double", !5, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!19, !6, i64 40}
!32 = !{!19, !6, i64 36}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !27}
end_hunk_0
