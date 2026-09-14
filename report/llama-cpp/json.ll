Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/json?download=true
inline.NumInlined: 5428
inline.NumDeleted: 1959
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_:bb.a
  %i.u = sub nsw i32 0, %4
  %i.v = zext nneg i32 %i.u to i64                ; 5 uses
  %i.w = shl nuw nsw i64 1, %i.v                  ; 2 uses
  %i.x = lshr i64 %i.f, %i.v                      ; 11 uses
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add nsw i64 %i.w, -1                     ; 2 uses
  %i.aa = and i64 %i.f, %i.z                      ; 3 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl5diyfp3subERKS3_S5_.exit77
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18247, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.212) #34
  unreachable

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl5diyfp3subERKS3_S5_.exit77
  %i.ab = icmp samesign ugt i64 %i.x, 999999999
  br i1 %i.ab, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp samesign ugt i64 %i.x, 99999999
  br i1 %i.ac, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = icmp samesign ugt i64 %i.x, 9999999
  br i1 %i.ad, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp samesign ugt i64 %i.x, 999999
  br i1 %i.ae, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = icmp samesign ugt i64 %i.x, 99999
  br i1 %i.af, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp samesign ugt i64 %i.x, 9999
  br i1 %i.ag, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp samesign ugt i64 %i.x, 999
  br i1 %i.ah, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp samesign ugt i64 %i.x, 99
  br i1 %i.ai, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = icmp samesign ugt i64 %i.x, 9           ; 2 uses
  %..i = select i1 %i.aj, i32 10, i32 1
  %.21.i = select i1 %i.aj, i32 2, i32 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.06097.ph = phi i32 [ 10, %bb.k ], [ 9, %bb.l ], [ 8, %bb.m ], [ 7, %bb.n ], [ 6, %bb.o ], [ 5, %bb.p ], [ 4, %bb.q ], [ %.21.i, %bb.s ], [ 3, %bb.r ]
  %.08695.ph = phi i32 [ 1000000000, %bb.k ], [ 100000000, %bb.l ], [ 10000000, %bb.m ], [ 1000000, %bb.n ], [ 100000, %bb.o ], [ 10000, %bb.p ], [ 1000, %bb.q ], [ %..i, %bb.s ], [ 100, %bb.r ]
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.v
  %.06097 = phi i32 [ %i.at, %bb.v ], [ %.06097.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.06296 = phi i32 [ %i.al, %bb.v ], [ %i.y, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.08695 = phi i32 [ %i.bc, %bb.v ], [ %.08695.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 4 uses
  %i.ak = udiv i32 %.06296, %.08695               ; 2 uses
  %i.al = urem i32 %.06296, %.08695               ; 2 uses
  %i.am = icmp ult i32 %i.ak, 10
  br i1 %i.am, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18283, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.213) #34
  unreachable

bb.u:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.an = trunc nuw nsw i32 %i.ak to i8
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = load i32, ptr %1, align 4, !tbaa !53    ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %1, align 4, !tbaa !53
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !43
  %i.at = add nsw i32 %.06097, -1                 ; 2 uses
  %i.au = zext nneg i32 %i.al to i64
  %i.av = shl i64 %i.au, %i.v
  %i.aw = add i64 %i.av, %i.aa                    ; 2 uses
  %.not71 = icmp ugt i64 %i.aw, %i.k
  br i1 %.not71, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4, !tbaa !53
  %i.ay = add nsw i32 %i.ax, %i.at
  store i32 %i.ay, ptr %2, align 4, !tbaa !53
  %i.az = zext nneg i32 %.08695 to i64
  %i.ba = shl i64 %i.az, %i.v
  %i.bb = load i32, ptr %1, align 4, !tbaa !53
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm(ptr noundef nonnull %0, i32 noundef %i.bb, i64 noundef %i.t, i64 noundef %i.k, i64 noundef %i.aw, i64 noundef %i.ba)
  br label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bc = udiv i32 %.08695, 10
  %i.bd = icmp samesign ugt i32 %.06097, 1
  br i1 %i.bd, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = icmp ugt i64 %i.aa, %i.k
  br i1 %i.be, label %.preheader.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18370, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.214) #34
  unreachable

.preheader.preheader:                             ; preds = %bb.w, %bb.z
  %.061 = phi i64 [ %i.bi, %bb.z ], [ %i.aa, %bb.w ]
  %.059 = phi i64 [ %i.br, %bb.z ], [ %i.t, %bb.w ]
  %.057 = phi i32 [ %i.bp, %bb.z ], [ 0, %bb.w ]
  %.0 = phi i64 [ %i.bq, %bb.z ], [ %i.k, %bb.w ]
  %i.bf = mul nuw i64 %.061, 10                   ; 2 uses
  %i.bg = lshr i64 %i.bf, %i.v                    ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 10
  br i1 %i.bh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader.preheader
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18390, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.213) #34
  unreachable

