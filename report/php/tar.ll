inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 23
begin_hunk_0_@phar_tar_writeheaders_int:bb.a
  %.not136 = icmp eq ptr %i.ff, null
  br i1 %.not136, label %phar_entry_can_remove.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fg = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !54
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !85
  %i.fj = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.ff, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef %i.fh, ptr noundef %i.fi) #15 ; 0 uses
  br label %phar_entry_can_remove.exit.thread

vector.ph:                                        ; preds = %bb.n, %phar_tar_octal.exit154
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.fk, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 263
  store i16 12336, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 2 uses
  store i64 2314885530818453536, ptr %i.fm, align 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fy, %vector.body ]
  %vec.phi193 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fz, %vector.body ]
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %wide.load = load <4 x i8>, ptr %i.fn, align 1, !tbaa !12
  %wide.load194 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !12
  %i.fp = zext <4 x i8> %wide.load to <4 x i32>
  %i.fq = zext <4 x i8> %wide.load194 to <4 x i32>
  %i.fr = add <4 x i32> %vec.phi, %i.fp
  %i.fs = add <4 x i32> %vec.phi193, %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !12
  %wide.load194.1 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !12
  %i.fw = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.fx = zext <4 x i8> %wide.load194.1 to <4 x i32>
  %i.fy = add <4 x i32> %i.fr, %i.fw              ; 2 uses
  %i.fz = add <4 x i32> %i.fs, %i.fx              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ga = icmp eq i64 %index.next.1, 512
  br i1 %i.ga, label %phar_tar_checksum.exit, label %vector.body, !llvm.loop !86

phar_tar_checksum.exit:                           ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fz, %i.fy
  %i.gb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 9 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !87
  %i.gd = trunc i32 %i.gb to i8
  %i.ge = and i8 %i.gd, 7
  %i.gf = or disjoint i8 %i.ge, 48
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 154
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !12
  %i.gh = trunc i32 %i.gb to i8
  %i.gi = lshr i8 %i.gh, 3
  %i.gj = and i8 %i.gi, 7
  %i.gk = or disjoint i8 %i.gj, 48
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 153
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !12
  %i.gm = lshr i32 %i.gb, 6
  %i.gn = trunc i32 %i.gm to i8
  %i.go = and i8 %i.gn, 7
  %i.gp = or disjoint i8 %i.go, 48
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.gs = lshr i32 %i.gb, 9
  %i.gt = lshr i32 %i.gb, 12
  %i.gu = lshr i32 %i.gb, 15
  %i.gv = lshr i32 %i.gb, 18
  %i.gw = trunc i32 %i.gs to i8
  %i.gx = trunc i32 %i.gt to i8
  %i.gy = trunc i32 %i.gu to i8
  %i.gz = trunc i32 %i.gv to i8
  %i.ha = insertelement <4 x i8> poison, i8 %i.gz, i64 0
  %i.hb = insertelement <4 x i8> %i.ha, i8 %i.gy, i64 1
  %i.hc = insertelement <4 x i8> %i.hb, i8 %i.gx, i64 2
  %i.hd = insertelement <4 x i8> %i.hc, i8 %i.gw, i64 3
  %i.he = and <4 x i8> %i.hd, splat (i8 7)
  %i.hf = or disjoint <4 x i8> %i.he, splat (i8 48)
  store <4 x i8> %i.hf, ptr %i.gr, align 1, !tbaa !12
  %i.hg = icmp ult i32 %i.gb, 2097152
  br i1 %i.hg, label %phar_tar_octal.exit162, label %bb.q

bb.q:                                             ; preds = %phar_tar_checksum.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fm, i8 55, i64 7, i1 false), !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !78 ; 2 uses
  %.not135 = icmp eq ptr %i.hi, null
  br i1 %.not135, label %phar_entry_can_remove.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hj = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !54
  %i.hl = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.hi, i64 noundef 4096, ptr noundef nonnull @.str.56, ptr noundef %i.hk, ptr noundef nonnull %i.hm) #15 ; 0 uses
  br label %phar_entry_can_remove.exit.thread

