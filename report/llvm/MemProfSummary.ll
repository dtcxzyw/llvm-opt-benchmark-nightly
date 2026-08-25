Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemProfSummary?download=true
begin_hunk_0_@_ZNK4llvm7memprof14MemProfSummary16printSummaryYamlERNS_11raw_ostreamE:bb.a
_ZN4llvm11raw_ostreamlsEPKc.exit47:               ; preds = %bb.z, %bb.aa
  %.0.i.i46 = phi ptr [ %i.dv, %bb.z ], [ %1, %bb.aa ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !23
  %i.ea = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i46, i64 noundef %i.dz) #7 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !15 ; 2 uses
  %i.ef = icmp eq ptr %i.ec, %i.ee
  br i1 %i.ef, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  %i.eg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull @.str.3, i64 noundef 1) #7 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  store i8 10, ptr %i.ee, align 1
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

_ZN4llvm11raw_ostreamlsEPKc.exit50:               ; preds = %bb.ab, %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !24, !range !25, !noundef !26
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ad, label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit50
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ult i64 %i.eq, 41
  br i1 %i.er, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.es = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.9, i64 noundef 41) #7
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.en, ptr noundef nonnull align 1 dereferenceable(41) @.str.9, i64 41, i1 false)
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 41
  store ptr %i.eu, ptr %i.c, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

_ZN4llvm11raw_ostreamlsEPKc.exit53:               ; preds = %bb.ae, %bb.af
  %.0.i.i52 = phi ptr [ %i.es, %bb.ae ], [ %1, %bb.af ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !27
  %i.ex = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i52, i64 noundef %i.ew) #7 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !15 ; 2 uses
  %i.fc = icmp eq ptr %i.ez, %i.fb
  br i1 %i.fc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53
  %i.fd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ex, ptr noundef nonnull @.str.3, i64 noundef 1) #7 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53
  store i8 10, ptr %i.fb, align 1
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !15
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

_ZN4llvm11raw_ostreamlsEPKc.exit56:               ; preds = %bb.ag, %bb.ah
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = icmp ult i64 %i.fk, 28
  br i1 %i.fl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56
  %i.fm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.10, i64 noundef 28) #7
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

bb.aj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.fh, ptr noundef nonnull align 1 dereferenceable(28) @.str.10, i64 28, i1 false)
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 28
  store ptr %i.fo, ptr %i.c, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

_ZN4llvm11raw_ostreamlsEPKc.exit59:               ; preds = %bb.ai, %bb.aj
  %.0.i.i58 = phi ptr [ %i.fm, %bb.ai ], [ %1, %bb.aj ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !28
  %i.fr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i58, i64 noundef %i.fq) #7 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !15 ; 2 uses
  %i.fw = icmp eq ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  %i.fx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fr, ptr noundef nonnull @.str.3, i64 noundef 1) #7 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  store i8 10, ptr %i.fv, align 1
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.ak, %bb.al
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp ult i64 %i.ge, 36
  br i1 %i.gf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.gg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.11, i64 noundef 36) #7
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.gb, ptr noundef nonnull align 1 dereferenceable(36) @.str.11, i64 36, i1 false)
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 36
  store ptr %i.gi, ptr %i.c, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

_ZN4llvm11raw_ostreamlsEPKc.exit65:               ; preds = %bb.am, %bb.an
  %.0.i.i64 = phi ptr [ %i.gg, %bb.am ], [ %1, %bb.an ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !29
  %i.gl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i64, i64 noundef %i.gk) #7 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !15 ; 2 uses
  %i.gq = icmp eq ptr %i.gn, %i.gp
  br i1 %i.gq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.gr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gl, ptr noundef nonnull @.str.3, i64 noundef 1) #7 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  store i8 10, ptr %i.gp, align 1
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.gt, ptr %i.go, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

_ZN4llvm11raw_ostreamlsEPKc.exit68:               ; preds = %bb.ap, %bb.ao, %_ZN4llvm11raw_ostreamlsEPKc.exit50
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm7memprof14MemProfSummary5writeERNS_11ProfOStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm11ProfOStream7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 6) #7
  %i.a = tail call noundef i64 @_ZNK4llvm11ProfOStream4tellEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #7 ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !16
  tail call void @_ZN4llvm11ProfOStream5writeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  tail call void @_ZN4llvm11ProfOStream5writeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  tail call void @_ZN4llvm11ProfOStream5writeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  tail call void @_ZN4llvm11ProfOStream5writeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  tail call void @_ZN4llvm11ProfOStream5writeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  tail call void @_ZN4llvm11ProfOStream5writeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l) #7
  ret void
}

declare void @_ZN4llvm11ProfOStream7write32Ej(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK4llvm11ProfOStream4tellEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN4llvm11ProfOStream5writeEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7memprof14MemProfSummary11deserializeERPKh(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30     ; 4 uses
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.e = load <2 x i64>, ptr %i.b, align 1
  %i.f = load <2 x i64>, ptr %i.c, align 1
  %i.g = load <2 x i64>, ptr %i.d, align 1
  %i.h = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #8, !noalias !31 ; 6 uses
  store <2 x i64> %i.e, ptr %i.h, align 8, !tbaa !34, !noalias !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.i, align 8, !tbaa !34, !noalias !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store <2 x i64> %i.g, ptr %i.j, align 8, !tbaa !34, !noalias !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 0, ptr %i.k, align 8, !tbaa !24, !noalias !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !31
  store ptr %i.h, ptr %0, align 8, !tbaa !35, !alias.scope !31
  %i.m = zext i32 %.0.copyload.i.i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  store ptr %i.o, ptr %1, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm7memprof14MemProfSummary22buildDataAccessSummaryERKNS0_18DataAccessProfDataE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((48, 49), (56, 80)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.d, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.h, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.l, ptr %i.m, align 8, !tbaa !29
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 24}
!9 = !{!"_ZTSN4llvm11raw_ostreamE", !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !13, i64 40, !14, i64 44}
!10 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!15 = !{!9, !11, i64 32}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSN4llvm7memprof14MemProfSummaryE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !13, i64 48, !18, i64 56, !18, i64 64, !18, i64 72}
!18 = !{!"long", !6, i64 0}
!19 = !{!17, !18, i64 8}
!20 = !{!17, !18, i64 16}
!21 = !{!17, !18, i64 24}
!22 = !{!17, !18, i64 32}
!23 = !{!17, !18, i64 40}
!24 = !{!17, !13, i64 48}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!17, !18, i64 56}
!28 = !{!17, !18, i64 64}
!29 = !{!17, !18, i64 72}
!30 = !{!11, !11, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZSt11make_uniqueIN4llvm7memprof14MemProfSummaryEJmmmmmmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!33 = distinct !{!33, !"_ZSt11make_uniqueIN4llvm7memprof14MemProfSummaryEJmmmmmmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!34 = !{!18, !18, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSN4llvm7memprof14MemProfSummaryE", !12, i64 0}
!37 = !{!38, !5, i64 8}
!38 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
end_hunk_0
