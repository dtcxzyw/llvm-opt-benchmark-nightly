Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/crc?download=true
inline.NumInlined: 34
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4absl12lts_2026052612crc_internal5CRC3218ExtendByZeroesImplEPjmPKjS5_:bb.a
  %i.g = and i32 %i.f, 15                         ; 2 uses
  %.not36 = icmp eq i32 %i.g, 0
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i32 %i.g, %.03042
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 16, !tbaa !25
  store i64 %i.n, ptr %i.c, align 8, !tbaa !25
  store i64 %i.o, ptr %i.d, align 16, !tbaa !25
  %i.p = xor i64 %i.o, %i.n
  store i64 %i.p, ptr %i.e, align 8, !tbaa !25
  %i.q = and i32 %.03141, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25
  %i.u = lshr i32 %.03141, 2
  %i.v = and i32 %i.u, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = shl i64 %i.y, 2
  %i.aa = lshr i32 %.03141, 4
  %i.ab = and i32 %i.aa, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.af = shl i64 %i.ae, 4
  %i.ag = lshr i32 %.03141, 6
  %i.ah = and i32 %i.ag, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.al = shl i64 %i.ak, 6
  %i.am = xor i64 %i.t, %i.z
  %i.an = xor i64 %i.am, %i.af
  %i.ao = xor i64 %i.an, %i.al                    ; 2 uses
  %i.ap = lshr i32 %.03141, 8
  %i.aq = lshr i64 %i.ao, 8
  %i.ar = and i64 %i.ao, 255
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = zext i32 %i.at to i64
  %i.av = xor i64 %i.aq, %i.au
  %i.aw = and i32 %i.ap, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.ba = lshr i32 %.03141, 10
  %i.bb = and i32 %i.ba, 3
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.bf = shl i64 %i.be, 2
  %i.bg = lshr i32 %.03141, 12
  %i.bh = and i32 %i.bg, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bl = shl i64 %i.bk, 4
  %i.bm = lshr i32 %.03141, 14
  %i.bn = and i32 %i.bm, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.br = shl i64 %i.bq, 6
  %i.bs = xor i64 %i.az, %i.av
  %i.bt = xor i64 %i.bs, %i.bf
  %i.bu = xor i64 %i.bt, %i.bl
  %i.bv = xor i64 %i.bu, %i.br                    ; 2 uses
  %i.bw = lshr i32 %.03141, 16
  %i.bx = lshr i64 %i.bv, 8
  %i.by = and i64 %i.bv, 255
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !9
  %i.cb = zext i32 %i.ca to i64
  %i.cc = xor i64 %i.bx, %i.cb
  %i.cd = and i32 %i.bw, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.ch = lshr i32 %.03141, 18
  %i.ci = and i32 %i.ch, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !25
  %i.cm = shl i64 %i.cl, 2
  %i.cn = lshr i32 %.03141, 20
  %i.co = and i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25
  %i.cs = shl i64 %i.cr, 4
  %i.ct = lshr i32 %.03141, 22
  %i.cu = and i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !25
  %i.cy = shl i64 %i.cx, 6
  %i.cz = xor i64 %i.cg, %i.cc
  %i.da = xor i64 %i.cz, %i.cm
  %i.db = xor i64 %i.da, %i.cs
  %i.dc = xor i64 %i.db, %i.cy                    ; 2 uses
  %i.dd = lshr i32 %.03141, 24
  %i.de = lshr i64 %i.dc, 8
  %i.df = and i64 %i.dc, 255
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !9
  %i.di = zext i32 %i.dh to i64
  %i.dj = xor i64 %i.de, %i.di
  %i.dk = and i32 %i.dd, 3
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !25
  %i.do = lshr i32 %.03141, 26
  %i.dp = and i32 %i.do, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !25
  %i.dt = shl i64 %i.ds, 2
  %i.du = lshr i32 %.03141, 28
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !25
  %i.dz = shl i64 %i.dy, 4
  %i.ea = lshr i32 %.03141, 30
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !25
  %i.ee = shl i64 %i.ed, 6
  %i.ef = xor i64 %i.dn, %i.dj
  %i.eg = xor i64 %i.ef, %i.dt
  %i.eh = xor i64 %i.eg, %i.dz
  %i.ei = xor i64 %i.eh, %i.ee                    ; 2 uses
  %i.ej = lshr i64 %i.ei, 8
  %i.ek = and i64 %i.ei, 255
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = trunc i64 %i.ej to i32
  %i.eo = xor i32 %i.em, %i.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %i.eo, %bb.e ], [ %.03141, %bb.d ] ; 2 uses
  %i.ep = add nuw nsw i32 %.03042, 15
  %i.eq = lshr i64 %.03240, 4                     ; 2 uses
  %.not35 = icmp eq i64 %i.eq, 0
  br i1 %.not35, label %bb.c, label %bb.d, !llvm.loop !23

bb.g:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4absl12lts_2026052612crc_internal5CRC3214ExtendByZeroesEPjm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8200) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052612crc_internal5CRC3218ExtendByZeroesImplEPjmPKjS5_(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4absl12lts_2026052612crc_internal5CRC3216UnextendByZeroesEPjm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8200) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9
  %i.b = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.a)
  store i32 %i.b, ptr %1, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6152
  tail call void @_ZN4absl12lts_2026052612crc_internal5CRC3218ExtendByZeroesImplEPjmPKjS5_(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.e = load i32, ptr %1, align 4, !tbaa !9
  %i.f = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.e)
  store i32 %i.f, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4absl12lts_2026052612crc_internal5CRC328ScrambleEPj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9
  %i.b = add i32 %i.a, 779543579                  ; 2 uses
  %i.c = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 15)
  store i32 %i.c, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4absl12lts_2026052612crc_internal5CRC3210UnscrambleEPj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  %i.b = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 17)
  %i.c = add i32 %i.b, -779543579
  store i32 %i.c, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN4absl12lts_2026052612crc_internal3CRCD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4absl12lts_2026052612crc_internal3CRCC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #12 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4absl12lts_2026052612crc_internal3CRCE, i64 16), ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052612crc_internal3CRC6Crc32cEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052612crc_internal3CRC6Crc32cEvE9singleton acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052612crc_internal3CRC6Crc32cEvE9singleton) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN4absl12lts_2026052612crc_internal7CRCImpl11NewInternalEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN4absl12lts_2026052612crc_internal3CRC6Crc32cEvE9singleton, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052612crc_internal3CRC6Crc32cEvE9singleton) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4absl12lts_2026052612crc_internal3CRC6Crc32cEvE9singleton, align 8, !tbaa !29
  ret ptr %i.e

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2026052612crc_internal3CRC6Crc32cEvE9singleton) #20
  resume { ptr, i32 } %i.f
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4absl12lts_2026052612crc_internal3CRCD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052612crc_internal5CRC32D0Ev(ptr noundef nonnull align 8 dereferenceable(8200) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8200) #19
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !22}
!20 = distinct !{!20, !10}
!21 = !{!5, !5, i64 0}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !10}
!24 = !{!"long", !5, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"branch_weights", i32 1, i32 1048575}
!27 = !{!"any pointer", !5, i64 0}
!28 = !{!"p1 _ZTSN4absl12lts_2026052612crc_internal3CRCE", !27, i64 0}
!29 = !{!28, !28, i64 0}
end_hunk_0