phar_tar_octal.exit162:                           ; preds = %phar_tar_checksum.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !77
  %i.hq = call i64 @_php_stream_tell(ptr noundef %i.hp) #15
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !88
  %i.hs = load ptr, ptr %i.ho, align 8, !tbaa !77
  %i.ht = call i64 @_php_stream_write(ptr noundef %i.hs, ptr noundef nonnull %2, i64 noundef 512) #15
  %.not125 = icmp eq i64 %i.ht, 512
  br i1 %.not125, label %bb.u, label %bb.s

bb.s:                                             ; preds = %phar_tar_octal.exit162
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !78 ; 2 uses
  %.not134 = icmp eq ptr %i.hv, null
  br i1 %.not134, label %phar_entry_can_remove.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !54
  %i.hy = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.hv, i64 noundef 4096, ptr noundef nonnull @.str.57, ptr noundef %i.hx, ptr noundef nonnull %i.hz) #15 ; 0 uses
  br label %phar_entry_can_remove.exit.thread

bb.u:                                             ; preds = %phar_tar_octal.exit162
  %i.ib = load ptr, ptr %i.ho, align 8, !tbaa !77
  %i.ic = call i64 @_php_stream_tell(ptr noundef %i.ib) #15 ; 2 uses
  %i.id = load i32, ptr %0, align 8, !tbaa !55
  %.not126 = icmp eq i32 %i.id, 0
  br i1 %.not126, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !78
  %i.ig = call i32 @phar_open_entry_fp(ptr noundef nonnull %0, ptr noundef %i.if, i32 noundef 0) #15
  %i.ih = icmp eq i32 %i.ig, -1
  br i1 %i.ih, label %phar_entry_can_remove.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ii = call i32 @phar_seek_efp(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 0, i64 noundef 0, i32 noundef 0) #15
  %i.ij = icmp eq i32 %i.ii, -1
  br i1 %i.ij, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !78 ; 2 uses
  %.not133 = icmp eq ptr %i.ik, null
  br i1 %.not133, label %phar_entry_can_remove.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !54
  %i.in = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.ik, i64 noundef 4096, ptr noundef nonnull @.str.58, ptr noundef %i.im, ptr noundef nonnull %i.io) #15 ; 0 uses
  br label %phar_entry_can_remove.exit.thread

bb.z:                                             ; preds = %bb.w
  %i.iq = call ptr @phar_get_efp(ptr noundef nonnull %0, i32 noundef 0) #15
  %i.ir = load ptr, ptr %i.ho, align 8, !tbaa !77
  %i.is = load i32, ptr %0, align 8, !tbaa !55
  %i.it = zext i32 %i.is to i64
  %i.iu = call i32 @_php_stream_copy_to_stream_ex(ptr noundef %i.iq, ptr noundef %i.ir, i64 noundef %i.it, ptr noundef null) #15
  %.not127 = icmp eq i32 %i.iu, 0
  br i1 %.not127, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iv = load ptr, ptr %i.ie, align 8, !tbaa !78 ; 2 uses
  %.not132 = icmp eq ptr %i.iv, null
  br i1 %.not132, label %phar_entry_can_remove.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iw = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !54
  %i.iy = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.iv, i64 noundef 4096, ptr noundef nonnull @.str.59, ptr noundef %i.ix, ptr noundef nonnull %i.iz) #15 ; 0 uses
  br label %phar_entry_can_remove.exit.thread

bb.ac:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.jb = load ptr, ptr %i.ho, align 8, !tbaa !77
  %i.jc = load i32, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.jd = add i32 %i.jc, 511
  %i.je = and i32 %i.jd, -512
  %i.jf = sub i32 %i.je, %i.jc
  %i.jg = zext i32 %i.jf to i64
  %i.jh = call i64 @_php_stream_write(ptr noundef %i.jb, ptr noundef nonnull %i.a, i64 noundef %i.jg) #15 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.u
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !82
  %.not128 = icmp eq i32 %i.jj, 0                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 2 uses
  br i1 %.not128, label %._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i32 %.pre, label %._crit_edge [
    i32 0, label %3
    i32 1, label %bb.af
  ]

3:                                                ; preds = %bb.ae
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %4, align 8, !tbaa !79
  br label %.thread

bb.af:                                            ; preds = %bb.ae
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %5, align 1, !tbaa !80
  br label %.thread

.thread:                                          ; preds = %3, %bb.af
  %i.jk = load i16, ptr %i.b, align 2
  %i.jl = and i16 %i.jk, -3
  store i16 %i.jl, ptr %i.b, align 2
  br label %bb.al