bb.z:                                             ; preds = %.preheader.preheader
  %i.bi = and i64 %i.bf, %i.z                     ; 3 uses
  %i.bj = trunc nuw nsw i64 %i.bg to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = load i32, ptr %1, align 4, !tbaa !53    ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %1, align 4, !tbaa !53
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  store i8 %i.bk, ptr %i.bo, align 1, !tbaa !43
  %i.bp = add nuw nsw i32 %.057, 1                ; 2 uses
  %i.bq = mul nuw i64 %.0, 10                     ; 3 uses
  %i.br = mul i64 %.059, 10                       ; 2 uses
  %.not70 = icmp ugt i64 %i.bi, %i.bq
  br i1 %.not70, label %.preheader.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = load i32, ptr %2, align 4, !tbaa !53
  %i.bt = sub nsw i32 %i.bs, %i.bp
  store i32 %i.bt, ptr %2, align 4, !tbaa !53
  %i.bu = load i32, ptr %1, align 4, !tbaa !53
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm(ptr noundef nonnull %0, i32 noundef %i.bu, i64 noundef %i.br, i64 noundef %i.bq, i64 noundef %i.bi, i64 noundef %i.w)
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.aa
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18169, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.218) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %2, %3
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18170, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.219) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not32 = icmp ugt i64 %4, %3
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18171, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.220) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not33 = icmp eq i64 %5, 0
  br i1 %.not33, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.b = icmp uge i64 %4, %2
  %i.c = sub i64 %3, %4
  %.not3436 = icmp ult i64 %i.c, %5
  %or.cond37 = or i1 %i.b, %.not3436
  br i1 %or.cond37, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18172, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.221) #34
  unreachable

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.038 = phi i64 [ %4, %.lr.ph ], [ %i.g, %bb.l ] ; 2 uses
  %i.g = add i64 %.038, %5                        ; 5 uses
  %6 = icmp ult i64 %i.g, %2
  br i1 %6, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = sub nuw i64 %2, %.038
  %i.i = sub nuw i64 %i.g, %2
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.i, %bb.j
  %i.k = load i8, ptr %i.f, align 1, !tbaa !43    ; 2 uses
  %.not35 = icmp eq i8 %i.k, 48
  br i1 %.not35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge2
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 18197, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.222) #34
  unreachable

bb.l:                                             ; preds = %.critedge2
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.f, align 1, !tbaa !43
  %7 = icmp uge i64 %i.g, %2
  %i.m = sub i64 %3, %i.g
  %.not34 = icmp ult i64 %i.m, %5
  %or.cond = or i1 %7, %.not34
  br i1 %or.cond, label %.critedge, label %bb.i, !llvm.loop !987