._crit_edge:                                      ; preds = %bb.ad, %bb.ae
  %i.jm = load i16, ptr %i.b, align 2
  %i.jn = and i16 %i.jm, -3
  store i16 %i.jn, ptr %i.b, align 2
  %i.jo = icmp eq i32 %.pre, 2
  br i1 %i.jo, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %._crit_edge
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !71 ; 3 uses
  %i.jr = load ptr, ptr %i.l, align 8, !tbaa !59  ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 248
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !64
  %.not129 = icmp eq ptr %i.jq, %i.jt
  br i1 %.not129, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 256
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !81
  %.not130 = icmp eq ptr %i.jq, %i.jv
  br i1 %.not130, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not128, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jw = call i32 @_php_stream_free(ptr noundef %i.jq, i32 noundef 3) #15 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr null, ptr %i.jp, align 8, !tbaa !71
  br label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak, %bb.ah, %bb.ag, %._crit_edge
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.jx, align 8, !tbaa !70
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ic, ptr %i.jy, align 8, !tbaa !89
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ic, ptr %i.jz, align 8, !tbaa !90
  br label %phar_entry_can_remove.exit.thread

phar_entry_can_remove.exit.thread:                ; preds = %phar_entry_can_remove.exit, %bb.c, %bb.aa, %bb.ab, %bb.x, %bb.y, %bb.v, %bb.s, %bb.t, %bb.q, %bb.r, %bb.o, %bb.p, %bb.g, %bb.f, %bb.l, %.loopexit, %bb.a, %bb.al
  %.1 = phi i32 [ 0, %bb.al ], [ 2, %bb.aa ], [ 0, %bb.a ], [ 2, %bb.g ], [ %spec.select, %phar_entry_can_remove.exit ], [ 2, %bb.ab ], [ 2, %bb.o ], [ 2, %bb.q ], [ 2, %bb.s ], [ 2, %bb.v ], [ 2, %bb.x ], [ 2, %.loopexit ], [ 2, %bb.l ], [ 2, %bb.f ], [ 0, %bb.c ], [ 2, %bb.y ], [ 2, %bb.p ], [ 2, %bb.r ], [ 2, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.1
}

declare ptr @_zend_new_array_0() local_unnamed_addr #5