.critedge:                                        ; preds = %bb.j, %bb.l, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { noreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { "function-inline-cost-multiplier"="2" }
attributes #37 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{null, null}
!1 = distinct !{!1, !120}
!2 = distinct !{!2, !120}
!3 = distinct !{!3, !120}
!4 = distinct !{!4, !120}
!5 = distinct !{!5, !120}
!6 = distinct !{null, null, ptr @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_, null}
!7 = distinct !{null, null, ptr @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev}
!8 = distinct !{null, null, ptr @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!9 = distinct !{!9, !120}
!10 = distinct !{null, ptr @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev}
!11 = distinct !{null, ptr @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!12 = distinct !{null, ptr @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_, null}
!13 = distinct !{ptr @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_, null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev}
!14 = distinct !{ptr @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_, null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!15 = distinct !{ptr @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_, null, null}
!16 = distinct !{!16, !120}
!17 = distinct !{!17, !120}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!21 = distinct !{!21, !120}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 2}
!24 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!"omnipotent char", !25, i64 0}
!27 = !{!"int", !26, i64 0}
!28 = !{!"__libc_errno", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"_ZTSN17common_json_value10value_typeE", !26, i64 0}
!31 = !{!"any pointer", !26, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!34 = !{!"long", !26, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !34, i64 8, !26, i64 16}
!36 = !{!"p1 _ZTS11common_json", !31, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!39 = !{!"_ZTSSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !38, i64 8}
!40 = !{!"_ZTSSt10shared_ptrI11common_jsonE", !39, i64 0}
!41 = !{!"_ZTS17common_json_value", !30, i64 0, !26, i64 8, !35, i64 16, !40, i64 48}
!42 = !{!41, !30, i64 0}
!43 = !{!26, !26, i64 0}
!44 = !{!33, !32, i64 0}
!45 = !{!35, !34, i64 8}
!46 = !{!35, !32, i64 0}
!47 = !{!38, !37, i64 0}
!48 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 8, !27, i64 12}
!49 = !{!48, !27, i64 8}
!50 = !{!48, !27, i64 12}
!51 = !{!"vtable pointer", !25, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!27, !27, i64 0}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = !{!39, !36, i64 0}
!56 = !{!36, !36, i64 0}
!57 = !{!"_ZTSSt14_Rb_tree_color", !26, i64 0}
!58 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !31, i64 0}
!59 = !{!"_ZTSSt18_Rb_tree_node_base", !57, i64 0, !58, i64 8, !58, i64 16, !58, i64 24}
!60 = !{!"_ZTSSt15_Rb_tree_header", !59, i64 0, !34, i64 32}
!61 = !{!60, !58, i64 16}
!62 = !{!34, !34, i64 0}
!63 = !{!"bool", !26, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !31, i64 0}
!68 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !67, i64 0}
!69 = !{!68, !67, i64 0}
!70 = !{!"p1 int", !31, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!32, !32, i64 0}
!73 = !{!"p1 long", !31, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"p1 long long", !31, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"long long", !26, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 float", !31, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"float", !26, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"double", !26, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !26, i64 0}
!88 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !87, i64 0, !26, i64 8}
!89 = !{!88, !87, i64 0}
!90 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !88, i64 0}
!91 = !{!90, !87, i64 0}
!92 = !{!"p1 _ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEE", !31, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!93, !92, i64 8}
!95 = !{!93, !92, i64 0}
!96 = !{!93, !92, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!98 = !{!97, !32, i64 8}
!99 = !{!97, !32, i64 0}
!100 = !{!97, !32, i64 16}
!101 = !{!87, !87, i64 0}
!102 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev}
!103 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!104 = !{!"_ZTSSt14_Function_base", !26, i64 0, !31, i64 16}
!105 = !{!104, !31, i64 16}
!106 = !{!"_ZTSSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEE", !104, i64 0, !31, i64 24}
!107 = !{!106, !31, i64 24}
!108 = !{i64 0, i64 16, !43}
!109 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!110 = !{!109, !32, i64 0}
!111 = !{!109, !32, i64 16}
!112 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!113 = !{!"p1 _ZTSN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !31, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!114, !113, i64 16}
!116 = !{!114, !113, i64 8}
!117 = !{!113, !113, i64 0}
!118 = !{!92, !92, i64 0}
!119 = !{!114, !113, i64 0}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSA_11ordered_mapESt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEESD_ISI_SaISI_EEEE", !92, i64 0}
!122 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEES5_ISF_SaISF_EEEE", !113, i64 0}
!123 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail20primitive_iterator_tE", !34, i64 0}
end_hunk_0