declare ptr @php_stream_filter_create(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @zend_array_destroy(ptr noundef) local_unnamed_addr #5

declare i32 @_php_stream_copy_to_stream_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_php_stream_filter_append(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @_php_stream_filter_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @php_stream_filter_remove(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #9

declare noalias ptr @_emalloc_40() local_unnamed_addr #5

declare noalias ptr @_emalloc_160() local_unnamed_addr #5

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @zend_hash_func(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @zend_hash_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @phar_parse_metadata_lazy(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @zend_hash_str_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @zend_hash_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @phar_metadata_tracker_copy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @phar_metadata_tracker_try_ensure_has_serialized_data(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @zend_strpprintf_unchecked(i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i32 @phar_open_entry_fp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @phar_seek_efp(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @phar_get_efp(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @add_assoc_long_ex(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #13

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS18_phar_archive_data", !19, i64 0}
!19 = !{!"any pointer", !10, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !19, i64 0}
!22 = !{!23, !28, i64 194}
!23 = !{!"_zend_phar_globals", !24, i64 0, !24, i64 56, !27, i64 112, !24, i64 120, !9, i64 176, !21, i64 184, !28, i64 192, !28, i64 193, !28, i64 194, !28, i64 195, !28, i64 196, !28, i64 197, !28, i64 198, !28, i64 199, !28, i64 200, !28, i64 201, !28, i64 202, !28, i64 203, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !19, i64 368, !19, i64 376, !21, i64 384, !9, i64 392, !28, i64 396, !21, i64 400, !9, i64 408, !21, i64 416, !9, i64 424, !21, i64 432, !9, i64 440, !18, i64 448, !24, i64 456}
!24 = !{!"_zend_array", !25, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !26, i64 40, !19, i64 48}
!25 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!26 = !{!"long", !10, i64 0}
!27 = !{!"p1 _ZTS14_phar_entry_fp", !19, i64 0}
!28 = !{!"_Bool", !10, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!32, !9, i64 232}
!32 = !{!"_phar_archive_data", !21, i64 0, !9, i64 8, !21, i64 16, !9, i64 24, !21, i64 32, !9, i64 40, !10, i64 44, !26, i64 56, !24, i64 64, !24, i64 120, !24, i64 176, !9, i64 232, !9, i64 236, !9, i64 240, !33, i64 248, !33, i64 256, !9, i64 264, !9, i64 268, !9, i64 272, !21, i64 280, !34, i64 288, !9, i64 312, !9, i64 316, !9, i64 316, !9, i64 316, !9, i64 316, !9, i64 316, !9, i64 316, !9, i64 316, !9, i64 316, !9, i64 317}
!33 = !{!"p1 _ZTS11_php_stream", !19, i64 0}
!34 = !{!"_phar_metadata_tracker", !35, i64 0, !36, i64 16}
!35 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!36 = !{!"p1 _ZTS12_zend_string", !19, i64 0}
!37 = distinct !{!37, !14, !15, !16}
!38 = distinct !{!38, !14, !15, !16}
!39 = distinct !{!39, !14, !16, !15}
!40 = distinct !{!40, !14, !15, !16}
!41 = distinct !{!41, !14}
!42 = !{!43, !10, i64 156}
!43 = !{!"_tar_header", !10, i64 0, !10, i64 100, !10, i64 108, !10, i64 116, !10, i64 124, !10, i64 136, !10, i64 148, !10, i64 156, !10, i64 157, !10, i64 257, !10, i64 263, !10, i64 265, !10, i64 297, !10, i64 329, !10, i64 337, !10, i64 345, !10, i64 500}
!44 = !{!32, !9, i64 268}
!45 = !{!26, !26, i64 0}
!46 = !{!32, !9, i64 272}
!47 = distinct !{!47, !14, !15, !16}
!48 = !{!25, !9, i64 0}
!49 = !{!50, !26, i64 8}
!50 = !{!"_zend_string", !25, i64 0, !26, i64 8, !26, i64 16, !10, i64 24}
!51 = !{!50, !26, i64 16}
!52 = distinct !{!52, !14}
!53 = !{!32, !9, i64 8}
!54 = !{!32, !21, i64 0}
!55 = !{!56, !9, i64 0}
!56 = !{!"_phar_entry_info", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !34, i64 24, !36, i64 48, !9, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !33, i64 88, !33, i64 96, !9, i64 104, !9, i64 108, !21, i64 112, !18, i64 120, !21, i64 128, !10, i64 136, !9, i64 140, !57, i64 144, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 147}
!57 = !{!"short", !10, i64 0}
!58 = !{!56, !36, i64 48}
!59 = !{!56, !18, i64 120}
!60 = !{!56, !36, i64 40}
!61 = !{!32, !21, i64 32}
!62 = !{!32, !9, i64 40}
!63 = !{!32, !21, i64 280}
!64 = !{!32, !33, i64 248}
!65 = !{!32, !21, i64 16}
!66 = !{!32, !9, i64 24}
!67 = !{!56, !9, i64 16}
!68 = !{!56, !9, i64 4}
!69 = !{!56, !10, i64 136}
!70 = !{!56, !9, i64 56}
!71 = !{!56, !33, i64 88}
!72 = !{!56, !9, i64 8}
!73 = !{!74, !33, i64 0}
!74 = !{!"_phar_pass_tar_info", !33, i64 0, !33, i64 8, !28, i64 16, !28, i64 17, !75, i64 24}
!75 = !{!"p2 omnipotent char", !76, i64 0}
!76 = !{!"any p2 pointer", !19, i64 0}
!77 = !{!74, !33, i64 8}
!78 = !{!74, !75, i64 24}
!79 = !{!74, !28, i64 16}
!80 = !{!74, !28, i64 17}
!81 = !{!32, !33, i64 256}
!82 = !{!56, !9, i64 104}
!83 = !{!56, !9, i64 108}
!84 = distinct !{!84, !14}
!85 = !{!56, !21, i64 128}
!86 = distinct !{!86, !14, !15, !16}
!87 = !{!56, !9, i64 12}
!88 = !{!56, !26, i64 80}
!89 = !{!56, !26, i64 64}
!90 = !{!56, !26, i64 72}
end_hunk_0
