Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@201 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1921, i32 27 }, ptr @8 }
@202 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1921, i32 10 } }
@203 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1921, i32 10 }, ptr @136, i8 3, i8 3 }
@204 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1928, i32 24 } }
@205 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1928, i32 24 }, ptr @136, i8 3, i8 3 }
@206 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1929, i32 54 }, ptr @8 }
@207 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1929, i32 37 } }
@208 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1929, i32 37 }, ptr @136, i8 3, i8 3 }
@209 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1935, i32 48 } }
@210 = private unnamed_addr constant { i16, i16, [77 x i8] } { i16 -1, i16 0, [77 x i8] c"'const b3ContactConstraintWide' (aka 'const struct b3ContactConstraintWide')\00" }
@211 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1936, i32 48 }, ptr @210, i8 4, i8 3 }
@212 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1949, i32 35 }, ptr @8 }
@213 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1953, i32 38 }, ptr @8 }
@214 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1959, i32 21 } }
@215 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1967, i32 8 }, ptr @42, i8 2, i8 3 }
@216 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1982, i32 57 } }
@217 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1987, i32 38 }, ptr @49, ptr @8 }
@218 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1987, i32 38 } }
@219 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1993, i32 21 } }
@220 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1993, i32 21 }, ptr @8, i8 2, i8 0 }
@221 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1994, i32 26 } }
@222 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1995, i32 21 }, ptr @25, i8 3, i8 3 }
@223 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1999, i32 39 } }
@224 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2023, i32 38 }, ptr @0, i8 3, i8 3 }
@225 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2024, i32 31 }, ptr @6, i8 3, i8 3 }
@226 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2024, i32 38 } }
@227 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2044, i32 38 }, ptr @0, i8 3, i8 3 }
@228 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2045, i32 31 }, ptr @6, i8 3, i8 3 }
@229 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2045, i32 38 } }
@230 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2065, i32 38 }, ptr @0, i8 3, i8 3 }
@231 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2066, i32 31 }, ptr @6, i8 3, i8 3 }
@232 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2066, i32 38 } }
@233 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2086, i32 38 }, ptr @0, i8 3, i8 3 }
@234 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2087, i32 31 }, ptr @6, i8 3, i8 3 }
@235 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2087, i32 38 } }
@236 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2107, i32 38 }, ptr @0, i8 3, i8 3 }
@237 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2108, i32 31 }, ptr @6, i8 3, i8 3 }
@238 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2108, i32 38 } }
@.src.3 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/bitset.h\00", align 1
@239 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 0, i16 12, [33 x i8] c"'uint64_t' (aka 'unsigned long')\00" }
@240 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.3, i32 31, i32 2 } }
@241 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 31, i32 2 }, ptr @239, i8 3, i8 1 }
@242 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 19 }, ptr @8, i8 2, i8 0 }
@243 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 63 }, ptr @8 }
@244 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 45 } }
@245 = private unnamed_addr constant { i16, i16, [53 x i8] } { i16 -1, i16 0, [53 x i8] c"'const b3BodyState' (aka 'const struct b3BodyState')\00" }
@246 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 45 }, ptr @245, i8 2, i8 0 }
@247 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 19 } }
@248 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 52 } }
@249 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 63 }, ptr @8 }
@250 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 45 } }
@251 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 45 }, ptr @245, i8 2, i8 0 }
@252 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 19 } }
@253 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 52 } }
@254 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 63 }, ptr @8 }
@255 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 45 } }
@256 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 45 }, ptr @245, i8 2, i8 0 }
@257 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 19 } }
@258 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 52 } }
@259 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 63 }, ptr @8 }
@260 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 45 } }
@261 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 45 }, ptr @245, i8 2, i8 0 }
@262 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'const b3BodyStateW' (aka 'const struct b3BodyStateW')\00" }
@263 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1056, i32 45 }, ptr @262, i8 4, i8 3 }
@264 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 7 }, ptr @8, i8 2, i8 0 }
@265 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 46 }, ptr @8 }
@266 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 28 } }
@267 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 28 }, ptr @31, i8 2, i8 3 }
@268 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 7 } }
@269 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 35 } }
@270 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 46 }, ptr @8 }
@271 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 28 } }
@272 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 28 }, ptr @31, i8 2, i8 3 }
@273 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 7 } }
@274 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 35 } }
@275 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 46 }, ptr @8 }
@276 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 28 } }
@277 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 28 }, ptr @31, i8 2, i8 3 }
@278 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 7 } }
@279 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 35 } }
@280 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 46 }, ptr @8 }
@281 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 28 } }
@282 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 28 }, ptr @31, i8 2, i8 3 }

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareContacts_Mesh(i64 %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %.sroa.01036.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.21037.0.extract.shift = lshr i64 %0, 32  ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 4 uses
  %i.l = icmp ne ptr %i.g, null, !nosanitize !10
  %i.m = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !10
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !10
  %i.p = and i1 %i.l, %i.o, !nosanitize !10
  br i1 %i.p, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4764
  %i.r = load i8, ptr %i.q, align 4, !tbaa !88    ; 3 uses
  %i.s = icmp ult i8 %i.r, 2
  br i1 %i.s, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.t = zext i8 %i.r to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @5, i64 %i.t) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.u = trunc nuw i8 %i.r to i1
  %i.v = select i1 %i.u, float 1.000000e+00, float 0.000000e+00 ; 6 uses
  %i.w = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.x = fmul float %i.w, 5.000000e-03
  %i.y = fmul float %i.x, 4.000000e+00
  %i.z = fdiv float 1.000000e+00, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = and i64 %0, 71776119061217280
  %i.ae = icmp eq i64 %i.ad, 1970324836974592
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 1144 ; 2 uses
  %.not587 = icmp ugt ptr %i.af, inttoptr (i64 -2577 to ptr)
  br i1 %.not587, label %bb.i, label %bb.j, !prof !89, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.af to i64, !nosanitize !10 ; 2 uses
  %i.ah = add i64 %i.ag, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.ag, i64 %i.ah) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 3800
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 3816
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.0543.in = phi ptr [ %i.ac, %bb.g ], [ %i.ak, %bb.j ]
  %.0542.in = phi ptr [ %i.ab, %bb.g ], [ %i.aj, %bb.j ]
  %.0.in = phi ptr [ %i.aa, %bb.g ], [ %i.ai, %bb.j ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !90
  %.0.fr = freeze ptr %.0                         ; 5 uses
  %.0542 = load ptr, ptr %.0542.in, align 8, !tbaa !186 ; 3 uses
  %.0543 = load ptr, ptr %.0543.in, align 8, !tbaa !91 ; 3 uses
  %i.al = trunc nuw i64 %.sroa.21037.0.extract.shift to i32
  %i.am = and i32 %i.al, 65535
  %i.an = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.01036.0.extract.trunc, i32 %i.am), !nosanitize !10 ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 0, !nosanitize !10 ; 3 uses
  %i.ap = extractvalue { i32, i1 } %i.an, 1, !nosanitize !10
  br i1 %i.ap, label %bb.l, label %.preheader1085, !prof !89, !nosanitize !10

.preheader1085:                                   ; preds = %bb.k
  %i.aq = ptrtoint ptr %.0.fr to i64              ; 9 uses
  %.not6482 = icmp eq ptr %.0.fr, null
  br i1 %.not6482, label %.split4841.us, label %.preheader1085.split.preheader, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.ar = and i64 %0, 4294967295
  %i.as = and i64 %.sroa.21037.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @9, i64 %i.ar, i64 %i.as) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1085.split:                             ; preds = %bb.n
  %indvars.iv.next10116 = add nuw nsw i64 %indvars.iv1011514040, 1
  %i.at = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aw, i32 1), !nosanitize !10 ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0, !nosanitize !10
  %i.av = extractvalue { i32, i1 } %i.at, 1, !nosanitize !10
  br i1 %i.av, label %.split.us, label %.preheader1085.split.preheader, !prof !92, !llvm.loop !181, !nosanitize !10

.split.us:                                        ; preds = %.preheader1085.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @10, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1085.split.preheader:                   ; preds = %.preheader1085, %.preheader1085.split
  %i.aw = phi i32 [ %i.au, %.preheader1085.split ], [ 1, %.preheader1085 ] ; 3 uses
  %indvars.iv1011514040 = phi i64 [ %indvars.iv.next10116, %.preheader1085.split ], [ 0, %.preheader1085 ] ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %.0.fr, i64 %i.ax ; 2 uses
  %i.az = shl nsw i64 %i.ax, 4
  %i.ba = add i64 %i.az, %i.aq, !nosanitize !10   ; 3 uses
  %2 = icmp ne i64 %i.ba, 0
  %3 = icmp uge i64 %i.ba, %i.aq, !nosanitize !10
  %4 = icmp slt i32 %i.aw, 0
  %5 = xor i1 %4, %3
  %6 = and i1 %2, %5, !nosanitize !10
  br i1 %6, label %bb.m, label %.split4841.us, !prof !11, !nosanitize !10

.split4841.us:                                    ; preds = %.preheader1085.split.preheader, %.preheader1085
  %.us-phi4843 = phi i64 [ 16, %.preheader1085 ], [ %i.ba, %.preheader1085.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @11, i64 %i.aq, i64 %.us-phi4843) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %.preheader1085.split.preheader
  %i.bb = ptrtoint ptr %i.ay to i64, !nosanitize !10 ; 2 uses
  %i.bc = and i64 %i.bb, 7, !nosanitize !10
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !10
  br i1 %i.bd, label %bb.n, label %.split4845, !prof !11, !nosanitize !10

.split4845:                                       ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.bb) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.ay, align 8, !tbaa !96
  %.not588 = icmp sgt i32 %i.be, %.sroa.01036.0.extract.trunc
  br i1 %.not588, label %.preheader.split, label %.preheader1085.split, !llvm.loop !181

.preheader.split:                                 ; preds = %bb.n
  %i.bf = icmp sgt i32 %i.ao, %.sroa.01036.0.extract.trunc
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader.split
  %i.bg = ptrtoint ptr %.0543 to i64              ; 5 uses
  %i.bh = icmp ne ptr %.0543, null                ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  %i.bj = ptrtoint ptr %i.i to i64                ; 6 uses
  %i.bk = icmp ne ptr %i.i, null                  ; 4 uses
  %i.bl = ptrtoint ptr %i.k to i64                ; 6 uses
  %i.bm = icmp ne ptr %i.k, null                  ; 4 uses
  %i.bn = ptrtoint ptr %.0542 to i64              ; 3 uses
  %i.bo = icmp ne ptr %.0542, null                ; 3 uses
  %i.bp = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  br label %.lr.ph.split.us

.loopexit:                                        ; preds = %.lr.ph4867.split.us.a, %.split4865.us
  %.1.lcssa = phi i32 [ %.05446319.us, %.split4865.us ], [ %i.ch, %.lr.ph4867.split.us.a ] ; 2 uses
  %7 = icmp slt i32 %.1.lcssa, %i.ao
  br i1 %7, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !182

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit
  %indvars.iv10120 = phi i64 [ %indvars.iv1011514040, %.lr.ph ], [ %indvars.iv.next10121, %.loopexit ] ; 4 uses
  %.05446319.us = phi i32 [ %.sroa.01036.0.extract.trunc, %.lr.ph ], [ %.1.lcssa, %.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.0.fr, i64 %indvars.iv10120 ; 3 uses
  %i.bs = shl nuw nsw i64 %indvars.iv10120, 4
  %i.bt = add i64 %i.bs, %i.aq, !nosanitize !10   ; 2 uses
  %.not6491 = icmp ult i64 %i.bt, %i.aq, !nosanitize !10
  br i1 %.not6491, label %8, label %bb.o, !prof !89, !nosanitize !10

8:                                                ; preds = %.lr.ph.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @14, i64 %i.aq, i64 %i.bt) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %.lr.ph.split.us
  %i.bu = ptrtoint ptr %i.br to i64, !nosanitize !10 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !nosanitize !10
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !10
  br i1 %i.bw, label %bb.p, label %9, !prof !11, !nosanitize !10

9:                                                ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.bu) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !96 ; 3 uses
  %indvars.iv.next10121 = add nuw nsw i64 %indvars.iv10120, 1 ; 3 uses
  %exitcond10124 = icmp eq i64 %indvars.iv10120, 2147483647
  br i1 %exitcond10124, label %10, label %bb.q, !prof !89, !nosanitize !10

10:                                               ; preds = %bb.p
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @16, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  %i.by = shl i64 %indvars.iv.next10121, 32       ; 2 uses
  %i.bz = ashr exact i64 %i.by, 28
  %i.ca = getelementptr inbounds i8, ptr %.0.fr, i64 %i.bz ; 2 uses
  %i.cb = ashr exact i64 %i.by, 28
  %i.cc = add i64 %i.cb, %i.aq, !nosanitize !10   ; 3 uses
  %11 = icmp ne i64 %i.cc, 0
  %12 = icmp uge i64 %i.cc, %i.aq, !nosanitize !10
  %13 = and i64 %indvars.iv.next10121, 2147483648
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, %12
  %16 = and i1 %11, %15, !nosanitize !10
  br i1 %16, label %bb.r, label %17, !prof !11, !nosanitize !10

17:                                               ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 %i.aq, i64 %i.cc) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %i.cd = ptrtoint ptr %i.ca to i64, !nosanitize !10 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !nosanitize !10
  %i.cf = icmp eq i64 %i.ce, 0, !nosanitize !10
  br i1 %i.cf, label %.split4865.us, label %18, !prof !11, !nosanitize !10

18:                                               ; preds = %bb.r
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @18, i64 %i.cd) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split4865.us:                                    ; preds = %bb.r
  %i.cg = load i32, ptr %i.ca, align 8, !tbaa !96
  %i.ch = tail call noundef i32 @llvm.smin.i32(i32 %i.cg, i32 %i.ao) ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !187
  %.fr6493 = freeze ptr %i.cj                     ; 3 uses
  %i.ck = icmp slt i32 %.05446319.us, %i.ch
  br i1 %i.ck, label %.lr.ph4867.us, label %.loopexit

.lr.ph4867.us:                                    ; preds = %.split4865.us
  %i.cl = ptrtoint ptr %.fr6493 to i64            ; 4 uses
  %.not6494 = icmp eq ptr %.fr6493, null
  %i.cm = sext i32 %.05446319.us to i64           ; 2 uses
  br i1 %.not6494, label %.lr.ph4867.split.us, label %.lr.ph4867.split.us6320.preheader, !prof !89

.lr.ph4867.split.us:                              ; preds = %.lr.ph4867.us
  %19 = mul nsw i64 %i.cm, 168
  %20 = add i64 %19, %i.bg, !nosanitize !10       ; 3 uses
  %21 = icmp eq i64 %20, 0
  %22 = xor i1 %i.bh, %21
  %23 = icmp uge i64 %20, %i.bg, !nosanitize !10
  %24 = icmp slt i32 %.05446319.us, 0
  %25 = xor i1 %24, %23
  %26 = and i1 %22, %25, !nosanitize !10
  br i1 %26, label %27, label %.split4870.us, !prof !11, !nosanitize !10

27:                                               ; preds = %.lr.ph4867.split.us
  %28 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.05446319.us, i32 %i.bx), !nosanitize !10 ; 2 uses
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !10
  br i1 %29, label %.split4874.us, label %30, !prof !89, !nosanitize !10

30:                                               ; preds = %27
  %31 = extractvalue { i32, i1 } %28, 0, !nosanitize !10 ; 2 uses
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, 12                       ; 2 uses
  %34 = icmp eq i32 %31, 0
  %35 = icmp uge i64 %33, %i.cl, !nosanitize !10
  %36 = and i1 %34, %35
  br i1 %36, label %.split4882, label %.split4878.us, !prof !11, !nosanitize !10

.lr.ph4867.split.us6320.preheader:                ; preds = %.lr.ph4867.us
  %i.cn = sext i32 %i.ch to i64
  br label %.lr.ph4867.split.us6320

.lr.ph4867.split.us6320:                          ; preds = %.lr.ph4867.split.us6320.preheader, %.lr.ph4867.split.us.a
  %indvars.iv10110 = phi i64 [ %i.cm, %.lr.ph4867.split.us6320.preheader ], [ %i.adn, %.lr.ph4867.split.us.a ] ; 5 uses
  %i.co = getelementptr inbounds [168 x i8], ptr %.0543, i64 %indvars.iv10110 ; 25 uses
  %i.cp = mul nsw i64 %indvars.iv10110, 168
  %i.cq = add i64 %i.cp, %i.bg, !nosanitize !10   ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = xor i1 %i.bh, %i.cr
  %i.ct = icmp uge i64 %i.cq, %i.bg, !nosanitize !10
  %i.cu = icmp slt i64 %indvars.iv10110, 0
  %i.cv = xor i1 %i.cu, %i.ct
  %i.cw = and i1 %i.cs, %i.cv, !nosanitize !10
  br i1 %i.cw, label %bb.s, label %.split4870.us, !prof !11, !nosanitize !10

bb.s:                                             ; preds = %.lr.ph4867.split.us6320
  %i.cx = trunc nsw i64 %indvars.iv10110 to i32   ; 2 uses
  %i.cy = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cx, i32 %i.bx), !nosanitize !10 ; 2 uses
  %i.cz = extractvalue { i32, i1 } %i.cy, 1, !nosanitize !10
  br i1 %i.cz, label %.split4874.us, label %bb.t, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.da = extractvalue { i32, i1 } %i.cy, 0, !nosanitize !10 ; 2 uses
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [12 x i8], ptr %.fr6493, i64 %i.db ; 3 uses
  %i.dd = mul nsw i64 %i.db, 12
  %i.de = add i64 %i.dd, %i.cl, !nosanitize !10   ; 3 uses
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp uge i64 %i.de, %i.cl, !nosanitize !10
  %i.dh = icmp slt i32 %i.da, 0
  %i.di = xor i1 %i.dh, %i.dg
  %i.dj = and i1 %i.df, %i.di, !nosanitize !10
  br i1 %i.dj, label %bb.u, label %.split4878.us, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  %i.dk = ptrtoint ptr %i.dc to i64, !nosanitize !10 ; 2 uses
  %i.dl = and i64 %i.dk, 3, !nosanitize !10
  %i.dm = icmp eq i64 %i.dl, 0, !nosanitize !10
  br i1 %i.dm, label %bb.v, label %.split4882, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.dn = load i32, ptr %i.dc, align 4, !tbaa !189 ; 2 uses
  %i.do = load ptr, ptr %i.bi, align 8, !tbaa !97 ; 3 uses
  %i.dp = sext i32 %i.dn to i64                   ; 2 uses
  %i.dq = getelementptr inbounds [216 x i8], ptr %i.do, i64 %i.dp ; 11 uses
  %i.dr = mul nsw i64 %i.dp, 216
  %i.ds = ptrtoint ptr %i.do to i64, !nosanitize !10 ; 3 uses
  %i.dt = add i64 %i.dr, %i.ds, !nosanitize !10   ; 3 uses
  %i.du = icmp ne ptr %i.do, null, !nosanitize !10 ; 2 uses
  %i.dv = icmp eq i64 %i.dt, 0
  %i.dw = xor i1 %i.du, %i.dv
  %i.dx = icmp uge i64 %i.dt, %i.ds, !nosanitize !10
  %i.dy = icmp slt i32 %i.dn, 0
  %i.dz = xor i1 %i.dy, %i.dx
  %i.ea = and i1 %i.dw, %i.dz, !nosanitize !10
  br i1 %i.ea, label %bb.w, label %.split5439.us, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  %i.eb = ptrtoint ptr %i.dq to i64, !nosanitize !10 ; 2 uses
  %i.ec = and i64 %i.eb, 7, !nosanitize !10
  %i.ed = icmp eq i64 %i.ec, 0, !nosanitize !10
  %i.ee = and i1 %i.du, %i.ed
  br i1 %i.ee, label %bb.x, label %.split5443.us, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 60
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !102 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !103 ; 4 uses
  %i.ej = icmp eq i32 %i.eg, -1
  br i1 %i.ej, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = sext i32 %i.eg to i64                   ; 4 uses
  %i.el = getelementptr inbounds [216 x i8], ptr %i.i, i64 %i.ek ; 8 uses
  %i.em = mul nsw i64 %i.ek, 216
  %i.en = add i64 %i.em, %i.bj, !nosanitize !10   ; 3 uses
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = xor i1 %i.bk, %i.eo
  %i.eq = icmp uge i64 %i.en, %i.bj, !nosanitize !10
  %i.er = icmp slt i32 %i.eg, 0                   ; 2 uses
  %i.es = xor i1 %i.er, %i.eq
  %i.et = and i1 %i.ep, %i.es, !nosanitize !10
  br i1 %i.et, label %bb.z, label %.split5452.us, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.eu = ptrtoint ptr %i.el to i64, !nosanitize !10 ; 2 uses
  %i.ev = and i64 %i.eu, 3, !nosanitize !10
  %i.ew = icmp eq i64 %i.ev, 0, !nosanitize !10
  %i.ex = and i1 %i.bk, %i.ew
  br i1 %i.ex, label %bb.aa, label %.split5456.us, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !106
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 144
  %.sroa.15959.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.el, i64 152
  %.sroa.15959.0.copyload960.us.us = load float, ptr %.sroa.15959.0..sroa_idx.us.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.19970.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.el, i64 156
  %.sroa.27992.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.el, i64 164
  %.sroa.27992.0.copyload993.us.us = load float, ptr %.sroa.27992.0..sroa_idx.us.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.311003.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.el, i64 168
  %i.fb = load <2 x float>, ptr %i.fa, align 4, !tbaa !107 ; 2 uses
  %i.fc = load <2 x float>, ptr %.sroa.19970.0..sroa_idx.us.us, align 4, !tbaa !107 ; 2 uses
  %i.fd = load <2 x float>, ptr %.sroa.311003.0..sroa_idx.us.us, align 4, !tbaa !107
  %.sroa.391025.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.el, i64 176
  %.sroa.391025.0.copyload1026.us.us = load float, ptr %.sroa.391025.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.fe = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.ek ; 5 uses
  %i.ff = mul nsw i64 %i.ek, 56
  %i.fg = add i64 %i.ff, %i.bl, !nosanitize !10   ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = xor i1 %i.bm, %i.fh
  %i.fj = icmp uge i64 %i.fg, %i.bl, !nosanitize !10
  %i.fk = xor i1 %i.er, %i.fj
  %i.fl = and i1 %i.fi, %i.fk, !nosanitize !10
  br i1 %i.fl, label %bb.ab, label %.split5465.us, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.fm = ptrtoint ptr %i.fe to i64, !nosanitize !10 ; 2 uses
  %i.fn = and i64 %i.fm, 3, !nosanitize !10
  %i.fo = icmp eq i64 %i.fn, 0, !nosanitize !10
  %i.fp = and i1 %i.bm, %i.fo
  br i1 %i.fp, label %bb.ac, label %.split5469.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %.sroa.5452.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.5452.0.copyload453.us.us = load float, ptr %.sroa.5452.0..sroa_idx.us.us, align 4, !tbaa !107
  %.sroa.0450.0.copyload451.us.us = load <2 x float>, ptr %i.fe, align 4, !tbaa !107
  %.sroa.0446.0.copyload447.us.us = load <2 x float>, ptr %i.fq, align 4, !tbaa !107
  %.sroa.5448.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %.sroa.5448.0.copyload449.us.us = load float, ptr %.sroa.5448.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.fr = shufflevector <2 x float> %i.fc, <2 x float> %i.fb, <2 x i32> <i32 0, i32 3>
  %i.fs = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 0, i32 3>
  %i.ft = insertelement <2 x float> poison, float %.sroa.15959.0.copyload960.us.us, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %.sroa.27992.0.copyload993.us.us, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.sroa.15959.0.us.us = phi float [ %.sroa.15959.0.copyload960.us.us, %bb.ac ], [ 0.000000e+00, %bb.x ] ; 4 uses
  %.sroa.27992.0.us.us = phi float [ %.sroa.27992.0.copyload993.us.us, %bb.ac ], [ 0.000000e+00, %bb.x ] ; 4 uses
  %.sroa.391025.0.us.us = phi float [ %.sroa.391025.0.copyload1026.us.us, %bb.ac ], [ 0.000000e+00, %bb.x ] ; 5 uses
  %.sroa.0446.0.us.us = phi <2 x float> [ %.sroa.0446.0.copyload447.us.us, %bb.ac ], [ zeroinitializer, %bb.x ] ; 2 uses
  %.sroa.5448.0.us.us = phi float [ %.sroa.5448.0.copyload449.us.us, %bb.ac ], [ 0.000000e+00, %bb.x ]
  %.sroa.0450.0.us.us = phi <2 x float> [ %.sroa.0450.0.copyload451.us.us, %bb.ac ], [ zeroinitializer, %bb.x ]
  %.sroa.5452.0.us.us = phi float [ %.sroa.5452.0.copyload453.us.us, %bb.ac ], [ 0.000000e+00, %bb.x ]
  %.0547.us.us = phi float [ %i.ez, %bb.ac ], [ 0.000000e+00, %bb.x ] ; 3 uses
  %i.fv = phi <2 x float> [ %i.fd, %bb.ac ], [ zeroinitializer, %bb.x ] ; 6 uses
  %i.fw = phi <2 x float> [ %i.fr, %bb.ac ], [ zeroinitializer, %bb.x ] ; 6 uses
  %i.fx = phi <2 x float> [ %i.fs, %bb.ac ], [ zeroinitializer, %bb.x ] ; 6 uses
  %i.fy = phi <2 x float> [ %i.fu, %bb.ac ], [ zeroinitializer, %bb.x ]
  %i.fz = icmp eq i32 %i.ei, -1
  br i1 %i.fz, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = sext i32 %i.ei to i64                   ; 4 uses
  %i.gb = getelementptr inbounds [216 x i8], ptr %i.i, i64 %i.ga ; 8 uses
  %i.gc = mul nsw i64 %i.ga, 216
  %i.gd = add i64 %i.gc, %i.bj, !nosanitize !10   ; 3 uses
  %i.ge = icmp eq i64 %i.gd, 0
  %i.gf = xor i1 %i.bk, %i.ge
  %i.gg = icmp uge i64 %i.gd, %i.bj, !nosanitize !10
  %i.gh = icmp slt i32 %i.ei, 0                   ; 2 uses
  %i.gi = xor i1 %i.gh, %i.gg
  %i.gj = and i1 %i.gf, %i.gi, !nosanitize !10
  br i1 %i.gj, label %bb.af, label %.split5475.us, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.gk = ptrtoint ptr %i.gb to i64, !nosanitize !10 ; 2 uses
  %i.gl = and i64 %i.gk, 3, !nosanitize !10
  %i.gm = icmp eq i64 %i.gl, 0, !nosanitize !10
  %i.gn = and i1 %i.bk, %i.gm
  br i1 %i.gn, label %bb.ag, label %.split5479.us, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 104
  %i.gp = load float, ptr %i.go, align 4, !tbaa !106
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 144
  %.sroa.15.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gb, i64 152
  %.sroa.15.0.copyload870.us.us = load float, ptr %.sroa.15.0..sroa_idx.us.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.19.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gb, i64 156
  %.sroa.27.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gb, i64 164
  %.sroa.27.0.copyload900.us.us = load float, ptr %.sroa.27.0..sroa_idx.us.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.31.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gb, i64 168
  %i.gr = load <2 x float>, ptr %i.gq, align 4, !tbaa !107 ; 2 uses
  %i.gs = load <2 x float>, ptr %.sroa.19.0..sroa_idx.us.us, align 4, !tbaa !107 ; 2 uses
  %i.gt = load <2 x float>, ptr %.sroa.31.0..sroa_idx.us.us, align 4, !tbaa !107
  %.sroa.39.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gb, i64 176
  %.sroa.39.0.copyload930.us.us = load float, ptr %.sroa.39.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.gu = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.ga ; 5 uses
  %i.gv = mul nsw i64 %i.ga, 56
  %i.gw = add i64 %i.gv, %i.bl, !nosanitize !10   ; 3 uses
  %i.gx = icmp eq i64 %i.gw, 0
  %i.gy = xor i1 %i.bm, %i.gx
  %i.gz = icmp uge i64 %i.gw, %i.bl, !nosanitize !10
  %i.ha = xor i1 %i.gh, %i.gz
  %i.hb = and i1 %i.gy, %i.ha, !nosanitize !10
  br i1 %i.hb, label %bb.ah, label %.split5488.us, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %bb.ag
  %i.hc = ptrtoint ptr %i.gu to i64, !nosanitize !10 ; 2 uses
  %i.hd = and i64 %i.hc, 3, !nosanitize !10
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !10
  %i.hf = and i1 %i.bm, %i.he
  br i1 %i.hf, label %bb.ai, label %.split5492.us, !prof !11, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %.sroa.5436.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.sroa.5436.0.copyload437.us.us = load float, ptr %.sroa.5436.0..sroa_idx.us.us, align 4, !tbaa !107
  %.sroa.0434.0.copyload435.us.us = load <2 x float>, ptr %i.gu, align 4, !tbaa !107
  %.sroa.0430.0.copyload431.us.us = load <2 x float>, ptr %i.hg, align 4, !tbaa !107
  %.sroa.5432.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %.sroa.5432.0.copyload433.us.us = load float, ptr %.sroa.5432.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.hh = shufflevector <2 x float> %i.gs, <2 x float> %i.gr, <2 x i32> <i32 0, i32 3>
  %i.hi = shufflevector <2 x float> %i.gr, <2 x float> %i.gs, <2 x i32> <i32 0, i32 3>
  %i.hj = insertelement <2 x float> poison, float %.sroa.15.0.copyload870.us.us, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %.sroa.27.0.copyload900.us.us, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %bb.ai
  %.sroa.27.0.us.us = phi float [ %.sroa.27.0.copyload900.us.us, %bb.ai ], [ 0.000000e+00, %bb.ad ] ; 2 uses
  %.sroa.15.0.us.us = phi float [ %.sroa.15.0.copyload870.us.us, %bb.ai ], [ 0.000000e+00, %bb.ad ] ; 2 uses
  %.sroa.39.0.us.us = phi float [ %.sroa.39.0.copyload930.us.us, %bb.ai ], [ 0.000000e+00, %bb.ad ] ; 4 uses
  %.sroa.0430.0.us.us = phi <2 x float> [ %.sroa.0430.0.copyload431.us.us, %bb.ai ], [ zeroinitializer, %bb.ad ] ; 3 uses
  %.sroa.5432.0.us.us = phi float [ %.sroa.5432.0.copyload433.us.us, %bb.ai ], [ 0.000000e+00, %bb.ad ]
  %.sroa.0434.0.us.us = phi <2 x float> [ %.sroa.0434.0.copyload435.us.us, %bb.ai ], [ zeroinitializer, %bb.ad ] ; 2 uses
  %.sroa.5436.0.us.us = phi float [ %.sroa.5436.0.copyload437.us.us, %bb.ai ], [ 0.000000e+00, %bb.ad ]
  %.0548.us.us = phi float [ %i.gp, %bb.ai ], [ 0.000000e+00, %bb.ad ] ; 3 uses
  %i.hl = phi <2 x float> [ %i.gt, %bb.ai ], [ zeroinitializer, %bb.ad ] ; 5 uses
  %i.hm = phi <2 x float> [ %i.hh, %bb.ai ], [ zeroinitializer, %bb.ad ] ; 5 uses
  %i.hn = phi <2 x float> [ %i.hi, %bb.ai ], [ zeroinitializer, %bb.ad ] ; 6 uses
  %i.ho = phi <2 x float> [ %i.hk, %bb.ai ], [ zeroinitializer, %bb.ad ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !190 ; 3 uses
  %i.hr = ptrtoint ptr %i.co to i64, !nosanitize !10 ; 2 uses
  %i.hs = and i64 %i.hr, 7, !nosanitize !10
  %i.ht = icmp eq i64 %i.hs, 0, !nosanitize !10
  %i.hu = and i1 %i.bh, %i.ht
  br i1 %i.hu, label %bb.ak, label %.split5501.us, !prof !11, !nosanitize !10

bb.ak:                                            ; preds = %bb.aj
  %i.hv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.dq, ptr %i.hv, align 8, !tbaa !109
  %i.hw = getelementptr inbounds nuw i8, ptr %i.co, i64 164
  store i32 %i.hq, ptr %i.hw, align 4, !tbaa !110
  %i.hx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i32 %i.eg, ptr %i.hx, align 8, !tbaa !111
  %i.hy = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  store i32 %i.ei, ptr %i.hy, align 4, !tbaa !112
  %i.hz = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.ia = extractelement <2 x float> %i.fx, i64 0 ; 2 uses
  store float %i.ia, ptr %i.hz, align 8, !tbaa !107
  %.sroa.11948.0..sroa_idx950.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 36
  %i.ib = extractelement <2 x float> %i.fw, i64 1 ; 2 uses
  store float %i.ib, ptr %.sroa.11948.0..sroa_idx950.us.us, align 4, !tbaa !107
  %.sroa.15959.0..sroa_idx961.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store float %.sroa.15959.0.us.us, ptr %.sroa.15959.0..sroa_idx961.us.us, align 8, !tbaa !107
  %.sroa.19970.0..sroa_idx972.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  %i.ic = extractelement <2 x float> %i.fw, i64 0 ; 2 uses
  store float %i.ic, ptr %.sroa.19970.0..sroa_idx972.us.us, align 4, !tbaa !107
  %.sroa.23981.0..sroa_idx983.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.id = extractelement <2 x float> %i.fx, i64 1 ; 2 uses
  store float %i.id, ptr %.sroa.23981.0..sroa_idx983.us.us, align 8, !tbaa !107
  %.sroa.27992.0..sroa_idx994.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 52
  store float %.sroa.27992.0.us.us, ptr %.sroa.27992.0..sroa_idx994.us.us, align 4, !tbaa !107
  %.sroa.311003.0..sroa_idx1005.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store <2 x float> %i.fv, ptr %.sroa.311003.0..sroa_idx1005.us.us, align 8, !tbaa !107
  %.sroa.391025.0..sroa_idx1027.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  store float %.sroa.391025.0.us.us, ptr %.sroa.391025.0..sroa_idx1027.us.us, align 8, !tbaa !107
  %i.ie = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store float %.0547.us.us, ptr %i.ie, align 8, !tbaa !113
  %i.if = getelementptr inbounds nuw i8, ptr %i.co, i64 68
  %i.ig = shufflevector <2 x float> %i.hn, <2 x float> %i.hm, <4 x i32> <i32 0, i32 3, i32 poison, i32 2> ; 2 uses
  %i.ih = insertelement <4 x float> %i.ig, float %.sroa.15.0.us.us, i64 2
  store <4 x float> %i.ih, ptr %i.if, align 4, !tbaa !107
  %.sroa.23.0..sroa_idx891.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 84
  %i.ii = shufflevector <2 x float> %i.hn, <2 x float> %i.hl, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.ij = insertelement <4 x float> %i.ii, float %.sroa.27.0.us.us, i64 1
  store <4 x float> %i.ij, ptr %.sroa.23.0..sroa_idx891.us.us, align 4, !tbaa !107
  %.sroa.39.0..sroa_idx931.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 100
  store float %.sroa.39.0.us.us, ptr %.sroa.39.0..sroa_idx931.us.us, align 4, !tbaa !107
  %i.ik = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  store float %.0548.us.us, ptr %i.ik, align 4, !tbaa !114
  %i.il = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  %i.im = fadd <2 x float> %i.fx, %i.hn           ; 7 uses
  %i.in = fadd <2 x float> %i.fw, %i.hm           ; 6 uses
  %i.io = fadd <2 x float> %i.fy, %i.ho           ; 7 uses
  %i.ip = fadd <2 x float> %i.fv, %i.hl           ; 6 uses
  %i.iq = extractelement <2 x float> %i.im, i64 1 ; 3 uses
  %i.ir = extractelement <2 x float> %i.ip, i64 1 ; 2 uses
  %i.is = extractelement <2 x float> %i.io, i64 1 ; 2 uses
  %i.it = extractelement <2 x float> %i.ip, i64 0 ; 2 uses
  %i.iu = fmul float %i.is, %i.it
  %i.iv = extractelement <2 x float> %i.in, i64 0 ; 3 uses
  %i.iw = fmul float %i.iv, %i.ir
  %i.ix = fmul float %i.iq, %i.it
  %i.iy = fsub float %i.iw, %i.ix                 ; 2 uses
  %i.iz = extractelement <2 x float> %i.im, i64 0 ; 2 uses
  %i.ja = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.jb = extractelement <2 x float> %i.io, i64 0
  %i.jc = fmul float %i.jb, %i.iy
  %i.jd = fadd float %.sroa.391025.0.us.us, %.sroa.39.0.us.us ; 5 uses
  %i.je = fmul float %i.iq, %i.jd
  %i.jf = fmul float %i.is, %i.ir
  %i.jg = fsub float %i.je, %i.jf                 ; 2 uses
  %i.jh = fmul float %i.iv, %i.jd
  %i.ji = fsub float %i.iu, %i.jh                 ; 2 uses
  %i.jj = fmul float %i.iz, %i.jg
  %i.jk = fmul float %i.ja, %i.ji
  %i.jl = fadd float %i.jj, %i.jk
  %i.jm = fadd float %i.jc, %i.jl                 ; 2 uses
  %i.jn = tail call float @llvm.fabs.f32(float %i.jm)
  %i.jo = fcmp ogt float %i.jn, f0x057A0000
  br i1 %i.jo, label %bb.al, label %b3InvertMatrix.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.jp = fdiv float 1.000000e+00, %i.jm          ; 2 uses
  %i.jq = shufflevector <2 x float> %i.ip, <2 x float> %i.in, <2 x i32> <i32 1, i32 3>
  %i.jr = fmul <2 x float> %i.io, %i.jq
  %i.js = shufflevector <2 x float> %i.in, <2 x float> %i.im, <2 x i32> <i32 1, i32 3>
  %i.jt = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = insertelement <2 x float> %i.jt, float %i.jd, i64 0
  %i.jv = fmul <2 x float> %i.js, %i.ju
  %i.jw = fsub <2 x float> %i.jr, %i.jv
  %i.jx = shufflevector <2 x float> %i.im, <2 x float> %i.in, <4 x i32> <i32 0, i32 2, i32 poison, i32 3>
  %i.jy = insertelement <4 x float> %i.jx, float %i.iy, i64 2
  %i.jz = shufflevector <2 x float> %i.io, <2 x float> %i.ip, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ka = insertelement <4 x float> %i.jz, float 1.000000e+00, i64 2
  %i.kb = insertelement <4 x float> %i.ka, float %i.jd, i64 0
  %i.kc = fmul <4 x float> %i.jy, %i.kb
  %i.kd = shufflevector <2 x float> %i.io, <2 x float> %i.im, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ke = insertelement <4 x float> %i.kd, float 0.000000e+00, i64 2
  %i.kf = shufflevector <2 x float> %i.ip, <2 x float> %i.im, <4 x i32> <i32 0, i32 2, i32 poison, i32 1>
  %i.kg = insertelement <4 x float> %i.kf, float 1.000000e+00, i64 2
  %i.kh = fmul <4 x float> %i.ke, %i.kg
  %i.ki = fsub <4 x float> %i.kc, %i.kh
  %i.kj = fmul float %i.iq, %i.iz
  %i.kk = fmul float %i.iv, %i.ja
  %i.kl = fsub float %i.kj, %i.kk
  %i.km = insertelement <4 x float> poison, float %i.jp, i64 0 ; 2 uses
  %i.kn = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ko = shufflevector <4 x float> %i.km, <4 x float> %i.kn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.kp = insertelement <4 x float> %i.ko, float %i.ji, i64 3
  %i.kq = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> %i.ko, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.ks = fmul <4 x float> %i.kp, %i.kr
  %i.kt = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ku = fmul <4 x float> %i.ki, %i.kt
  %i.kv = fmul float %i.kl, %i.jp
  br label %b3InvertMatrix.exit.us.us

b3InvertMatrix.exit.us.us:                        ; preds = %bb.al, %bb.ak
  %.sroa.12850.0.us.us = phi float [ %i.kv, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %i.kw = phi <4 x float> [ %i.ks, %bb.al ], [ zeroinitializer, %bb.ak ]
  %i.kx = phi <4 x float> [ %i.ku, %bb.al ], [ zeroinitializer, %bb.ak ]
  store <4 x float> %i.kw, ptr %i.il, align 4, !tbaa !107
  %.sroa.8846.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 132
  store <4 x float> %i.kx, ptr %.sroa.8846.0..sroa_idx.us.us, align 4, !tbaa !107
  %.sroa.12850.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.co, i64 148
  store float %.sroa.12850.0.us.us, ptr %.sroa.12850.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.ky = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dq, i64 68
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !115
  %i.lb = and i32 %i.la, 8
  %.not589.us.us = icmp eq i32 %i.lb, 0
  %.sink.v = select i1 %.not589.us.us, i64 20, i64 32
  %.sink = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ky, ptr noundef nonnull align 4 dereferenceable(12) %.sink, i64 12, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  %i.ld = getelementptr inbounds nuw i8, ptr %i.co, i64 152
  %i.le = load float, ptr %i.lc, align 8, !tbaa !116
  store float %i.le, ptr %i.ld, align 8, !tbaa !117
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dq, i64 192
  %i.lg = getelementptr inbounds nuw i8, ptr %i.co, i64 156
  %i.lh = load <2 x float>, ptr %i.lf, align 8, !tbaa !107
  store <2 x float> %i.lh, ptr %i.lg, align 4, !tbaa !107
  %i.li = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !191 ; 2 uses
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds [308 x i8], ptr %.0542, i64 %i.lk ; 3 uses
  %i.lm = mul nsw i64 %i.lk, 308
  %i.ln = add i64 %i.lm, %i.bn, !nosanitize !10   ; 3 uses
  %i.lo = icmp eq i64 %i.ln, 0
  %i.lp = xor i1 %i.bo, %i.lo
  %i.lq = icmp uge i64 %i.ln, %i.bn, !nosanitize !10
  %i.lr = icmp slt i32 %i.lj, 0
  %i.ls = xor i1 %i.lr, %i.lq
  %i.lt = and i1 %i.lp, %i.ls, !nosanitize !10
  br i1 %i.lt, label %.split4861.us.us, label %.split5564.us, !prof !11, !nosanitize !10

.split4861.us.us:                                 ; preds = %b3InvertMatrix.exit.us.us
  store ptr %i.ll, ptr %i.co, align 8, !tbaa !118
  %i.lu = icmp sgt i32 %i.hq, 0
  br i1 %i.lu, label %.lr.ph4863.us.us, label %.lr.ph4867.split.us.a

.lr.ph4863.us.us:                                 ; preds = %.split4861.us.us
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.lw = ptrtoint ptr %i.ll to i64               ; 3 uses
  %.sroa.2357.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.dq, i64 208 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.dq, i64 200 ; 2 uses
  %i.ly = fadd float %.0547.us.us, %.0548.us.us   ; 3 uses
  %.sroa.09.0.vec.extract.i672.us.us = extractelement <2 x float> %.sroa.0430.0.us.us, i64 0
  %.sroa.09.0.vec.extract.i656.us.us = extractelement <2 x float> %.sroa.0446.0.us.us, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i652.us.us = extractelement <2 x float> %.sroa.0446.0.us.us, i64 1 ; 2 uses
  %.sroa.07.0.vec.extract.i676.us.us = extractelement <2 x float> %.sroa.0434.0.us.us, i64 0
  %.sroa.07.4.vec.extract.i678.us.us = extractelement <2 x float> %.sroa.0434.0.us.us, i64 1
  %wide.trip.count10108 = zext nneg i32 %i.hq to i64
  %i.lz = extractelement <2 x float> %i.fv, i64 1
  %i.ma = insertelement <2 x float> poison, float %.sroa.39.0.us.us, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.md = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.me = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.mf = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mg = insertelement <2 x float> %i.mf, float %.sroa.391025.0.us.us, i64 0
  %i.mh = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mi = insertelement <2 x float> %i.mh, float %.sroa.15959.0.us.us, i64 0
  %i.mj = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mk = insertelement <2 x float> %i.mj, float %.sroa.27992.0.us.us, i64 0
  %i.ml = shufflevector <2 x float> %i.hl, <2 x float> %i.fv, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.mm = insertelement <8 x float> %i.ml, float %.sroa.39.0.us.us, i64 2
  %i.mn = insertelement <8 x float> %i.mm, float %.sroa.391025.0.us.us, i64 5
  %i.mo = shufflevector <2 x float> %i.fw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mp = shufflevector <4 x float> %i.ig, <4 x float> %i.mo, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %i.mq = insertelement <8 x float> %i.mp, float %.sroa.15.0.us.us, i64 2
  %i.mr = insertelement <8 x float> %i.mq, float %i.ia, i64 3
  %i.ms = insertelement <8 x float> %i.mr, float %.sroa.15959.0.us.us, i64 5
  %i.mt = shufflevector <2 x float> %i.hm, <2 x float> %i.hn, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.mu = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mv = shufflevector <4 x float> %i.mt, <4 x float> %i.mu, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %i.mw = insertelement <8 x float> %i.mv, float %.sroa.27.0.us.us, i64 2
  %i.mx = insertelement <8 x float> %i.mw, float %i.ic, i64 3
  %i.my = insertelement <8 x float> %i.mx, float %.sroa.27992.0.us.us, i64 5
  %i.mz = insertelement <8 x float> poison, float %.0548.us.us, i64 6
  %i.na = insertelement <8 x float> %i.mz, float %.0547.us.us, i64 7
  %i.nb = insertelement <4 x float> poison, float %.sroa.5432.0.us.us, i64 0
  %i.nc = insertelement <4 x float> %i.nb, float %.sroa.5448.0.us.us, i64 1
  %i.nd = shufflevector <2 x float> %.sroa.0430.0.us.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  br label %.lr.ph4863.split.us.us

.lr.ph4863.split.us.us:                           ; preds = %.lr.ph4863.us.us, %b3Invert2.exit.us.us
  %indvars.iv10104 = phi i64 [ 0, %.lr.ph4863.us.us ], [ %indvars.iv.next10105, %b3Invert2.exit.us.us ] ; 5 uses
  %i.ne = load ptr, ptr %i.lv, align 8, !tbaa !119 ; 3 uses
  %i.nf = getelementptr inbounds nuw [268 x i8], ptr %i.ne, i64 %indvars.iv10104 ; 10 uses
  %i.ng = mul nuw nsw i64 %indvars.iv10104, 268
  %i.nh = ptrtoint ptr %i.ne to i64, !nosanitize !10 ; 3 uses
  %i.ni = add i64 %i.ng, %i.nh, !nosanitize !10   ; 3 uses
  %i.nj = icmp ne ptr %i.ne, null, !nosanitize !10 ; 2 uses
  %i.nk = icmp eq i64 %i.ni, 0
  %i.nl = xor i1 %i.nj, %i.nk
  %i.nm = icmp uge i64 %i.ni, %i.nh, !nosanitize !10
  %i.nn = and i1 %i.nl, %i.nm, !nosanitize !10
  br i1 %i.nn, label %bb.am, label %.split5571.us, !prof !11, !nosanitize !10

bb.am:                                            ; preds = %.lr.ph4863.split.us.us
  %i.no = getelementptr inbounds nuw [308 x i8], ptr %i.ll, i64 %indvars.iv10104 ; 41 uses
  %i.np = mul nuw nsw i64 %indvars.iv10104, 308
  %i.nq = add i64 %i.np, %i.lw, !nosanitize !10   ; 3 uses
  %i.nr = icmp eq i64 %i.nq, 0
  %i.ns = xor i1 %i.bo, %i.nr
  %i.nt = icmp uge i64 %i.nq, %i.lw, !nosanitize !10
  %i.nu = and i1 %i.ns, %i.nt, !nosanitize !10
  br i1 %i.nu, label %bb.an, label %.split5575.us, !prof !11, !nosanitize !10

bb.an:                                            ; preds = %bb.am
  %i.nv = ptrtoint ptr %i.nf to i64, !nosanitize !10 ; 5 uses
  %i.nw = and i64 %i.nv, 3, !nosanitize !10
  %i.nx = icmp eq i64 %i.nw, 0, !nosanitize !10
  %i.ny = and i1 %i.nj, %i.nx
  br i1 %i.ny, label %bb.ao, label %.split5579.us, !prof !11, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nf, i64 264
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !121 ; 8 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nf, i64 224
  %.sroa.0379.0.copyload.us.us = load <2 x float>, ptr %i.ob, align 4, !tbaa !107 ; 15 uses
  %.sroa.12.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.nf, i64 232
  %.sroa.12.0.copyload.us.us = load float, ptr %.sroa.12.0..sroa_idx.us.us, align 4, !tbaa !107 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.017.0.vec.extract.i.us.us = extractelement <2 x float> %.sroa.0379.0.copyload.us.us, i64 0 ; 5 uses
  %i.oc = tail call float @llvm.fabs.f32(float %.sroa.017.0.vec.extract.i.us.us)
  %or.cond.i.us.us = fcmp ogt float %i.oc, 5.000000e-01
  br i1 %or.cond.i.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !122
  store float %.sroa.12.0.copyload.us.us, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  %.sroa.017.4.vec.extract.i.us.us = extractelement <2 x float> %.sroa.0379.0.copyload.us.us, i64 1
  %i.od = fneg float %.sroa.017.4.vec.extract.i.us.us
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %.sroa.017.4.vec.extract21.i.us.us = extractelement <2 x float> %.sroa.0379.0.copyload.us.us, i64 1
  store float %.sroa.017.4.vec.extract21.i.us.us, ptr %.sroa.014.i, align 8, !tbaa !122
  %i.oe = fneg float %.sroa.017.0.vec.extract.i.us.us
  store float %i.oe, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.05.0.in.i.us.us = phi ptr [ %.sroa.014.i, %bb.aq ], [ %.sroa.0.i, %bb.ap ]
  %.sroa.5.0.i.us.us = phi float [ 0.000000e+00, %bb.aq ], [ %i.od, %bb.ap ] ; 3 uses
  %.sroa.05.0.i.us.us = load <2 x float>, ptr %.sroa.05.0.in.i.us.us, align 8, !tbaa !107 ; 3 uses
  %i.of = fmul <2 x float> %.sroa.05.0.i.us.us, %.sroa.05.0.i.us.us ; 2 uses
  %shift = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.of, %shift
  %i.og = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.oh = fmul float %.sroa.5.0.i.us.us, %.sroa.5.0.i.us.us
  %i.oi = fadd float %i.oh, %i.og                 ; 2 uses
  %i.oj = fcmp ogt float %i.oi, f0x057A0000
  br i1 %i.oj, label %bb.as, label %b3Perp.exit.us.us

bb.as:                                            ; preds = %bb.ar
  %sqrt.i.us.us = tail call float @llvm.sqrt.f32(float %i.oi)
  %i.ok = fdiv float 1.000000e+00, %sqrt.i.us.us  ; 2 uses
  %i.ol = insertelement <2 x float> poison, float %i.ok, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = fmul <2 x float> %.sroa.05.0.i.us.us, %i.om
  %i.oo = fmul float %.sroa.5.0.i.us.us, %i.ok
  br label %b3Perp.exit.us.us

b3Perp.exit.us.us:                                ; preds = %bb.as, %bb.ar
  %.sroa.07.0.i.i.us.us = phi <2 x float> [ %i.on, %bb.as ], [ zeroinitializer, %bb.ar ] ; 10 uses
  %.sroa.5.0.i.i.us.us = phi float [ %i.oo, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.sroa.09.4.vec.extract13.i.us.us = extractelement <2 x float> %.sroa.07.0.i.i.us.us, i64 1 ; 3 uses
  %i.op = fmul float %.sroa.12.0.copyload.us.us, %.sroa.09.4.vec.extract13.i.us.us
  %.sroa.0.4.vec.extract8.i.us.us = extractelement <2 x float> %.sroa.0379.0.copyload.us.us, i64 1 ; 3 uses
  %i.oq = fmul float %.sroa.0.4.vec.extract8.i.us.us, %.sroa.5.0.i.i.us.us
  %i.or = fsub float %i.op, %i.oq                 ; 5 uses
  %i.os = fmul float %.sroa.017.0.vec.extract.i.us.us, %.sroa.5.0.i.i.us.us
  %.sroa.09.0.vec.extract.i.us.us = extractelement <2 x float> %.sroa.07.0.i.i.us.us, i64 0 ; 2 uses
  %i.ot = fmul float %.sroa.12.0.copyload.us.us, %.sroa.09.0.vec.extract.i.us.us
  %i.ou = fsub float %i.os, %i.ot                 ; 7 uses
  %i.ov = fmul float %.sroa.0.4.vec.extract8.i.us.us, %.sroa.09.0.vec.extract.i.us.us
  %i.ow = fmul float %.sroa.017.0.vec.extract.i.us.us, %.sroa.09.4.vec.extract13.i.us.us
  %i.ox = fsub float %i.ov, %i.ow                 ; 7 uses
  %i.oy = ptrtoint ptr %i.no to i64, !nosanitize !10 ; 7 uses
  %i.oz = and i64 %i.oy, 3, !nosanitize !10
  %i.pa = icmp eq i64 %i.oz, 0, !nosanitize !10
  %i.pb = and i1 %i.bo, %i.pa
  br i1 %i.pb, label %bb.at, label %.split5588.us, !prof !11, !nosanitize !10

bb.at:                                            ; preds = %b3Perp.exit.us.us
  %.sroa.016.0.vec.insert.i.us.us = insertelement <2 x float> poison, float %i.or, i64 0
  %.sroa.016.4.vec.insert.i.us.us = insertelement <2 x float> %.sroa.016.0.vec.insert.i.us.us, float %i.ou, i64 1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.no, i64 192 ; 2 uses
  store i32 %i.oa, ptr %i.pc, align 4, !tbaa !127
  %i.pd = getelementptr inbounds nuw i8, ptr %i.no, i64 196
  store <2 x float> %.sroa.0379.0.copyload.us.us, ptr %i.pd, align 4, !tbaa !107
  %.sroa.12.0..sroa_idx388.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 204
  store float %.sroa.12.0.copyload.us.us, ptr %.sroa.12.0..sroa_idx388.us.us, align 4, !tbaa !107
  %i.pe = getelementptr inbounds nuw i8, ptr %i.no, i64 208
  store <2 x float> %.sroa.07.0.i.i.us.us, ptr %i.pe, align 4, !tbaa !107
  %.sroa.8.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 216
  store float %.sroa.5.0.i.i.us.us, ptr %.sroa.8.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.pf = getelementptr inbounds nuw i8, ptr %i.no, i64 220
  store <2 x float> %.sroa.016.4.vec.insert.i.us.us, ptr %i.pf, align 4, !tbaa !107
  %.sroa.7.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 228
  store float %i.ox, ptr %.sroa.7.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.pg = getelementptr inbounds nuw i8, ptr %i.no, i64 300
  %.sroa.2357.0.copyload.us.us = load float, ptr %.sroa.2357.0..sroa_idx.us.us, align 8
  %i.ph = fmul float %.sroa.5.0.i.i.us.us, %.sroa.2357.0.copyload.us.us
  %.sroa.0356.0.copyload.us.us = load <2 x float>, ptr %i.lx, align 8 ; 2 uses
  %foldExtExtBinop14042 = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.0356.0.copyload.us.us
  %foldExtExtBinop14044 = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.0356.0.copyload.us.us
  %shift14046 = shufflevector <2 x float> %foldExtExtBinop14044, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14047 = fadd <2 x float> %foldExtExtBinop14042, %shift14046
  %i.pi = extractelement <2 x float> %foldExtExtBinop14047, i64 0
  %i.pj = fadd float %i.ph, %i.pi
  store float %i.pj, ptr %i.pg, align 4, !tbaa !192
  %i.pk = getelementptr inbounds nuw i8, ptr %i.no, i64 304
  %.sroa.2353.0.copyload.us.us = load float, ptr %.sroa.2357.0..sroa_idx.us.us, align 8
  %i.pl = fmul float %i.ox, %.sroa.2353.0.copyload.us.us
  %.sroa.0352.0.copyload.us.us = load <2 x float>, ptr %i.lx, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i594.us.us = extractelement <2 x float> %.sroa.0352.0.copyload.us.us, i64 0
  %i.pm = fmul float %i.or, %.sroa.03.0.vec.extract.i594.us.us
  %.sroa.03.4.vec.extract.i596.us.us = extractelement <2 x float> %.sroa.0352.0.copyload.us.us, i64 1
  %i.pn = fmul float %i.ou, %.sroa.03.4.vec.extract.i596.us.us
  %i.po = fadd float %i.pm, %i.pn
  %i.pp = fadd float %i.pl, %i.po
  store float %i.pp, ptr %i.pk, align 4, !tbaa !193
  %i.pq = icmp sgt i32 %i.oa, 0                   ; 2 uses
  br i1 %i.pq, label %.lr.ph.us.us.preheader, label %._crit_edge.us.us

.lr.ph.us.us.preheader:                           ; preds = %bb.at
  %wide.trip.count = zext nneg i32 %i.oa to i64
  %i.pr = shufflevector <2 x float> %.sroa.0379.0.copyload.us.us, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.ps = shufflevector <2 x float> %.sroa.0379.0.copyload.us.us, <2 x float> %.sroa.0430.0.us.us, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.pt = insertelement <4 x float> %i.ps, float %.sroa.09.0.vec.extract.i656.us.us, i64 3
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next, %bb.aw ] ; 6 uses
  %.sroa.0345.04851.us.us = phi <2 x float> [ zeroinitializer, %.lr.ph.us.us.preheader ], [ %i.um, %bb.aw ]
  %.sroa.0341.04849.us.us = phi <2 x float> [ zeroinitializer, %.lr.ph.us.us.preheader ], [ %i.uo, %bb.aw ]
  %.05504848.us.us = phi float [ 0.000000e+00, %.lr.ph.us.us.preheader ], [ %i.ut, %bb.aw ]
  %i.pu = phi <2 x float> [ zeroinitializer, %.lr.ph.us.us.preheader ], [ %i.us, %bb.aw ]
  %exitcond.not = icmp eq i64 %indvars.iv, 5
  br i1 %exitcond.not, label %.split5609.us, label %bb.au, !prof !89, !nosanitize !10

bb.au:                                            ; preds = %.lr.ph.us.us
  %i.pv = getelementptr inbounds nuw [48 x i8], ptr %i.no, i64 %indvars.iv ; 10 uses
  %i.pw = mul nuw nsw i64 %indvars.iv, 48
  %i.px = add i64 %i.pw, %i.oy, !nosanitize !10   ; 2 uses
  %.not591.us.us = icmp ult i64 %i.px, %i.oy, !nosanitize !10
  br i1 %.not591.us.us, label %.split5612.us, label %bb.av, !prof !89, !nosanitize !10

bb.av:                                            ; preds = %bb.au
  %i.py = mul nuw nsw i64 %indvars.iv, 56
  %i.pz = add i64 %i.py, %i.nv, !nosanitize !10   ; 2 uses
  %.not592.us.us = icmp ult i64 %i.pz, %i.nv, !nosanitize !10
  br i1 %.not592.us.us, label %.split5616.us, label %bb.aw, !prof !89, !nosanitize !10

bb.aw:                                            ; preds = %bb.av
  %i.qa = getelementptr inbounds nuw [56 x i8], ptr %i.nf, i64 %indvars.iv ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 4 dereferenceable(12) %i.qa, i64 12, i1 false), !tbaa.struct !128
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 12 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qb, ptr noundef nonnull align 4 dereferenceable(12) %i.qc, i64 12, i1 false), !tbaa.struct !128
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !130 ; 2 uses
  %.sroa.0314.0.copyload.us.us = load <2 x float>, ptr %i.qb, align 4 ; 9 uses
  %.sroa.2315.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.pv, i64 20
  %.sroa.2315.0.copyload.us.us = load float, ptr %.sroa.2315.0..sroa_idx.us.us, align 4 ; 5 uses
  %.sroa.0312.0.copyload.us.us = load <2 x float>, ptr %i.pv, align 4 ; 11 uses
  %.sroa.2313.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %.sroa.2313.0.copyload.us.us = load float, ptr %.sroa.2313.0..sroa_idx.us.us, align 4 ; 5 uses
  %.sroa.0.0.vec.extract.i608.us.us = extractelement <2 x float> %.sroa.0312.0.copyload.us.us, i64 0
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.qg = fsub float %.sroa.2315.0.copyload.us.us, %.sroa.2313.0.copyload.us.us
  %i.qh = fmul float %.sroa.12.0.copyload.us.us, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.qk = load float, ptr %i.qi, align 4, !tbaa !131
  %i.ql = fmul float %i.v, %i.qk
  store float %i.ql, ptr %i.qj, align 4, !tbaa !133
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pv, i64 36
  store float 0.000000e+00, ptr %i.qm, align 4, !tbaa !134
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  %i.qo = shufflevector <2 x float> %.sroa.0314.0.copyload.us.us, <2 x float> %.sroa.0379.0.copyload.us.us, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.qp = shufflevector <2 x float> %.sroa.0314.0.copyload.us.us, <2 x float> %.sroa.0312.0.copyload.us.us, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.qq = insertelement <8 x float> %i.qp, float %.sroa.12.0.copyload.us.us, i64 0
  %i.qr = insertelement <8 x float> %i.qq, float %.sroa.2315.0.copyload.us.us, i64 1
  %i.qs = insertelement <8 x float> %i.qr, float %.sroa.2313.0.copyload.us.us, i64 4
  %i.qt = shufflevector <8 x float> %i.qs, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 4, i32 5, i32 poison, i32 poison>
  %i.qu = shufflevector <2 x float> %.sroa.0312.0.copyload.us.us, <2 x float> %.sroa.0379.0.copyload.us.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qw = shufflevector <8 x float> %i.qv, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 14, i32 15>
  %i.qx = shufflevector <2 x float> %.sroa.0379.0.copyload.us.us, <2 x float> %.sroa.0314.0.copyload.us.us, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qy = shufflevector <8 x float> %i.qx, <8 x float> %i.qw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.qz = shufflevector <2 x float> %.sroa.0314.0.copyload.us.us, <2 x float> %.sroa.0312.0.copyload.us.us, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison>
  %i.ra = shufflevector <8 x float> %i.qz, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.rb = insertelement <8 x float> %i.ra, float %.sroa.2315.0.copyload.us.us, i64 0
  %i.rc = insertelement <8 x float> %i.rb, float %.sroa.12.0.copyload.us.us, i64 1
  %i.rd = insertelement <8 x float> %i.rc, float %.sroa.2313.0.copyload.us.us, i64 3
  %i.re = shufflevector <8 x float> %i.rd, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %i.rf = fmul <8 x float> %i.qy, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pv, i64 28
  %i.rh = shufflevector <2 x float> %.sroa.0314.0.copyload.us.us, <2 x float> %.sroa.0312.0.copyload.us.us, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ri = shufflevector <2 x float> %.sroa.0312.0.copyload.us.us, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.rk = fsub <4 x float> %i.rh, %i.rj
  %foldExtExtBinop14049 = fsub <2 x float> %.sroa.0314.0.copyload.us.us, %.sroa.0312.0.copyload.us.us
  %foldExtExtBinop14051 = fmul <2 x float> %.sroa.0379.0.copyload.us.us, %foldExtExtBinop14049
  %i.rl = extractelement <2 x float> %foldExtExtBinop14051, i64 1
  %i.rm = fmul <4 x float> %i.pt, %i.rk           ; 4 uses
  %i.rn = extractelement <4 x float> %i.rm, i64 0
  %i.ro = fadd float %i.rn, %i.rl
  %i.rp = fadd float %i.qh, %i.ro
  %i.rq = fsub float %i.qe, %i.rp
  store float %i.rq, ptr %i.qf, align 4, !tbaa !135
  %i.rr = shufflevector <2 x float> %.sroa.0312.0.copyload.us.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rs = shufflevector <4 x float> %i.qo, <4 x float> %i.rr, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rt = shufflevector <8 x float> %i.rs, <8 x float> %i.pr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.ru = fmul <8 x float> %i.rt, %i.qt
  %i.rv = shufflevector <8 x float> %i.ru, <8 x float> %i.na, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.rw = fsub <8 x float> %i.rv, %i.rf           ; 4 uses
  %i.rx = shufflevector <8 x float> %i.rw, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 poison, i32 poison>
  %i.ry = fmul <8 x float> %i.ms, %i.rx
  %i.rz = shufflevector <8 x float> %i.rw, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 4, i32 4, i32 4, i32 poison, i32 poison>
  %i.sa = fmul <8 x float> %i.my, %i.rz
  %i.sb = fadd <8 x float> %i.ry, %i.sa
  %i.sc = shufflevector <8 x float> %i.rw, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 5, i32 5, i32 5, i32 poison, i32 poison>
  %i.sd = fmul <8 x float> %i.mn, %i.sc
  %i.se = fadd <8 x float> %i.sd, %i.sb
  %i.sf = fmul <8 x float> %i.rw, %i.se           ; 6 uses
  %i.sg = extractelement <8 x float> %i.sf, i64 3
  %i.sh = extractelement <8 x float> %i.sf, i64 4
  %i.si = fadd float %i.sg, %i.sh
  %i.sj = extractelement <8 x float> %i.sf, i64 5
  %i.sk = fadd float %i.sj, %i.si
  %i.sl = fadd float %i.ly, %i.sk
  %i.sm = extractelement <8 x float> %i.sf, i64 0
  %i.sn = extractelement <8 x float> %i.sf, i64 1
  %i.so = fadd float %i.sm, %i.sn
  %i.sp = extractelement <8 x float> %i.sf, i64 2
  %i.sq = fadd float %i.sp, %i.so
  %i.sr = fadd float %i.sq, %i.sl                 ; 2 uses
  %i.ss = fcmp ogt float %i.sr, 0.000000e+00
  %i.st = fdiv float 1.000000e+00, %i.sr
  %i.su = select i1 %i.ss, float %i.st, float 0.000000e+00
  store float %i.su, ptr %i.qn, align 4, !tbaa !136
  %shift14053 = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop14054 = fsub <4 x float> %i.rm, %shift14053
  %i.sv = extractelement <4 x float> %foldExtExtBinop14054, i64 1
  %i.sw = fadd float %.sroa.5436.0.us.us, %i.sv
  %i.sx = fmul float %.sroa.09.4.vec.extract13.i652.us.us, %.sroa.0.0.vec.extract.i608.us.us
  %i.sy = extractelement <4 x float> %i.rm, i64 3
  %i.sz = fsub float %i.sy, %i.sx
  %i.ta = fadd float %.sroa.5452.0.us.us, %i.sz
  %i.tb = fsub float %i.sw, %i.ta
  %i.tc = fmul float %.sroa.12.0.copyload.us.us, %i.tb
  %i.td = shufflevector <2 x float> %.sroa.0314.0.copyload.us.us, <2 x float> %.sroa.0312.0.copyload.us.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> %i.nd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tf = insertelement <4 x float> %i.te, float %.sroa.09.4.vec.extract13.i652.us.us, i64 3
  %i.tg = insertelement <4 x float> %i.nc, float %.sroa.2315.0.copyload.us.us, i64 2
  %i.th = insertelement <4 x float> %i.tg, float %.sroa.2313.0.copyload.us.us, i64 3 ; 2 uses
  %i.ti = fmul <4 x float> %i.tf, %i.th
  %i.tj = shufflevector <2 x float> %.sroa.0314.0.copyload.us.us, <2 x float> %.sroa.0312.0.copyload.us.us, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.tk = insertelement <4 x float> %i.tj, float %.sroa.09.0.vec.extract.i672.us.us, i64 2
  %i.tl = insertelement <4 x float> %i.tk, float %.sroa.09.0.vec.extract.i656.us.us, i64 3
  %i.tm = fmul <4 x float> %i.th, %i.tl
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.to = fsub <4 x float> %i.ti, %i.tn           ; 3 uses
  %i.tp = extractelement <4 x float> %i.to, i64 2
  %i.tq = fadd float %.sroa.07.0.vec.extract.i676.us.us, %i.tp
  %i.tr = extractelement <4 x float> %i.to, i64 0
  %i.ts = fadd float %.sroa.07.4.vec.extract.i678.us.us, %i.tr
  %i.tt = shufflevector <4 x float> %i.to, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.tu = fadd <2 x float> %.sroa.0450.0.us.us, %i.tt ; 2 uses
  %i.tv = extractelement <2 x float> %i.tu, i64 0
  %i.tw = fsub float %i.tq, %i.tv
  %i.tx = fmul float %.sroa.017.0.vec.extract.i.us.us, %i.tw
  %i.ty = extractelement <2 x float> %i.tu, i64 1
  %i.tz = fsub float %i.ts, %i.ty
  %i.ua = fmul float %.sroa.0.4.vec.extract8.i.us.us, %i.tz
  %i.ub = fadd float %i.tx, %i.ua
  %i.uc = fadd float %i.tc, %i.ub
  store float %i.uc, ptr %i.rg, align 4, !tbaa !137
  %i.ud = fmul float %i.z, %i.qe
  %i.ue = fsub float 2.000000e+00, %i.ud          ; 3 uses
  %i.uf = fcmp olt float %i.ue, 1.000000e-10
  %i.ug = fcmp ogt float %i.ue, 1.000000e+00
  %i.uh = select i1 %i.ug, float 1.000000e+00, float %i.ue
  %i.ui = select i1 %i.uf, float 1.000000e-10, float %i.uh ; 2 uses
  %i.uj = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ul = fmul <2 x float> %.sroa.0312.0.copyload.us.us, %i.uk
  %i.um = fadd <2 x float> %.sroa.0345.04851.us.us, %i.ul ; 2 uses
  %i.un = fmul <2 x float> %.sroa.0314.0.copyload.us.us, %i.uk
  %i.uo = fadd <2 x float> %.sroa.0341.04849.us.us, %i.un ; 2 uses
  %i.up = insertelement <2 x float> poison, float %.sroa.2315.0.copyload.us.us, i64 0
  %i.uq = insertelement <2 x float> %i.up, float %.sroa.2313.0.copyload.us.us, i64 1
  %i.ur = fmul <2 x float> %i.uq, %i.uk
  %i.us = fadd <2 x float> %i.pu, %i.ur           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ut = fadd float %.05504848.us.us, %i.ui      ; 2 uses
  %exitcond10096.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond10096.not, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !183

._crit_edge.us.us:                                ; preds = %bb.aw, %bb.at
  %.0550.lcssa.us.us = phi float [ 0.000000e+00, %bb.at ], [ %i.ut, %bb.aw ]
  %.sroa.0341.0.lcssa.us.us = phi <2 x float> [ zeroinitializer, %bb.at ], [ %i.uo, %bb.aw ] ; 2 uses
  %.sroa.0345.0.lcssa.us.us = phi <2 x float> [ zeroinitializer, %bb.at ], [ %i.um, %bb.aw ]
  %i.uu = phi <2 x float> [ zeroinitializer, %bb.at ], [ %i.us, %bb.aw ] ; 2 uses
  %i.uv = fdiv float 1.000000e+00, %.0550.lcssa.us.us ; 3 uses
  %.sroa.0.0.vec.extract.i602.us.us = extractelement <2 x float> %.sroa.0341.0.lcssa.us.us, i64 0
  %i.uw = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.ux = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uy = fmul <2 x float> %i.ux, %.sroa.0345.0.lcssa.us.us ; 11 uses
  %i.uz = extractelement <2 x float> %i.uu, i64 1
  %i.va = fmul float %i.uv, %i.uz                 ; 9 uses
  %i.vb = fmul float %i.uv, %.sroa.0.0.vec.extract.i602.us.us ; 3 uses
  %.sroa.05.0.vec.insert.i603.us.us = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vc = shufflevector <2 x float> %.sroa.0341.0.lcssa.us.us, <2 x float> %i.uu, <2 x i32> <i32 1, i32 2>
  %i.vd = fmul <2 x float> %i.ux, %i.vc           ; 6 uses
  %i.ve = shufflevector <2 x float> %.sroa.05.0.vec.insert.i603.us.us, <2 x float> %i.vd, <2 x i32> <i32 0, i32 2>
  %i.vf = getelementptr inbounds nuw i8, ptr %i.no, i64 232
  store <2 x float> %i.uy, ptr %i.vf, align 4, !tbaa !107
  %.sroa.11.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 240
  store float %i.va, ptr %.sroa.11.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.vg = getelementptr inbounds nuw i8, ptr %i.no, i64 244
  store <2 x float> %i.ve, ptr %i.vg, align 4, !tbaa !107
  %.sroa.10.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 252
  %i.vh = extractelement <2 x float> %i.vd, i64 1 ; 2 uses
  store float %i.vh, ptr %.sroa.10.0..sroa_idx.us.us, align 4, !tbaa !107
  br i1 %i.pq, label %.lr.ph4859.us.us.preheader, label %._crit_edge4860.us.us

.lr.ph4859.us.us.preheader:                       ; preds = %._crit_edge.us.us
  %i.vi = getelementptr inbounds nuw i8, ptr %i.no, i64 44
  %.sroa.2149.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %.sroa.2149.0.copyload.us.us = load float, ptr %.sroa.2149.0..sroa_idx.us.us, align 4
  %i.vj = fsub float %i.va, %.sroa.2149.0.copyload.us.us ; 2 uses
  %i.vk = fmul float %i.vj, %i.vj
  %.sroa.0148.0.copyload.us.us = load <2 x float>, ptr %i.no, align 4
  %i.vl = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.us ; 2 uses
  %i.vm = fmul <2 x float> %i.vl, %i.vl           ; 2 uses
  %shift14056 = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14057 = fadd <2 x float> %i.vm, %shift14056
  %i.vn = extractelement <2 x float> %foldExtExtBinop14057, i64 0
  %i.vo = fadd float %i.vk, %i.vn
  %sqrt.i.i.us.us = tail call float @llvm.sqrt.f32(float %i.vo)
  store float %sqrt.i.i.us.us, ptr %i.vi, align 4, !tbaa !138
  %exitcond10103.not = icmp eq i32 %i.oa, 1
  br i1 %exitcond10103.not, label %._crit_edge4860.us.us, label %.lr.ph4859.us.us.1

.lr.ph4859.us.us.1:                               ; preds = %.lr.ph4859.us.us.preheader
  %.not590.us.us.1 = icmp ugt ptr %i.no, inttoptr (i64 -49 to ptr)
  br i1 %.not590.us.us.1, label %.split5662.us, label %bb.ax, !prof !89, !nosanitize !10

bb.ax:                                            ; preds = %.lr.ph4859.us.us.1
  %i.vp = getelementptr inbounds nuw i8, ptr %i.no, i64 48
  %i.vq = getelementptr inbounds nuw i8, ptr %i.no, i64 92
  %.sroa.2149.0..sroa_idx.us.us.1 = getelementptr inbounds nuw i8, ptr %i.no, i64 56
  %.sroa.2149.0.copyload.us.us.1 = load float, ptr %.sroa.2149.0..sroa_idx.us.us.1, align 4
  %i.vr = fsub float %i.va, %.sroa.2149.0.copyload.us.us.1 ; 2 uses
  %i.vs = fmul float %i.vr, %i.vr
  %.sroa.0148.0.copyload.us.us.1 = load <2 x float>, ptr %i.vp, align 4
  %i.vt = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.us.1 ; 2 uses
  %i.vu = fmul <2 x float> %i.vt, %i.vt           ; 2 uses
  %shift14059 = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14060 = fadd <2 x float> %i.vu, %shift14059
  %i.vv = extractelement <2 x float> %foldExtExtBinop14060, i64 0
  %i.vw = fadd float %i.vs, %i.vv
  %sqrt.i.i.us.us.1 = tail call float @llvm.sqrt.f32(float %i.vw)
  store float %sqrt.i.i.us.us.1, ptr %i.vq, align 4, !tbaa !138
  %exitcond10103.1.not = icmp eq i32 %i.oa, 2
  br i1 %exitcond10103.1.not, label %._crit_edge4860.us.us, label %.lr.ph4859.us.us.2

.lr.ph4859.us.us.2:                               ; preds = %bb.ax
  %.not590.us.us.2 = icmp ugt ptr %i.no, inttoptr (i64 -97 to ptr)
  br i1 %.not590.us.us.2, label %.split5662.us, label %bb.ay, !prof !89, !nosanitize !10

bb.ay:                                            ; preds = %.lr.ph4859.us.us.2
  %i.vx = getelementptr inbounds nuw i8, ptr %i.no, i64 96
  %i.vy = getelementptr inbounds nuw i8, ptr %i.no, i64 140
  %.sroa.2149.0..sroa_idx.us.us.2 = getelementptr inbounds nuw i8, ptr %i.no, i64 104
  %.sroa.2149.0.copyload.us.us.2 = load float, ptr %.sroa.2149.0..sroa_idx.us.us.2, align 4
  %i.vz = fsub float %i.va, %.sroa.2149.0.copyload.us.us.2 ; 2 uses
  %i.wa = fmul float %i.vz, %i.vz
  %.sroa.0148.0.copyload.us.us.2 = load <2 x float>, ptr %i.vx, align 4
  %i.wb = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.us.2 ; 2 uses
  %i.wc = fmul <2 x float> %i.wb, %i.wb           ; 2 uses
  %shift14062 = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14063 = fadd <2 x float> %i.wc, %shift14062
  %i.wd = extractelement <2 x float> %foldExtExtBinop14063, i64 0
  %i.we = fadd float %i.wa, %i.wd
  %sqrt.i.i.us.us.2 = tail call float @llvm.sqrt.f32(float %i.we)
  store float %sqrt.i.i.us.us.2, ptr %i.vy, align 4, !tbaa !138
  %exitcond10103.2.not = icmp eq i32 %i.oa, 3
  br i1 %exitcond10103.2.not, label %._crit_edge4860.us.us, label %.lr.ph4859.us.us.3

.lr.ph4859.us.us.3:                               ; preds = %bb.ay
  %.not590.us.us.3 = icmp ugt ptr %i.no, inttoptr (i64 -145 to ptr)
  br i1 %.not590.us.us.3, label %.split5662.us, label %bb.az, !prof !89, !nosanitize !10

bb.az:                                            ; preds = %.lr.ph4859.us.us.3
  %i.wf = getelementptr inbounds nuw i8, ptr %i.no, i64 144
  %i.wg = getelementptr inbounds nuw i8, ptr %i.no, i64 188
  %.sroa.2149.0..sroa_idx.us.us.3 = getelementptr inbounds nuw i8, ptr %i.no, i64 152
  %.sroa.2149.0.copyload.us.us.3 = load float, ptr %.sroa.2149.0..sroa_idx.us.us.3, align 4
  %i.wh = fsub float %i.va, %.sroa.2149.0.copyload.us.us.3 ; 2 uses
  %i.wi = fmul float %i.wh, %i.wh
  %.sroa.0148.0.copyload.us.us.3 = load <2 x float>, ptr %i.wf, align 4
  %i.wj = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.us.3 ; 2 uses
  %i.wk = fmul <2 x float> %i.wj, %i.wj           ; 2 uses
  %shift14065 = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14066 = fadd <2 x float> %i.wk, %shift14065
  %i.wl = extractelement <2 x float> %foldExtExtBinop14066, i64 0
  %i.wm = fadd float %i.wi, %i.wl
  %sqrt.i.i.us.us.3 = tail call float @llvm.sqrt.f32(float %i.wm)
  store float %sqrt.i.i.us.us.3, ptr %i.wg, align 4, !tbaa !138
  %exitcond10103.3.not = icmp eq i32 %i.oa, 4
  br i1 %exitcond10103.3.not, label %._crit_edge4860.us.us, label %.lr.ph4859.us.us.4

.lr.ph4859.us.us.4:                               ; preds = %bb.az
  %.not590.us.us.4 = icmp ugt ptr %i.no, inttoptr (i64 -193 to ptr)
  br i1 %.not590.us.us.4, label %.split5662.us, label %bb.ba, !prof !89, !nosanitize !10

bb.ba:                                            ; preds = %.lr.ph4859.us.us.4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.no, i64 236
  %.sroa.2149.0..sroa_idx.us.us.4 = getelementptr inbounds nuw i8, ptr %i.no, i64 200
  %.sroa.2149.0.copyload.us.us.4 = load float, ptr %.sroa.2149.0..sroa_idx.us.us.4, align 4
  %i.wo = fsub float %i.va, %.sroa.2149.0.copyload.us.us.4 ; 2 uses
  %i.wp = fmul float %i.wo, %i.wo
  %.sroa.0148.0.copyload.us.us.4 = load <2 x float>, ptr %i.pc, align 4
  %i.wq = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.us.4 ; 2 uses
  %i.wr = fmul <2 x float> %i.wq, %i.wq           ; 2 uses
  %shift14068 = shufflevector <2 x float> %i.wr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14069 = fadd <2 x float> %i.wr, %shift14068
  %i.ws = extractelement <2 x float> %foldExtExtBinop14069, i64 0
  %i.wt = fadd float %i.wp, %i.ws
  %sqrt.i.i.us.us.4 = tail call float @llvm.sqrt.f32(float %i.wt)
  store float %sqrt.i.i.us.us.4, ptr %i.wn, align 4, !tbaa !138
  %exitcond10103.4.not = icmp eq i32 %i.oa, 5
  br i1 %exitcond10103.4.not, label %._crit_edge4860.us.us, label %.split5659.us

._crit_edge4860.us.us:                            ; preds = %.lr.ph4859.us.us.preheader, %bb.ax, %bb.ay, %bb.az, %bb.ba, %._crit_edge.us.us
  %i.wu = shufflevector <2 x float> %.sroa.07.0.i.i.us.us, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.wv = insertelement <2 x float> %i.wu, float %.sroa.5.0.i.i.us.us, i64 1
  %i.ww = fmul <2 x float> %i.wv, %i.uy
  %i.wx = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wy = insertelement <2 x float> %i.wx, float %i.va, i64 1
  %i.wz = fmul <2 x float> %.sroa.07.0.i.i.us.us, %i.wy
  %i.xa = insertelement <2 x float> %.sroa.07.0.i.i.us.us, float %i.or, i64 1 ; 3 uses
  %i.xb = insertelement <2 x float> poison, float %i.va, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xd = fmul <2 x float> %i.xa, %i.xc
  %i.xe = insertelement <2 x float> poison, float %.sroa.5.0.i.i.us.us, i64 0
  %i.xf = insertelement <2 x float> %i.xe, float %i.ox, i64 1
  %i.xg = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xh = fmul <2 x float> %i.xf, %i.xg
  %i.xi = extractelement <2 x float> %i.uy, i64 1 ; 2 uses
  %i.xj = fmul float %i.ox, %i.xi
  %i.xk = fmul float %i.ou, %i.va
  %i.xl = extractelement <2 x float> %i.uy, i64 0
  %i.xm = fmul float %i.ou, %i.xl
  %i.xn = fmul float %i.or, %i.xi
  %i.xo = insertelement <2 x float> %i.xa, float %.sroa.5.0.i.i.us.us, i64 0
  %i.xp = fmul <2 x float> %i.xo, %i.vd
  %i.xq = fmul float %.sroa.09.4.vec.extract13.i.us.us, %i.vh
  %i.xr = insertelement <2 x float> %i.wu, float %i.ox, i64 0
  %i.xs = fmul <2 x float> %i.xr, %i.vd
  %i.xt = insertelement <2 x float> poison, float %i.ou, i64 0
  %i.xu = insertelement <2 x float> %i.xt, float %.sroa.5.0.i.i.us.us, i64 1
  %i.xv = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xw = insertelement <2 x float> %i.xv, float %i.vb, i64 1 ; 2 uses
  %i.xx = fmul <2 x float> %i.xu, %i.xw
  %i.xy = insertelement <2 x float> %i.wu, float %i.ou, i64 1
  %i.xz = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ya = fmul <2 x float> %i.xy, %i.xz
  %i.yb = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = fmul <2 x float> %i.xa, %i.yb
  %i.yd = fmul float %i.ox, %i.vb
  %i.ye = fsub <2 x float> %i.ww, %i.wz           ; 7 uses
  %i.yf = fsub float %i.xj, %i.xk                 ; 4 uses
  %i.yg = fsub <2 x float> %i.xd, %i.xh           ; 5 uses
  %i.yh = fsub float %i.xm, %i.xn                 ; 4 uses
  %i.yi = fsub <2 x float> %i.xs, %i.xx           ; 5 uses
  %i.yj = insertelement <2 x float> poison, float %i.xq, i64 0
  %i.yk = insertelement <2 x float> %i.yj, float %i.yd, i64 1
  %i.yl = fsub <2 x float> %i.xp, %i.yk           ; 5 uses
  %i.ym = fsub <2 x float> %i.ya, %i.yc           ; 5 uses
  %i.yn = extractelement <2 x float> %i.yg, i64 0
  %i.yo = extractelement <2 x float> %i.ye, i64 0
  %i.yp = shufflevector <2 x float> %i.yg, <2 x float> %i.ye, <2 x i32> <i32 0, i32 3>
  %i.yq = fmul <2 x float> %i.fw, %i.yp
  %i.yr = shufflevector <2 x float> %i.ye, <2 x float> %i.yg, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ys = fmul <2 x float> %i.fx, %i.yr
  %i.yt = fadd <2 x float> %i.yq, %i.ys
  %i.yu = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yv = fmul <2 x float> %i.fv, %i.yu
  %i.yw = fadd <2 x float> %i.yv, %i.yt
  %i.yx = fmul <2 x float> %i.yr, %i.yw           ; 2 uses
  %i.yy = fmul float %.sroa.15959.0.us.us, %i.yf
  %i.yz = extractelement <2 x float> %i.yg, i64 1 ; 3 uses
  %i.za = fmul float %.sroa.27992.0.us.us, %i.yz
  %i.zb = fadd float %i.yy, %i.za
  %i.zc = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zd = insertelement <2 x float> %i.zc, float %i.yf, i64 1
  %i.ze = fmul <2 x float> %i.mi, %i.zd
  %i.zf = fmul <2 x float> %i.mk, %i.yg
  %i.zg = fadd <2 x float> %i.ze, %i.zf
  %i.zh = insertelement <2 x float> %i.ye, float %i.yh, i64 1
  %i.zi = fmul <2 x float> %i.mg, %i.zh
  %i.zj = fadd <2 x float> %i.zi, %i.zg           ; 2 uses
  %i.zk = fmul float %i.ib, %i.yf
  %i.zl = fmul float %i.id, %i.yz
  %i.zm = fadd float %i.zk, %i.zl
  %i.zn = fmul float %i.lz, %i.yh
  %i.zo = fadd float %i.zn, %i.zm                 ; 2 uses
  %i.zp = fmul float %.sroa.391025.0.us.us, %i.yh
  %i.zq = fadd float %i.zp, %i.zb                 ; 2 uses
  %i.zr = extractelement <2 x float> %i.zj, i64 1
  %i.zs = fmul float %i.yf, %i.zr
  %i.zt = fmul float %i.yz, %i.zo
  %i.zu = fadd float %i.zs, %i.zt
  %i.zv = fmul float %i.yh, %i.zq
  %i.zw = fadd float %i.zv, %i.zu
  %i.zx = fadd float %i.ly, %i.zw
  %i.zy = fmul <2 x float> %i.ho, %i.yi
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aaa = fmul <2 x float> %i.ho, %i.yl
  %i.aab = fadd <2 x float> %i.aaa, %i.zz
  %i.aac = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aad = fmul <2 x float> %i.hn, %i.yi
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aaf = fmul <2 x float> %i.md, %i.yl
  %i.aag = fadd <2 x float> %i.aaf, %i.aae
  %i.aah = fmul <2 x float> %i.mc, %i.ym
  %i.aai = fadd <2 x float> %i.aah, %i.aag        ; 2 uses
  %i.aaj = fmul <2 x float> %i.hm, %i.aac
  %i.aak = fmul <2 x float> %i.hn, %i.yl
  %i.aal = fadd <2 x float> %i.aak, %i.aaj
  %i.aam = fmul <2 x float> %i.hl, %i.ym
  %i.aan = fadd <2 x float> %i.aam, %i.aal        ; 2 uses
  %i.aao = fmul <2 x float> %i.mb, %i.ym
  %i.aap = fadd <2 x float> %i.aao, %i.aab        ; 2 uses
  %shift14074 = shufflevector <2 x float> %i.aai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14075 = fmul <2 x float> %i.yi, %shift14074
  %foldExtExtBinop14077 = fmul <2 x float> %i.yl, %i.aan
  %shift14079 = shufflevector <2 x float> %foldExtExtBinop14077, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14080 = fadd <2 x float> %foldExtExtBinop14075, %shift14079
  %foldExtExtBinop14082 = fmul <2 x float> %i.ym, %i.aap
  %shift14084 = shufflevector <2 x float> %foldExtExtBinop14082, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14085 = fadd <2 x float> %shift14084, %foldExtExtBinop14080
  %i.aaq = extractelement <2 x float> %foldExtExtBinop14085, i64 0
  %i.aar = fadd float %i.aaq, %i.zx               ; 2 uses
  %i.aas = fmul <2 x float> %i.ye, %i.zj
  %i.aat = fmul float %i.yn, %i.zo
  %i.aau = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aav = fadd <2 x float> %i.yx, %i.aau
  %i.aaw = insertelement <2 x float> %i.aav, float %i.aat, i64 1
  %i.aax = fadd <2 x float> %i.aas, %i.aaw
  %i.aay = fmul float %i.yo, %i.zq
  %i.aaz = insertelement <2 x float> %i.me, float %i.aay, i64 1
  %i.aba = fadd <2 x float> %i.aaz, %i.aax
  %i.abb = shufflevector <2 x float> %i.yi, <2 x float> %i.yl, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.abc = fmul <2 x float> %i.abb, %i.aai
  %i.abd = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abe = fmul <2 x float> %i.abd, %i.aan
  %i.abf = fadd <2 x float> %i.abe, %i.abc
  %i.abg = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abh = fmul <2 x float> %i.abg, %i.aap
  %i.abi = fadd <2 x float> %i.abh, %i.abf
  %i.abj = fadd <2 x float> %i.abi, %i.aba        ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.no, i64 264
  %i.abl = insertelement <2 x float> %i.abj, float %i.aar, i64 0
  %i.abm = fmul <2 x float> %i.abj, %i.abl        ; 2 uses
  %shift14087 = shufflevector <2 x float> %i.abm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14088 = fsub <2 x float> %i.abm, %shift14087
  %i.abn = extractelement <2 x float> %foldExtExtBinop14088, i64 0 ; 2 uses
  %i.abo = tail call float @llvm.fabs.f32(float %i.abn)
  %i.abp = fcmp ogt float %i.abo, f0x057A0000
  br i1 %i.abp, label %bb.bb, label %b3Invert2.exit.us.us

bb.bb:                                            ; preds = %._crit_edge4860.us.us
  %i.abq = fdiv float 1.000000e+00, %i.abn        ; 3 uses
  %i.abr = fmul float %i.aar, %i.abq
  %i.abs = fneg float %i.abq
  %i.abt = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.abu = insertelement <2 x float> %i.abt, float %i.abs, i64 1
  %i.abv = fmul <2 x float> %i.abj, %i.abu        ; 2 uses
  %i.abw = insertelement <2 x float> %i.abv, float %i.abr, i64 0
  %i.abx = shufflevector <2 x float> %i.abv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b3Invert2.exit.us.us

b3Invert2.exit.us.us:                             ; preds = %bb.bb, %._crit_edge4860.us.us
  %.sroa.5.0.i805.us.us = phi <2 x float> [ %i.abx, %bb.bb ], [ zeroinitializer, %._crit_edge4860.us.us ]
  %.sroa.0.0.i.us.us = phi <2 x float> [ %i.abw, %bb.bb ], [ zeroinitializer, %._crit_edge4860.us.us ]
  store <2 x float> %.sroa.0.0.i.us.us, ptr %i.abk, align 4, !tbaa !107
  %.sroa.426.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 272
  store <2 x float> %.sroa.5.0.i805.us.us, ptr %.sroa.426.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.aby = getelementptr inbounds nuw i8, ptr %i.no, i64 280
  %.sroa.224.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.nf, i64 248 ; 2 uses
  %.sroa.224.0.copyload.us.us = load float, ptr %.sroa.224.0..sroa_idx.us.us, align 4
  %i.abz = fmul float %.sroa.5.0.i.i.us.us, %.sroa.224.0.copyload.us.us
  %i.aca = getelementptr inbounds nuw i8, ptr %i.nf, i64 240 ; 2 uses
  %.sroa.023.0.copyload.us.us = load <2 x float>, ptr %i.aca, align 4 ; 2 uses
  %foldExtExtBinop14090 = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.023.0.copyload.us.us
  %foldExtExtBinop14092 = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.023.0.copyload.us.us
  %shift14094 = shufflevector <2 x float> %foldExtExtBinop14092, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14095 = fadd <2 x float> %foldExtExtBinop14090, %shift14094
  %i.acb = extractelement <2 x float> %foldExtExtBinop14095, i64 0
  %i.acc = fadd float %i.abz, %i.acb
  %i.acd = fmul float %i.v, %i.acc
  store float %i.acd, ptr %i.aby, align 4, !tbaa !194
  %i.ace = getelementptr inbounds nuw i8, ptr %i.no, i64 284
  %.sroa.220.0.copyload.us.us = load float, ptr %.sroa.224.0..sroa_idx.us.us, align 4
  %i.acf = fmul float %i.ox, %.sroa.220.0.copyload.us.us
  %.sroa.019.0.copyload.us.us = load <2 x float>, ptr %i.aca, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i812.us.us = extractelement <2 x float> %.sroa.019.0.copyload.us.us, i64 0
  %i.acg = fmul float %i.or, %.sroa.03.0.vec.extract.i812.us.us
  %.sroa.03.4.vec.extract.i814.us.us = extractelement <2 x float> %.sroa.019.0.copyload.us.us, i64 1
  %i.ach = fmul float %i.ou, %.sroa.03.4.vec.extract.i814.us.us
  %i.aci = fadd float %i.acg, %i.ach
  %i.acj = fadd float %i.acf, %i.aci
  %i.ack = fmul float %i.v, %i.acj
  store float %i.ack, ptr %i.ace, align 4, !tbaa !195
  %i.acl = getelementptr inbounds nuw i8, ptr %i.no, i64 256
  %i.acm = fmul <2 x float> %i.io, %.sroa.0379.0.copyload.us.us ; 2 uses
  %shift14097 = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14098 = fadd <2 x float> %i.acm, %shift14097
  %i.acn = extractelement <2 x float> %foldExtExtBinop14098, i64 0
  %i.aco = fmul float %i.jd, %.sroa.12.0.copyload.us.us
  %i.acp = fadd float %i.aco, %i.acn
  %i.acq = fmul float %.sroa.12.0.copyload.us.us, %i.acp
  %i.acr = fmul <2 x float> %i.im, %.sroa.0379.0.copyload.us.us
  %i.acs = shufflevector <2 x float> %.sroa.0379.0.copyload.us.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.act = fmul <2 x float> %i.in, %i.acs
  %i.acu = insertelement <2 x float> poison, float %.sroa.12.0.copyload.us.us, i64 0
  %i.acv = shufflevector <2 x float> %i.acu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acw = fmul <2 x float> %i.ip, %i.acv
  %i.acx = fadd <2 x float> %i.act, %i.acr
  %i.acy = fadd <2 x float> %i.acw, %i.acx
  %i.acz = fmul <2 x float> %.sroa.0379.0.copyload.us.us, %i.acy ; 2 uses
  %shift14100 = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14101 = fadd <2 x float> %i.acz, %shift14100
  %i.ada = extractelement <2 x float> %foldExtExtBinop14101, i64 0
  %i.adb = fadd float %i.acq, %i.ada              ; 2 uses
  %i.adc = fcmp ogt float %i.adb, 0.000000e+00
  %i.add = fdiv float 1.000000e+00, %i.adb
  %i.ade = select i1 %i.adc, float %i.add, float 0.000000e+00
  store float %i.ade, ptr %i.acl, align 4, !tbaa !139
  %i.adf = getelementptr inbounds nuw i8, ptr %i.nf, i64 236
  %i.adg = getelementptr inbounds nuw i8, ptr %i.no, i64 260
  %i.adh = load float, ptr %i.adf, align 4, !tbaa !140
  %i.adi = fmul float %i.v, %i.adh
  store float %i.adi, ptr %i.adg, align 4, !tbaa !141
  %i.adj = getelementptr inbounds nuw i8, ptr %i.no, i64 288
  %i.adk = getelementptr inbounds nuw i8, ptr %i.nf, i64 252
  %.sroa.01.0.copyload.us.us = load <2 x float>, ptr %i.adk, align 4
  %.sroa.22.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.nf, i64 260
  %.sroa.22.0.copyload.us.us = load float, ptr %.sroa.22.0..sroa_idx.us.us, align 4
  %i.adl = fmul <2 x float> %i.bq, %.sroa.01.0.copyload.us.us
  %i.adm = fmul float %i.v, %.sroa.22.0.copyload.us.us
  store <2 x float> %i.adl, ptr %i.adj, align 4, !tbaa !107
  %.sroa.4.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.no, i64 296
  store float %i.adm, ptr %.sroa.4.0..sroa_idx.us.us, align 4, !tbaa !107
  %indvars.iv.next10105 = add nuw nsw i64 %indvars.iv10104, 1 ; 2 uses
  %exitcond10109.not = icmp eq i64 %indvars.iv.next10105, %wide.trip.count10108
  br i1 %exitcond10109.not, label %.lr.ph4867.split.us.a, label %.lr.ph4863.split.us.us, !llvm.loop !184

.lr.ph4867.split.us.a:                            ; preds = %b3Invert2.exit.us.us, %.split4861.us.us
  %i.adn = add nsw i64 %indvars.iv10110, 1        ; 2 uses
  %i.ado = icmp eq i64 %i.adn, %i.cn
  br i1 %i.ado, label %.loopexit, label %.lr.ph4867.split.us6320, !llvm.loop !185

.split4870.us:                                    ; preds = %.lr.ph4867.split.us6320, %.lr.ph4867.split.us
  %.us-phi4872 = phi i64 [ %20, %.lr.ph4867.split.us ], [ %i.cq, %.lr.ph4867.split.us6320 ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @19, i64 %i.bg, i64 %.us-phi4872) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split4874.us:                                    ; preds = %bb.s, %27
  %.us-phi4876 = phi i32 [ %.05446319.us, %27 ], [ %i.cx, %bb.s ]
  %i.adp = zext i32 %.us-phi4876 to i64, !nosanitize !10
  %i.adq = zext i32 %i.bx to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @20, i64 %i.adp, i64 %i.adq) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split4878.us:                                    ; preds = %bb.t, %30
  %.us-phi4880 = phi i64 [ %33, %30 ], [ %i.de, %bb.t ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @21, i64 %i.cl, i64 %.us-phi4880) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split4882:                                       ; preds = %bb.u, %30
  %.us-phi4883 = phi i64 [ 0, %30 ], [ %i.dk, %bb.u ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %.us-phi4883) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5439.us:                                    ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @24, i64 %i.ds, i64 %i.dt) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5443.us:                                    ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @26, i64 %i.eb) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5452.us:                                    ; preds = %bb.y
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @27, i64 %i.bj, i64 %i.en) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5456.us:                                    ; preds = %bb.z
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @29, i64 %i.eu) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5465.us:                                    ; preds = %bb.aa
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.bl, i64 %i.fg) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5469.us:                                    ; preds = %bb.ab
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @32, i64 %i.fm) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5475.us:                                    ; preds = %bb.ae
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.bj, i64 %i.gd) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5479.us:                                    ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.gk) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5488.us:                                    ; preds = %bb.ag
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @35, i64 %i.bl, i64 %i.gw) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5492.us:                                    ; preds = %bb.ah
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @36, i64 %i.hc) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5501.us:                                    ; preds = %bb.aj
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.hr) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5564.us:                                    ; preds = %b3InvertMatrix.exit.us.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @39, i64 %i.bn, i64 %i.ln) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5571.us:                                    ; preds = %.lr.ph4863.split.us.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @40, i64 %i.nh, i64 %i.ni) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5575.us:                                    ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @41, i64 %i.lw, i64 %i.nq) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5579.us:                                    ; preds = %bb.an
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @43, i64 %i.nv) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5588.us:                                    ; preds = %b3Perp.exit.us.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.oy) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5609.us:                                    ; preds = %.lr.ph.us.us
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @47, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5612.us:                                    ; preds = %bb.au
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @48, i64 %i.oy, i64 %i.px) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5616.us:                                    ; preds = %bb.av
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @50, i64 %i.nv, i64 %i.pz) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5659.us:                                    ; preds = %bb.ba
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @51, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split5662.us:                                    ; preds = %.lr.ph4859.us.us.1, %.lr.ph4859.us.us.2, %.lr.ph4859.us.us.3, %.lr.ph4859.us.us.4
  %.sink13558 = phi i64 [ 96, %.lr.ph4859.us.us.2 ], [ 144, %.lr.ph4859.us.us.3 ], [ 192, %.lr.ph4859.us.us.4 ], [ 48, %.lr.ph4859.us.us.1 ]
  %i.adr = add i64 %.sink13558, %i.oy, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @52, i64 %i.oy, i64 %i.adr) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge:                                      ; preds = %.loopexit, %.preheader.split
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_out_of_bounds_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartContacts_Mesh(i64 %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %.sroa.0638.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.3639.0.extract.shift = lshr i64 %0, 56   ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @53, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 4 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @54, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1144 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64, !nosanitize !10 ; 3 uses
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %i.m, i64 %.sroa.3639.0.extract.shift
  %i.p = mul nuw nsw i64 %.sroa.3639.0.extract.shift, 112
  %i.q = add i64 %i.p, %i.n, !nosanitize !10      ; 2 uses
  %.not = icmp ult i64 %i.q, %i.n, !nosanitize !10
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.n, i64 %i.q) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 3920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !198  ; 5 uses
  %i.t = ptrtoint ptr %i.s to i64, !nosanitize !10 ; 2 uses
  %i.u = add i64 %i.t, 176, !nosanitize !10       ; 2 uses
  %i.v = icmp ne ptr %i.s, null, !nosanitize !10
  %i.w = icmp ne i64 %i.u, 0
  %i.x = and i1 %i.v, %i.w
  %i.y = icmp ult ptr %i.s, inttoptr (i64 -176 to ptr)
  %i.z = and i1 %i.y, %i.x, !nosanitize !10
  br i1 %i.z, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @56, i64 %i.t, i64 %i.u) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.ab = ptrtoint ptr %i.aa to i64, !nosanitize !10 ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !10
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !10
  br i1 %i.ad, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @58, i64 %i.ab) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64, !nosanitize !10 ; 2 uses
  %i.ag = and i64 %i.af, 7, !nosanitize !10
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !10
  br i1 %i.ah, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @60, i64 %i.af) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !204 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !146
  %.fr1651 = freeze ptr %i.ak                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.al, align 4
  %i.am = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.an = and i32 %i.am, 65535
  %i.ao = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0638.0.extract.trunc, i32 %i.an), !nosanitize !10 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 0, !nosanitize !10 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ao, 1, !nosanitize !10
  br i1 %i.aq, label %bb.n, label %.preheader.split, !prof !89, !nosanitize !10

.preheader.split:                                 ; preds = %bb.m
  %i.ar = icmp sgt i32 %i.ap, %.sroa.0638.0.extract.trunc
  br i1 %i.ar, label %.lr.ph1641, label %._crit_edge1642

.lr.ph1641:                                       ; preds = %.preheader.split
  %i.as = ptrtoint ptr %.fr1651 to i64, !nosanitize !10 ; 4 uses
  %.not1652 = icmp eq ptr %.fr1651, null, !nosanitize !10
  %i.at = ptrtoint ptr %i.ai to i64               ; 6 uses
  %i.au = icmp ne ptr %i.ai, null                 ; 2 uses
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.av = ashr exact i64 %sext, 32                ; 2 uses
  br i1 %.not1652, label %.lr.ph1641.split.us, label %.lr.ph1641.split.preheader, !prof !89

.lr.ph1641.split.preheader:                       ; preds = %.lr.ph1641
  %wide.trip.count2168 = sext i32 %i.ap to i64
  br label %.lr.ph1641.split

.lr.ph1641.split.us:                              ; preds = %.lr.ph1641
  %i.aw = mul nsw i64 %i.av, 168                  ; 2 uses
  %i.ax = icmp eq i64 %sext, 0
  %i.ay = icmp uge i64 %i.aw, %i.as, !nosanitize !10
  %i.az = icmp slt i32 %.sroa.0638.0.extract.trunc, 0
  %i.ba = xor i1 %i.az, %i.ay
  %i.bb = and i1 %i.ax, %i.ba, !nosanitize !10
  br i1 %i.bb, label %.split1648, label %.split1644.us, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bc = and i64 %0, 4294967295
  %i.bd = and i64 %.sroa.2.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @61, i64 %i.bc, i64 %i.bd) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge1642:                                  ; preds = %bb.ao, %.preheader.split
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

.lr.ph1641.split:                                 ; preds = %.lr.ph1641.split.preheader, %bb.ao
  %indvars.iv2165 = phi i64 [ %i.av, %.lr.ph1641.split.preheader ], [ %indvars.iv.next2166, %bb.ao ] ; 4 uses
  %i.be = getelementptr inbounds [168 x i8], ptr %.fr1651, i64 %indvars.iv2165 ; 22 uses
  %i.bf = mul nsw i64 %indvars.iv2165, 168
  %i.bg = add i64 %i.bf, %i.as, !nosanitize !10   ; 3 uses
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = icmp uge i64 %i.bg, %i.as, !nosanitize !10
  %i.bj = icmp slt i64 %indvars.iv2165, 0
  %i.bk = xor i1 %i.bj, %i.bi
  %i.bl = and i1 %i.bh, %i.bk, !nosanitize !10
  br i1 %i.bl, label %bb.o, label %.split1644.us, !prof !11, !nosanitize !10

.split1644.us:                                    ; preds = %.lr.ph1641.split, %.lr.ph1641.split.us
  %.us-phi1646 = phi i64 [ %i.aw, %.lr.ph1641.split.us ], [ %i.bg, %.lr.ph1641.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @62, i64 %i.as, i64 %.us-phi1646) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %.lr.ph1641.split
  %i.bm = ptrtoint ptr %i.be to i64, !nosanitize !10 ; 2 uses
  %i.bn = and i64 %i.bm, 7, !nosanitize !10
  %i.bo = icmp eq i64 %i.bn, 0, !nosanitize !10
  br i1 %i.bo, label %bb.p, label %.split1648, !prof !11, !nosanitize !10

.split1648:                                       ; preds = %bb.o, %.lr.ph1641.split.us
end_hunk_0
begin_hunk_1_@b3ApplyRestitution_Mesh:bb.a

._crit_edge:                                      ; preds = %bb.ad, %bb.v
  %.sroa.0171.1.lcssa = phi <2 x float> [ %.sroa.0171.0960, %bb.v ], [ %.sroa.0171.2, %bb.ad ] ; 2 uses
  %.sroa.7174.1.lcssa = phi float [ %.sroa.7174.0961, %bb.v ], [ %.sroa.7174.2, %bb.ad ] ; 2 uses
  %.sroa.0177.1.lcssa = phi <2 x float> [ %.sroa.0177.0962, %bb.v ], [ %.sroa.0177.2, %bb.ad ] ; 2 uses
  %.sroa.7180.1.lcssa = phi float [ %.sroa.7180.0963, %bb.v ], [ %.sroa.7180.2, %bb.ad ] ; 2 uses
  %.sroa.0183.1.lcssa = phi <2 x float> [ %.sroa.0183.0964, %bb.v ], [ %.sroa.0183.2, %bb.ad ] ; 2 uses
  %.sroa.7186.1.lcssa = phi float [ %.sroa.7186.0965, %bb.v ], [ %.sroa.7186.2, %bb.ad ] ; 2 uses
  %.sroa.0189.1.lcssa = phi <2 x float> [ %.sroa.0189.0966, %bb.v ], [ %.sroa.0189.2, %bb.ad ] ; 2 uses
  %.sroa.7192.1.lcssa = phi float [ %.sroa.7192.0967, %bb.v ], [ %.sroa.7192.2, %bb.ad ] ; 2 uses
  %i.ji = load i32, ptr %i.dg, align 4, !tbaa !148
  %i.jj = and i32 %i.ji, 4096
  %.not252 = icmp eq i32 %i.jj, 0
  br i1 %.not252, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  store <2 x float> %.sroa.0189.1.lcssa, ptr %i.bu, align 4, !tbaa !107
  store float %.sroa.7192.1.lcssa, ptr %.sroa.7192.0..sroa_idx, align 4, !tbaa !107
  store <2 x float> %.sroa.0183.1.lcssa, ptr %i.cm, align 4, !tbaa !107
  store float %.sroa.7186.1.lcssa, ptr %.sroa.7186.0..sroa_idx, align 4, !tbaa !107
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %i.jk = load i32, ptr %i.dh, align 4, !tbaa !148
  %i.jl = and i32 %i.jk, 4096
  %.not253 = icmp eq i32 %i.jl, 0
  br i1 %.not253, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store <2 x float> %.sroa.0177.1.lcssa, ptr %i.cg, align 4, !tbaa !107
  store float %.sroa.7180.1.lcssa, ptr %.sroa.7180.0..sroa_idx, align 4, !tbaa !107
  store <2 x float> %.sroa.0171.1.lcssa, ptr %i.cs, align 4, !tbaa !107
  store float %.sroa.7174.1.lcssa, ptr %.sroa.7174.0..sroa_idx, align 4, !tbaa !107
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next1680 = add nuw nsw i64 %indvars.iv1679, 1 ; 2 uses
  %exitcond1683.not = icmp eq i64 %indvars.iv.next1680, %wide.trip.count1682
  br i1 %exitcond1683.not, label %.loopexit, label %.lr.ph968.split, !llvm.loop !210

.loopexit:                                        ; preds = %bb.ah, %.split, %bb.j
  %indvars.iv.next1685 = add nsw i64 %indvars.iv1684, 1 ; 2 uses
  %exitcond1688.not = icmp eq i64 %indvars.iv.next1685, %wide.trip.count1687
  br i1 %exitcond1688.not, label %._crit_edge1180, label %.lr.ph1179.split, !llvm.loop !211
}

; Function Attrs: nounwind uwtable
define hidden void @b3StoreImpulses_Mesh(i64 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !func_sanitize !153 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 7 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @102, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 8 uses
  %i.h = and i64 %0, 71776119061217280
  %i.i = icmp eq i64 %i.h, 1970324836974592
  br i1 %i.i, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.pre3216 = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %.pre3218 = and i64 %.pre3216, 7, !nosanitize !10
  %i.l = icmp eq i64 %.pre3218, 0
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ne ptr %i.g, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 3 uses
  %i.o = and i64 %i.n, 7, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @103, i64 %i.n) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1144 ; 2 uses
  %.not = icmp ugt ptr %i.r, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.g, label %bb.h, !prof !89, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.t = add i64 %i.s, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @104, i64 %i.s, i64 %i.t) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 3816
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.pre-phi3219 = phi i1 [ %i.l, %._crit_edge ], [ true, %bb.h ]
  %.pre-phi3217 = phi i64 [ %.pre3216, %._crit_edge ], [ %i.n, %bb.h ]
  %.077.in = phi ptr [ %i.j, %._crit_edge ], [ %i.v, %bb.h ]
  %.076.in = phi ptr [ %i.k, %._crit_edge ], [ %i.u, %bb.h ]
  %.076 = load ptr, ptr %.076.in, align 8, !tbaa !90
  %.076.fr = freeze ptr %.076                     ; 7 uses
  %.077 = load ptr, ptr %.077.in, align 8, !tbaa !91
  %.077.fr = freeze ptr %.077                     ; 3 uses
  %i.w = icmp ne ptr %i.g, null, !nosanitize !10
  %i.x = and i1 %i.w, %.pre-phi3219, !nosanitize !10
  br i1 %i.x, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %.pre-phi3217) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !154  ; 3 uses
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds [3848 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = mul nsw i64 %i.aa, 3848
  %i.ad = ptrtoint ptr %i.z to i64, !nosanitize !10 ; 3 uses
  %i.ae = add i64 %i.ac, %i.ad, !nosanitize !10   ; 3 uses
  %i.af = icmp ne ptr %i.z, null, !nosanitize !10 ; 2 uses
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = xor i1 %i.af, %i.ag
  %i.ai = icmp uge i64 %i.ae, %i.ad, !nosanitize !10
  %i.aj = icmp slt i32 %2, 0
  %i.ak = xor i1 %i.aj, %i.ai
  %i.al = and i1 %i.ah, %i.ak, !nosanitize !10
  br i1 %i.al, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @106, i64 %i.ad, i64 %i.ae) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.am = ptrtoint ptr %i.ab to i64, !nosanitize !10 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !10
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !10
  %i.ap = and i1 %i.af, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @108, i64 %i.am) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 88 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !160 ; 4 uses
  %i.at = icmp ult i8 %i.as, 2
  br i1 %i.at, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.au = zext i8 %i.as to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @109, i64 %i.au) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 4440
  %i.aw = load float, ptr %i.av, align 8, !tbaa !161
  %i.ax = fneg float %i.aw                        ; 5 uses
  %i.ay = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.az = and i32 %i.ay, 65535
  %i.ba = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc, i32 %i.az), !nosanitize !10 ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 0, !nosanitize !10 ; 4 uses
  %i.bc = extractvalue { i32, i1 } %i.ba, 1, !nosanitize !10
  br i1 %i.bc, label %bb.r, label %.preheader116, !prof !89, !nosanitize !10

.preheader116:                                    ; preds = %bb.q
  %i.bd = ptrtoint ptr %.076.fr to i64            ; 13 uses
  %.not1750 = icmp eq ptr %.076.fr, null
  br i1 %.not1750, label %.split1291.us, label %.preheader116.split.preheader, !prof !89

bb.r:                                             ; preds = %bb.q
  %i.be = and i64 %0, 4294967295
  %i.bf = and i64 %.sroa.2.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @110, i64 %i.be, i64 %i.bf) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split:                              ; preds = %bb.t
  %indvars.iv.next3199 = add nuw nsw i64 %indvars.iv31984373, 1
  %i.bg = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bj, i32 1), !nosanitize !10 ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 0, !nosanitize !10
  %i.bi = extractvalue { i32, i1 } %i.bg, 1, !nosanitize !10
  br i1 %i.bi, label %.split.us, label %.preheader116.split.preheader, !prof !92, !llvm.loop !213, !nosanitize !10

.split.us:                                        ; preds = %.preheader116.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @111, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split.preheader:                    ; preds = %.preheader116, %.preheader116.split
  %i.bj = phi i32 [ %i.bh, %.preheader116.split ], [ 1, %.preheader116 ] ; 4 uses
  %.0804374 = phi i32 [ %i.bj, %.preheader116.split ], [ 0, %.preheader116 ]
  %indvars.iv31984373 = phi i64 [ %indvars.iv.next3199, %.preheader116.split ], [ 0, %.preheader116 ] ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %i.bk ; 2 uses
  %i.bm = shl nsw i64 %i.bk, 4
  %i.bn = add i64 %i.bm, %i.bd, !nosanitize !10   ; 3 uses
  %3 = icmp ne i64 %i.bn, 0
  %4 = icmp uge i64 %i.bn, %i.bd, !nosanitize !10
  %5 = icmp slt i32 %i.bj, 0
  %6 = xor i1 %5, %4
  %7 = and i1 %3, %6, !nosanitize !10
  br i1 %7, label %bb.s, label %.split1291.us, !prof !11, !nosanitize !10

.split1291.us:                                    ; preds = %.preheader116.split.preheader, %.preheader116
  %.us-phi1293 = phi i64 [ 16, %.preheader116 ], [ %i.bn, %.preheader116.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.bd, i64 %.us-phi1293) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %.preheader116.split.preheader
  %i.bo = ptrtoint ptr %i.bl to i64, !nosanitize !10 ; 2 uses
  %i.bp = and i64 %i.bo, 7, !nosanitize !10
  %i.bq = icmp eq i64 %i.bp, 0, !nosanitize !10
  br i1 %i.bq, label %bb.t, label %.split1295, !prof !11, !nosanitize !10

.split1295:                                       ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.bo) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.br = load i32, ptr %i.bl, align 8, !tbaa !96
  %.not109 = icmp sgt i32 %i.br, %.sroa.0.0.extract.trunc
  br i1 %.not109, label %.preheader.split, label %.preheader116.split, !llvm.loop !213

.preheader.split:                                 ; preds = %bb.t
  %i.bs = icmp sgt i32 %i.bb, %.sroa.0.0.extract.trunc
  br i1 %i.bs, label %.lr.ph1574, label %._crit_edge1575

.lr.ph1574:                                       ; preds = %.preheader.split
  %i.bt = ptrtoint ptr %.077.fr to i64            ; 4 uses
  %.not1752 = icmp eq ptr %.077.fr, null
  br i1 %.not1752, label %.lr.ph1574.split.split.us, label %.lr.ph1574.split.us, !prof !89

.lr.ph1574.split.us:                              ; preds = %.lr.ph1574, %.loopexit.us
  %indvars.iv3203 = phi i64 [ %indvars.iv.next3204, %.loopexit.us ], [ %indvars.iv31984373, %.lr.ph1574 ] ; 5 uses
  %.0821572.us = phi i32 [ %.183.lcssa.us, %.loopexit.us ], [ %.sroa.0.0.extract.trunc, %.lr.ph1574 ] ; 3 uses
  %.0841571.us = phi i8 [ %.185.lcssa.us, %.loopexit.us ], [ %i.as, %.lr.ph1574 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.076.fr, i64 %indvars.iv3203 ; 2 uses
  %i.bv = shl nuw nsw i64 %indvars.iv3203, 4
  %i.bw = add i64 %i.bv, %i.bd, !nosanitize !10   ; 2 uses
  %.not1758 = icmp ult i64 %i.bw, %i.bd, !nosanitize !10
  br i1 %.not1758, label %.split1586.us, label %bb.u, !prof !89, !nosanitize !10

bb.u:                                             ; preds = %.lr.ph1574.split.us
  %i.bx = ptrtoint ptr %i.bu to i64, !nosanitize !10 ; 2 uses
  %i.by = and i64 %i.bx, 7, !nosanitize !10
  %i.bz = icmp eq i64 %i.by, 0, !nosanitize !10
  br i1 %i.bz, label %bb.v, label %.split1589.us, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.ca = load i32, ptr %i.bu, align 8, !tbaa !96 ; 2 uses
  %exitcond3205 = icmp eq i64 %indvars.iv3203, 2147483647
  br i1 %exitcond3205, label %.split1592.us, label %bb.w, !prof !89, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  %i.cb = shl i64 %indvars.iv3203, 32
  %sext3260 = add i64 %i.cb, 4294967296           ; 2 uses
  %i.cc = ashr exact i64 %sext3260, 28
  %i.cd = getelementptr inbounds i8, ptr %.076.fr, i64 %i.cc ; 2 uses
  %i.ce = ashr exact i64 %sext3260, 28
  %i.cf = add i64 %i.ce, %i.bd, !nosanitize !10   ; 2 uses
  %.not1759 = icmp ult i64 %i.cf, %i.bd, !nosanitize !10
  br i1 %.not1759, label %.split1595.us, label %bb.x, !prof !89, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.cg = ptrtoint ptr %i.cd to i64, !nosanitize !10 ; 2 uses
  %i.ch = and i64 %i.cg, 7, !nosanitize !10
  %i.ci = icmp eq i64 %i.ch, 0, !nosanitize !10
  br i1 %i.ci, label %.split1345.us, label %.split1598.us, !prof !11, !nosanitize !10

.split1345.us:                                    ; preds = %bb.x
  %i.cj = load i32, ptr %i.cd, align 8, !tbaa !96
  %i.ck = tail call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.bb) ; 3 uses
  %i.cl = icmp slt i32 %.0821572.us, %i.ck
  br i1 %i.cl, label %.lr.ph1348.us.preheader, label %.loopexit.us

.lr.ph1348.us.preheader:                          ; preds = %.split1345.us
  %i.cm = sext i32 %.0821572.us to i64
  %i.cn = sext i32 %i.ck to i64
  br label %.lr.ph1348.us

.lr.ph1348.us:                                    ; preds = %.lr.ph1348.us.preheader, %._crit_edge1343.us
  %indvars.iv3195 = phi i64 [ %i.cm, %.lr.ph1348.us.preheader ], [ %indvars.iv.next3196, %._crit_edge1343.us ] ; 6 uses
  %.1851346.us1579 = phi i8 [ %.0841571.us, %.lr.ph1348.us.preheader ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %i.co = getelementptr inbounds [168 x i8], ptr %.077.fr, i64 %indvars.iv3195 ; 4 uses
  %i.cp = mul nsw i64 %indvars.iv3195, 168
  %i.cq = add i64 %i.cp, %i.bt, !nosanitize !10   ; 3 uses
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = icmp uge i64 %i.cq, %i.bt, !nosanitize !10
  %i.ct = icmp slt i64 %indvars.iv3195, 0
  %i.cu = xor i1 %i.ct, %i.cs
  %i.cv = and i1 %i.cr, %i.cu, !nosanitize !10
  br i1 %i.cv, label %bb.y, label %.split1352.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %.lr.ph1348.us
  %i.cw = trunc nsw i64 %indvars.iv3195 to i32
  %i.cx = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cw, i32 %i.ca), !nosanitize !10
  %i.cy = extractvalue { i32, i1 } %i.cx, 1, !nosanitize !10
  br i1 %i.cy, label %.split1356.us, label %bb.z, !prof !89, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.cz = ptrtoint ptr %i.co to i64, !nosanitize !10 ; 2 uses
  %i.da = and i64 %i.cz, 7, !nosanitize !10
  %i.db = icmp eq i64 %i.da, 0, !nosanitize !10
  br i1 %i.db, label %bb.aa, label %.split1360, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !109 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 164
  %i.df = load i32, ptr %i.de, align 4, !tbaa !110 ; 2 uses
  %i.dg = icmp ne ptr %i.dd, null, !nosanitize !10
  %i.dh = ptrtoint ptr %i.dd to i64, !nosanitize !10 ; 2 uses
  %i.di = and i64 %i.dh, 7, !nosanitize !10
  %i.dj = icmp eq i64 %i.di, 0, !nosanitize !10
  %i.dk = and i1 %i.dg, %i.dj, !nosanitize !10
  br i1 %i.dk, label %.split1338.us, label %.split1617.us, !prof !11, !nosanitize !10

.split1338.us:                                    ; preds = %bb.aa
  %i.dl = icmp sgt i32 %i.df, 0
  br i1 %i.dl, label %.lr.ph1342.us, label %._crit_edge1343.us

.lr.ph1342.us:                                    ; preds = %.split1338.us
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 68
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !115
  %.fr1760 = freeze i32 %i.dn
  %i.do = and i32 %.fr1760, 1048576
  %.not110.us.not = icmp eq i32 %i.do, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 5 uses
  %wide.trip.count3194 = zext nneg i32 %i.df to i64
  br label %.lr.ph1342.split.us

.lr.ph1342.split.us:                              ; preds = %.lr.ph1342.us, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph1342.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 5 uses
  %.0791340.us = phi i8 [ 0, %.lr.ph1342.us ], [ %.1.lcssa.us, %._crit_edge.us ] ; 8 uses
  %.2861339.us = phi i8 [ %.1851346.us1579, %.lr.ph1342.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 7 uses
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !119 ; 3 uses
  %i.ds = getelementptr inbounds nuw [268 x i8], ptr %i.dr, i64 %indvars.iv ; 33 uses
  %i.dt = mul nuw nsw i64 %indvars.iv, 268
  %i.du = ptrtoint ptr %i.dr to i64, !nosanitize !10 ; 3 uses
  %i.dv = add i64 %i.dt, %i.du, !nosanitize !10   ; 3 uses
  %i.dw = icmp ne ptr %i.dr, null, !nosanitize !10 ; 2 uses
  %i.dx = icmp eq i64 %i.dv, 0
  %i.dy = xor i1 %i.dw, %i.dx
  %i.dz = icmp uge i64 %i.dv, %i.du, !nosanitize !10
  %i.ea = and i1 %i.dy, %i.dz, !nosanitize !10
  br i1 %i.ea, label %bb.ab, label %.split1626.us, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %.lr.ph1342.split.us
  %i.eb = load ptr, ptr %i.co, align 8, !tbaa !118 ; 3 uses
  %i.ec = getelementptr inbounds nuw [308 x i8], ptr %i.eb, i64 %indvars.iv ; 40 uses
  %i.ed = mul nuw nsw i64 %indvars.iv, 308
  %i.ee = ptrtoint ptr %i.eb to i64, !nosanitize !10 ; 3 uses
  %i.ef = add i64 %i.ed, %i.ee, !nosanitize !10   ; 3 uses
  %i.eg = icmp ne ptr %i.eb, null, !nosanitize !10 ; 2 uses
  %i.eh = icmp eq i64 %i.ef, 0
  %i.ei = xor i1 %i.eg, %i.eh
  %i.ej = icmp uge i64 %i.ef, %i.ee, !nosanitize !10
  %i.ek = and i1 %i.ei, %i.ej, !nosanitize !10
  br i1 %i.ek, label %bb.ac, label %.split1630.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.el = ptrtoint ptr %i.ec to i64, !nosanitize !10 ; 4 uses
  %i.em = and i64 %i.el, 3, !nosanitize !10
  %i.en = icmp eq i64 %i.em, 0, !nosanitize !10
  %i.eo = and i1 %i.eg, %i.en
  br i1 %i.eo, label %bb.ad, label %.split1634.us, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  %i.ep = ptrtoint ptr %i.ds to i64, !nosanitize !10 ; 4 uses
  %i.eq = and i64 %i.ep, 3, !nosanitize !10
  %i.er = icmp eq i64 %i.eq, 0, !nosanitize !10
  %i.es = and i1 %i.dw, %i.er
  br i1 %i.es, label %bb.ae, label %.split1640.us, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 260
  %i.eu = load float, ptr %i.et, align 4, !tbaa !141
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ds, i64 236
  store float %i.eu, ptr %i.ev, align 4, !tbaa !140
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ds, i64 240
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 280
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ec, i64 208
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ec, i64 220
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.ey, align 4
  %.sroa.215.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ec, i64 216
  %.sroa.215.0.copyload.us = load float, ptr %.sroa.215.0..sroa_idx.us, align 4
  %.sroa.012.0.copyload.us = load <2 x float>, ptr %i.ez, align 4
  %.sroa.213.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ec, i64 228
  %.sroa.213.0.copyload.us = load float, ptr %.sroa.213.0..sroa_idx.us, align 4
  %i.fa = load <2 x float>, ptr %i.ex, align 4, !tbaa !107 ; 3 uses
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.fb, %.sroa.014.0.copyload.us
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fe = fmul <2 x float> %i.fd, %.sroa.012.0.copyload.us
  %i.ff = fadd <2 x float> %i.fc, %i.fe
  %i.fg = insertelement <2 x float> poison, float %.sroa.215.0.copyload.us, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %.sroa.213.0.copyload.us, i64 1
  %i.fi = fmul <2 x float> %i.fa, %i.fh
  %i.fj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fi)
  store <2 x float> %i.ff, ptr %i.ew, align 4, !tbaa !107
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ds, i64 248
end_hunk_1
begin_hunk_2_@b3StoreImpulses_Mesh:bb.a
  %i.jn = icmp eq i8 %.2.us.1, 0
  %i.jo = fcmp olt float %i.jm, %i.ax
  %or.cond114.us.2 = select i1 %i.jn, i1 %i.jo, i1 false
  %i.jp = fcmp ogt float %i.ji, 0.000000e+00
  %or.cond115.us.2 = select i1 %or.cond114.us.2, i1 %i.jp, i1 false
  br i1 %or.cond115.us.2, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jq = load i32, ptr %i.dq, align 8, !tbaa !164 ; 2 uses
  %i.jr = lshr i32 %i.jq, 6
  %i.js = load ptr, ptr %i.aq, align 8, !tbaa !165 ; 3 uses
  %i.jt = zext nneg i32 %i.jr to i64              ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jt ; 3 uses
  %i.jv = shl nuw nsw i64 %i.jt, 3
  %i.jw = ptrtoint ptr %i.js to i64, !nosanitize !10 ; 3 uses
  %i.jx = add i64 %i.jv, %i.jw, !nosanitize !10   ; 3 uses
  %i.jy = icmp ne ptr %i.js, null, !nosanitize !10 ; 2 uses
  %i.jz = icmp eq i64 %i.jx, 0
  %i.ka = xor i1 %i.jy, %i.jz
  %i.kb = icmp uge i64 %i.jx, %i.jw, !nosanitize !10
  %i.kc = and i1 %i.kb, %i.ka, !nosanitize !10
  br i1 %i.kc, label %bb.ay, label %.split1708.us, !prof !11, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  %i.kd = ptrtoint ptr %i.ju to i64, !nosanitize !10 ; 2 uses
  %i.ke = and i64 %i.kd, 7, !nosanitize !10
  %i.kf = icmp eq i64 %i.ke, 0, !nosanitize !10
  %i.kg = and i1 %i.jy, %i.kf
  br i1 %i.kg, label %b3SetBit.exit.us.2, label %.split1712.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.2:                               ; preds = %bb.ay
  %i.kh = and i32 %i.jq, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = shl nuw i64 1, %i.ki
  %i.kk = load i64, ptr %i.ju, align 8, !tbaa !166
  %i.kl = or i64 %i.kk, %i.kj
  store i64 %i.kl, ptr %i.ju, align 8, !tbaa !166
  br label %bb.az

bb.az:                                            ; preds = %b3SetBit.exit.us.2, %bb.aw
  %.4.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.4.us.1, %bb.aw ] ; 2 uses
  %.2.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.2.us.1, %bb.aw ] ; 3 uses
  %exitcond3190.2.not = icmp eq i32 %i.fn, 3
  br i1 %exitcond3190.2.not, label %._crit_edge.us, label %.lr.ph.split.us1580.3

.lr.ph.split.us1580.3:                            ; preds = %bb.az
  %.not111.us1582.3 = icmp ugt ptr %i.ec, inttoptr (i64 -145 to ptr)
  br i1 %.not111.us1582.3, label %.split1305.us, label %bb.ba, !prof !89, !nosanitize !10

bb.ba:                                            ; preds = %.lr.ph.split.us1580.3
  %.not112.us1583.3 = icmp ugt ptr %i.ds, inttoptr (i64 -169 to ptr)
  br i1 %.not112.us1583.3, label %.split1309.us, label %bb.bb, !prof !89, !nosanitize !10

bb.bb:                                            ; preds = %bb.ba
  %i.km = getelementptr inbounds nuw i8, ptr %i.ec, i64 176
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ds, i64 200
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ec, i64 180
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !134
  %i.kq = load <2 x float>, ptr %i.km, align 4, !tbaa !107
  store <2 x float> %i.kq, ptr %i.kn, align 4, !tbaa !107
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ec, i64 172
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ds, i64 208
  %i.kt = load float, ptr %i.kr, align 4, !tbaa !137 ; 2 uses
  store float %i.kt, ptr %i.ks, align 4, !tbaa !163
  %i.ku = icmp eq i8 %.2.us.2, 0
  %i.kv = fcmp olt float %i.kt, %i.ax
  %or.cond114.us.3 = select i1 %i.ku, i1 %i.kv, i1 false
  %i.kw = fcmp ogt float %i.kp, 0.000000e+00
  %or.cond115.us.3 = select i1 %or.cond114.us.3, i1 %i.kw, i1 false
  br i1 %or.cond115.us.3, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.kx = load i32, ptr %i.dq, align 8, !tbaa !164 ; 2 uses
  %i.ky = lshr i32 %i.kx, 6
  %i.kz = load ptr, ptr %i.aq, align 8, !tbaa !165 ; 3 uses
  %i.la = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.la ; 3 uses
  %i.lc = shl nuw nsw i64 %i.la, 3
  %i.ld = ptrtoint ptr %i.kz to i64, !nosanitize !10 ; 3 uses
  %i.le = add i64 %i.lc, %i.ld, !nosanitize !10   ; 3 uses
  %i.lf = icmp ne ptr %i.kz, null, !nosanitize !10 ; 2 uses
  %i.lg = icmp eq i64 %i.le, 0
  %i.lh = xor i1 %i.lf, %i.lg
  %i.li = icmp uge i64 %i.le, %i.ld, !nosanitize !10
  %i.lj = and i1 %i.li, %i.lh, !nosanitize !10
  br i1 %i.lj, label %bb.bd, label %.split1708.us, !prof !11, !nosanitize !10

bb.bd:                                            ; preds = %bb.bc
  %i.lk = ptrtoint ptr %i.lb to i64, !nosanitize !10 ; 2 uses
  %i.ll = and i64 %i.lk, 7, !nosanitize !10
  %i.lm = icmp eq i64 %i.ll, 0, !nosanitize !10
  %i.ln = and i1 %i.lf, %i.lm
  br i1 %i.ln, label %b3SetBit.exit.us.3, label %.split1712.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.3:                               ; preds = %bb.bd
  %i.lo = and i32 %i.kx, 63
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw i64 1, %i.lp
  %i.lr = load i64, ptr %i.lb, align 8, !tbaa !166
  %i.ls = or i64 %i.lr, %i.lq
  store i64 %i.ls, ptr %i.lb, align 8, !tbaa !166
  br label %bb.be

bb.be:                                            ; preds = %b3SetBit.exit.us.3, %bb.bb
  %.4.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.4.us.2, %bb.bb ] ; 2 uses
  %.2.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.2.us.2, %bb.bb ] ; 3 uses
  %exitcond3190.3.not = icmp eq i32 %i.fn, 4
  br i1 %exitcond3190.3.not, label %._crit_edge.us, label %.lr.ph.split.us1580.4

.lr.ph.split.us1580.4:                            ; preds = %bb.be
  %.not111.us1582.4 = icmp ugt ptr %i.ec, inttoptr (i64 -193 to ptr)
  br i1 %.not111.us1582.4, label %.split1305.us, label %bb.bf, !prof !89, !nosanitize !10

bb.bf:                                            ; preds = %.lr.ph.split.us1580.4
  %.not112.us1583.4 = icmp ugt ptr %i.ds, inttoptr (i64 -225 to ptr)
  br i1 %.not112.us1583.4, label %.split1309.us, label %bb.bg, !prof !89, !nosanitize !10

bb.bg:                                            ; preds = %bb.bf
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ec, i64 224
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ds, i64 256
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ec, i64 228
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !134
  %i.lx = load <2 x float>, ptr %i.lt, align 4, !tbaa !107
  store <2 x float> %i.lx, ptr %i.lu, align 4, !tbaa !107
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ec, i64 220
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ds, i64 264
  %i.ma = load float, ptr %i.ly, align 4, !tbaa !137 ; 2 uses
  store float %i.ma, ptr %i.lz, align 4, !tbaa !163
  %i.mb = icmp eq i8 %.2.us.3, 0
  %i.mc = fcmp olt float %i.ma, %i.ax
  %or.cond114.us.4 = select i1 %i.mb, i1 %i.mc, i1 false
  %i.md = fcmp ogt float %i.lw, 0.000000e+00
  %or.cond115.us.4 = select i1 %or.cond114.us.4, i1 %i.md, i1 false
  br i1 %or.cond115.us.4, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.me = load i32, ptr %i.dq, align 8, !tbaa !164 ; 2 uses
  %i.mf = lshr i32 %i.me, 6
  %i.mg = load ptr, ptr %i.aq, align 8, !tbaa !165 ; 3 uses
  %i.mh = zext nneg i32 %i.mf to i64              ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mh ; 3 uses
  %i.mj = shl nuw nsw i64 %i.mh, 3
  %i.mk = ptrtoint ptr %i.mg to i64, !nosanitize !10 ; 3 uses
  %i.ml = add i64 %i.mj, %i.mk, !nosanitize !10   ; 3 uses
  %i.mm = icmp ne ptr %i.mg, null, !nosanitize !10 ; 2 uses
  %i.mn = icmp eq i64 %i.ml, 0
  %i.mo = xor i1 %i.mm, %i.mn
  %i.mp = icmp uge i64 %i.ml, %i.mk, !nosanitize !10
  %i.mq = and i1 %i.mp, %i.mo, !nosanitize !10
  br i1 %i.mq, label %bb.bi, label %.split1708.us, !prof !11, !nosanitize !10

bb.bi:                                            ; preds = %bb.bh
  %i.mr = ptrtoint ptr %i.mi to i64, !nosanitize !10 ; 2 uses
  %i.ms = and i64 %i.mr, 7, !nosanitize !10
  %i.mt = icmp eq i64 %i.ms, 0, !nosanitize !10
  %i.mu = and i1 %i.mm, %i.mt
  br i1 %i.mu, label %b3SetBit.exit.us.4, label %.split1712.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.4:                               ; preds = %bb.bi
  %i.mv = and i32 %i.me, 63
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw i64 1, %i.mw
  %i.my = load i64, ptr %i.mi, align 8, !tbaa !166
  %i.mz = or i64 %i.my, %i.mx
  store i64 %i.mz, ptr %i.mi, align 8, !tbaa !166
  br label %bb.bj

bb.bj:                                            ; preds = %b3SetBit.exit.us.4, %bb.bg
  %.4.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.4.us.3, %bb.bg ]
  %.2.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.2.us.3, %bb.bg ]
  %exitcond3190.4.not = icmp eq i32 %i.fn, 5
  br i1 %exitcond3190.4.not, label %._crit_edge.us, label %.split1302.us

._crit_edge.us:                                   ; preds = %bb.ap, %bb.au, %bb.az, %bb.be, %bb.bj, %.lr.ph.split.us.us.preheader, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ae
  %.3.lcssa.us = phi i8 [ %.2861339.us, %bb.ae ], [ %.2861339.us, %.lr.ph.split.us.us.preheader ], [ %.2861339.us, %bb.am ], [ %.2861339.us, %bb.ak ], [ %.2861339.us, %bb.ai ], [ %.2861339.us, %bb.ag ], [ %.4.us, %bb.ap ], [ %.4.us.1, %bb.au ], [ %.4.us.2, %bb.az ], [ %.4.us.3, %bb.be ], [ %.4.us.4, %bb.bj ] ; 2 uses
  %.1.lcssa.us = phi i8 [ %.0791340.us, %bb.ae ], [ %.0791340.us, %.lr.ph.split.us.us.preheader ], [ %.0791340.us, %bb.am ], [ %.0791340.us, %bb.ak ], [ %.0791340.us, %bb.ai ], [ %.0791340.us, %bb.ag ], [ %.2.us, %bb.ap ], [ %.2.us.1, %bb.au ], [ %.2.us.2, %bb.az ], [ %.2.us.3, %bb.be ], [ %.2.us.4, %bb.bj ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count3194
  br i1 %exitcond.not, label %._crit_edge1343.us, label %.lr.ph1342.split.us, !llvm.loop !214

._crit_edge1343.us:                               ; preds = %._crit_edge.us, %.split1338.us
  %.286.lcssa.us = phi i8 [ %.1851346.us1579, %.split1338.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 2 uses
  %indvars.iv.next3196 = add nsw i64 %indvars.iv3195, 1 ; 2 uses
  %exitcond3197.not = icmp eq i64 %indvars.iv.next3196, %i.cn
  br i1 %exitcond3197.not, label %.loopexit.us, label %.lr.ph1348.us, !llvm.loop !215

.loopexit.us:                                     ; preds = %._crit_edge1343.us, %.split1345.us
  %.185.lcssa.us = phi i8 [ %.0841571.us, %.split1345.us ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %.183.lcssa.us = phi i32 [ %.0821572.us, %.split1345.us ], [ %i.ck, %._crit_edge1343.us ] ; 2 uses
  %i.na = icmp slt i32 %.183.lcssa.us, %i.bb
  %indvars.iv.next3204 = add nuw nsw i64 %indvars.iv3203, 1
  br i1 %i.na, label %.lr.ph1574.split.us, label %._crit_edge1575, !llvm.loop !216

.lr.ph1574.split.split.us:                        ; preds = %.lr.ph1574
  %i.nb = sext i32 %.0804374 to i64               ; 2 uses
  %i.nc = shl nuw nsw i64 %i.nb, 4
  %i.nd = add i64 %i.nc, %i.bd, !nosanitize !10   ; 2 uses
  %.not1755 = icmp ult i64 %i.nd, %i.bd, !nosanitize !10
  br i1 %.not1755, label %.split1586.us, label %.lr.ph, !prof !167, !nosanitize !10

8:                                                ; preds = %.split1345.us1732
  br i1 %10, label %.lr.ph, label %.split1586.us, !prof !217, !nosanitize !10

.lr.ph:                                           ; preds = %.lr.ph1574.split.split.us, %8
  %.pn = phi i64 [ %i.nl, %8 ], [ %i.nb, %.lr.ph1574.split.split.us ] ; 2 uses
  %i.ne = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %.pn ; 2 uses
  %i.nf = ptrtoint ptr %i.ne to i64, !nosanitize !10 ; 2 uses
  %i.ng = and i64 %i.nf, 7, !nosanitize !10
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !10
  br i1 %i.nh, label %bb.bk, label %.split1589.us, !prof !11, !nosanitize !10

bb.bk:                                            ; preds = %.lr.ph
  %indvars = trunc nsw i64 %.pn to i32
  %i.ni = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %indvars, i32 1), !nosanitize !10 ; 2 uses
  %i.nj = extractvalue { i32, i1 } %i.ni, 1, !nosanitize !10
  br i1 %i.nj, label %.split1592.us, label %bb.bl, !prof !89, !nosanitize !10

bb.bl:                                            ; preds = %bb.bk
  %i.nk = extractvalue { i32, i1 } %i.ni, 0, !nosanitize !10 ; 2 uses
  %i.nl = sext i32 %i.nk to i64                   ; 3 uses
  %i.nm = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %i.nl ; 2 uses
  %i.nn = shl nsw i64 %i.nl, 4
  %i.no = add i64 %i.nn, %i.bd, !nosanitize !10   ; 4 uses
  %9 = icmp ne i64 %i.no, 0
  %10 = icmp uge i64 %i.no, %i.bd, !nosanitize !10 ; 2 uses
  %11 = icmp slt i32 %i.nk, 0
  %12 = xor i1 %11, %10
  %13 = and i1 %9, %12, !nosanitize !10
  br i1 %13, label %bb.bm, label %.split1595.us, !prof !11, !nosanitize !10

bb.bm:                                            ; preds = %bb.bl
  %i.np = ptrtoint ptr %i.nm to i64, !nosanitize !10 ; 2 uses
  %i.nq = and i64 %i.np, 7, !nosanitize !10
  %i.nr = icmp eq i64 %i.nq, 0, !nosanitize !10
  br i1 %i.nr, label %.split1345.us1732, label %.split1598.us, !prof !11, !nosanitize !10

.split1345.us1732:                                ; preds = %bb.bm
  %i.ns = load i32, ptr %i.nm, align 8, !tbaa !96
  %i.nt = tail call noundef i32 @llvm.smin.i32(i32 %i.ns, i32 %i.bb)
  %i.nu = icmp sgt i32 %i.nt, %.sroa.0.0.extract.trunc
  br i1 %i.nu, label %.lr.ph1348, label %8

.split1586.us:                                    ; preds = %.lr.ph1574.split.us, %8, %.lr.ph1574.split.split.us
  %.us-phi1587 = phi i64 [ %i.nd, %.lr.ph1574.split.split.us ], [ %i.no, %8 ], [ %i.bw, %.lr.ph1574.split.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.bd, i64 %.us-phi1587) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1589.us:                                    ; preds = %bb.u, %.lr.ph
  %.us-phi1590 = phi i64 [ %i.nf, %.lr.ph ], [ %i.bx, %bb.u ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %.us-phi1590) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1592.us:                                    ; preds = %bb.v, %bb.bk
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @116, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1595.us:                                    ; preds = %bb.w, %bb.bl
  %.us-phi1596 = phi i64 [ %i.no, %bb.bl ], [ %i.cf, %bb.w ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.bd, i64 %.us-phi1596) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1598.us:                                    ; preds = %bb.x, %bb.bm
  %.us-phi1599 = phi i64 [ %i.np, %bb.bm ], [ %i.cg, %bb.x ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %.us-phi1599) #10, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph1348:                                       ; preds = %.split1345.us1732
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.nv = ashr exact i64 %sext, 32
  %i.nw = mul nsw i64 %i.nv, 168                  ; 2 uses
  %i.nx = icmp eq i64 %sext, 0
  %i.ny = icmp uge i64 %i.nw, %i.bt, !nosanitize !10
  %i.nz = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %i.oa = xor i1 %i.nz, %i.ny
  %i.ob = and i1 %i.nx, %i.oa, !nosanitize !10
  br i1 %i.ob, label %bb.bn, label %.split1352.us, !prof !11, !nosanitize !10

bb.bn:                                            ; preds = %.lr.ph1348
  %i.oc = load i32, ptr %i.ne, align 8, !tbaa !96 ; 2 uses
  %i.od = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.sroa.0.0.extract.trunc, i32 %i.oc), !nosanitize !10
  %i.oe = extractvalue { i32, i1 } %i.od, 1, !nosanitize !10
  br i1 %i.oe, label %.split1356.us, label %.split1360, !prof !89, !nosanitize !10

.split1352.us:                                    ; preds = %.lr.ph1348.us, %.lr.ph1348
  %.us-phi1354 = phi i64 [ %i.nw, %.lr.ph1348 ], [ %i.cq, %.lr.ph1348.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.bt, i64 %.us-phi1354) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1356.us:                                    ; preds = %bb.y, %bb.bn
  %.us-phi1357 = phi i32 [ %i.oc, %bb.bn ], [ %i.ca, %bb.y ]
  %.us-phi1358 = phi i64 [ %0, %bb.bn ], [ %indvars.iv3195, %bb.y ]
  %i.of = and i64 %.us-phi1358, 4294967295
  %i.og = zext i32 %.us-phi1357 to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @120, i64 %i.of, i64 %i.og) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1360:                                       ; preds = %bb.z, %bb.bn
  %.us-phi1361 = phi i64 [ 0, %bb.bn ], [ %i.cz, %bb.z ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @121, i64 %.us-phi1361) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1617.us:                                    ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %i.dh) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1626.us:                                    ; preds = %.lr.ph1342.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @123, i64 %i.du, i64 %i.dv) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1630.us:                                    ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @124, i64 %i.ee, i64 %i.ef) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1634.us:                                    ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.el) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1640.us:                                    ; preds = %bb.ad
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %i.ep) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1302.us:                                    ; preds = %bb.bj, %bb.am
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @127, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1305.us:                                    ; preds = %.lr.ph.split.us.us.4, %.lr.ph.split.us.us.3, %.lr.ph.split.us.us.2, %.lr.ph.split.us.us.1, %.lr.ph.split.us1580.4, %.lr.ph.split.us1580.3, %.lr.ph.split.us1580.2, %.lr.ph.split.us1580.1
  %.sink = phi i64 [ 144, %.lr.ph.split.us.us.3 ], [ 96, %.lr.ph.split.us.us.2 ], [ 48, %.lr.ph.split.us.us.1 ], [ 192, %.lr.ph.split.us1580.4 ], [ 144, %.lr.ph.split.us1580.3 ], [ 96, %.lr.ph.split.us1580.2 ], [ 48, %.lr.ph.split.us1580.1 ], [ 192, %.lr.ph.split.us.us.4 ]
  %i.oh = add i64 %.sink, %i.el, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @128, i64 %i.el, i64 %i.oh) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1309.us:                                    ; preds = %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.bf, %bb.ba, %bb.av, %bb.aq
  %.sink4155 = phi i64 [ 168, %bb.aj ], [ 112, %bb.ah ], [ 56, %bb.af ], [ 224, %bb.bf ], [ 168, %bb.ba ], [ 112, %bb.av ], [ 56, %bb.aq ], [ 224, %bb.al ]
  %i.oi = add i64 %.sink4155, %i.ep, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @129, i64 %i.ep, i64 %i.oi) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1708.us:                                    ; preds = %bb.bh, %bb.bc, %bb.ax, %bb.as, %bb.an
  %.lcssa1804.ph = phi i64 [ %i.mk, %bb.bh ], [ %i.ld, %bb.bc ], [ %i.jw, %bb.ax ], [ %i.ip, %bb.as ], [ %i.hi, %bb.an ]
  %.lcssa1802.ph.a = phi i64 [ %i.ml, %bb.bh ], [ %i.le, %bb.bc ], [ %i.jx, %bb.ax ], [ %i.iq, %bb.as ], [ %i.hj, %bb.an ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %.lcssa1804.ph, i64 %.lcssa1802.ph.a) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1712.us:                                    ; preds = %bb.bi, %bb.bd, %bb.ay, %bb.at, %bb.ao
  %.lcssa1806.ph = phi i64 [ %i.mr, %bb.bi ], [ %i.lk, %bb.bd ], [ %i.kd, %bb.ay ], [ %i.iw, %bb.at ], [ %i.hp, %bb.ao ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @241, i64 %.lcssa1806.ph) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge1575:                                  ; preds = %.loopexit.us, %.preheader.split
  %.084.lcssa = phi i8 [ %i.as, %.preheader.split ], [ %.185.lcssa.us, %.loopexit.us ]
  store i8 %.084.lcssa, ptr %i.ar, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @b3GetWideContactConstraintByteCount() local_unnamed_addr #6 !func_sanitize !218 {
bb.a:
  ret i32 1696
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareContacts_Convex(i64 %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %.sroa.01148.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.21149.0.extract.shift = lshr i64 %0, 32  ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @130, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168
  %.fr12947 = freeze ptr %i.m                     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.01145.0.copyload = load float, ptr %i.p, align 4, !tbaa !107
  %.sroa.41146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.41146.0.copyload = load float, ptr %.sroa.41146.0..sroa_idx, align 8, !tbaa !107
  %.sroa.51147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.51147.0.copyload = load float, ptr %.sroa.51147.0..sroa_idx, align 4, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01142.0.copyload = load float, ptr %i.q, align 8, !tbaa !107
  %.sroa.41143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.41143.0.copyload = load float, ptr %.sroa.41143.0..sroa_idx, align 4, !tbaa !107
  %.sroa.51144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.51144.0.copyload = load float, ptr %.sroa.51144.0..sroa_idx, align 8, !tbaa !107
  %i.r = icmp ne ptr %i.g, null, !nosanitize !10
  %i.s = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.t = and i64 %i.s, 7, !nosanitize !10
  %i.u = icmp eq i64 %i.t, 0, !nosanitize !10
  %i.v = and i1 %i.r, %i.u, !nosanitize !10
  br i1 %i.v, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @131, i64 %i.s) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4764
  %i.x = load i8, ptr %i.w, align 4, !tbaa !88    ; 3 uses
  %i.y = icmp ult i8 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.z = zext i8 %i.x to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @132, i64 %i.z) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.aa = trunc nuw i8 %i.x to i1
  %i.ab = select i1 %i.aa, float 1.000000e+00, float 0.000000e+00 ; 7 uses
  %i.ac = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.ad = fmul float %i.ac, 5.000000e-03
  %i.ae = fmul float %i.ad, 4.000000e+00
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = trunc nuw i64 %.sroa.21149.0.extract.shift to i32
  %i.ah = and i32 %i.ag, 65535
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.01148.0.extract.trunc, i32 %i.ah), !nosanitize !10 ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 0, !nosanitize !10 ; 3 uses
  %i.ak = extractvalue { i32, i1 } %i.ai, 1, !nosanitize !10
  br i1 %i.ak, label %bb.h, label %.preheader1196, !prof !89, !nosanitize !10

.preheader1196:                                   ; preds = %bb.g
  %i.al = ptrtoint ptr %.fr12947 to i64           ; 9 uses
  %.not12948 = icmp eq ptr %.fr12947, null
  br i1 %.not12948, label %.split11240.us, label %.preheader1196.split.preheader, !prof !89

bb.h:                                             ; preds = %bb.g
  %i.am = and i64 %0, 4294967295
  %i.an = and i64 %.sroa.21149.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @133, i64 %i.am, i64 %i.an) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1196.split:                             ; preds = %bb.j
  %indvars.iv.next24540 = add nuw nsw i64 %indvars.iv2453936925, 1
  %i.ao = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ar, i32 1), !nosanitize !10 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 0, !nosanitize !10
  %i.aq = extractvalue { i32, i1 } %i.ao, 1, !nosanitize !10
  br i1 %i.aq, label %.split.us, label %.preheader1196.split.preheader, !prof !92, !llvm.loop !219, !nosanitize !10

.split.us:                                        ; preds = %.preheader1196.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @134, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1196.split.preheader:                   ; preds = %.preheader1196, %.preheader1196.split
  %i.ar = phi i32 [ %i.ap, %.preheader1196.split ], [ 1, %.preheader1196 ] ; 3 uses
  %indvars.iv2453936925 = phi i64 [ %indvars.iv.next24540, %.preheader1196.split ], [ 0, %.preheader1196 ] ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %.fr12947, i64 %i.as ; 2 uses
  %i.au = shl nsw i64 %i.as, 4
  %i.av = add i64 %i.au, %i.al, !nosanitize !10   ; 3 uses
  %2 = icmp ne i64 %i.av, 0
  %3 = icmp uge i64 %i.av, %i.al, !nosanitize !10
  %4 = icmp slt i32 %i.ar, 0
  %5 = xor i1 %4, %3
  %6 = and i1 %2, %5, !nosanitize !10
  br i1 %6, label %bb.i, label %.split11240.us, !prof !11, !nosanitize !10

.split11240.us:                                   ; preds = %.preheader1196.split.preheader, %.preheader1196
  %.us-phi11242 = phi i64 [ 16, %.preheader1196 ], [ %i.av, %.preheader1196.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @135, i64 %i.al, i64 %.us-phi11242) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %.preheader1196.split.preheader
  %i.aw = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.ax = and i64 %i.aw, 7, !nosanitize !10
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !10
  br i1 %i.ay, label %bb.j, label %.split11244, !prof !11, !nosanitize !10

.split11244:                                      ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @137, i64 %i.aw) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.at, align 8, !tbaa !171
  %.not665 = icmp sgt i32 %i.az, %.sroa.01148.0.extract.trunc
  br i1 %.not665, label %.preheader1195.split, label %.preheader1196.split, !llvm.loop !219

.preheader1195.split:                             ; preds = %bb.j
  %i.ba = icmp sgt i32 %i.aj, %.sroa.01148.0.extract.trunc
  br i1 %i.ba, label %.lr.ph12946, label %._crit_edge

.lr.ph12946:                                      ; preds = %.preheader1195.split
  %i.bb = ptrtoint ptr %i.o to i64                ; 5 uses
  %i.bc = icmp ne ptr %i.o, null                  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  %i.be = ptrtoint ptr %i.i to i64                ; 6 uses
  %i.bf = icmp ne ptr %i.i, null                  ; 4 uses
  %i.bg = ptrtoint ptr %i.k to i64                ; 6 uses
  %i.bh = icmp ne ptr %i.k, null                  ; 4 uses
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  br label %bb.k

.loopexit:                                        ; preds = %.critedge.split.us12766, %.critedge.split.us, %.split12760
  %.1.lcssa = phi i32 [ %.062312945, %.split12760 ], [ %i.bz, %.critedge.split.us ], [ %i.bz, %.critedge.split.us12766 ] ; 2 uses
  %i.bi = icmp slt i32 %.1.lcssa, %i.aj
  br i1 %i.bi, label %bb.k, label %._crit_edge, !llvm.loop !220

bb.k:                                             ; preds = %.lr.ph12946, %.loopexit
  %indvars.iv24544 = phi i64 [ %indvars.iv2453936925, %.lr.ph12946 ], [ %indvars.iv.next24545, %.loopexit ] ; 4 uses
  %.062312945 = phi i32 [ %.sroa.01148.0.extract.trunc, %.lr.ph12946 ], [ %.1.lcssa, %.loopexit ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.fr12947, i64 %indvars.iv24544 ; 4 uses
  %i.bk = shl nuw nsw i64 %indvars.iv24544, 4
  %i.bl = add i64 %i.bk, %i.al, !nosanitize !10   ; 2 uses
  %.not12950 = icmp ult i64 %i.bl, %i.al, !nosanitize !10
  br i1 %.not12950, label %bb.l, label %bb.m, !prof !89, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @138, i64 %i.al, i64 %i.bl) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %i.bj to i64, !nosanitize !10 ; 2 uses
  %i.bn = and i64 %i.bm, 7, !nosanitize !10
  %i.bo = icmp eq i64 %i.bn, 0, !nosanitize !10
  br i1 %i.bo, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @139, i64 %i.bm) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.bj, align 8, !tbaa !171 ; 3 uses
  %indvars.iv.next24545 = add nuw nsw i64 %indvars.iv24544, 1 ; 3 uses
  %exitcond24547 = icmp eq i64 %indvars.iv24544, 2147483647
  br i1 %exitcond24547, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @140, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bq = shl i64 %indvars.iv.next24545, 32       ; 2 uses
  %i.br = ashr exact i64 %i.bq, 28
  %i.bs = getelementptr inbounds i8, ptr %.fr12947, i64 %i.br ; 2 uses
  %i.bt = ashr exact i64 %i.bq, 28
  %i.bu = add i64 %i.bt, %i.al, !nosanitize !10   ; 3 uses
  %7 = icmp ne i64 %i.bu, 0
  %8 = icmp uge i64 %i.bu, %i.al, !nosanitize !10
  %9 = and i64 %indvars.iv.next24545, 2147483648
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, %8
  %12 = and i1 %7, %11, !nosanitize !10
  br i1 %12, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 %i.al, i64 %i.bu) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.bv = ptrtoint ptr %i.bs to i64, !nosanitize !10 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !10
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !10
  br i1 %i.bx, label %.split12760, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @142, i64 %i.bv) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split12760:                                      ; preds = %bb.s
  %i.by = load i32, ptr %i.bs, align 8, !tbaa !171
  %i.bz = tail call noundef i32 @llvm.smin.i32(i32 %i.by, i32 %i.aj) ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !172 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !173
  %.fr12952 = freeze ptr %i.cd                    ; 3 uses
  %i.ce = icmp slt i32 %.062312945, %i.bz
  br i1 %i.ce, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.split12760
  %i.cf = ptrtoint ptr %.fr12952 to i64           ; 4 uses
  %.not12953 = icmp eq ptr %.fr12952, null
  br i1 %.not12953, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader, !prof !89

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cg = sext i32 %i.cb to i64
  %i.ch = sext i32 %.062312945 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ci = sext i32 %.062312945 to i64
  %wide.trip.count24537 = sext i32 %i.bz to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.critedge.split.us12766
  %indvars.iv24530 = phi i64 [ %i.ch, %.lr.ph.split.us.preheader ], [ %indvars.iv.next24531, %.critedge.split.us12766 ] ; 6 uses
  %i.cj = getelementptr inbounds [1696 x i8], ptr %i.o, i64 %indvars.iv24530 ; 64 uses
  %i.ck = mul nsw i64 %indvars.iv24530, 1696
  %i.cl = add i64 %i.ck, %i.bb, !nosanitize !10   ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = xor i1 %i.bc, %i.cm
  %i.co = icmp uge i64 %i.cl, %i.bb, !nosanitize !10
  %i.cp = icmp slt i64 %indvars.iv24530, 0
  %i.cq = xor i1 %i.cp, %i.co
  %i.cr = and i1 %i.cn, %i.cq, !nosanitize !10
  br i1 %i.cr, label %bb.u, label %.split12768.us, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %.lr.ph.split.us
  %i.cs = trunc nsw i64 %indvars.iv24530 to i32
  %i.ct = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cs, i32 %i.bp), !nosanitize !10 ; 2 uses
  %i.cu = extractvalue { i32, i1 } %i.ct, 1, !nosanitize !10
  br i1 %i.cu, label %.split12772.us, label %.preheader.us, !prof !89, !nosanitize !10

.preheader.us:                                    ; preds = %bb.u
  %i.cv = extractvalue { i32, i1 } %i.ct, 0, !nosanitize !10 ; 4 uses
  %i.cw = add i32 %i.cv, 536870912
  %i.cx = icmp ult i32 %i.cw, 1073741824
  %i.cy = icmp slt i32 %i.cv, 0
  %i.cz = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.da = and i64 %i.cz, 15
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = and i1 %i.bc, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 896 ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cj, i64 112
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cj, i64 160
  %i.do = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cj, i64 192
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cj, i64 208
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cj, i64 224
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cj, i64 240
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cj, i64 256
  %i.du = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cj, i64 288
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cj, i64 304
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cj, i64 320
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cj, i64 336
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cj, i64 352
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cj, i64 368
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cj, i64 384
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cj, i64 400
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cj, i64 768
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cj, i64 880
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cj, i64 784
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cj, i64 800
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cj, i64 816
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cj, i64 832
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cj, i64 848
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cj, i64 864
  %i.el = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.cj, i64 928 ; 7 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cj, i64 416
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cj, i64 432
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cj, i64 448
  %i.er = getelementptr inbounds nuw i8, ptr %i.cj, i64 464
  %i.es = getelementptr inbounds nuw i8, ptr %i.cj, i64 480
  %i.et = getelementptr inbounds nuw i8, ptr %i.cj, i64 496
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cj, i64 544
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 560
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cj, i64 576
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cj, i64 592
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cj, i64 608
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cj, i64 512
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cj, i64 528
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cj, i64 624
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cj, i64 640
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cj, i64 656
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cj, i64 672
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cj, i64 688
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cj, i64 704
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cj, i64 720
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cj, i64 736
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cj, i64 752
  br i1 %i.cx, label %.preheader.split.split.split.us.us.preheader, label %.split12776.us, !prof !11, !nosanitize !10

.preheader.split.split.split.us.us.preheader:     ; preds = %.preheader.us
  %i.fk = shl nsw i32 %i.cv, 2
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1088
  %.not669.us.us.1 = icmp ugt ptr %i.em, inttoptr (i64 -193 to ptr)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cj, i64 1280
  %.not669.us.us.2 = icmp ugt ptr %i.em, inttoptr (i64 -385 to ptr)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cj, i64 1472
  %.not669.us.us.3 = icmp ugt ptr %i.em, inttoptr (i64 -577 to ptr)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cj, i64 1664
  %.not669.us.us.4 = icmp ugt ptr %i.em, inttoptr (i64 -769 to ptr)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cj, i64 1856
  br label %.preheader.split.split.split.us.us

.preheader.split.split.split.us.us:               ; preds = %.preheader.split.split.split.us.us.preheader, %._crit_edge11263.us.us
  %indvars.iv24526 = phi i64 [ 0, %.preheader.split.split.split.us.us.preheader ], [ %indvars.iv.next24527, %._crit_edge11263.us.us ] ; 88 uses
  %i.fr = add nuw nsw i64 %indvars.iv24526, %i.fl ; 3 uses
  %.not666.us11721.us = icmp slt i64 %i.fr, %i.cg
  br i1 %.not666.us11721.us, label %bb.v, label %.critedge.split.us12766

bb.v:                                             ; preds = %.preheader.split.split.split.us.us
  %i.fs = getelementptr inbounds [4 x i8], ptr %.fr12952, i64 %i.fr ; 2 uses
  %i.ft = shl nsw i64 %i.fr, 2
  %i.fu = add i64 %i.ft, %i.cf, !nosanitize !10   ; 3 uses
  %i.fv = icmp ne i64 %i.fu, 0
  %i.fw = icmp uge i64 %i.fu, %i.cf, !nosanitize !10
  %i.fx = xor i1 %i.cy, %i.fw
  %i.fy = and i1 %i.fv, %i.fx, !nosanitize !10
  br i1 %i.fy, label %bb.w, label %.split11266.us, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  %i.fz = ptrtoint ptr %i.fs to i64, !nosanitize !10 ; 2 uses
  %i.ga = and i64 %i.fz, 3, !nosanitize !10
  %i.gb = icmp eq i64 %i.ga, 0, !nosanitize !10
  br i1 %i.gb, label %bb.x, label %.split11270, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.gc = load i32, ptr %i.fs, align 4, !tbaa !174 ; 2 uses
  %i.gd = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 3 uses
  %i.ge = sext i32 %i.gc to i64                   ; 2 uses
  %i.gf = getelementptr inbounds [216 x i8], ptr %i.gd, i64 %i.ge ; 9 uses
  %i.gg = mul nsw i64 %i.ge, 216
  %i.gh = ptrtoint ptr %i.gd to i64, !nosanitize !10 ; 3 uses
  %i.gi = add i64 %i.gg, %i.gh, !nosanitize !10   ; 3 uses
  %i.gj = icmp ne ptr %i.gd, null, !nosanitize !10 ; 2 uses
  %i.gk = icmp eq i64 %i.gi, 0
  %i.gl = xor i1 %i.gj, %i.gk
  %i.gm = icmp uge i64 %i.gi, %i.gh, !nosanitize !10
  %i.gn = icmp slt i32 %i.gc, 0
  %i.go = xor i1 %i.gn, %i.gm
  %i.gp = and i1 %i.gl, %i.go, !nosanitize !10
  br i1 %i.gp, label %bb.y, label %.split11729.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  %i.gq = ptrtoint ptr %i.gf to i64, !nosanitize !10 ; 2 uses
  %i.gr = and i64 %i.gq, 7, !nosanitize !10
  %i.gs = icmp eq i64 %i.gr, 0, !nosanitize !10
  %i.gt = and i1 %i.gj, %i.gs
  br i1 %i.gt, label %bb.z, label %.split11733.us, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !119 ; 26 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gf, i64 60
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !102 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !103 ; 5 uses
  %i.ha = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gx, i32 1), !nosanitize !10 ; 2 uses
  %i.hb = extractvalue { i32, i1 } %i.ha, 0, !nosanitize !10
  %i.hc = extractvalue { i32, i1 } %i.ha, 1, !nosanitize !10
end_hunk_2
begin_hunk_3_@b3PrepareContacts_Convex:bb.a
  %i.jh = icmp uge i64 %i.je, %i.be, !nosanitize !10
  %i.ji = icmp slt i32 %i.gz, 0                   ; 2 uses
  %i.jj = xor i1 %i.ji, %i.jh
  %i.jk = and i1 %i.jg, %i.jj, !nosanitize !10
  br i1 %i.jk, label %bb.al, label %.split11790.us, !prof !11, !nosanitize !10

bb.al:                                            ; preds = %bb.ak
  %i.jl = ptrtoint ptr %i.jc to i64, !nosanitize !10 ; 2 uses
  %i.jm = and i64 %i.jl, 3, !nosanitize !10
  %i.jn = icmp eq i64 %i.jm, 0, !nosanitize !10
  %i.jo = and i1 %i.bf, %i.jn
  br i1 %i.jo, label %bb.am, label %.split11794.us, !prof !11, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jc, i64 104
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !106
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jc, i64 144
  %.sroa.21.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.jc, i64 156
  %.sroa.39.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.jc, i64 172
  %i.js = load <3 x float>, ptr %i.jr, align 4, !tbaa !107
  %i.jt = shufflevector <3 x float> %i.js, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 0>
  %i.ju = load <4 x float>, ptr %.sroa.21.0..sroa_idx.us.us, align 4, !tbaa !107 ; 2 uses
  %i.jv = load <2 x float>, ptr %.sroa.39.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.jw = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.jb ; 5 uses
  %i.jx = mul nsw i64 %i.jb, 56
  %i.jy = add i64 %i.jx, %i.bg, !nosanitize !10   ; 3 uses
  %i.jz = icmp eq i64 %i.jy, 0
  %i.ka = xor i1 %i.bh, %i.jz
  %i.kb = icmp uge i64 %i.jy, %i.bg, !nosanitize !10
  %i.kc = xor i1 %i.ji, %i.kb
  %i.kd = and i1 %i.ka, %i.kc, !nosanitize !10
  br i1 %i.kd, label %bb.an, label %.split11803.us, !prof !11, !nosanitize !10

bb.an:                                            ; preds = %bb.am
  %i.ke = ptrtoint ptr %i.jw to i64, !nosanitize !10 ; 2 uses
  %i.kf = and i64 %i.ke, 3, !nosanitize !10
  %i.kg = icmp eq i64 %i.kf, 0, !nosanitize !10
  %i.kh = and i1 %i.bh, %i.kg
  br i1 %i.kh, label %bb.ao, label %.split11807.us, !prof !11, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %.sroa.5377.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.5377.0.copyload378.us.us = load float, ptr %.sroa.5377.0..sroa_idx.us.us, align 4, !tbaa !107
  %.sroa.0375.0.copyload376.us.us = load <2 x float>, ptr %i.jw, align 4, !tbaa !107
  %.sroa.0371.0.copyload372.us.us = load <2 x float>, ptr %i.ki, align 4, !tbaa !107
  %.sroa.5373.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %.sroa.5373.0.copyload374.us.us = load float, ptr %.sroa.5373.0..sroa_idx.us.us, align 4, !tbaa !107
  %i.kj = shufflevector <2 x float> %i.jv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> %i.ju, <4 x i32> <i32 0, i32 4, i32 6, i32 1>
  %i.kl = shufflevector <4 x float> %i.kj, <4 x float> %i.ju, <4 x i32> <i32 1, i32 6, i32 5, i32 7>
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aj, %bb.ao
  %.sroa.0371.0.us.us = phi <2 x float> [ %.sroa.0371.0.copyload372.us.us, %bb.ao ], [ zeroinitializer, %bb.aj ] ; 3 uses
  %.sroa.5373.0.us.us = phi float [ %.sroa.5373.0.copyload374.us.us, %bb.ao ], [ 0.000000e+00, %bb.aj ]
  %.sroa.0375.0.us.us = phi <2 x float> [ %.sroa.0375.0.copyload376.us.us, %bb.ao ], [ zeroinitializer, %bb.aj ]
  %.sroa.5377.0.us.us = phi float [ %.sroa.5377.0.copyload378.us.us, %bb.ao ], [ 0.000000e+00, %bb.aj ]
  %.0629.us.us = phi float [ %i.jq, %bb.ao ], [ 0.000000e+00, %bb.aj ] ; 4 uses
  %i.km = phi <4 x float> [ %i.kk, %bb.ao ], [ zeroinitializer, %bb.aj ] ; 14 uses
  %i.kn = phi <4 x float> [ %i.jt, %bb.ao ], [ zeroinitializer, %bb.aj ] ; 10 uses
  %i.ko = phi <4 x float> [ %i.kl, %bb.ao ], [ zeroinitializer, %bb.aj ] ; 7 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv24526
  store float %.0628.us.us, ptr %i.kp, align 4, !tbaa !176
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv24526
  store float %.0629.us.us, ptr %i.kq, align 4, !tbaa !176
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv24526
  %i.ks = extractelement <4 x float> %i.iy, i64 3
  store float %i.ks, ptr %i.kr, align 4, !tbaa !176
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv24526
  %i.ku = extractelement <4 x float> %i.iy, i64 2
  store float %i.ku, ptr %i.kt, align 4, !tbaa !176
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv24526
  %i.kw = extractelement <4 x float> %i.iy, i64 0
  store float %i.kw, ptr %i.kv, align 4, !tbaa !176
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv24526
  %i.ky = extractelement <4 x float> %i.iz, i64 2
  store float %i.ky, ptr %i.kx, align 4, !tbaa !176
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv24526
  %i.la = extractelement <4 x float> %i.ix, i64 2
  store float %i.la, ptr %i.kz, align 4, !tbaa !176
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv24526
  %i.lc = extractelement <4 x float> %i.ix, i64 3
  store float %i.lc, ptr %i.lb, align 4, !tbaa !176
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv24526
  %i.le = extractelement <4 x float> %i.kn, i64 3 ; 2 uses
  store float %i.le, ptr %i.ld, align 4, !tbaa !176
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv24526
  %i.lg = extractelement <4 x float> %i.kn, i64 2 ; 2 uses
  store float %i.lg, ptr %i.lf, align 4, !tbaa !176
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv24526
  %i.li = extractelement <4 x float> %i.kn, i64 0
  store float %i.li, ptr %i.lh, align 4, !tbaa !176
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv24526
  %i.lk = extractelement <4 x float> %i.ko, i64 2 ; 2 uses
  store float %i.lk, ptr %i.lj, align 4, !tbaa !176
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv24526
  %i.lm = extractelement <4 x float> %i.km, i64 2
  store float %i.lm, ptr %i.ll, align 4, !tbaa !176
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv24526
  %i.lo = extractelement <4 x float> %i.km, i64 3
  store float %i.lo, ptr %i.ln, align 4, !tbaa !176
  %or.cond.us.us = or i1 %i.hl, %i.ja             ; 3 uses
  %.sroa.6975.0.us.us = select i1 %or.cond.us.us, float %.sroa.51144.0.copyload, float %.sroa.51147.0.copyload
  %.sroa.5972.0.us.us = select i1 %or.cond.us.us, float %.sroa.41143.0.copyload, float %.sroa.41146.0.copyload
  %.sroa.0970.0.us.us = select i1 %or.cond.us.us, float %.sroa.01142.0.copyload, float %.sroa.01145.0.copyload
  %i.lp = icmp ne ptr %i.gv, null, !nosanitize !10
  %i.lq = ptrtoint ptr %i.gv to i64, !nosanitize !10 ; 7 uses
  %i.lr = and i64 %i.lq, 3, !nosanitize !10
  %i.ls = icmp eq i64 %i.lr, 0, !nosanitize !10
  %i.lt = and i1 %i.lp, %i.ls, !nosanitize !10
  br i1 %i.lt, label %bb.aq, label %.split11861.us, !prof !11, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gv, i64 224 ; 2 uses
  %.sroa.0961.0.copyload.us.us = load <2 x float>, ptr %i.lu, align 4, !tbaa !107 ; 10 uses
  %.sroa.12969.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gv, i64 232
  %.sroa.12969.0.copyload.us.us = load float, ptr %.sroa.12969.0..sroa_idx.us.us, align 4, !tbaa !107 ; 11 uses
  %.sroa.0961.0.vec.extract.us.us = extractelement <2 x float> %.sroa.0961.0.copyload.us.us, i64 0 ; 7 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv24526
  store float %.sroa.0961.0.vec.extract.us.us, ptr %i.lv, align 4, !tbaa !176
  %.sroa.0961.4.vec.extract.us.us = extractelement <2 x float> %.sroa.0961.0.copyload.us.us, i64 1 ; 8 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv24526
  store float %.sroa.0961.4.vec.extract.us.us, ptr %i.lw, align 4, !tbaa !176
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv24526
  store float %.sroa.12969.0.copyload.us.us, ptr %i.lx, align 4, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ly = tail call float @llvm.fabs.f32(float %.sroa.0961.0.vec.extract.us.us)
  %or.cond.i.us.us = fcmp ogt float %i.ly, 5.000000e-01
  br i1 %or.cond.i.us.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !122
  store float %.sroa.12969.0.copyload.us.us, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  %i.lz = fneg float %.sroa.0961.4.vec.extract.us.us
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  store float %.sroa.0961.4.vec.extract.us.us, ptr %.sroa.014.i, align 8, !tbaa !122
  %i.ma = fneg float %.sroa.0961.0.vec.extract.us.us
  store float %i.ma, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.05.0.in.i.us.us = phi ptr [ %.sroa.014.i, %bb.as ], [ %.sroa.0.i, %bb.ar ]
  %.sroa.5.0.i.us.us = phi float [ 0.000000e+00, %bb.as ], [ %i.lz, %bb.ar ] ; 3 uses
  %.sroa.05.0.i.us.us = load <2 x float>, ptr %.sroa.05.0.in.i.us.us, align 8, !tbaa !107 ; 3 uses
  %i.mb = fmul <2 x float> %.sroa.05.0.i.us.us, %.sroa.05.0.i.us.us ; 2 uses
  %shift = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.mb, %shift
  %i.mc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.md = fmul float %.sroa.5.0.i.us.us, %.sroa.5.0.i.us.us
  %i.me = fadd float %i.md, %i.mc                 ; 2 uses
  %i.mf = fcmp ogt float %i.me, f0x057A0000
  br i1 %i.mf, label %bb.au, label %b3Perp.exit.us.us

bb.au:                                            ; preds = %bb.at
  %sqrt.i.us.us = tail call float @llvm.sqrt.f32(float %i.me)
  %i.mg = fdiv float 1.000000e+00, %sqrt.i.us.us  ; 2 uses
  %i.mh = insertelement <2 x float> poison, float %i.mg, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = fmul <2 x float> %.sroa.05.0.i.us.us, %i.mi
  %i.mk = fmul float %.sroa.5.0.i.us.us, %i.mg
  br label %b3Perp.exit.us.us

b3Perp.exit.us.us:                                ; preds = %bb.au, %bb.at
  %.sroa.07.0.i.i.us.us = phi <2 x float> [ %i.mj, %bb.au ], [ zeroinitializer, %bb.at ] ; 9 uses
  %.sroa.5.0.i.i.us.us = phi float [ %i.mk, %bb.au ], [ 0.000000e+00, %bb.at ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0954.0.vec.extract.us.us = extractelement <2 x float> %.sroa.07.0.i.i.us.us, i64 0 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv24526
  store float %.sroa.0954.0.vec.extract.us.us, ptr %i.ml, align 4, !tbaa !176
  %.sroa.0954.4.vec.extract.us.us = extractelement <2 x float> %.sroa.07.0.i.i.us.us, i64 1 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv24526
  store float %.sroa.0954.4.vec.extract.us.us, ptr %i.mm, align 4, !tbaa !176
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv24526
  store float %.sroa.5.0.i.i.us.us, ptr %i.mn, align 4, !tbaa !176
  %i.mo = fmul float %.sroa.12969.0.copyload.us.us, %.sroa.0954.4.vec.extract.us.us
  %i.mp = fmul float %.sroa.0961.4.vec.extract.us.us, %.sroa.5.0.i.i.us.us
  %i.mq = fsub float %i.mo, %i.mp                 ; 6 uses
  %i.mr = fmul float %.sroa.0961.0.vec.extract.us.us, %.sroa.5.0.i.i.us.us
  %i.ms = fmul float %.sroa.12969.0.copyload.us.us, %.sroa.0954.0.vec.extract.us.us
  %i.mt = fsub float %i.mr, %i.ms                 ; 6 uses
  %i.mu = fmul float %.sroa.0961.4.vec.extract.us.us, %.sroa.0954.0.vec.extract.us.us
  %i.mv = fmul float %.sroa.0961.0.vec.extract.us.us, %.sroa.0954.4.vec.extract.us.us
  %i.mw = fsub float %i.mu, %i.mv                 ; 6 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv24526
  store float %i.mq, ptr %i.mx, align 4, !tbaa !176
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv24526
  store float %i.mt, ptr %i.my, align 4, !tbaa !176
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv24526
  store float %i.mw, ptr %i.mz, align 4, !tbaa !176
  %i.na = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv24526
  %i.nc = load float, ptr %i.na, align 8, !tbaa !116
  store float %i.nc, ptr %i.nb, align 4, !tbaa !176
  %i.nd = getelementptr inbounds nuw i8, ptr %i.gf, i64 192
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv24526
  %i.nf = load float, ptr %i.nd, align 8, !tbaa !225
  store float %i.nf, ptr %i.ne, align 4, !tbaa !176
  %i.ng = getelementptr inbounds nuw i8, ptr %i.gf, i64 196
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv24526
  %i.ni = load float, ptr %i.ng, align 4, !tbaa !226
  store float %i.ni, ptr %i.nh, align 4, !tbaa !176
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv24526
  %.sroa.2352.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gf, i64 208 ; 2 uses
  %.sroa.2352.0.copyload.us.us = load float, ptr %.sroa.2352.0..sroa_idx.us.us, align 8
  %i.nk = fmul float %.sroa.5.0.i.i.us.us, %.sroa.2352.0.copyload.us.us
  %i.nl = getelementptr inbounds nuw i8, ptr %i.gf, i64 200 ; 2 uses
  %.sroa.0351.0.copyload.us.us = load <2 x float>, ptr %i.nl, align 8 ; 2 uses
  %foldExtExtBinop36927 = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.0351.0.copyload.us.us
  %foldExtExtBinop36929.a = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.0351.0.copyload.us.us
  %shift36931 = shufflevector <2 x float> %foldExtExtBinop36929.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36932 = fadd <2 x float> %foldExtExtBinop36927, %shift36931
  %i.nm = extractelement <2 x float> %foldExtExtBinop36932, i64 0
  %i.nn = fadd float %i.nk, %i.nm
  store float %i.nn, ptr %i.nj, align 4, !tbaa !176
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv24526
  %.sroa.2348.0.copyload.us.us = load float, ptr %.sroa.2352.0..sroa_idx.us.us, align 8
  %i.np = fmul float %i.mw, %.sroa.2348.0.copyload.us.us
  %.sroa.0347.0.copyload.us.us = load <2 x float>, ptr %i.nl, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i673.us.us = extractelement <2 x float> %.sroa.0347.0.copyload.us.us, i64 0
  %i.nq = fmul float %i.mq, %.sroa.03.0.vec.extract.i673.us.us
  %.sroa.03.4.vec.extract.i675.us.us = extractelement <2 x float> %.sroa.0347.0.copyload.us.us, i64 1
  %i.nr = fmul float %i.mt, %.sroa.03.4.vec.extract.i675.us.us
  %i.ns = fadd float %i.nq, %i.nr
  %i.nt = fadd float %i.np, %i.ns
  store float %i.nt, ptr %i.no, align 4, !tbaa !176
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv24526
  store float %.sroa.0970.0.us.us, ptr %i.nu, align 4, !tbaa !176
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv24526
  store float %.sroa.5972.0.us.us, ptr %i.nv, align 4, !tbaa !176
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv24526
  store float %.sroa.6975.0.us.us, ptr %i.nw, align 4, !tbaa !176
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gv, i64 264
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !121 ; 10 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv24526
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !174
  %i.oa = icmp sgt i32 %i.ny, 0                   ; 2 uses
  br i1 %i.oa, label %.lr.ph.us.us, label %._crit_edge.us.us

.lr.ph.us.us:                                     ; preds = %b3Perp.exit.us.us
  %i.ob = fadd float %.0628.us.us, %.0629.us.us
  %.sroa.09.0.vec.extract.i764.us.us = extractelement <2 x float> %.sroa.0371.0.us.us, i64 0 ; 2 uses
  %.sroa.09.0.vec.extract.i748.us.us = extractelement <2 x float> %.sroa.0387.0.us.us, i64 0
  %.sroa.07.4.vec.extract.i754.us.us = extractelement <2 x float> %.sroa.0391.0.us.us, i64 1
  %wide.trip.count = zext nneg i32 %i.ny to i64
  %i.oc = shufflevector <4 x float> %i.iz, <4 x float> %i.ix, <4 x i32> <i32 3, i32 4, i32 7, i32 poison>
  %i.od = shufflevector <4 x float> %i.km, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 3, i32 poison, i32 poison>
  %i.oe = shufflevector <4 x float> %i.oc, <4 x float> %i.ko, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.of = shufflevector <8 x float> %i.oe, <8 x float> %i.od, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.og = shufflevector <4 x float> %i.kn, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 0, i32 poison, i32 poison>
  %i.oh = shufflevector <4 x float> %i.iy, <4 x float> %i.kn, <8 x i32> <i32 3, i32 2, i32 0, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oi = shufflevector <8 x float> %i.oh, <8 x float> %i.og, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.oj = shufflevector <4 x float> %i.ix, <4 x float> %i.iz, <4 x i32> <i32 1, i32 6, i32 2, i32 poison>
  %i.ok = shufflevector <4 x float> %i.ko, <4 x float> %i.km, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ol = shufflevector <8 x float> %i.ok, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.om = shufflevector <4 x float> %i.oj, <4 x float> %i.km, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.on = shufflevector <8 x float> %i.om, <8 x float> %i.ol, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.oo = shufflevector <2 x float> %.sroa.0961.0.copyload.us.us, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.op = insertelement <8 x float> poison, float %.0629.us.us, i64 6
  %i.oq = insertelement <8 x float> %i.op, float %.0628.us.us, i64 7
  %i.or = shufflevector <2 x float> %.sroa.0375.0.us.us, <2 x float> %.sroa.0391.0.us.us, <4 x i32> <i32 poison, i32 0, i32 2, i32 1>
  %i.os = insertelement <4 x float> %i.or, float %.sroa.5393.0.us.us, i64 0
  %i.ot = shufflevector <2 x float> %.sroa.0387.0.us.us, <2 x float> %.sroa.0371.0.us.us, <4 x i32> <i32 0, i32 3, i32 1, i32 poison>
  %shift36938.a = shufflevector <2 x float> %.sroa.0371.0.us.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %.lr.ph.us.us ] ; 6 uses
  %.063011251.us.us = phi float [ %i.pw, %bb.ay ], [ 0.000000e+00, %.lr.ph.us.us ]
  %.sroa.0936.011249.us.us = phi <2 x float> [ %i.pr, %bb.ay ], [ zeroinitializer, %.lr.ph.us.us ]
  %.sroa.0941.011247.us.us = phi <2 x float> [ %i.pp, %bb.ay ], [ zeroinitializer, %.lr.ph.us.us ]
  %i.ou = phi <2 x float> [ %i.pv, %bb.ay ], [ zeroinitializer, %.lr.ph.us.us ]
  %exitcond.not = icmp eq i64 %indvars.iv, 5
  br i1 %exitcond.not, label %.split11942.us, label %bb.aw, !prof !89, !nosanitize !10

bb.aw:                                            ; preds = %bb.av
  %i.ov = getelementptr inbounds nuw [56 x i8], ptr %i.gv, i64 %indvars.iv ; 6 uses
  %i.ow = mul nuw nsw i64 %indvars.iv, 56
  %i.ox = add i64 %i.ow, %i.lq, !nosanitize !10   ; 2 uses
  %.not670.us.us = icmp ult i64 %i.ox, %i.lq, !nosanitize !10
  br i1 %.not670.us.us, label %.split11945.us, label %bb.ax, !prof !89, !nosanitize !10

bb.ax:                                            ; preds = %bb.aw
  %i.oy = mul nuw nsw i64 %indvars.iv, 192
  %i.oz = add i64 %i.oy, %i.en, !nosanitize !10   ; 2 uses
  %.not671.us.us = icmp ult i64 %i.oz, %i.en, !nosanitize !10
  br i1 %.not671.us.us, label %.split11949.us, label %bb.ay, !prof !89, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  %i.pa = getelementptr inbounds nuw [192 x i8], ptr %i.em, i64 %indvars.iv ; 11 uses
  %.sroa.0930.0.copyload.us.us = load <2 x float>, ptr %i.ov, align 4, !tbaa !107 ; 10 uses
  %.sroa.9935.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %.sroa.9935.0.copyload.us.us = load float, ptr %.sroa.9935.0..sroa_idx.us.us, align 4, !tbaa !107 ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  %.sroa.9929.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.ov, i64 20
  %.sroa.9929.0.copyload.us.us = load float, ptr %.sroa.9929.0..sroa_idx.us.us, align 4, !tbaa !107 ; 6 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %.sroa.0924.0.copyload.us.us = load <2 x float>, ptr %i.pb, align 4, !tbaa !107 ; 11 uses
  %i.pd = shufflevector <2 x float> %.sroa.0924.0.copyload.us.us, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pe = shufflevector <2 x float> %.sroa.0924.0.copyload.us.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.pf = load float, ptr %i.pc, align 4, !tbaa !130 ; 2 uses
  %i.pg = fmul float %i.af, %i.pf
  %i.ph = fsub float 2.000000e+00, %i.pg          ; 3 uses
  %i.pi = fcmp olt float %i.ph, 1.000000e-10
  %i.pj = fcmp ogt float %i.ph, 1.000000e+00
  %i.pk = select i1 %i.pj, float 1.000000e+00, float %i.ph
  %i.pl = select i1 %i.pi, float 1.000000e-10, float %i.pk ; 2 uses
  %.sroa.0.0.vec.extract.i688.us.us = extractelement <2 x float> %.sroa.0930.0.copyload.us.us, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i689.us.us = extractelement <2 x float> %.sroa.0930.0.copyload.us.us, i64 1 ; 3 uses
  %i.pm = insertelement <2 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.po = fmul <2 x float> %.sroa.0930.0.copyload.us.us, %i.pn
  %i.pp = fadd <2 x float> %.sroa.0941.011247.us.us, %i.po ; 2 uses
  %.sroa.0.0.vec.extract.i693.us.us = extractelement <2 x float> %.sroa.0924.0.copyload.us.us, i64 0
  %.sroa.0.4.vec.extract.i695.us.us = extractelement <2 x float> %.sroa.0924.0.copyload.us.us, i64 1 ; 3 uses
  %i.pq = fmul <2 x float> %.sroa.0924.0.copyload.us.us, %i.pn
  %i.pr = fadd <2 x float> %.sroa.0936.011249.us.us, %i.pq ; 2 uses
  %i.ps = insertelement <2 x float> poison, float %.sroa.9935.0.copyload.us.us, i64 0
  %i.pt = insertelement <2 x float> %i.ps, float %.sroa.9929.0.copyload.us.us, i64 1
  %i.pu = fmul <2 x float> %i.pt, %i.pn
  %i.pv = fadd <2 x float> %i.ou, %i.pu           ; 2 uses
  %i.pw = fadd float %.063011251.us.us, %i.pl     ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv24526
  store float %.sroa.0.0.vec.extract.i688.us.us, ptr %i.px, align 4, !tbaa !176
  %i.py = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv24526
  store float %.sroa.0.4.vec.extract.i689.us.us, ptr %i.pz, align 4, !tbaa !176
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv24526
  store float %.sroa.9935.0.copyload.us.us, ptr %i.qb, align 4, !tbaa !176
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv24526
  store float %.sroa.0.0.vec.extract.i693.us.us, ptr %i.qd, align 4, !tbaa !176
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %indvars.iv24526
  store float %.sroa.0.4.vec.extract.i695.us.us, ptr %i.qf, align 4, !tbaa !176
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pa, i64 80
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %indvars.iv24526
  store float %.sroa.9929.0.copyload.us.us, ptr %i.qh, align 4, !tbaa !176
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pa, i64 96
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %indvars.iv24526
  %i.qk = fsub float %.sroa.9929.0.copyload.us.us, %.sroa.9935.0.copyload.us.us
  %i.ql = fmul float %.sroa.12969.0.copyload.us.us, %i.qk
  %foldExtExtBinop36934 = fsub <2 x float> %.sroa.0924.0.copyload.us.us, %.sroa.0930.0.copyload.us.us
  %foldExtExtBinop36936.a = fmul <2 x float> %.sroa.0961.0.copyload.us.us, %foldExtExtBinop36934
  %i.qm = extractelement <2 x float> %foldExtExtBinop36936.a, i64 0
  %i.qn = fsub float %.sroa.0.4.vec.extract.i695.us.us, %.sroa.0.4.vec.extract.i689.us.us
  %i.qo = fmul float %.sroa.0961.4.vec.extract.us.us, %i.qn
  %i.qp = fadd float %i.qm, %i.qo
  %i.qq = fadd float %i.ql, %i.qp
  %i.qr = fsub float %i.pf, %i.qq
  store float %i.qr, ptr %i.qj, align 4, !tbaa !176
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pa, i64 112
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv24526
  %i.qv = load float, ptr %i.qs, align 4, !tbaa !131
  %i.qw = fmul float %i.ab, %i.qv
  store float %i.qw, ptr %i.qu, align 4, !tbaa !176
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pa, i64 128
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.qy, align 4, !tbaa !176
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pa, i64 144
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv24526
  %i.rb = shufflevector <2 x float> %.sroa.0930.0.copyload.us.us, <2 x float> %.sroa.0961.0.copyload.us.us, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.rc = shufflevector <4 x float> %i.rb, <4 x float> %i.pe, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.re = shufflevector <8 x float> %i.rd, <8 x float> %i.oo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.rf = shufflevector <2 x float> %.sroa.0930.0.copyload.us.us, <2 x float> %.sroa.0924.0.copyload.us.us, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.rg = insertelement <8 x float> %i.rf, float %.sroa.12969.0.copyload.us.us, i64 0
  %i.rh = insertelement <8 x float> %i.rg, float %.sroa.9935.0.copyload.us.us, i64 1
  %i.ri = insertelement <8 x float> %i.rh, float %.sroa.9929.0.copyload.us.us, i64 4
  %i.rj = shufflevector <8 x float> %i.ri, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 4, i32 5, i32 poison, i32 poison>
  %i.rk = fmul <8 x float> %i.re, %i.rj
  %i.rl = shufflevector <8 x float> %i.rk, <8 x float> %i.oq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.rm = shufflevector <2 x float> %.sroa.0924.0.copyload.us.us, <2 x float> %.sroa.0961.0.copyload.us.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ro = shufflevector <8 x float> %i.rn, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 14, i32 15>
  %i.rp = shufflevector <2 x float> %.sroa.0961.0.copyload.us.us, <2 x float> %.sroa.0930.0.copyload.us.us, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rq = shufflevector <8 x float> %i.rp, <8 x float> %i.ro, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.rr = shufflevector <2 x float> %.sroa.0930.0.copyload.us.us, <2 x float> %.sroa.0924.0.copyload.us.us, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison>
  %i.rs = shufflevector <8 x float> %i.rr, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.rt = insertelement <8 x float> %i.rs, float %.sroa.9935.0.copyload.us.us, i64 0
  %i.ru = insertelement <8 x float> %i.rt, float %.sroa.12969.0.copyload.us.us, i64 1
  %i.rv = insertelement <8 x float> %i.ru, float %.sroa.9929.0.copyload.us.us, i64 3
  %i.rw = shufflevector <8 x float> %i.rv, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %i.rx = fmul <8 x float> %i.rq, %i.rw
  %i.ry = fsub <8 x float> %i.rl, %i.rx           ; 4 uses
  %i.rz = shufflevector <8 x float> %i.ry, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 poison, i32 poison>
  %i.sa = fmul <8 x float> %i.oi, %i.rz
  %i.sb = shufflevector <8 x float> %i.ry, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 4, i32 4, i32 4, i32 poison, i32 poison>
  %i.sc = fmul <8 x float> %i.on, %i.sb
  %i.sd = fadd <8 x float> %i.sa, %i.sc
  %i.se = shufflevector <8 x float> %i.ry, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 5, i32 5, i32 5, i32 poison, i32 poison>
  %i.sf = fmul <8 x float> %i.of, %i.se
  %i.sg = fadd <8 x float> %i.sf, %i.sd
  %i.sh = fmul <8 x float> %i.ry, %i.sg           ; 6 uses
  %i.si = extractelement <8 x float> %i.sh, i64 0
  %i.sj = extractelement <8 x float> %i.sh, i64 1
  %i.sk = fadd float %i.si, %i.sj
  %i.sl = extractelement <8 x float> %i.sh, i64 2
  %i.sm = fadd float %i.sl, %i.sk
  %i.sn = fadd float %i.ob, %i.sm
  %i.so = extractelement <8 x float> %i.sh, i64 3
  %i.sp = extractelement <8 x float> %i.sh, i64 4
  %i.sq = fadd float %i.so, %i.sp
  %i.sr = extractelement <8 x float> %i.sh, i64 5
  %i.ss = fadd float %i.sr, %i.sq
  %i.st = fadd float %i.sn, %i.ss                 ; 2 uses
  %i.su = fcmp ogt float %i.st, 0.000000e+00
  %i.sv = fdiv float 1.000000e+00, %i.st
  %i.sw = select i1 %i.su, float %i.sv, float 0.000000e+00
  store float %i.sw, ptr %i.ra, align 4, !tbaa !176
  %i.sx = getelementptr inbounds nuw i8, ptr %i.pa, i64 176
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv24526
  %i.sz = fmul float %.sroa.09.0.vec.extract.i764.us.us, %.sroa.0.4.vec.extract.i695.us.us
  %foldExtExtBinop36939.a = fmul <2 x float> %shift36938.a, %.sroa.0924.0.copyload.us.us
  %i.ta = extractelement <2 x float> %foldExtExtBinop36939.a, i64 0
  %i.tb = fsub float %i.sz, %i.ta
  %i.tc = fadd float %.sroa.5377.0.us.us, %i.tb
  %i.td = shufflevector <4 x float> %i.ot, <4 x float> %i.pd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.te = shufflevector <2 x float> %.sroa.0930.0.copyload.us.us, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.tf = insertelement <4 x float> %i.te, float %.sroa.9929.0.copyload.us.us, i64 1
  %i.tg = insertelement <4 x float> %i.tf, float %.sroa.9935.0.copyload.us.us, i64 2
  %i.th = insertelement <4 x float> %i.tg, float %.sroa.5373.0.us.us, i64 3 ; 2 uses
  %i.ti = fmul <4 x float> %i.td, %i.th
  %i.tj = shufflevector <2 x float> %.sroa.0387.0.us.us, <2 x float> %.sroa.0924.0.copyload.us.us, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.tk = insertelement <4 x float> %i.tj, float %.sroa.0.4.vec.extract.i689.us.us, i64 2
  %i.tl = insertelement <4 x float> %i.tk, float %.sroa.09.0.vec.extract.i764.us.us, i64 3
  %i.tm = shufflevector <2 x float> %.sroa.0930.0.copyload.us.us, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> %i.th, <4 x i32> <i32 0, i32 7, i32 poison, i32 5>
  %i.to = insertelement <4 x float> %i.tn, float %.sroa.5389.0.us.us, i64 2
  %i.tp = fmul <4 x float> %i.tl, %i.to
  %i.tq = fsub <4 x float> %i.ti, %i.tp
  %i.tr = fadd <4 x float> %i.os, %i.tq           ; 4 uses
  %i.ts = extractelement <4 x float> %i.tr, i64 0
  %i.tt = fsub float %i.tc, %i.ts
  %i.tu = fmul float %.sroa.12969.0.copyload.us.us, %i.tt
  %shift36941.a = shufflevector <4 x float> %i.tr, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop36942.a = fsub <4 x float> %i.tr, %shift36941.a
  %i.tv = extractelement <4 x float> %foldExtExtBinop36942.a, i64 1
  %i.tw = fmul float %.sroa.0961.0.vec.extract.us.us, %i.tv
  %i.tx = fmul float %.sroa.5389.0.us.us, %.sroa.0.0.vec.extract.i688.us.us
  %i.ty = fmul float %.sroa.09.0.vec.extract.i748.us.us, %.sroa.9935.0.copyload.us.us
  %i.tz = fsub float %i.tx, %i.ty
  %i.ua = fadd float %.sroa.07.4.vec.extract.i754.us.us, %i.tz
  %i.ub = extractelement <4 x float> %i.tr, i64 3
  %i.uc = fsub float %i.ub, %i.ua
  %i.ud = fmul float %.sroa.0961.4.vec.extract.us.us, %i.uc
  %i.ue = fadd float %i.tw, %i.ud
  %i.uf = fadd float %i.tu, %i.ue
  store float %i.uf, ptr %i.sy, align 4, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond24515.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond24515.not, label %._crit_edge.us.us, label %bb.av, !llvm.loop !221

._crit_edge.us.us:                                ; preds = %bb.ay, %b3Perp.exit.us.us
  %.sroa.0941.0.lcssa.us.us = phi <2 x float> [ zeroinitializer, %b3Perp.exit.us.us ], [ %i.pp, %bb.ay ] ; 2 uses
  %.sroa.0936.0.lcssa.us.us = phi <2 x float> [ zeroinitializer, %b3Perp.exit.us.us ], [ %i.pr, %bb.ay ] ; 2 uses
  %.0630.lcssa.us.us = phi float [ 0.000000e+00, %b3Perp.exit.us.us ], [ %i.pw, %bb.ay ]
  %i.ug = phi <2 x float> [ zeroinitializer, %b3Perp.exit.us.us ], [ %i.pv, %bb.ay ]
  %i.uh = fdiv float 1.000000e+00, %.0630.lcssa.us.us ; 3 uses
  %.sroa.0.0.vec.extract.i677.us.us = extractelement <2 x float> %.sroa.0941.0.lcssa.us.us, i64 0
  %.sroa.0.0.vec.extract.i681.us.us = extractelement <2 x float> %.sroa.0936.0.lcssa.us.us, i64 0
  %i.ui = fmul float %.sroa.0.0.vec.extract.i677.us.us, %i.uh ; 3 uses
  %i.uj = fmul float %.sroa.0.0.vec.extract.i681.us.us, %i.uh ; 4 uses
  %i.uk = shufflevector <2 x float> %.sroa.0941.0.lcssa.us.us, <2 x float> %.sroa.0936.0.lcssa.us.us, <2 x i32> <i32 1, i32 3>
  %i.ul = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.um = shufflevector <2 x float> %i.ul, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.un = fmul <2 x float> %i.uk, %i.um           ; 6 uses
  %i.uo = fmul <2 x float> %i.ug, %i.um           ; 6 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv24526
  store float %i.ui, ptr %i.up, align 4, !tbaa !176
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv24526
  %i.ur = extractelement <2 x float> %i.un, i64 0 ; 2 uses
  store float %i.ur, ptr %i.uq, align 4, !tbaa !176
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv24526
  %i.ut = extractelement <2 x float> %i.uo, i64 0 ; 6 uses
  store float %i.ut, ptr %i.us, align 4, !tbaa !176
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv24526
  store float %i.uj, ptr %i.uu, align 4, !tbaa !176
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv24526
  %i.uw = extractelement <2 x float> %i.un, i64 1 ; 3 uses
  store float %i.uw, ptr %i.uv, align 4, !tbaa !176
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv24526
  %i.uy = extractelement <2 x float> %i.uo, i64 1 ; 3 uses
  store float %i.uy, ptr %i.ux, align 4, !tbaa !176
  br i1 %i.oa, label %.lr.ph11258.us.us.preheader, label %._crit_edge11259.us.us

.lr.ph11258.us.us.preheader:                      ; preds = %._crit_edge.us.us
  %.sroa.0154.0.copyload.us.us = load <2 x float>, ptr %i.gv, align 4
  %.sroa.2155.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.sroa.2155.0.copyload.us.us = load float, ptr %.sroa.2155.0..sroa_idx.us.us, align 4
  %i.uz = fsub float %i.ut, %.sroa.2155.0.copyload.us.us ; 2 uses
  %i.va = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vb = insertelement <2 x float> %i.va, float %i.ui, i64 0 ; 5 uses
  %i.vc = fsub <2 x float> %i.vb, %.sroa.0154.0.copyload.us.us ; 2 uses
  %i.vd = fmul <2 x float> %i.vc, %i.vc           ; 2 uses
  %shift36944.a = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36945.a = fadd <2 x float> %i.vd, %shift36944.a
  %i.ve = extractelement <2 x float> %foldExtExtBinop36945.a, i64 0
  %i.vf = fmul float %i.uz, %i.uz
  %i.vg = fadd float %i.vf, %i.ve
  %sqrt.i.i.us.us = tail call float @llvm.sqrt.f32(float %i.vg)
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv24526
  store float %sqrt.i.i.us.us, ptr %i.vh, align 4, !tbaa !176
  %exitcond24521.not = icmp eq i32 %i.ny, 1
  br i1 %exitcond24521.not, label %._crit_edge11259.us.us, label %.lr.ph11258.us.us.1

.lr.ph11258.us.us.1:                              ; preds = %.lr.ph11258.us.us.preheader
  %i.vi = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %.not668.us.us.1 = icmp ugt ptr %i.gv, inttoptr (i64 -57 to ptr)
  br i1 %.not668.us.us.1, label %.split12031.us, label %bb.az, !prof !89, !nosanitize !10

bb.az:                                            ; preds = %.lr.ph11258.us.us.1
  br i1 %.not669.us.us.1, label %.split12035.us, label %bb.ba, !prof !89, !nosanitize !10

bb.ba:                                            ; preds = %bb.az
  %.sroa.0154.0.copyload.us.us.1 = load <2 x float>, ptr %i.vi, align 4
  %.sroa.2155.0..sroa_idx.us.us.1 = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %.sroa.2155.0.copyload.us.us.1 = load float, ptr %.sroa.2155.0..sroa_idx.us.us.1, align 4
  %i.vj = fsub float %i.ut, %.sroa.2155.0.copyload.us.us.1 ; 2 uses
  %i.vk = fsub <2 x float> %i.vb, %.sroa.0154.0.copyload.us.us.1 ; 2 uses
  %i.vl = fmul <2 x float> %i.vk, %i.vk           ; 2 uses
  %shift36947.a = shufflevector <2 x float> %i.vl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36948.a = fadd <2 x float> %i.vl, %shift36947.a
  %i.vm = extractelement <2 x float> %foldExtExtBinop36948.a, i64 0
  %i.vn = fmul float %i.vj, %i.vj
  %i.vo = fadd float %i.vn, %i.vm
  %sqrt.i.i.us.us.1 = tail call float @llvm.sqrt.f32(float %i.vo)
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv24526
  store float %sqrt.i.i.us.us.1, ptr %i.vp, align 4, !tbaa !176
  %exitcond24521.1.not = icmp eq i32 %i.ny, 2
  br i1 %exitcond24521.1.not, label %._crit_edge11259.us.us, label %.lr.ph11258.us.us.2

.lr.ph11258.us.us.2:                              ; preds = %bb.ba
  %i.vq = getelementptr inbounds nuw i8, ptr %i.gv, i64 112
  %.not668.us.us.2 = icmp ugt ptr %i.gv, inttoptr (i64 -113 to ptr)
  br i1 %.not668.us.us.2, label %.split12031.us, label %bb.bb, !prof !89, !nosanitize !10

bb.bb:                                            ; preds = %.lr.ph11258.us.us.2
  br i1 %.not669.us.us.2, label %.split12035.us, label %bb.bc, !prof !89, !nosanitize !10

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0154.0.copyload.us.us.2 = load <2 x float>, ptr %i.vq, align 4
  %.sroa.2155.0..sroa_idx.us.us.2 = getelementptr inbounds nuw i8, ptr %i.gv, i64 120
  %.sroa.2155.0.copyload.us.us.2 = load float, ptr %.sroa.2155.0..sroa_idx.us.us.2, align 4
  %i.vr = fsub float %i.ut, %.sroa.2155.0.copyload.us.us.2 ; 2 uses
  %i.vs = fsub <2 x float> %i.vb, %.sroa.0154.0.copyload.us.us.2 ; 2 uses
  %i.vt = fmul <2 x float> %i.vs, %i.vs           ; 2 uses
  %shift36950.a = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36951.a = fadd <2 x float> %i.vt, %shift36950.a
  %i.vu = extractelement <2 x float> %foldExtExtBinop36951.a, i64 0
  %i.vv = fmul float %i.vr, %i.vr
  %i.vw = fadd float %i.vv, %i.vu
  %sqrt.i.i.us.us.2 = tail call float @llvm.sqrt.f32(float %i.vw)
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv24526
  store float %sqrt.i.i.us.us.2, ptr %i.vx, align 4, !tbaa !176
  %exitcond24521.2.not = icmp eq i32 %i.ny, 3
  br i1 %exitcond24521.2.not, label %._crit_edge11259.us.us, label %.lr.ph11258.us.us.3

.lr.ph11258.us.us.3:                              ; preds = %bb.bc
  %i.vy = getelementptr inbounds nuw i8, ptr %i.gv, i64 168
  %.not668.us.us.3 = icmp ugt ptr %i.gv, inttoptr (i64 -169 to ptr)
  br i1 %.not668.us.us.3, label %.split12031.us, label %bb.bd, !prof !89, !nosanitize !10

bb.bd:                                            ; preds = %.lr.ph11258.us.us.3
  br i1 %.not669.us.us.3, label %.split12035.us, label %bb.be, !prof !89, !nosanitize !10

bb.be:                                            ; preds = %bb.bd
  %.sroa.0154.0.copyload.us.us.3 = load <2 x float>, ptr %i.vy, align 4
  %.sroa.2155.0..sroa_idx.us.us.3 = getelementptr inbounds nuw i8, ptr %i.gv, i64 176
  %.sroa.2155.0.copyload.us.us.3 = load float, ptr %.sroa.2155.0..sroa_idx.us.us.3, align 4
  %i.vz = fsub float %i.ut, %.sroa.2155.0.copyload.us.us.3 ; 2 uses
  %i.wa = fsub <2 x float> %i.vb, %.sroa.0154.0.copyload.us.us.3 ; 2 uses
  %i.wb = fmul <2 x float> %i.wa, %i.wa           ; 2 uses
  %shift36953.a = shufflevector <2 x float> %i.wb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36954.a = fadd <2 x float> %i.wb, %shift36953.a
  %i.wc = extractelement <2 x float> %foldExtExtBinop36954.a, i64 0
  %i.wd = fmul float %i.vz, %i.vz
  %i.we = fadd float %i.wd, %i.wc
  %sqrt.i.i.us.us.3 = tail call float @llvm.sqrt.f32(float %i.we)
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv24526
  store float %sqrt.i.i.us.us.3, ptr %i.wf, align 4, !tbaa !176
  %exitcond24521.3.not = icmp eq i32 %i.ny, 4
  br i1 %exitcond24521.3.not, label %._crit_edge11259.us.us, label %.lr.ph11258.us.us.4

.lr.ph11258.us.us.4:                              ; preds = %bb.be
  %.not668.us.us.4 = icmp ugt ptr %i.gv, inttoptr (i64 -225 to ptr)
  br i1 %.not668.us.us.4, label %.split12031.us, label %bb.bf, !prof !89, !nosanitize !10

bb.bf:                                            ; preds = %.lr.ph11258.us.us.4
  br i1 %.not669.us.us.4, label %.split12035.us, label %bb.bg, !prof !89, !nosanitize !10

bb.bg:                                            ; preds = %bb.bf
  %.sroa.0154.0.copyload.us.us.4 = load <2 x float>, ptr %i.lu, align 4
  %.sroa.2155.0..sroa_idx.us.us.4 = getelementptr inbounds nuw i8, ptr %i.gv, i64 232
  %.sroa.2155.0.copyload.us.us.4 = load float, ptr %.sroa.2155.0..sroa_idx.us.us.4, align 4
  %i.wg = fsub float %i.ut, %.sroa.2155.0.copyload.us.us.4 ; 2 uses
  %i.wh = fsub <2 x float> %i.vb, %.sroa.0154.0.copyload.us.us.4 ; 2 uses
  %i.wi = fmul <2 x float> %i.wh, %i.wh           ; 2 uses
  %shift36956 = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36957 = fadd <2 x float> %i.wi, %shift36956
  %i.wj = extractelement <2 x float> %foldExtExtBinop36957, i64 0
  %i.wk = fmul float %i.wg, %i.wg
  %i.wl = fadd float %i.wk, %i.wj
  %sqrt.i.i.us.us.4 = tail call float @llvm.sqrt.f32(float %i.wl)
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv24526
  store float %sqrt.i.i.us.us.4, ptr %i.wm, align 4, !tbaa !176
  %exitcond24521.4.not = icmp eq i32 %i.ny, 5
  br i1 %exitcond24521.4.not, label %._crit_edge11259.us.us, label %.split12028.us

._crit_edge11259.us.us:                           ; preds = %.lr.ph11258.us.us.preheader, %bb.ba, %bb.bc, %bb.be, %bb.bg, %._crit_edge.us.us
  %i.wn = fmul float %.sroa.5.0.i.i.us.us, %i.ur
  %i.wo = shufflevector <2 x float> %.sroa.07.0.i.i.us.us, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.wp = fmul <2 x float> %i.wo, %i.uo
  %i.wq = shufflevector <2 x float> %.sroa.07.0.i.i.us.us, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.wr = fmul <2 x float> %i.wq, %i.uo
  %i.ws = insertelement <2 x float> poison, float %.sroa.5.0.i.i.us.us, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wu = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.wv = insertelement <2 x float> %i.wu, float %i.uj, i64 1 ; 4 uses
  %i.ww = fmul <2 x float> %i.wt, %i.wv
  %i.wx = fmul <2 x float> %i.wo, %i.wv
  %i.wy = fmul <2 x float> %i.wq, %i.un
  %i.wz = insertelement <2 x float> %i.wt, float %i.mw, i64 0 ; 2 uses
  %i.xa = fmul <2 x float> %i.wz, %i.un           ; 2 uses
  %i.xb = insertelement <2 x float> %.sroa.07.0.i.i.us.us, float %i.mt, i64 0 ; 2 uses
  %i.xc = fmul <2 x float> %i.xb, %i.uo
  %i.xd = insertelement <2 x float> %i.wq, float %i.mq, i64 0 ; 2 uses
  %i.xe = fmul <2 x float> %i.xd, %i.uo
  %i.xf = fmul <2 x float> %i.wz, %i.wv
  %i.xg = fmul <2 x float> %i.xb, %i.wv
  %i.xh = fmul <2 x float> %i.xd, %i.un
  %i.xi = fmul float %i.mw, %i.uw
  %i.xj = fmul float %i.mt, %i.uy
  %i.xk = fsub float %i.xi, %i.xj                 ; 4 uses
  %i.xl = fmul float %i.mq, %i.uy
  %i.xm = fmul float %i.mw, %i.uj
  %i.xn = fsub float %i.xl, %i.xm                 ; 4 uses
  %i.xo = extractelement <4 x float> %i.km, i64 1
  %i.xp = extractelement <4 x float> %i.ko, i64 3
  %i.xq = extractelement <4 x float> %i.km, i64 0
  %i.xr = fmul float %i.le, %i.xk
  %i.xs = fmul float %i.xo, %i.xn
  %i.xt = fadd float %i.xr, %i.xs
  %i.xu = fmul float %i.lg, %i.xk
  %i.xv = fmul float %i.lk, %i.xn
  %i.xw = fadd float %i.xu, %i.xv
  %i.xx = fsub <2 x float> %i.xa, %i.xc           ; 5 uses
  %i.xy = insertelement <2 x float> %i.xa, float %i.wn, i64 0
  %i.xz = fsub <2 x float> %i.xy, %i.wp           ; 4 uses
  %i.ya = fsub <2 x float> %i.xe, %i.xf           ; 5 uses
  %i.yb = fsub <2 x float> %i.wr, %i.ww           ; 4 uses
  %i.yc = fsub <2 x float> %i.wx, %i.wy           ; 5 uses
end_hunk_3
begin_hunk_4_@b3PrepareContacts_Convex:bb.a
  %i.zz = fmul float %i.xk, %i.zw
  %i.aaa = fmul float %i.xn, %i.zy
  %i.aab = fadd float %i.zz, %i.aaa
  %i.aac = fmul <2 x float> %i.xz, %i.zh
  %i.aad = fmul <2 x float> %i.yb, %i.zp
  %i.aae = fadd <2 x float> %i.aac, %i.aad
  %i.aaf = fmul <2 x float> %i.yc, %i.zs
  %i.aag = fadd <2 x float> %i.aaf, %i.aae
  %i.aah = extractelement <2 x float> %i.xx, i64 1
  %i.aai = fmul float %i.aah, %i.zw
  %i.aaj = extractelement <2 x float> %i.ya, i64 1
  %i.aak = fmul float %i.aaj, %i.zy
  %i.aal = fadd float %i.aai, %i.aak
  %i.aam = shufflevector <4 x float> %i.iy, <4 x float> %i.kn, <2 x i32> <i32 2, i32 4>
  %i.aan = insertelement <2 x float> %i.xz, float %i.xk, i64 1
  %i.aao = fmul <2 x float> %i.aam, %i.aan
  %i.aap = shufflevector <4 x float> %i.iz, <4 x float> %i.km, <2 x i32> <i32 2, i32 6>
  %i.aaq = insertelement <2 x float> %i.yb, float %i.xn, i64 1
  %i.aar = fmul <2 x float> %i.aap, %i.aaq
  %i.aas = fadd <2 x float> %i.aao, %i.aar
  %i.aat = shufflevector <4 x float> %i.ix, <4 x float> %i.km, <2 x i32> <i32 0, i32 7>
  %i.aau = insertelement <2 x float> %i.yc, float %i.yg, i64 1
  %i.aav = fmul <2 x float> %i.aat, %i.aau
  %i.aaw = fadd <2 x float> %i.aav, %i.aas        ; 2 uses
  %i.aax = shufflevector <2 x float> %i.yb, <2 x float> %i.yc, <2 x i32> <i32 0, i32 3>
  %i.aay = fmul <2 x float> %i.aax, %i.aaw        ; 2 uses
  %foldExtExtBinop36969.a = fadd <2 x float> %i.yu, %i.aay
  %shift36971 = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36972 = fadd <2 x float> %shift36971, %foldExtExtBinop36969.a
  %i.aaz = extractelement <2 x float> %i.aaw, i64 1
  %i.aba = fmul float %i.yg, %i.aaz
  %i.abb = fadd float %i.aba, %i.aab
  %i.abc = fadd float %i.abb, %i.zu               ; 2 uses
  %i.abd = shufflevector <2 x float> %i.aay, <2 x float> %foldExtExtBinop36972, <2 x i32> <i32 1, i32 2>
  %i.abe = insertelement <2 x float> poison, float %i.aal, i64 0
  %i.abf = insertelement <2 x float> %i.abe, float %i.yh, i64 1
  %i.abg = fadd <2 x float> %i.abd, %i.abf
  %i.abh = fadd <2 x float> %i.aag, %i.abg        ; 4 uses
  %i.abi = extractelement <2 x float> %i.abh, i64 1
  %i.abj = fmul float %i.abi, %i.abc
  %foldExtExtBinop36974 = fmul <2 x float> %i.abh, %i.abh
  %i.abk = extractelement <2 x float> %foldExtExtBinop36974, i64 0
  %i.abl = fsub float %i.abj, %i.abk              ; 2 uses
  %i.abm = tail call float @llvm.fabs.f32(float %i.abl)
  %i.abn = fcmp ogt float %i.abm, f0x057A0000
  br i1 %i.abn, label %bb.bh, label %b3Invert2.exit.us.us

bb.bh:                                            ; preds = %._crit_edge11259.us.us
  %i.abo = fdiv float 1.000000e+00, %i.abl        ; 3 uses
  %i.abp = fmul float %i.abc, %i.abo
  %.sroa.0.0.vec.insert.i.us.us = insertelement <2 x float> poison, float %i.abp, i64 0
  %i.abq = fneg float %i.abo
  %i.abr = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.abs = insertelement <2 x float> %i.abr, float %i.abo, i64 1
  %i.abt = fmul <2 x float> %i.abh, %i.abs        ; 2 uses
  %i.abu = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.us.us, <2 x float> %i.abt, <2 x i32> <i32 0, i32 2>
  br label %b3Invert2.exit.us.us

b3Invert2.exit.us.us:                             ; preds = %bb.bh, %._crit_edge11259.us.us
  %.sroa.5.0.i880.us.us = phi <2 x float> [ %i.abt, %bb.bh ], [ zeroinitializer, %._crit_edge11259.us.us ]
  %.sroa.0.0.i.us.us = phi <2 x float> [ %i.abu, %bb.bh ], [ zeroinitializer, %._crit_edge11259.us.us ] ; 2 uses
  %.sroa.0918.0.vec.extract.us.us = extractelement <2 x float> %.sroa.0.0.i.us.us, i64 0
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv24526
  store float %.sroa.0918.0.vec.extract.us.us, ptr %i.abv, align 4, !tbaa !176
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv24526
  %.sroa.0918.4.vec.extract.us.us = extractelement <2 x float> %.sroa.0.0.i.us.us, i64 1
  store float %.sroa.0918.4.vec.extract.us.us, ptr %i.abw, align 4, !tbaa !176
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv24526
  %.sroa.5919.12.vec.extract.us.us = extractelement <2 x float> %.sroa.5.0.i880.us.us, i64 1
  store float %.sroa.5919.12.vec.extract.us.us, ptr %i.abx, align 4, !tbaa !176
  %i.aby = getelementptr inbounds nuw i8, ptr %i.gv, i64 240 ; 2 uses
  %.sroa.031.0.copyload.us.us = load <2 x float>, ptr %i.aby, align 4 ; 2 uses
  %.sroa.232.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.gv, i64 248 ; 2 uses
  %.sroa.232.0.copyload.us.us = load float, ptr %.sroa.232.0..sroa_idx.us.us, align 4
  %foldExtExtBinop36976 = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.031.0.copyload.us.us
  %foldExtExtBinop36978.a = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.031.0.copyload.us.us
  %shift36980.a = shufflevector <2 x float> %foldExtExtBinop36978.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36981.a = fadd <2 x float> %foldExtExtBinop36976, %shift36980.a
  %i.abz = extractelement <2 x float> %foldExtExtBinop36981.a, i64 0
  %i.aca = fmul float %.sroa.5.0.i.i.us.us, %.sroa.232.0.copyload.us.us
  %i.acb = fadd float %i.aca, %i.abz
  %i.acc = fmul float %i.ab, %i.acb
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv24526
  store float %i.acc, ptr %i.acd, align 4, !tbaa !176
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv24526
  %.sroa.228.0.copyload.us.us = load float, ptr %.sroa.232.0..sroa_idx.us.us, align 4
  %i.acf = fmul float %i.mw, %.sroa.228.0.copyload.us.us
  %.sroa.027.0.copyload.us.us = load <2 x float>, ptr %i.aby, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i891.us.us = extractelement <2 x float> %.sroa.027.0.copyload.us.us, i64 0
  %i.acg = fmul float %i.mq, %.sroa.03.0.vec.extract.i891.us.us
  %.sroa.03.4.vec.extract.i893.us.us = extractelement <2 x float> %.sroa.027.0.copyload.us.us, i64 1
  %i.ach = fmul float %i.mt, %.sroa.03.4.vec.extract.i893.us.us
  %i.aci = fadd float %i.acg, %i.ach
  %i.acj = fadd float %i.acf, %i.aci
  %i.ack = fmul float %i.ab, %i.acj
  store float %i.ack, ptr %i.ace, align 4, !tbaa !176
  %i.acl = fadd <4 x float> %i.iy, %i.kn          ; 7 uses
  %i.acm = fadd <4 x float> %i.ix, %i.km          ; 10 uses
  %i.acn = fadd <4 x float> %i.iz, %i.ko          ; 6 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv24526
  %i.acp = extractelement <4 x float> %i.acl, i64 0
  %i.acq = fmul float %i.acp, %.sroa.0961.0.vec.extract.us.us
  %i.acr = extractelement <4 x float> %i.acm, i64 2
  %i.acs = fmul float %i.acr, %.sroa.0961.4.vec.extract.us.us
  %i.act = fadd float %i.acq, %i.acs
  %i.acu = extractelement <4 x float> %i.acm, i64 3
  %i.acv = fmul float %i.acu, %.sroa.12969.0.copyload.us.us
  %i.acw = fadd float %i.acv, %i.act
  %i.acx = fmul float %.sroa.12969.0.copyload.us.us, %i.acw
  %i.acy = shufflevector <4 x float> %i.acl, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.acz = shufflevector <2 x float> %.sroa.0961.0.copyload.us.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ada = fmul <2 x float> %i.acy, %i.acz
  %i.adb = shufflevector <4 x float> %i.acm, <4 x float> %i.acn, <2 x i32> <i32 1, i32 6> ; 2 uses
  %i.adc = shufflevector <2 x float> %.sroa.0961.0.copyload.us.us, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.add = fmul <2 x float> %i.adb, %i.adc
  %i.ade = fadd <2 x float> %i.ada, %i.add
  %i.adf = shufflevector <4 x float> %i.acn, <4 x float> %i.acm, <2 x i32> <i32 3, i32 4>
  %i.adg = insertelement <2 x float> poison, float %.sroa.12969.0.copyload.us.us, i64 0
  %i.adh = shufflevector <2 x float> %i.adg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adi = fmul <2 x float> %i.adf, %i.adh
  %i.adj = fadd <2 x float> %i.adi, %i.ade
  %i.adk = fmul <2 x float> %.sroa.0961.0.copyload.us.us, %i.adj ; 2 uses
  %shift36983.a = shufflevector <2 x float> %i.adk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36984.a = fadd <2 x float> %i.adk, %shift36983.a
  %i.adl = extractelement <2 x float> %foldExtExtBinop36984.a, i64 0
  %i.adm = fadd float %i.acx, %i.adl              ; 2 uses
  %i.adn = fcmp ogt float %i.adm, 0.000000e+00
  %i.ado = fdiv float 1.000000e+00, %i.adm
  %i.adp = select i1 %i.adn, float %i.ado, float 0.000000e+00
  store float %i.adp, ptr %i.aco, align 4, !tbaa !176
  %i.adq = getelementptr inbounds nuw i8, ptr %i.gv, i64 236
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv24526
  %i.ads = load float, ptr %i.adq, align 4, !tbaa !140
  %i.adt = fmul float %i.ab, %i.ads
  store float %i.adt, ptr %i.adr, align 4, !tbaa !176
  %shift36986 = shufflevector <4 x float> %i.acm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop36987 = fmul <4 x float> %i.acm, %shift36986
  %i.adu = shufflevector <4 x float> %i.acn, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.adv = shufflevector <4 x float> %i.acn, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift36992.a = fmul <4 x float> %i.adu, %i.adv
  %foldExtExtBinop36993.a = fsub <4 x float> %foldExtExtBinop36987, %shift36992.a
  %i.adw = shufflevector <4 x float> %i.acm, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.adx = shufflevector <4 x float> %i.acn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ady = fmul <2 x float> %i.adw, %i.adx
  %i.adz = shufflevector <4 x float> %i.acm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aea = shufflevector <4 x float> %i.acm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aeb = fmul <2 x float> %i.adz, %i.aea
  %i.aec = fsub <2 x float> %i.ady, %i.aeb        ; 2 uses
  %i.aed = shufflevector <4 x float> %i.acl, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.aee = fmul <2 x float> %i.aed, %i.aec        ; 2 uses
  %shift36995 = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36996 = fadd <2 x float> %shift36995, %i.aee
  %i.aef = extractelement <2 x float> %foldExtExtBinop36996, i64 0
  %foldExtExtBinop36998.a = fmul <4 x float> %i.acl, %foldExtExtBinop36993.a
  %i.aeg = extractelement <4 x float> %foldExtExtBinop36998.a, i64 0
  %i.aeh = fadd float %i.aeg, %i.aef              ; 2 uses
  %i.aei = tail call float @llvm.fabs.f32(float %i.aeh)
  %i.aej = fcmp ogt float %i.aei, f0x057A0000
  br i1 %i.aej, label %bb.bi, label %b3InvertMatrix.exit.us.us

bb.bi:                                            ; preds = %b3Invert2.exit.us.us
  %i.aek = shufflevector <4 x float> %i.acl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ael = fdiv float 1.000000e+00, %i.aeh        ; 3 uses
  %i.aem = extractelement <2 x float> %i.aec, i64 0
  %i.aen = fmul float %i.aem, %i.ael
  %i.aeo = fmul <4 x float> %i.acm, %i.acl
  %i.aep = shufflevector <4 x float> %i.acl, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>
  %i.aeq = fmul <4 x float> %i.acn, %i.aep
  %i.aer = fsub <4 x float> %i.aeo, %i.aeq
  %i.aes = fmul <2 x float> %i.adb, %i.aek        ; 2 uses
  %shift37000 = shufflevector <2 x float> %i.aes, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop37001 = fsub <2 x float> %shift37000, %i.aes
  %i.aet = extractelement <2 x float> %foldExtExtBinop37001, i64 0
  %i.aeu = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aev = shufflevector <4 x float> %i.aeu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aew = fmul <4 x float> %i.aer, %i.aev
  %i.aex = fmul float %i.aet, %i.ael
  br label %b3InvertMatrix.exit.us.us

b3InvertMatrix.exit.us.us:                        ; preds = %bb.bi, %b3Invert2.exit.us.us
  %.sroa.0905.0.us.us = phi float [ %i.aen, %bb.bi ], [ 0.000000e+00, %b3Invert2.exit.us.us ]
  %.sroa.16.0.us.us = phi float [ %i.aex, %bb.bi ], [ 0.000000e+00, %b3Invert2.exit.us.us ]
  %i.aey = phi <4 x float> [ %i.aew, %bb.bi ], [ zeroinitializer, %b3Invert2.exit.us.us ] ; 4 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv24526
  store float %.sroa.0905.0.us.us, ptr %i.aez, align 4, !tbaa !176
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv24526
  %i.afb = extractelement <4 x float> %i.aey, i64 0
  store float %i.afb, ptr %i.afa, align 4, !tbaa !176
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv24526
  %i.afd = extractelement <4 x float> %i.aey, i64 2
  store float %i.afd, ptr %i.afc, align 4, !tbaa !176
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv24526
  %i.aff = extractelement <4 x float> %i.aey, i64 3
  store float %i.aff, ptr %i.afe, align 4, !tbaa !176
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv24526
  %i.afh = extractelement <4 x float> %i.aey, i64 1
  store float %i.afh, ptr %i.afg, align 4, !tbaa !176
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv24526
  store float %.sroa.16.0.us.us, ptr %i.afi, align 4, !tbaa !176
  %i.afj = getelementptr inbounds nuw i8, ptr %i.gv, i64 252
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !227
  %i.afl = fmul float %i.ab, %i.afk
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv24526
  store float %i.afl, ptr %i.afm, align 4, !tbaa !176
  %i.afn = getelementptr inbounds nuw i8, ptr %i.gv, i64 256
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv24526
  %i.afp = load float, ptr %i.afn, align 4, !tbaa !228
  %i.afq = fmul float %i.ab, %i.afp
  store float %i.afq, ptr %i.afo, align 4, !tbaa !176
  %i.afr = getelementptr inbounds nuw i8, ptr %i.gv, i64 260
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv24526
  %i.aft = load float, ptr %i.afr, align 4, !tbaa !229
  %i.afu = fmul float %i.ab, %i.aft
  store float %i.afu, ptr %i.afs, align 4, !tbaa !176
  %i.afv = icmp slt i32 %i.ny, 4
  br i1 %i.afv, label %.lr.ph11262.us.us.preheader, label %._crit_edge11263.us.us

.lr.ph11262.us.us.preheader:                      ; preds = %b3InvertMatrix.exit.us.us
  %i.afw = sext i32 %i.ny to i64
  br label %.lr.ph11262.us.us

.lr.ph11262.us.us:                                ; preds = %.lr.ph11262.us.us.preheader, %bb.bj
  %indvars.iv24522 = phi i64 [ %i.afw, %.lr.ph11262.us.us.preheader ], [ %indvars.iv.next24523, %bb.bj ] ; 4 uses
  %i.afx = mul nsw i64 %indvars.iv24522, 192
  %i.afy = add i64 %i.afx, %i.en, !nosanitize !10 ; 3 uses
  %i.afz = icmp ne i64 %i.afy, 0, !nosanitize !10
  %i.aga = icmp uge i64 %i.afy, %i.en, !nosanitize !10
  %i.agb = icmp slt i64 %indvars.iv24522, 0
  %i.agc = xor i1 %i.agb, %i.aga
  %i.agd = and i1 %i.afz, %i.agc, !nosanitize !10
  br i1 %i.agd, label %bb.bj, label %.split12120.us, !prof !11, !nosanitize !10

bb.bj:                                            ; preds = %.lr.ph11262.us.us
  %i.age = getelementptr inbounds [192 x i8], ptr %i.em, i64 %indvars.iv24522 ; 12 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agf, align 4, !tbaa !176
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agh, align 4, !tbaa !176
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 32
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agj, align 4, !tbaa !176
  %i.agk = getelementptr inbounds nuw i8, ptr %i.age, i64 48
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agl, align 4, !tbaa !176
  %i.agm = getelementptr inbounds nuw i8, ptr %i.age, i64 64
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agn, align 4, !tbaa !176
  %i.ago = getelementptr inbounds nuw i8, ptr %i.age, i64 80
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agp, align 4, !tbaa !176
  %i.agq = getelementptr inbounds nuw i8, ptr %i.age, i64 96
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agr, align 4, !tbaa !176
  %i.ags = getelementptr inbounds nuw i8, ptr %i.age, i64 112
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agt, align 4, !tbaa !176
  %i.agu = getelementptr inbounds nuw i8, ptr %i.age, i64 128
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agv, align 4, !tbaa !176
  %i.agw = getelementptr inbounds nuw i8, ptr %i.age, i64 144
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agx, align 4, !tbaa !176
  %i.agy = getelementptr inbounds nuw i8, ptr %i.age, i64 176
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.agz, align 4, !tbaa !176
  %i.aha = getelementptr inbounds nuw i8, ptr %i.age, i64 160
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv24526
  store float 0.000000e+00, ptr %i.ahb, align 4, !tbaa !176
  %indvars.iv.next24523 = add nsw i64 %indvars.iv24522, 1 ; 2 uses
  %exitcond24525.not = icmp eq i64 %indvars.iv.next24523, 4
  br i1 %exitcond24525.not, label %._crit_edge11263.us.us, label %.lr.ph11262.us.us, !llvm.loop !222

._crit_edge11263.us.us:                           ; preds = %bb.bj, %b3InvertMatrix.exit.us.us
  %indvars.iv.next24527 = add nuw nsw i64 %indvars.iv24526, 1 ; 2 uses
  %exitcond24529.not = icmp eq i64 %indvars.iv.next24527, 4
  br i1 %exitcond24529.not, label %.critedge.split.us12766, label %.preheader.split.split.split.us.us, !llvm.loop !223

.critedge.split.us12766:                          ; preds = %.preheader.split.split.split.us.us, %._crit_edge11263.us.us
  %indvars.iv.next24531 = add nsw i64 %indvars.iv24530, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next24531 to i32
  %exitcond24533.not = icmp eq i32 %i.bz, %lftr.wideiv
  br i1 %exitcond24533.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !224

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.critedge.split.us
  %indvars.iv24534 = phi i64 [ %i.ci, %.lr.ph.split.preheader ], [ %indvars.iv.next24535, %.critedge.split.us ] ; 5 uses
  %i.ahc = mul nsw i64 %indvars.iv24534, 1696
  %i.ahd = add i64 %i.ahc, %i.bb, !nosanitize !10 ; 3 uses
  %i.ahe = icmp eq i64 %i.ahd, 0
  %i.ahf = xor i1 %i.bc, %i.ahe
  %i.ahg = icmp uge i64 %i.ahd, %i.bb, !nosanitize !10
  %i.ahh = icmp slt i64 %indvars.iv24534, 0
  %i.ahi = xor i1 %i.ahh, %i.ahg
  %i.ahj = and i1 %i.ahf, %i.ahi, !nosanitize !10
  br i1 %i.ahj, label %bb.bk, label %.split12768.us, !prof !11, !nosanitize !10

.split12768.us:                                   ; preds = %.lr.ph.split.us, %.lr.ph.split
  %.us-phi12770 = phi i64 [ %i.ahd, %.lr.ph.split ], [ %i.cl, %.lr.ph.split.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @143, i64 %i.bb, i64 %.us-phi12770) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.bk:                                            ; preds = %.lr.ph.split
  %i.ahk = trunc nsw i64 %indvars.iv24534 to i32
  %i.ahl = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ahk, i32 %i.bp), !nosanitize !10 ; 2 uses
  %i.ahm = extractvalue { i32, i1 } %i.ahl, 0, !nosanitize !10 ; 4 uses
  %i.ahn = extractvalue { i32, i1 } %i.ahl, 1, !nosanitize !10
  br i1 %i.ahn, label %.split12772.us, label %.preheader, !prof !89, !nosanitize !10

.preheader:                                       ; preds = %bb.bk
  %i.aho = add i32 %i.ahm, 536870912
  %i.ahp = icmp ult i32 %i.aho, 1073741824
  br i1 %i.ahp, label %.preheader.split, label %.split12776.us, !prof !11, !nosanitize !10

.preheader.split:                                 ; preds = %.preheader
  %i.ahq = shl nsw i32 %i.ahm, 2                  ; 2 uses
  %.not666.us = icmp slt i32 %i.ahq, %i.cb
  br i1 %.not666.us, label %bb.bl, label %.critedge.split.us

bb.bl:                                            ; preds = %.preheader.split
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = shl nsw i64 %i.ahr, 2                  ; 2 uses
  %i.aht = icmp eq i32 %i.ahm, 0
  %i.ahu = icmp uge i64 %i.ahs, %i.cf, !nosanitize !10
  %i.ahv = and i1 %i.aht, %i.ahu
  br i1 %i.ahv, label %.split11270, label %.split11266.us, !prof !11, !nosanitize !10

.critedge.split.us:                               ; preds = %.preheader.split
  %indvars.iv.next24535 = add nsw i64 %indvars.iv24534, 1 ; 2 uses
  %exitcond24538.not = icmp eq i64 %indvars.iv.next24535, %wide.trip.count24537
  br i1 %exitcond24538.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !224

.split12772.us:                                   ; preds = %bb.u, %bb.bk
  %.us-phi12774 = phi i64 [ %indvars.iv24534, %bb.bk ], [ %indvars.iv24530, %bb.u ]
  %i.ahw = and i64 %.us-phi12774, 4294967295
  %i.ahx = zext i32 %i.bp to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @144, i64 %i.ahw, i64 %i.ahx) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split12776.us:                                   ; preds = %.preheader.us, %.preheader
  %.us-phi12777 = phi i32 [ %i.ahm, %.preheader ], [ %i.cv, %.preheader.us ]
  %i.ahy = zext i32 %.us-phi12777 to i64, !nosanitize !10
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @145, i64 4, i64 %i.ahy) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11266.us:                                   ; preds = %bb.v, %bb.bl
  %.us-phi11268 = phi i64 [ %i.ahs, %bb.bl ], [ %i.fu, %bb.v ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @146, i64 %i.cf, i64 %.us-phi11268) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11270:                                      ; preds = %bb.w, %bb.bl
  %.us-phi11271 = phi i64 [ 0, %bb.bl ], [ %i.fz, %bb.w ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %.us-phi11271) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11729.us:                                   ; preds = %bb.x
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @148, i64 %i.gh, i64 %i.gi) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11733.us:                                   ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @149, i64 %i.gq) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11745.us:                                   ; preds = %bb.z
  %i.ahz = zext nneg i32 %i.gx to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @150, i64 %i.ahz, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11748.us:                                   ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @152, i64 %i.cz) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11754.us:                                   ; preds = %bb.ab
  %i.aia = zext nneg i32 %i.gz to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @153, i64 %i.aia, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11760.us:                                   ; preds = %bb.ac
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @154, i64 %i.df, i64 %i.hj) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11767.us:                                   ; preds = %bb.ae
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @155, i64 %i.be, i64 %i.hp) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11771.us:                                   ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @156, i64 %i.hw) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11780.us:                                   ; preds = %bb.ag
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @157, i64 %i.bg, i64 %i.ij) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11784.us:                                   ; preds = %bb.ah
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @158, i64 %i.ip) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11790.us:                                   ; preds = %bb.ak
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @159, i64 %i.be, i64 %i.je) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11794.us:                                   ; preds = %bb.al
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @160, i64 %i.jl) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11803.us:                                   ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @161, i64 %i.bg, i64 %i.jy) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11807.us:                                   ; preds = %bb.an
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @162, i64 %i.ke) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11861.us:                                   ; preds = %bb.ap
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @163, i64 %i.lq) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11942.us:                                   ; preds = %bb.av
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @164, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11945.us:                                   ; preds = %bb.aw
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @165, i64 %i.lq, i64 %i.ox) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split11949.us:                                   ; preds = %bb.ax
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @166, i64 %i.en, i64 %i.oz) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split12028.us:                                   ; preds = %bb.bg
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @167, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split12031.us:                                   ; preds = %.lr.ph11258.us.us.1, %.lr.ph11258.us.us.2, %.lr.ph11258.us.us.3, %.lr.ph11258.us.us.4
  %.sink = phi i64 [ 112, %.lr.ph11258.us.us.2 ], [ 168, %.lr.ph11258.us.us.3 ], [ 224, %.lr.ph11258.us.us.4 ], [ 56, %.lr.ph11258.us.us.1 ]
  %i.aib = add i64 %.sink, %i.lq, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @168, i64 %i.lq, i64 %i.aib) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split12035.us:                                   ; preds = %bb.az, %bb.bb, %bb.bd, %bb.bf
  %.sink35662 = phi i64 [ 384, %bb.bb ], [ 576, %bb.bd ], [ 768, %bb.bf ], [ 192, %bb.az ]
  %i.aic = add i64 %.sink35662, %i.en
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @169, i64 %i.en, i64 %i.aic) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split12120.us:                                   ; preds = %.lr.ph11262.us.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @170, i64 %i.en, i64 %i.afy) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge:                                      ; preds = %.loopexit, %.preheader1195.split
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_mul_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartContacts_Convex(i64 %0, ptr noundef %1) local_unnamed_addr #7 !func_sanitize !9 {
bb.a:
  %2 = alloca %struct.b3BodyStateW, align 16      ; 13 uses
  %3 = alloca %struct.b3BodyStateW, align 16      ; 12 uses
  %.sroa.0151.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.3153.0.extract.shift = lshr i64 %0, 32   ; 2 uses
  %.sroa.4155.0.extract.shift = lshr i64 %0, 56   ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @171, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177  ; 3 uses
  %i.j = icmp ne ptr %i.i, null, !nosanitize !10
  %i.k = ptrtoint ptr %i.i to i64, !nosanitize !10 ; 5 uses
  %i.l = and i64 %i.k, 7, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @173, i64 %i.k) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = mul nuw nsw i64 %.sroa.4155.0.extract.shift, 112
  %i.p = add i64 %i.o, %i.k, !nosanitize !10      ; 2 uses
  %.not = icmp ult i64 %i.p, %i.k, !nosanitize !10
  br i1 %.not, label %bb.f, label %.split762, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @174, i64 %i.k, i64 %i.p) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split762:                                        ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.4155.0.extract.shift
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178
  %.fr775 = freeze ptr %i.s                       ; 3 uses
  %i.t = trunc nuw i64 %.sroa.3153.0.extract.shift to i32
  %i.u = and i32 %i.t, 65535
  %i.v = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0151.0.extract.trunc, i32 %i.u), !nosanitize !10 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1, !nosanitize !10
  br i1 %i.w, label %._crit_edge, label %.lr.ph764, !prof !167, !nosanitize !10

.lr.ph764:                                        ; preds = %.split762
  %i.x = extractvalue { i32, i1 } %i.v, 0, !nosanitize !10 ; 2 uses
  %i.y = ptrtoint ptr %.fr775 to i64              ; 4 uses
  %.not776 = icmp eq ptr %.fr775, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 6 uses
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  br i1 %.not776, label %.lr.ph764.split.us, label %.lr.ph764.split.preheader, !prof !89

.lr.ph764.split.preheader:                        ; preds = %.lr.ph764
  %sext1074 = shl i64 %0, 32
  %i.ab = ashr exact i64 %sext1074, 32            ; 2 uses
end_hunk_4
begin_hunk_5_@b3WarmStartContacts_Convex:bb.a

.lr.ph1356:                                       ; preds = %.lr.ph764.split.preheader, %._crit_edge.split.us.split.us.split.us
  %indvars.iv10621355 = phi i64 [ %indvars.iv.next1063, %._crit_edge.split.us.split.us.split.us ], [ %i.ab, %.lr.ph764.split.preheader ] ; 4 uses
  %i.am = getelementptr inbounds [1696 x i8], ptr %.fr775, i64 %indvars.iv10621355 ; 58 uses
  %i.an = mul nsw i64 %indvars.iv10621355, 1696
  %i.ao = add i64 %i.an, %i.y, !nosanitize !10    ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = icmp uge i64 %i.ao, %i.y, !nosanitize !10
  %i.ar = icmp slt i64 %indvars.iv10621355, 0
  %i.as = xor i1 %i.ar, %i.aq
  %i.at = and i1 %i.ap, %i.as, !nosanitize !10
  br i1 %i.at, label %bb.h, label %.split768.us, !prof !11, !nosanitize !10

.split768.us:                                     ; preds = %.lr.ph1356, %bb.g
  %.us-phi770 = phi i64 [ %i.ae, %bb.g ], [ %i.ao, %.lr.ph1356 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @176, i64 %i.y, i64 %.us-phi770) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %.lr.ph1356
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.au = ptrtoint ptr %i.am to i64, !nosanitize !10 ; 2 uses
  %i.av = and i64 %i.au, 15, !nosanitize !10
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !10
  br i1 %i.aw, label %bb.i, label %.split772, !prof !11, !nosanitize !10

.split772:                                        ; preds = %bb.h, %.split772.us
  %.us-phi773 = phi i64 [ 0, %.split772.us ], [ %i.au, %bb.h ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @177, i64 %.us-phi773) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  call fastcc void @b3GatherBodies(ptr dead_on_unwind noalias writable align 16 %2, ptr noundef %i.g, ptr noundef %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call fastcc void @b3GatherBodies(ptr dead_on_unwind noalias writable align 16 %3, ptr noundef %i.g, ptr noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.az = load <4 x i32>, ptr %i.ay, align 16, !tbaa !174
  %i.ba = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.az) ; 2 uses
  %.promoted = load <4 x float>, ptr %2, align 16 ; 2 uses
  %.promoted610 = load <4 x float>, ptr %3, align 16 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.split.us.split.us.split.us

.lr.ph:                                           ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 928 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64, !nosanitize !10 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 288
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 304
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %.sroa.8173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 208
  %.sroa.6198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %.sroa.7199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  %.sroa.8200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %wide.trip.count = zext nneg i32 %i.ba to i64
  br label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.sroa.0177.0.copyload609613.us.us.us = phi <4 x float> [ %.promoted, %.lr.ph ], [ %i.da, %bb.j ]
  %.sroa.0204.0.copyload611612.us.us.us = phi <4 x float> [ %.promoted610, %.lr.ph ], [ %i.ei, %bb.j ]
  %i.bl = mul nuw nsw i64 %indvars.iv, 192
  %i.bm = add i64 %i.bl, %i.bd, !nosanitize !10   ; 2 uses
  %.not332.us.us.us = icmp ult i64 %i.bm, %i.bd, !nosanitize !10
  br i1 %.not332.us.us.us, label %.split.us, label %bb.j, !prof !89, !nosanitize !10

bb.j:                                             ; preds = %.lr.ph.split.us.split.us.split.us
  %i.bn = getelementptr inbounds nuw [192 x i8], ptr %i.bc, i64 %indvars.iv ; 7 uses
  %.sroa.0159.0.copyload.us.us.us = load <4 x float>, ptr %i.bn, align 16, !tbaa !176 ; 2 uses
  %.sroa.4160.0..sroa_idx.us.us.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.4160.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4160.0..sroa_idx.us.us.us, align 16, !tbaa !176 ; 2 uses
  %.sroa.5161.0..sroa_idx.us.us.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.5161.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5161.0..sroa_idx.us.us.us, align 16, !tbaa !176 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %.sroa.0186.0.copyload.us.us.us = load <4 x float>, ptr %i.bo, align 16, !tbaa !176 ; 2 uses
  %.sroa.4187.0..sroa_idx.us.us.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %.sroa.4187.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4187.0..sroa_idx.us.us.us, align 16, !tbaa !176 ; 2 uses
  %.sroa.5188.0..sroa_idx.us.us.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %.sroa.5188.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5188.0..sroa_idx.us.us.us, align 16, !tbaa !176 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bq = load <4 x float>, ptr %i.bp, align 16, !tbaa !176 ; 3 uses
  %i.br = load <4 x float>, ptr %i.be, align 16, !tbaa !176
  %i.bs = fmul <4 x float> %i.bq, %i.br           ; 6 uses
  %i.bt = load <4 x float>, ptr %i.bf, align 16, !tbaa !176
  %i.bu = fmul <4 x float> %i.bq, %i.bt           ; 6 uses
  %i.bv = load <4 x float>, ptr %i.bg, align 16, !tbaa !176
  %i.bw = fmul <4 x float> %i.bq, %i.bv           ; 6 uses
  %i.bx = fmul <4 x float> %.sroa.4160.0.copyload.us.us.us, %i.bw
  %i.by = fmul <4 x float> %.sroa.5161.0.copyload.us.us.us, %i.bu
  %i.bz = fsub <4 x float> %i.bx, %i.by           ; 3 uses
  %i.ca = fmul <4 x float> %.sroa.5161.0.copyload.us.us.us, %i.bs
  %i.cb = fmul <4 x float> %.sroa.0159.0.copyload.us.us.us, %i.bw
  %i.cc = fsub <4 x float> %i.ca, %i.cb           ; 3 uses
  %i.cd = fmul <4 x float> %.sroa.0159.0.copyload.us.us.us, %i.bu
  %i.ce = fmul <4 x float> %.sroa.4160.0.copyload.us.us.us, %i.bs
  %i.cf = fsub <4 x float> %i.cd, %i.ce           ; 3 uses
  %.sroa.0168.0.copyload.us.us.us = load <4 x float>, ptr %i.bh, align 16
  %.sroa.4169.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4169.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5170.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5170.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6171.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.6171.0..sroa_idx, align 16
  %.sroa.7172.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.7172.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8173.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.8173.0..sroa_idx, align 16
  %.sroa.0165.0.copyload.us.us.us = load <4 x float>, ptr %i.z, align 16
  %.sroa.4166.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4166.0..sroa_idx, align 16
  %.sroa.5167.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5167.0..sroa_idx, align 16
  %i.cg = fmul <4 x float> %.sroa.0168.0.copyload.us.us.us, %i.bz
  %i.ch = fmul <4 x float> %.sroa.4169.0.copyload.us.us.us, %i.cc
  %i.ci = fmul <4 x float> %i.cf, %.sroa.5170.0.copyload.us.us.us
  %i.cj = fadd <4 x float> %i.ch, %i.ci
  %i.ck = fadd <4 x float> %i.cg, %i.cj
  %i.cl = fmul <4 x float> %.sroa.4169.0.copyload.us.us.us, %i.bz
  %i.cm = fmul <4 x float> %i.cc, %.sroa.6171.0.copyload.us.us.us
  %i.cn = fmul <4 x float> %i.cf, %.sroa.7172.0.copyload.us.us.us
  %i.co = fadd <4 x float> %i.cm, %i.cn
  %i.cp = fadd <4 x float> %i.cl, %i.co
  %i.cq = fmul <4 x float> %i.bz, %.sroa.5170.0.copyload.us.us.us
  %i.cr = fmul <4 x float> %i.cc, %.sroa.7172.0.copyload.us.us.us
  %i.cs = fmul <4 x float> %i.cf, %.sroa.8173.0.copyload.us.us.us
  %i.ct = fadd <4 x float> %i.cr, %i.cs
  %i.cu = fadd <4 x float> %i.cq, %i.ct
  %i.cv = fsub <4 x float> %.sroa.0165.0.copyload.us.us.us, %i.ck
  %i.cw = fsub <4 x float> %.sroa.4166.0.copyload.us.us.us, %i.cp
  %i.cx = fsub <4 x float> %.sroa.5167.0.copyload.us.us.us, %i.cu
  store <4 x float> %i.cv, ptr %i.z, align 16, !tbaa !176
  store <4 x float> %i.cw, ptr %.sroa.4166.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.cx, ptr %.sroa.5167.0..sroa_idx, align 16, !tbaa !176
  %i.cy = load <4 x float>, ptr %i.bi, align 16, !tbaa !176 ; 3 uses
  %.sroa.4178.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4178.0..sroa_idx, align 16
  %.sroa.5179.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5179.0..sroa_idx, align 16
  %i.cz = fmul <4 x float> %i.bs, %i.cy
  %i.da = fsub <4 x float> %.sroa.0177.0.copyload609613.us.us.us, %i.cz ; 3 uses
  %i.db = fmul <4 x float> %i.bu, %i.cy
  %i.dc = fsub <4 x float> %.sroa.4178.0.copyload.us.us.us, %i.db
  %i.dd = fmul <4 x float> %i.bw, %i.cy
  %i.de = fsub <4 x float> %.sroa.5179.0.copyload.us.us.us, %i.dd
  store <4 x float> %i.da, ptr %2, align 16, !tbaa !176
  store <4 x float> %i.dc, ptr %.sroa.4178.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.de, ptr %.sroa.5179.0..sroa_idx, align 16, !tbaa !176
  %i.df = fmul <4 x float> %.sroa.4187.0.copyload.us.us.us, %i.bw
  %i.dg = fmul <4 x float> %.sroa.5188.0.copyload.us.us.us, %i.bu
  %i.dh = fsub <4 x float> %i.df, %i.dg           ; 3 uses
  %i.di = fmul <4 x float> %.sroa.5188.0.copyload.us.us.us, %i.bs
  %i.dj = fmul <4 x float> %.sroa.0186.0.copyload.us.us.us, %i.bw
  %i.dk = fsub <4 x float> %i.di, %i.dj           ; 3 uses
  %i.dl = fmul <4 x float> %.sroa.0186.0.copyload.us.us.us, %i.bu
  %i.dm = fmul <4 x float> %.sroa.4187.0.copyload.us.us.us, %i.bs
  %i.dn = fsub <4 x float> %i.dl, %i.dm           ; 3 uses
  %.sroa.0195.0.copyload.us.us.us = load <4 x float>, ptr %i.bj, align 16
  %.sroa.4196.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4196.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5197.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5197.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6198.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.6198.0..sroa_idx, align 16
  %.sroa.7199.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.7199.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8200.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.8200.0..sroa_idx, align 16
  %.sroa.0192.0.copyload.us.us.us = load <4 x float>, ptr %i.aa, align 16
  %.sroa.4193.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4193.0..sroa_idx, align 16
  %.sroa.5194.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5194.0..sroa_idx, align 16
  %i.do = fmul <4 x float> %i.dh, %.sroa.0195.0.copyload.us.us.us
  %i.dp = fmul <4 x float> %i.dk, %.sroa.4196.0.copyload.us.us.us
  %i.dq = fmul <4 x float> %i.dn, %.sroa.5197.0.copyload.us.us.us
  %i.dr = fadd <4 x float> %i.dp, %i.dq
  %i.ds = fadd <4 x float> %i.do, %i.dr
  %i.dt = fmul <4 x float> %i.dh, %.sroa.4196.0.copyload.us.us.us
  %i.du = fmul <4 x float> %i.dk, %.sroa.6198.0.copyload.us.us.us
  %i.dv = fmul <4 x float> %i.dn, %.sroa.7199.0.copyload.us.us.us
  %i.dw = fadd <4 x float> %i.du, %i.dv
  %i.dx = fadd <4 x float> %i.dt, %i.dw
  %i.dy = fmul <4 x float> %i.dh, %.sroa.5197.0.copyload.us.us.us
  %i.dz = fmul <4 x float> %i.dk, %.sroa.7199.0.copyload.us.us.us
  %i.ea = fmul <4 x float> %i.dn, %.sroa.8200.0.copyload.us.us.us
  %i.eb = fadd <4 x float> %i.dz, %i.ea
  %i.ec = fadd <4 x float> %i.dy, %i.eb
  %i.ed = fadd <4 x float> %i.ds, %.sroa.0192.0.copyload.us.us.us
  %i.ee = fadd <4 x float> %i.dx, %.sroa.4193.0.copyload.us.us.us
  %i.ef = fadd <4 x float> %i.ec, %.sroa.5194.0.copyload.us.us.us
  store <4 x float> %i.ed, ptr %i.aa, align 16, !tbaa !176
  store <4 x float> %i.ee, ptr %.sroa.4193.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.ef, ptr %.sroa.5194.0..sroa_idx, align 16, !tbaa !176
  %i.eg = load <4 x float>, ptr %i.bk, align 16, !tbaa !176 ; 3 uses
  %.sroa.4205.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.4205.0..sroa_idx, align 16
  %.sroa.5206.0.copyload.us.us.us = load <4 x float>, ptr %.sroa.5206.0..sroa_idx, align 16
  %i.eh = fmul <4 x float> %i.bs, %i.eg
  %i.ei = fadd <4 x float> %.sroa.0204.0.copyload611612.us.us.us, %i.eh ; 3 uses
  %i.ej = fmul <4 x float> %i.bu, %i.eg
  %i.ek = fadd <4 x float> %i.ej, %.sroa.4205.0.copyload.us.us.us
  %i.el = fmul <4 x float> %i.bw, %i.eg
  %i.em = fadd <4 x float> %i.el, %.sroa.5206.0.copyload.us.us.us
  store <4 x float> %i.ei, ptr %3, align 16, !tbaa !176
  store <4 x float> %i.ek, ptr %.sroa.4205.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.em, ptr %.sroa.5206.0..sroa_idx, align 16, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split.us, !llvm.loop !230

.split.us:                                        ; preds = %.lr.ph.split.us.split.us.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @178, i64 %i.bd, i64 %i.bm) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge.split.us.split.us.split.us:           ; preds = %bb.j, %bb.i
  %.sroa.0267.0.copyload = phi <4 x float> [ %.promoted610, %bb.i ], [ %i.ei, %bb.j ]
  %.sroa.0240.0.copyload = phi <4 x float> [ %.promoted, %bb.i ], [ %i.da, %bb.j ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.am, i64 416
  %.sroa.0222.0.copyload = load <4 x float>, ptr %i.en, align 16, !tbaa !176 ; 2 uses
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 432
  %.sroa.4223.0.copyload = load <4 x float>, ptr %.sroa.4223.0..sroa_idx, align 16, !tbaa !176 ; 2 uses
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 448
  %.sroa.5224.0.copyload = load <4 x float>, ptr %.sroa.5224.0..sroa_idx, align 16, !tbaa !176 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.am, i64 464
  %.sroa.0249.0.copyload = load <4 x float>, ptr %i.eo, align 16, !tbaa !176 ; 2 uses
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 480
  %.sroa.4250.0.copyload = load <4 x float>, ptr %.sroa.4250.0..sroa_idx, align 16, !tbaa !176 ; 2 uses
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 496
  %.sroa.5251.0.copyload = load <4 x float>, ptr %.sroa.5251.0..sroa_idx, align 16, !tbaa !176 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.am, i64 592
  %i.eq = getelementptr inbounds nuw i8, ptr %i.am, i64 608
  %i.er = load <4 x float>, ptr %i.ep, align 16, !tbaa !176 ; 3 uses
  %.sroa.5212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 352
  %.sroa.5212.0.copyload = load <4 x float>, ptr %.sroa.5212.0..sroa_idx, align 16
  %i.es = fmul <4 x float> %i.er, %.sroa.5212.0.copyload
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 336
  %.sroa.4211.0.copyload = load <4 x float>, ptr %.sroa.4211.0..sroa_idx, align 16
  %i.et = fmul <4 x float> %i.er, %.sroa.4211.0.copyload
  %i.eu = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  %.sroa.0210.0.copyload = load <4 x float>, ptr %i.eu, align 16
  %i.ev = fmul <4 x float> %i.er, %.sroa.0210.0.copyload
  %i.ew = load <4 x float>, ptr %i.eq, align 16, !tbaa !176 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.am, i64 368
  %.sroa.0216.0.copyload = load <4 x float>, ptr %i.ex, align 16
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  %.sroa.4217.0.copyload = load <4 x float>, ptr %.sroa.4217.0..sroa_idx, align 16
  %.sroa.5218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 400
  %.sroa.5218.0.copyload = load <4 x float>, ptr %.sroa.5218.0..sroa_idx, align 16
  %i.ey = fmul <4 x float> %i.ew, %.sroa.0216.0.copyload
  %i.ez = fadd <4 x float> %i.ev, %i.ey           ; 6 uses
  %i.fa = fmul <4 x float> %i.ew, %.sroa.4217.0.copyload
  %i.fb = fadd <4 x float> %i.et, %i.fa           ; 6 uses
  %i.fc = fmul <4 x float> %i.ew, %.sroa.5218.0.copyload
  %i.fd = fadd <4 x float> %i.es, %i.fc           ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 3 uses
  %i.ff = fmul <4 x float> %.sroa.4223.0.copyload, %i.fd
  %i.fg = fmul <4 x float> %.sroa.5224.0.copyload, %i.fb
  %i.fh = fsub <4 x float> %i.ff, %i.fg           ; 3 uses
  %i.fi = fmul <4 x float> %.sroa.5224.0.copyload, %i.ez
  %i.fj = fmul <4 x float> %.sroa.0222.0.copyload, %i.fd
  %i.fk = fsub <4 x float> %i.fi, %i.fj           ; 3 uses
  %i.fl = fmul <4 x float> %.sroa.0222.0.copyload, %i.fb
  %i.fm = fmul <4 x float> %.sroa.4223.0.copyload, %i.ez
  %i.fn = fsub <4 x float> %i.fl, %i.fm           ; 3 uses
  %.sroa.0231.0.copyload = load <4 x float>, ptr %i.fe, align 16
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 3 uses
  %.sroa.4232.0.copyload = load <4 x float>, ptr %.sroa.4232.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 3 uses
  %.sroa.5233.0.copyload = load <4 x float>, ptr %.sroa.5233.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 3 uses
  %.sroa.6234.0.copyload = load <4 x float>, ptr %.sroa.6234.0..sroa_idx, align 16
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 3 uses
  %.sroa.7235.0.copyload = load <4 x float>, ptr %.sroa.7235.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 3 uses
  %.sroa.8236.0.copyload = load <4 x float>, ptr %.sroa.8236.0..sroa_idx, align 16
  %.sroa.0228.0.copyload = load <4 x float>, ptr %i.z, align 16
  %.sroa.4229.0.copyload = load <4 x float>, ptr %.sroa.4166.0..sroa_idx, align 16
  %.sroa.5230.0.copyload = load <4 x float>, ptr %.sroa.5167.0..sroa_idx, align 16
  %i.fo = fmul <4 x float> %.sroa.0231.0.copyload, %i.fh
  %i.fp = fmul <4 x float> %.sroa.4232.0.copyload, %i.fk
  %i.fq = fmul <4 x float> %.sroa.5233.0.copyload, %i.fn
  %i.fr = fadd <4 x float> %i.fq, %i.fp
  %i.fs = fadd <4 x float> %i.fo, %i.fr
  %i.ft = fmul <4 x float> %.sroa.4232.0.copyload, %i.fh
  %i.fu = fmul <4 x float> %i.fk, %.sroa.6234.0.copyload
  %i.fv = fmul <4 x float> %i.fn, %.sroa.7235.0.copyload
  %i.fw = fadd <4 x float> %i.fu, %i.fv
  %i.fx = fadd <4 x float> %i.ft, %i.fw
  %i.fy = fmul <4 x float> %.sroa.5233.0.copyload, %i.fh
  %i.fz = fmul <4 x float> %i.fk, %.sroa.7235.0.copyload
  %i.ga = fmul <4 x float> %i.fn, %.sroa.8236.0.copyload
  %i.gb = fadd <4 x float> %i.fz, %i.ga
  %i.gc = fadd <4 x float> %i.fy, %i.gb
  %i.gd = fsub <4 x float> %.sroa.0228.0.copyload, %i.fs ; 2 uses
  %i.ge = fsub <4 x float> %.sroa.4229.0.copyload, %i.fx ; 2 uses
  %i.gf = fsub <4 x float> %.sroa.5230.0.copyload, %i.gc ; 2 uses
  store <4 x float> %i.gd, ptr %i.z, align 16, !tbaa !176
  store <4 x float> %i.ge, ptr %.sroa.4166.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.gf, ptr %.sroa.5167.0..sroa_idx, align 16, !tbaa !176
  %i.gg = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.gh = load <4 x float>, ptr %i.gg, align 16, !tbaa !176 ; 3 uses
  %.sroa.4241.0.copyload = load <4 x float>, ptr %.sroa.4178.0..sroa_idx, align 16
  %.sroa.5242.0.copyload = load <4 x float>, ptr %.sroa.5179.0..sroa_idx, align 16
  %i.gi = fmul <4 x float> %i.ez, %i.gh
  %i.gj = fsub <4 x float> %.sroa.0240.0.copyload, %i.gi
  %i.gk = fmul <4 x float> %i.fb, %i.gh
  %i.gl = fsub <4 x float> %.sroa.4241.0.copyload, %i.gk
  %i.gm = fmul <4 x float> %i.fd, %i.gh
  %i.gn = fsub <4 x float> %.sroa.5242.0.copyload, %i.gm
  store <4 x float> %i.gj, ptr %2, align 16, !tbaa !176
  store <4 x float> %i.gl, ptr %.sroa.4178.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.gn, ptr %.sroa.5179.0..sroa_idx, align 16, !tbaa !176
  %i.go = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 3 uses
  %i.gp = fmul <4 x float> %.sroa.4250.0.copyload, %i.fd
  %i.gq = fmul <4 x float> %.sroa.5251.0.copyload, %i.fb
  %i.gr = fsub <4 x float> %i.gp, %i.gq           ; 3 uses
  %i.gs = fmul <4 x float> %.sroa.5251.0.copyload, %i.ez
  %i.gt = fmul <4 x float> %.sroa.0249.0.copyload, %i.fd
  %i.gu = fsub <4 x float> %i.gs, %i.gt           ; 3 uses
  %i.gv = fmul <4 x float> %.sroa.0249.0.copyload, %i.fb
  %i.gw = fmul <4 x float> %.sroa.4250.0.copyload, %i.ez
  %i.gx = fsub <4 x float> %i.gv, %i.gw           ; 3 uses
  %.sroa.0258.0.copyload = load <4 x float>, ptr %i.go, align 16
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 3 uses
  %.sroa.4259.0.copyload = load <4 x float>, ptr %.sroa.4259.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 3 uses
  %.sroa.5260.0.copyload = load <4 x float>, ptr %.sroa.5260.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 224 ; 3 uses
  %.sroa.6261.0.copyload = load <4 x float>, ptr %.sroa.6261.0..sroa_idx, align 16
  %.sroa.7262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 240 ; 3 uses
  %.sroa.7262.0.copyload = load <4 x float>, ptr %.sroa.7262.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 3 uses
  %.sroa.8263.0.copyload = load <4 x float>, ptr %.sroa.8263.0..sroa_idx, align 16
  %.sroa.0255.0.copyload = load <4 x float>, ptr %i.aa, align 16
  %.sroa.4256.0.copyload = load <4 x float>, ptr %.sroa.4193.0..sroa_idx, align 16
  %.sroa.5257.0.copyload = load <4 x float>, ptr %.sroa.5194.0..sroa_idx, align 16
  %i.gy = fmul <4 x float> %i.gr, %.sroa.0258.0.copyload
  %i.gz = fmul <4 x float> %i.gu, %.sroa.4259.0.copyload
  %i.ha = fmul <4 x float> %i.gx, %.sroa.5260.0.copyload
  %i.hb = fadd <4 x float> %i.gz, %i.ha
  %i.hc = fadd <4 x float> %i.gy, %i.hb
  %i.hd = fmul <4 x float> %i.gr, %.sroa.4259.0.copyload
  %i.he = fmul <4 x float> %i.gu, %.sroa.6261.0.copyload
  %i.hf = fmul <4 x float> %i.gx, %.sroa.7262.0.copyload
  %i.hg = fadd <4 x float> %i.he, %i.hf
  %i.hh = fadd <4 x float> %i.hd, %i.hg
  %i.hi = fmul <4 x float> %i.gr, %.sroa.5260.0.copyload
  %i.hj = fmul <4 x float> %i.gu, %.sroa.7262.0.copyload
  %i.hk = fmul <4 x float> %i.gx, %.sroa.8263.0.copyload
  %i.hl = fadd <4 x float> %i.hj, %i.hk
  %i.hm = fadd <4 x float> %i.hi, %i.hl
  %i.hn = fadd <4 x float> %i.hc, %.sroa.0255.0.copyload ; 2 uses
  %i.ho = fadd <4 x float> %i.hh, %.sroa.4256.0.copyload ; 2 uses
  %i.hp = fadd <4 x float> %i.hm, %.sroa.5257.0.copyload ; 2 uses
  store <4 x float> %i.hn, ptr %i.aa, align 16, !tbaa !176
  store <4 x float> %i.ho, ptr %.sroa.4193.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.hp, ptr %.sroa.5194.0..sroa_idx, align 16, !tbaa !176
  %i.hq = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !tbaa !176 ; 3 uses
  %.sroa.4268.0.copyload = load <4 x float>, ptr %.sroa.4205.0..sroa_idx, align 16
  %.sroa.5269.0.copyload = load <4 x float>, ptr %.sroa.5206.0..sroa_idx, align 16
  %i.hs = fmul <4 x float> %i.ez, %i.hr
  %i.ht = fadd <4 x float> %.sroa.0267.0.copyload, %i.hs
  %i.hu = fmul <4 x float> %i.fb, %i.hr
  %i.hv = fadd <4 x float> %i.hu, %.sroa.4268.0.copyload
  %i.hw = fmul <4 x float> %i.fd, %i.hr
  %i.hx = fadd <4 x float> %i.hw, %.sroa.5269.0.copyload
  store <4 x float> %i.ht, ptr %3, align 16, !tbaa !176
  store <4 x float> %i.hv, ptr %.sroa.4205.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.hx, ptr %.sroa.5206.0..sroa_idx, align 16, !tbaa !176
  %i.hy = getelementptr inbounds nuw i8, ptr %i.am, i64 528
  %i.hz = load <4 x float>, ptr %i.hy, align 16, !tbaa !176 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  %.sroa.0273.0.copyload = load <4 x float>, ptr %i.ia, align 16
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 288
  %.sroa.4274.0.copyload = load <4 x float>, ptr %.sroa.4274.0..sroa_idx, align 16
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 304
  %.sroa.5275.0.copyload = load <4 x float>, ptr %.sroa.5275.0..sroa_idx, align 16
  %i.ib = fmul <4 x float> %i.hz, %.sroa.0273.0.copyload ; 6 uses
  %i.ic = fmul <4 x float> %i.hz, %.sroa.4274.0.copyload ; 6 uses
  %i.id = fmul <4 x float> %i.hz, %.sroa.5275.0.copyload ; 6 uses
  %.sroa.0279.0.copyload = load <4 x float>, ptr %i.fe, align 16
  %.sroa.4280.0.copyload = load <4 x float>, ptr %.sroa.4232.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5281.0.copyload = load <4 x float>, ptr %.sroa.5233.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6282.0.copyload = load <4 x float>, ptr %.sroa.6234.0..sroa_idx, align 16
  %.sroa.7283.0.copyload = load <4 x float>, ptr %.sroa.7235.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8284.0.copyload = load <4 x float>, ptr %.sroa.8236.0..sroa_idx, align 16
  %i.ie = fmul <4 x float> %i.ib, %.sroa.0279.0.copyload
  %i.if = fmul <4 x float> %i.ic, %.sroa.4280.0.copyload
  %i.ig = fmul <4 x float> %i.id, %.sroa.5281.0.copyload
  %i.ih = fadd <4 x float> %i.if, %i.ig
  %i.ii = fadd <4 x float> %i.ie, %i.ih
  %i.ij = fmul <4 x float> %i.ib, %.sroa.4280.0.copyload
  %i.ik = fmul <4 x float> %i.ic, %.sroa.6282.0.copyload
  %i.il = fmul <4 x float> %i.id, %.sroa.7283.0.copyload
  %i.im = fadd <4 x float> %i.ik, %i.il
  %i.in = fadd <4 x float> %i.ij, %i.im
  %i.io = fmul <4 x float> %i.ib, %.sroa.5281.0.copyload
  %i.ip = fmul <4 x float> %i.ic, %.sroa.7283.0.copyload
  %i.iq = fmul <4 x float> %i.id, %.sroa.8284.0.copyload
  %i.ir = fadd <4 x float> %i.ip, %i.iq
  %i.is = fadd <4 x float> %i.io, %i.ir
  %i.it = fsub <4 x float> %i.gd, %i.ii           ; 2 uses
  %i.iu = fsub <4 x float> %i.ge, %i.in           ; 2 uses
  %i.iv = fsub <4 x float> %i.gf, %i.is           ; 2 uses
  store <4 x float> %i.it, ptr %i.z, align 16, !tbaa !176
  store <4 x float> %i.iu, ptr %.sroa.4166.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.iv, ptr %.sroa.5167.0..sroa_idx, align 16, !tbaa !176
  %.sroa.0291.0.copyload = load <4 x float>, ptr %i.go, align 16
  %.sroa.4292.0.copyload = load <4 x float>, ptr %.sroa.4259.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5293.0.copyload = load <4 x float>, ptr %.sroa.5260.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6294.0.copyload = load <4 x float>, ptr %.sroa.6261.0..sroa_idx, align 16
  %.sroa.7295.0.copyload = load <4 x float>, ptr %.sroa.7262.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8296.0.copyload = load <4 x float>, ptr %.sroa.8263.0..sroa_idx, align 16
  %i.iw = fmul <4 x float> %i.ib, %.sroa.0291.0.copyload
  %i.ix = fmul <4 x float> %i.ic, %.sroa.4292.0.copyload
  %i.iy = fmul <4 x float> %i.id, %.sroa.5293.0.copyload
  %i.iz = fadd <4 x float> %i.ix, %i.iy
  %i.ja = fadd <4 x float> %i.iw, %i.iz
  %i.jb = fmul <4 x float> %i.ib, %.sroa.4292.0.copyload
  %i.jc = fmul <4 x float> %i.ic, %.sroa.6294.0.copyload
  %i.jd = fmul <4 x float> %i.id, %.sroa.7295.0.copyload
  %i.je = fadd <4 x float> %i.jc, %i.jd
  %i.jf = fadd <4 x float> %i.jb, %i.je
  %i.jg = fmul <4 x float> %i.ib, %.sroa.5293.0.copyload
  %i.jh = fmul <4 x float> %i.ic, %.sroa.7295.0.copyload
  %i.ji = fmul <4 x float> %i.id, %.sroa.8296.0.copyload
  %i.jj = fadd <4 x float> %i.jh, %i.ji
  %i.jk = fadd <4 x float> %i.jg, %i.jj
  %i.jl = fadd <4 x float> %i.hn, %i.ja           ; 2 uses
  %i.jm = fadd <4 x float> %i.ho, %i.jf           ; 2 uses
  %i.jn = fadd <4 x float> %i.hp, %i.jk           ; 2 uses
  store <4 x float> %i.jl, ptr %i.aa, align 16, !tbaa !176
  store <4 x float> %i.jm, ptr %.sroa.4193.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.jn, ptr %.sroa.5194.0..sroa_idx, align 16, !tbaa !176
  %i.jo = getelementptr inbounds nuw i8, ptr %i.am, i64 720
  %.sroa.0312.0.copyload = load <4 x float>, ptr %i.jo, align 16, !tbaa !176 ; 6 uses
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 736
  %.sroa.5314.0.copyload = load <4 x float>, ptr %.sroa.5314.0..sroa_idx, align 16, !tbaa !176 ; 6 uses
  %.sroa.6317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 752
  %.sroa.6317.0.copyload = load <4 x float>, ptr %.sroa.6317.0..sroa_idx, align 16, !tbaa !176 ; 6 uses
  %.sroa.0303.0.copyload = load <4 x float>, ptr %i.fe, align 16
  %.sroa.4304.0.copyload = load <4 x float>, ptr %.sroa.4232.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5305.0.copyload = load <4 x float>, ptr %.sroa.5233.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6306.0.copyload = load <4 x float>, ptr %.sroa.6234.0..sroa_idx, align 16
  %.sroa.7307.0.copyload = load <4 x float>, ptr %.sroa.7235.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8308.0.copyload = load <4 x float>, ptr %.sroa.8236.0..sroa_idx, align 16
  %i.jp = fmul <4 x float> %.sroa.0312.0.copyload, %.sroa.0303.0.copyload
  %i.jq = fmul <4 x float> %.sroa.5314.0.copyload, %.sroa.4304.0.copyload
  %i.jr = fmul <4 x float> %.sroa.6317.0.copyload, %.sroa.5305.0.copyload
  %i.js = fadd <4 x float> %i.jq, %i.jr
  %i.jt = fadd <4 x float> %i.jp, %i.js
  %i.ju = fmul <4 x float> %.sroa.0312.0.copyload, %.sroa.4304.0.copyload
  %i.jv = fmul <4 x float> %.sroa.5314.0.copyload, %.sroa.6306.0.copyload
  %i.jw = fmul <4 x float> %.sroa.6317.0.copyload, %.sroa.7307.0.copyload
  %i.jx = fadd <4 x float> %i.jv, %i.jw
  %i.jy = fadd <4 x float> %i.ju, %i.jx
  %i.jz = fmul <4 x float> %.sroa.0312.0.copyload, %.sroa.5305.0.copyload
  %i.ka = fmul <4 x float> %.sroa.5314.0.copyload, %.sroa.7307.0.copyload
  %i.kb = fmul <4 x float> %.sroa.6317.0.copyload, %.sroa.8308.0.copyload
  %i.kc = fadd <4 x float> %i.ka, %i.kb
  %i.kd = fadd <4 x float> %i.jz, %i.kc
  %i.ke = fsub <4 x float> %i.it, %i.jt
  %i.kf = fsub <4 x float> %i.iu, %i.jy
  %i.kg = fsub <4 x float> %i.iv, %i.kd
  store <4 x float> %i.ke, ptr %i.z, align 16, !tbaa !176
  store <4 x float> %i.kf, ptr %.sroa.4166.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.kg, ptr %.sroa.5167.0..sroa_idx, align 16, !tbaa !176
  %.sroa.0323.0.copyload = load <4 x float>, ptr %i.go, align 16
  %.sroa.4324.0.copyload = load <4 x float>, ptr %.sroa.4259.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5325.0.copyload = load <4 x float>, ptr %.sroa.5260.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6326.0.copyload = load <4 x float>, ptr %.sroa.6261.0..sroa_idx, align 16
  %.sroa.7327.0.copyload = load <4 x float>, ptr %.sroa.7262.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8328.0.copyload = load <4 x float>, ptr %.sroa.8263.0..sroa_idx, align 16
  %i.kh = fmul <4 x float> %.sroa.0312.0.copyload, %.sroa.0323.0.copyload
  %i.ki = fmul <4 x float> %.sroa.5314.0.copyload, %.sroa.4324.0.copyload
  %i.kj = fmul <4 x float> %.sroa.6317.0.copyload, %.sroa.5325.0.copyload
  %i.kk = fadd <4 x float> %i.ki, %i.kj
  %i.kl = fadd <4 x float> %i.kh, %i.kk
  %i.km = fmul <4 x float> %.sroa.0312.0.copyload, %.sroa.4324.0.copyload
  %i.kn = fmul <4 x float> %.sroa.5314.0.copyload, %.sroa.6326.0.copyload
  %i.ko = fmul <4 x float> %.sroa.6317.0.copyload, %.sroa.7327.0.copyload
  %i.kp = fadd <4 x float> %i.kn, %i.ko
  %i.kq = fadd <4 x float> %i.km, %i.kp
  %i.kr = fmul <4 x float> %.sroa.0312.0.copyload, %.sroa.5325.0.copyload
  %i.ks = fmul <4 x float> %.sroa.5314.0.copyload, %.sroa.7327.0.copyload
  %i.kt = fmul <4 x float> %.sroa.6317.0.copyload, %.sroa.8328.0.copyload
  %i.ku = fadd <4 x float> %i.ks, %i.kt
  %i.kv = fadd <4 x float> %i.kr, %i.ku
  %i.kw = fadd <4 x float> %i.jl, %i.kl
  %i.kx = fadd <4 x float> %i.jm, %i.kq
  %i.ky = fadd <4 x float> %i.jn, %i.kv
  store <4 x float> %i.kw, ptr %i.aa, align 16, !tbaa !176
  store <4 x float> %i.kx, ptr %.sroa.4193.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.ky, ptr %.sroa.5194.0..sroa_idx, align 16, !tbaa !176
  call fastcc void @b3ScatterBodies(ptr noundef %i.g, ptr noundef %i.am, ptr noundef %2)
  call fastcc void @b3ScatterBodies(ptr noundef %i.g, ptr noundef %i.ax, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %indvars.iv.next1063 = add nsw i64 %indvars.iv10621355, 1 ; 2 uses
  %exitcond1066.not = icmp eq i64 %indvars.iv.next1063, %wide.trip.count1065
  br i1 %exitcond1066.not, label %.split766.us, label %.lr.ph1356
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3GatherBodies(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 16 captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #7 !func_sanitize !231 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64, !nosanitize !10  ; 11 uses
  %i.b = and i64 %i.a, 3, !nosanitize !10
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !10
  br i1 %i.c, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @242, i64 %i.a) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !174    ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.d, i32 -1) ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1, !nosanitize !10
  br i1 %i.g, label %bb.e, label %bb.f, !prof !89, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  %i.h = zext i32 %i.d to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @243, i64 %i.h, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.i = extractvalue { i32, i1 } %i.f, 0, !nosanitize !10 ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds [56 x i8], ptr %1, i64 %i.j ; 3 uses
  %i.l = mul nsw i64 %i.j, 56
  %i.m = ptrtoint ptr %1 to i64, !nosanitize !10  ; 3 uses
  %i.n = add i64 %i.l, %i.m, !nosanitize !10      ; 3 uses
  %i.o = icmp ne ptr %1, null, !nosanitize !10    ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  %i.q = xor i1 %i.o, %i.p
  %i.r = icmp uge i64 %i.n, %i.m, !nosanitize !10
  %i.s = icmp slt i32 %i.i, 0
  %i.t = xor i1 %i.s, %i.r
  %i.u = and i1 %i.q, %i.t, !nosanitize !10
  br i1 %i.u, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @244, i64 %i.m, i64 %i.n) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.k to i64, !nosanitize !10 ; 2 uses
  %i.w = and i64 %i.v, 3, !nosanitize !10
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !10
  %i.y = and i1 %i.o, %i.x
  br i1 %i.y, label %bb.j, label %bb.i, !prof !11, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @246, i64 %i.v) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.h
  %.sroa.0146.0.copyload147 = load float, ptr %i.k, align 4, !tbaa !107
  %.sroa.5148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.z = load <12 x float>, ptr %.sroa.5148.0..sroa_idx149, align 4, !tbaa !107
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j
  %.sroa.0146.0 = phi float [ %.sroa.0146.0.copyload147, %bb.j ], [ 0.000000e+00, %bb.c ]
  %i.aa = phi <12 x float> [ %i.z, %bb.j ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.c ] ; 12 uses
  %i.ab = add i64 %i.a, 4, !nosanitize !10        ; 2 uses
  %.not = icmp eq i64 %i.ab, 0, !nosanitize !10
  %.not32 = icmp ugt ptr %2, inttoptr (i64 -5 to ptr)
  br i1 %.not32, label %bb.l, label %bb.m, !prof !89, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @247, i64 %i.a, i64 %i.ab) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !174 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %bb.o, label %bb.p, !prof !89, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @248, i64 %i.a, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n
  %i.af = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 -1) ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1, !nosanitize !10
  br i1 %i.ag, label %bb.q, label %bb.r, !prof !89, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  %i.ah = zext i32 %i.ad to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @249, i64 %i.ah, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %bb.p
  %i.ai = extractvalue { i32, i1 } %i.af, 0, !nosanitize !10 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [56 x i8], ptr %1, i64 %i.aj ; 3 uses
  %i.al = mul nsw i64 %i.aj, 56
  %i.am = ptrtoint ptr %1 to i64, !nosanitize !10 ; 3 uses
  %i.an = add i64 %i.al, %i.am, !nosanitize !10   ; 3 uses
  %i.ao = icmp ne ptr %1, null, !nosanitize !10   ; 2 uses
  %i.ap = icmp eq i64 %i.an, 0
  %i.aq = xor i1 %i.ao, %i.ap
  %i.ar = icmp uge i64 %i.an, %i.am, !nosanitize !10
  %i.as = icmp slt i32 %i.ai, 0
  %i.at = xor i1 %i.as, %i.ar
  %i.au = and i1 %i.aq, %i.at, !nosanitize !10
  br i1 %i.au, label %bb.t, label %bb.s, !prof !11, !nosanitize !10

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @250, i64 %i.am, i64 %i.an) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.r
  %i.av = ptrtoint ptr %i.ak to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 3, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.ao, %i.ax
  br i1 %i.ay, label %bb.v, label %bb.u, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @251, i64 %i.av) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.v:                                             ; preds = %bb.t
  %.sroa.0105.0.copyload106 = load float, ptr %i.ak, align 4, !tbaa !107
  %.sroa.5107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.az = load <12 x float>, ptr %.sroa.5107.0..sroa_idx108, align 4, !tbaa !107
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v
  %.sroa.0105.0 = phi float [ %.sroa.0105.0.copyload106, %bb.v ], [ 0.000000e+00, %bb.m ]
  %i.ba = phi <12 x float> [ %i.az, %bb.v ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.m ] ; 12 uses
  %i.bb = add i64 %i.a, 8, !nosanitize !10        ; 2 uses
  %.not33 = icmp eq i64 %i.bb, 0, !nosanitize !10
  %.not34 = icmp ugt ptr %2, inttoptr (i64 -9 to ptr)
  br i1 %.not34, label %bb.x, label %bb.y, !prof !89, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @252, i64 %i.a, i64 %i.bb) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !174 ; 3 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not33, label %bb.aa, label %bb.ab, !prof !89, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @253, i64 %i.a, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ab:                                            ; preds = %bb.z
  %i.bf = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bd, i32 -1) ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.bf, 1, !nosanitize !10
  br i1 %i.bg, label %bb.ac, label %bb.ad, !prof !89, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.bh = zext i32 %i.bd to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @254, i64 %i.bh, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %bb.ab
  %i.bi = extractvalue { i32, i1 } %i.bf, 0, !nosanitize !10 ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [56 x i8], ptr %1, i64 %i.bj ; 3 uses
  %i.bl = mul nsw i64 %i.bj, 56
  %i.bm = ptrtoint ptr %1 to i64, !nosanitize !10 ; 3 uses
  %i.bn = add i64 %i.bl, %i.bm, !nosanitize !10   ; 3 uses
  %i.bo = icmp ne ptr %1, null, !nosanitize !10   ; 2 uses
  %i.bp = icmp eq i64 %i.bn, 0
  %i.bq = xor i1 %i.bo, %i.bp
  %i.br = icmp uge i64 %i.bn, %i.bm, !nosanitize !10
  %i.bs = icmp slt i32 %i.bi, 0
  %i.bt = xor i1 %i.bs, %i.br
  %i.bu = and i1 %i.bq, %i.bt, !nosanitize !10
  br i1 %i.bu, label %bb.af, label %bb.ae, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @255, i64 %i.bm, i64 %i.bn) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.af:                                            ; preds = %bb.ad
  %i.bv = ptrtoint ptr %i.bk to i64, !nosanitize !10 ; 2 uses
  %i.bw = and i64 %i.bv, 3, !nosanitize !10
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !10
  %i.by = and i1 %i.bo, %i.bx
  br i1 %i.by, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @256, i64 %i.bv) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %bb.af
  %.sroa.064.0.copyload65 = load float, ptr %i.bk, align 4, !tbaa !107
  %.sroa.566.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bz = load <12 x float>, ptr %.sroa.566.0..sroa_idx67, align 4, !tbaa !107
  br label %bb.ai

bb.ai:                                            ; preds = %bb.y, %bb.ah
  %.sroa.064.0 = phi float [ %.sroa.064.0.copyload65, %bb.ah ], [ 0.000000e+00, %bb.y ]
  %i.ca = phi <12 x float> [ %i.bz, %bb.ah ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.y ] ; 12 uses
  %i.cb = add i64 %i.a, 12, !nosanitize !10       ; 2 uses
  %.not35 = icmp eq i64 %i.cb, 0, !nosanitize !10
  %.not36 = icmp ugt ptr %2, inttoptr (i64 -13 to ptr)
  br i1 %.not36, label %bb.aj, label %bb.ak, !prof !89, !nosanitize !10

bb.aj:                                            ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @257, i64 %i.a, i64 %i.cb) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ak:                                            ; preds = %bb.ai
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !174 ; 3 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not35, label %bb.am, label %bb.an, !prof !89, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @258, i64 %i.a, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.an:                                            ; preds = %bb.al
  %i.cf = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cd, i32 -1) ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.cf, 1, !nosanitize !10
  br i1 %i.cg, label %bb.ao, label %bb.ap, !prof !89, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  %i.ch = zext i32 %i.cd to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @259, i64 %i.ch, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ap:                                            ; preds = %bb.an
  %i.ci = extractvalue { i32, i1 } %i.cf, 0, !nosanitize !10 ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [56 x i8], ptr %1, i64 %i.cj ; 3 uses
  %i.cl = mul nsw i64 %i.cj, 56
  %i.cm = ptrtoint ptr %1 to i64, !nosanitize !10 ; 3 uses
  %i.cn = add i64 %i.cl, %i.cm, !nosanitize !10   ; 3 uses
  %i.co = icmp ne ptr %1, null, !nosanitize !10   ; 2 uses
  %i.cp = icmp eq i64 %i.cn, 0
  %i.cq = xor i1 %i.co, %i.cp
  %i.cr = icmp uge i64 %i.cn, %i.cm, !nosanitize !10
  %i.cs = icmp slt i32 %i.ci, 0
  %i.ct = xor i1 %i.cs, %i.cr
  %i.cu = and i1 %i.cq, %i.ct, !nosanitize !10
  br i1 %i.cu, label %bb.ar, label %bb.aq, !prof !11, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @260, i64 %i.cm, i64 %i.cn) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ar:                                            ; preds = %bb.ap
  %i.cv = ptrtoint ptr %i.ck to i64, !nosanitize !10 ; 2 uses
  %i.cw = and i64 %i.cv, 3, !nosanitize !10
  %i.cx = icmp eq i64 %i.cw, 0, !nosanitize !10
  %i.cy = and i1 %i.co, %i.cx
  br i1 %i.cy, label %bb.at, label %bb.as, !prof !11, !nosanitize !10

bb.as:                                            ; preds = %bb.ar
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @261, i64 %i.cv) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.at:                                            ; preds = %bb.ar
  %.sroa.0.0.copyload37 = load float, ptr %i.ck, align 4, !tbaa !107
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cz = load <12 x float>, ptr %.sroa.5.0..sroa_idx38, align 4, !tbaa !107
  br label %bb.au

bb.au:                                            ; preds = %bb.ak, %bb.at
  %.sroa.0.0 = phi float [ %.sroa.0.0.copyload37, %bb.at ], [ 0.000000e+00, %bb.ak ]
  %i.da = phi <12 x float> [ %i.cz, %bb.at ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.ak ] ; 12 uses
  %i.db = insertelement <4 x float> poison, float %.sroa.0146.0, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %.sroa.0105.0, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %.sroa.064.0, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %.sroa.0.0, i64 3
  store <4 x float> %i.de, ptr %0, align 16, !tbaa !176
  %i.df = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <12 x i32> <i32 0, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <12 x float> %i.df, <12 x float> %i.ca, <12 x i32> <i32 0, i32 1, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <12 x float> %i.dg, <12 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 12>
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.dh, ptr %i.di, align 16, !tbaa !176
  %i.dj = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <12 x i32> <i32 1, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <12 x float> %i.dj, <12 x float> %i.ca, <12 x i32> <i32 0, i32 1, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <12 x float> %i.dk, <12 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 13>
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %i.dl, ptr %i.dm, align 16, !tbaa !176
  %i.dn = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <12 x i32> <i32 2, i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <12 x float> %i.dn, <12 x float> %i.ca, <12 x i32> <i32 0, i32 1, i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <12 x float> %i.do, <12 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 14>
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.dp, ptr %i.dq, align 16, !tbaa !176
  %i.dr = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <12 x i32> <i32 3, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <12 x float> %i.dr, <12 x float> %i.ca, <12 x i32> <i32 0, i32 1, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <12 x float> %i.ds, <12 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 15>
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %i.dt, ptr %i.du, align 16, !tbaa !176
  %i.dv = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 4, i32 16, i32 poison, i32 poison>
  %i.dw = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 4, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.dy = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 4>
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %i.dz, ptr %i.ea, align 16, !tbaa !176
  %i.eb = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 5, i32 17, i32 poison, i32 poison>
  %i.ec = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 5, i32 poison>
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ee = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 5>
  %i.ef = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %i.ef, ptr %i.eg, align 16, !tbaa !176
  %i.eh = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 6, i32 18, i32 poison, i32 poison>
  %i.ei = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 6, i32 poison>
  %i.ej = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ek = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 6>
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %i.el, ptr %i.em, align 16, !tbaa !176
  %i.en = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 7, i32 19, i32 poison, i32 poison>
  %i.eo = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 7, i32 poison>
  %i.ep = shufflevector <4 x float> %i.en, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.eq = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 7>
  %i.er = shufflevector <4 x float> %i.ep, <4 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x float> %i.er, ptr %i.es, align 16, !tbaa !176
  %i.et = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 8, i32 20, i32 poison, i32 poison>
  %i.eu = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 8, i32 poison>
  %i.ev = shufflevector <4 x float> %i.et, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ew = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 8>
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x float> %i.ex, ptr %i.ey, align 16, !tbaa !176
  %i.ez = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 9, i32 21, i32 poison, i32 poison>
  %i.fa = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 9, i32 poison>
  %i.fb = shufflevector <4 x float> %i.ez, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.fc = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 9>
  %i.fd = shufflevector <4 x float> %i.fb, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x float> %i.fd, ptr %i.fe, align 16, !tbaa !176
  %i.ff = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 10, i32 22, i32 poison, i32 poison>
  %i.fg = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 10, i32 poison>
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.fi = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 10>
  %i.fj = shufflevector <4 x float> %i.fh, <4 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x float> %i.fj, ptr %i.fk, align 16, !tbaa !176
  %i.fl = shufflevector <12 x float> %i.aa, <12 x float> %i.ba, <4 x i32> <i32 11, i32 23, i32 poison, i32 poison>
  %i.fm = shufflevector <12 x float> %i.ca, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 11, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> %i.fm, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.fo = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 11>
  %i.fp = shufflevector <4 x float> %i.fn, <4 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x float> %i.fp, ptr %i.fq, align 16, !tbaa !176
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3ScatterBodies(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #8 !func_sanitize !232 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64, !nosanitize !10  ; 2 uses
  %i.b = and i64 %i.a, 15, !nosanitize !10
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !10
  br i1 %i.c, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @263, i64 %i.a) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = ptrtoint ptr %1 to i64, !nosanitize !10  ; 11 uses
  %i.j = and i64 %i.i, 3, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  br i1 %i.k, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @264, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %1, align 4, !tbaa !174    ; 3 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.l, i32 -1) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1, !nosanitize !10
  br i1 %i.n, label %bb.g, label %bb.h, !prof !89, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.l to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @265, i64 %i.o, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.p = extractvalue { i32, i1 } %i.m, 0, !nosanitize !10 ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [56 x i8], ptr %0, i64 %i.q ; 5 uses
  %i.s = mul nsw i64 %i.q, 56
  %i.t = ptrtoint ptr %0 to i64, !nosanitize !10  ; 3 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !10      ; 3 uses
  %i.v = icmp ne ptr %0, null, !nosanitize !10    ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !10
  %i.z = icmp slt i32 %i.p, 0
  %i.aa = xor i1 %i.z, %i.y
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !10
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !11, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @266, i64 %i.t, i64 %i.u) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.h
  %i.ac = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !10
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !10
  %i.af = and i1 %i.v, %i.ae
  br i1 %i.af, label %bb.l, label %bb.k, !prof !11, !nosanitize !10

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @267, i64 %i.ac) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !148 ; 5 uses
  %i.ai = and i32 %i.ah, 4096
  %.not144 = icmp eq i32 %i.ai, 0
  br i1 %.not144, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load float, ptr %2, align 16, !tbaa !107
  %i.ak = load float, ptr %i.d, align 16, !tbaa !107
  %i.al = load float, ptr %i.e, align 16, !tbaa !107
  %i.am = load float, ptr %i.f, align 16, !tbaa !107
  %i.an = load float, ptr %i.g, align 16, !tbaa !107 ; 2 uses
  %i.ao = load float, ptr %i.h, align 16, !tbaa !107 ; 2 uses
  %i.ap = and i32 %i.ah, 63
  %.not145 = icmp eq i32 %i.ap, 0
  %i.aq = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.ak, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.al, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.am, i64 3 ; 2 uses
  br i1 %.not145, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.av = shufflevector <4 x i32> %i.au, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aw = and <4 x i32> %i.av, <i32 1, i32 2, i32 4, i32 8>
  %i.ax = icmp eq <4 x i32> %i.aw, zeroinitializer
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.at, <4 x float> zeroinitializer
  %i.az = and i32 %i.ah, 16
  %.not150 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not150, float %i.an, float 0.000000e+00
  %i.bb = and i32 %i.ah, 32
  %.not151 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not151, float %i.ao, float 0.000000e+00
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.9202.0 = phi float [ %i.ao, %bb.m ], [ %i.bc, %bb.n ]
  %.sroa.6201.0 = phi float [ %i.an, %bb.m ], [ %i.ba, %bb.n ]
  %i.bd = phi <4 x float> [ %i.at, %bb.m ], [ %i.ay, %bb.n ]
  store <4 x float> %i.bd, ptr %i.r, align 4, !tbaa !107
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store float %.sroa.6201.0, ptr %.sroa.6201.0..sroa_idx, align 4, !tbaa !107
  %.sroa.9202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store float %.sroa.9202.0, ptr %.sroa.9202.0..sroa_idx, align 4, !tbaa !107
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.e
  %i.be = add i64 %i.i, 4, !nosanitize !10        ; 2 uses
  %.not152 = icmp eq i64 %i.be, 0, !nosanitize !10
  %.not153 = icmp ugt ptr %1, inttoptr (i64 -5 to ptr)
  br i1 %.not153, label %bb.q, label %bb.r, !prof !89, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @268, i64 %i.i, i64 %i.be) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !174 ; 3 uses
  %.not154 = icmp eq i32 %i.bg, 0
  br i1 %.not154, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not152, label %bb.t, label %bb.u, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @269, i64 %i.i, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.bh = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 -1) ; 2 uses
  %i.bi = extractvalue { i32, i1 } %i.bh, 1, !nosanitize !10
  br i1 %i.bi, label %bb.v, label %bb.w, !prof !89, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.bj = zext i32 %i.bg to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @270, i64 %i.bj, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.bk = extractvalue { i32, i1 } %i.bh, 0, !nosanitize !10 ; 2 uses
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [56 x i8], ptr %0, i64 %i.bl ; 5 uses
  %i.bn = mul nsw i64 %i.bl, 56
  %i.bo = ptrtoint ptr %0 to i64, !nosanitize !10 ; 3 uses
  %i.bp = add i64 %i.bn, %i.bo, !nosanitize !10   ; 3 uses
  %i.bq = icmp ne ptr %0, null, !nosanitize !10   ; 2 uses
  %i.br = icmp eq i64 %i.bp, 0
  %i.bs = xor i1 %i.bq, %i.br
  %i.bt = icmp uge i64 %i.bp, %i.bo, !nosanitize !10
  %i.bu = icmp slt i32 %i.bk, 0
  %i.bv = xor i1 %i.bu, %i.bt
  %i.bw = and i1 %i.bs, %i.bv, !nosanitize !10
  br i1 %i.bw, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @271, i64 %i.bo, i64 %i.bp) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.bx = ptrtoint ptr %i.bm to i64, !nosanitize !10 ; 2 uses
  %i.by = and i64 %i.bx, 3, !nosanitize !10
  %i.bz = icmp eq i64 %i.by, 0, !nosanitize !10
  %i.ca = and i1 %i.bq, %i.bz
  br i1 %i.ca, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.bx) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !148 ; 5 uses
  %i.cd = and i32 %i.cc, 4096
  %.not155 = icmp eq i32 %i.cd, 0
  br i1 %.not155, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !107
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !107
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !107
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !107 ; 2 uses
end_hunk_5
begin_hunk_6_@b3SolveContacts_Convex:bb.a
  %i.ff = fmul <4 x float> %.sroa.4444.0.copyload, %i.fe
  %i.fg = fadd <4 x float> %i.ei, %i.ff
  %i.fh = fmul <4 x float> %.sroa.0411.0.copyload, %i.dm
  %i.fi = fmul <4 x float> %.sroa.4412.0.copyload, %i.en
  %i.fj = fsub <4 x float> %i.fh, %i.fi
  %i.fk = fmul <4 x float> %i.fj, splat (float 2.000000e+00)
  %i.fl = fadd <4 x float> %.sroa.7426.0.copyload, %i.fk
  %i.fm = fmul <4 x float> %.sroa.0391.0.copyload, %i.eb
  %i.fn = fmul <4 x float> %.sroa.4392.0.copyload, %i.ex
  %i.fo = fsub <4 x float> %i.fm, %i.fn
  %i.fp = fmul <4 x float> %i.fo, splat (float 2.000000e+00)
  %i.fq = fadd <4 x float> %.sroa.7406.0.copyload, %i.fp
  %i.fr = fsub <4 x float> %i.fl, %i.fq
  %i.fs = fadd <4 x float> %i.co, %i.fr
  %i.ft = fmul <4 x float> %.sroa.5445.0.copyload, %i.fs
  %i.fu = fadd <4 x float> %i.ft, %i.fg
  %i.fv = load <4 x float>, ptr %i.db, align 16, !tbaa !176
  %i.fw = fadd <4 x float> %i.fv, %i.fu           ; 3 uses
  %i.fx = fcmp ule <4 x float> %i.fw, zeroinitializer ; 3 uses
  %i.fy = select <4 x i1> %i.fx, <4 x float> %i.cl, <4 x float> zeroinitializer
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cz, i64 144
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cz, i64 112 ; 2 uses
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !tbaa !176
  %i.gc = select <4 x i1> %i.fx, <4 x float> %i.ck, <4 x float> splat (float 1.000000e+00)
  %.sroa.0464.0.copyload = load <4 x float>, ptr %4, align 16
  %.sroa.4459.0.copyload = load <4 x float>, ptr %.sroa.4459.0..sroa_idx, align 16 ; 2 uses
  %i.gd = fmul <4 x float> %.sroa.7426.0.copyload, %.sroa.4459.0.copyload
  %.sroa.5460.0.copyload = load <4 x float>, ptr %.sroa.5460.0..sroa_idx, align 16 ; 2 uses
  %i.ge = fmul <4 x float> %.sroa.6421.0.copyload, %.sroa.5460.0.copyload
  %i.gf = fsub <4 x float> %i.gd, %i.ge
  %i.gg = fadd <4 x float> %.sroa.0464.0.copyload, %i.gf
  %.sroa.0452.0.copyload = load <4 x float>, ptr %3, align 16
  %.sroa.4447.0.copyload = load <4 x float>, ptr %.sroa.4447.0..sroa_idx, align 16 ; 2 uses
  %i.gh = fmul <4 x float> %.sroa.7406.0.copyload, %.sroa.4447.0.copyload
  %.sroa.5448.0.copyload = load <4 x float>, ptr %.sroa.5448.0..sroa_idx, align 16 ; 2 uses
  %i.gi = fmul <4 x float> %.sroa.6401.0.copyload, %.sroa.5448.0.copyload
  %i.gj = fsub <4 x float> %i.gh, %i.gi
  %i.gk = fadd <4 x float> %.sroa.0452.0.copyload, %i.gj
  %i.gl = fsub <4 x float> %i.gg, %i.gk
  %i.gm = fmul <4 x float> %.sroa.0443.0.copyload, %i.gl
  %.sroa.4465.0.copyload = load <4 x float>, ptr %.sroa.4465.0..sroa_idx, align 16
  %i.gn = fmul <4 x float> %.sroa.0418.0.copyload, %.sroa.5460.0.copyload
  %.sroa.0458.0.copyload = load <4 x float>, ptr %i.au, align 16 ; 2 uses
  %i.go = fmul <4 x float> %.sroa.7426.0.copyload, %.sroa.0458.0.copyload
  %i.gp = fsub <4 x float> %i.gn, %i.go
  %i.gq = fadd <4 x float> %.sroa.4465.0.copyload, %i.gp
  %.sroa.4453.0.copyload = load <4 x float>, ptr %.sroa.4453.0..sroa_idx, align 16
  %i.gr = fmul <4 x float> %.sroa.0398.0.copyload, %.sroa.5448.0.copyload
  %.sroa.0446.0.copyload = load <4 x float>, ptr %i.at, align 16 ; 2 uses
  %i.gs = fmul <4 x float> %.sroa.7406.0.copyload, %.sroa.0446.0.copyload
  %i.gt = fsub <4 x float> %i.gr, %i.gs
  %i.gu = fadd <4 x float> %.sroa.4453.0.copyload, %i.gt
  %i.gv = fsub <4 x float> %i.gq, %i.gu
  %i.gw = fmul <4 x float> %.sroa.4444.0.copyload, %i.gv
  %i.gx = fadd <4 x float> %i.gm, %i.gw
  %.sroa.5466.0.copyload = load <4 x float>, ptr %.sroa.5466.0..sroa_idx, align 16
  %i.gy = fmul <4 x float> %.sroa.6421.0.copyload, %.sroa.0458.0.copyload
  %i.gz = fmul <4 x float> %.sroa.0418.0.copyload, %.sroa.4459.0.copyload
  %i.ha = fsub <4 x float> %i.gy, %i.gz
  %i.hb = fadd <4 x float> %i.ha, %.sroa.5466.0.copyload
  %.sroa.5454.0.copyload = load <4 x float>, ptr %.sroa.5454.0..sroa_idx, align 16
  %i.hc = fmul <4 x float> %.sroa.6401.0.copyload, %.sroa.0446.0.copyload
  %i.hd = fmul <4 x float> %.sroa.0398.0.copyload, %.sroa.4447.0.copyload
  %i.he = fsub <4 x float> %i.hc, %i.hd
  %i.hf = fadd <4 x float> %.sroa.5454.0.copyload, %i.he
  %i.hg = fsub <4 x float> %i.hb, %i.hf
  %i.hh = fmul <4 x float> %.sroa.5445.0.copyload, %i.hg
  %i.hi = fadd <4 x float> %i.hh, %i.gx
  %i.hj = fmul <4 x float> %i.gc, %i.hi
  %i.hk = fmul <4 x float> %.0154, %i.fw
  %i.hl = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hk, <4 x float> %i.ai)
  %i.hm = fmul <4 x float> %i.w, %i.fw
  %.v = select <4 x i1> %i.fx, <4 x float> %i.hl, <4 x float> %i.hm
  %i.hn = fadd <4 x float> %.v, %i.hj
  %i.ho = fmul <4 x float> %i.gb, %i.hn
  %i.hp = load <4 x float>, ptr %i.ga, align 16, !tbaa !176 ; 3 uses
  %i.hq = fmul <4 x float> %i.fy, %i.hp
  %i.hr = fadd <4 x float> %i.hq, %i.ho
  %i.hs = fsub <4 x float> %i.hp, %i.hr
  %i.ht = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hs, <4 x float> zeroinitializer) ; 5 uses
  %i.hu = fsub <4 x float> %i.ht, %i.hp           ; 3 uses
  store <4 x float> %i.ht, ptr %i.ga, align 16, !tbaa !176
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cz, i64 128 ; 2 uses
  %i.hw = load <4 x float>, ptr %i.hv, align 16, !tbaa !176
  %i.hx = fadd <4 x float> %i.ht, %i.hw
  store <4 x float> %i.hx, ptr %i.hv, align 16, !tbaa !176
  %i.hy = fadd <4 x float> %.01511208, %i.ht      ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cz, i64 160
  %i.ia = load <4 x float>, ptr %i.hz, align 16, !tbaa !176
  %i.ib = fmul <4 x float> %i.ht, %i.ia
  %i.ic = fadd <4 x float> %.01501209, %i.ib      ; 2 uses
  %i.id = fmul <4 x float> %i.hu, %.sroa.0443.0.copyload ; 6 uses
  %i.ie = fmul <4 x float> %i.hu, %.sroa.4444.0.copyload ; 6 uses
  %i.if = fmul <4 x float> %.sroa.5445.0.copyload, %i.hu ; 6 uses
  %i.ig = fmul <4 x float> %.sroa.6401.0.copyload, %i.if
  %i.ih = fmul <4 x float> %.sroa.7406.0.copyload, %i.ie
  %i.ii = fsub <4 x float> %i.ig, %i.ih           ; 3 uses
  %i.ij = fmul <4 x float> %.sroa.7406.0.copyload, %i.id
  %i.ik = fmul <4 x float> %.sroa.0398.0.copyload, %i.if
  %i.il = fsub <4 x float> %i.ij, %i.ik           ; 3 uses
  %i.im = fmul <4 x float> %.sroa.0398.0.copyload, %i.ie
  %i.in = fmul <4 x float> %.sroa.6401.0.copyload, %i.id
  %i.io = fsub <4 x float> %i.im, %i.in           ; 3 uses
  %.sroa.0491.0.copyload = load <4 x float>, ptr %i.ct, align 16
  %.sroa.4492.0.copyload = load <4 x float>, ptr %.sroa.4492.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5493.0.copyload = load <4 x float>, ptr %.sroa.5493.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6494.0.copyload = load <4 x float>, ptr %.sroa.6494.0..sroa_idx, align 16
  %.sroa.7495.0.copyload = load <4 x float>, ptr %.sroa.7495.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8496.0.copyload = load <4 x float>, ptr %.sroa.8496.0..sroa_idx, align 16
  %.sroa.0488.0.copyload = load <4 x float>, ptr %i.at, align 16
  %.sroa.4489.0.copyload = load <4 x float>, ptr %.sroa.4447.0..sroa_idx, align 16
  %.sroa.5490.0.copyload = load <4 x float>, ptr %.sroa.5448.0..sroa_idx, align 16
  %i.ip = fmul <4 x float> %.sroa.0491.0.copyload, %i.ii
  %i.iq = fmul <4 x float> %.sroa.4492.0.copyload, %i.il
  %i.ir = fmul <4 x float> %.sroa.5493.0.copyload, %i.io
  %i.is = fadd <4 x float> %i.iq, %i.ir
  %i.it = fadd <4 x float> %i.ip, %i.is
  %i.iu = fmul <4 x float> %.sroa.4492.0.copyload, %i.ii
  %i.iv = fmul <4 x float> %i.il, %.sroa.6494.0.copyload
  %i.iw = fmul <4 x float> %i.io, %.sroa.7495.0.copyload
  %i.ix = fadd <4 x float> %i.iv, %i.iw
  %i.iy = fadd <4 x float> %i.iu, %i.ix
  %i.iz = fmul <4 x float> %i.ii, %.sroa.5493.0.copyload
  %i.ja = fmul <4 x float> %i.il, %.sroa.7495.0.copyload
  %i.jb = fmul <4 x float> %i.io, %.sroa.8496.0.copyload
  %i.jc = fadd <4 x float> %i.ja, %i.jb
  %i.jd = fadd <4 x float> %i.iz, %i.jc
  %i.je = fsub <4 x float> %.sroa.0488.0.copyload, %i.it
  %i.jf = fsub <4 x float> %.sroa.4489.0.copyload, %i.iy
  %i.jg = fsub <4 x float> %.sroa.5490.0.copyload, %i.jd
  store <4 x float> %i.je, ptr %i.at, align 16, !tbaa !176
  store <4 x float> %i.jf, ptr %.sroa.4447.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.jg, ptr %.sroa.5448.0..sroa_idx, align 16, !tbaa !176
  %i.jh = load <4 x float>, ptr %i.cu, align 16, !tbaa !176 ; 3 uses
  %.sroa.0500.0.copyload = load <4 x float>, ptr %3, align 16
  %.sroa.4501.0.copyload = load <4 x float>, ptr %.sroa.4453.0..sroa_idx, align 16
  %.sroa.5502.0.copyload = load <4 x float>, ptr %.sroa.5454.0..sroa_idx, align 16
  %i.ji = fmul <4 x float> %i.id, %i.jh
  %i.jj = fsub <4 x float> %.sroa.0500.0.copyload, %i.ji
  %i.jk = fmul <4 x float> %i.ie, %i.jh
  %i.jl = fsub <4 x float> %.sroa.4501.0.copyload, %i.jk
  %i.jm = fmul <4 x float> %i.if, %i.jh
  %i.jn = fsub <4 x float> %.sroa.5502.0.copyload, %i.jm
  store <4 x float> %i.jj, ptr %3, align 16, !tbaa !176
  store <4 x float> %i.jl, ptr %.sroa.4453.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.jn, ptr %.sroa.5454.0..sroa_idx, align 16, !tbaa !176
  %i.jo = fmul <4 x float> %.sroa.6421.0.copyload, %i.if
  %i.jp = fmul <4 x float> %.sroa.7426.0.copyload, %i.ie
  %i.jq = fsub <4 x float> %i.jo, %i.jp           ; 3 uses
  %i.jr = fmul <4 x float> %.sroa.7426.0.copyload, %i.id
  %i.js = fmul <4 x float> %.sroa.0418.0.copyload, %i.if
  %i.jt = fsub <4 x float> %i.jr, %i.js           ; 3 uses
  %i.ju = fmul <4 x float> %.sroa.0418.0.copyload, %i.ie
  %i.jv = fmul <4 x float> %.sroa.6421.0.copyload, %i.id
  %i.jw = fsub <4 x float> %i.ju, %i.jv           ; 3 uses
  %.sroa.0515.0.copyload = load <4 x float>, ptr %i.cv, align 16
  %.sroa.4516.0.copyload = load <4 x float>, ptr %.sroa.4516.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5517.0.copyload = load <4 x float>, ptr %.sroa.5517.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6518.0.copyload = load <4 x float>, ptr %.sroa.6518.0..sroa_idx, align 16
  %.sroa.7519.0.copyload = load <4 x float>, ptr %.sroa.7519.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8520.0.copyload = load <4 x float>, ptr %.sroa.8520.0..sroa_idx, align 16
  %.sroa.0512.0.copyload = load <4 x float>, ptr %i.au, align 16
  %.sroa.4513.0.copyload = load <4 x float>, ptr %.sroa.4459.0..sroa_idx, align 16
  %.sroa.5514.0.copyload = load <4 x float>, ptr %.sroa.5460.0..sroa_idx, align 16
  %i.jx = fmul <4 x float> %i.jq, %.sroa.0515.0.copyload
  %i.jy = fmul <4 x float> %i.jt, %.sroa.4516.0.copyload
  %i.jz = fmul <4 x float> %i.jw, %.sroa.5517.0.copyload
  %i.ka = fadd <4 x float> %i.jy, %i.jz
  %i.kb = fadd <4 x float> %i.jx, %i.ka
  %i.kc = fmul <4 x float> %i.jq, %.sroa.4516.0.copyload
  %i.kd = fmul <4 x float> %i.jt, %.sroa.6518.0.copyload
  %i.ke = fmul <4 x float> %i.jw, %.sroa.7519.0.copyload
  %i.kf = fadd <4 x float> %i.kd, %i.ke
  %i.kg = fadd <4 x float> %i.kc, %i.kf
  %i.kh = fmul <4 x float> %i.jq, %.sroa.5517.0.copyload
  %i.ki = fmul <4 x float> %i.jt, %.sroa.7519.0.copyload
  %i.kj = fmul <4 x float> %i.jw, %.sroa.8520.0.copyload
  %i.kk = fadd <4 x float> %i.ki, %i.kj
  %i.kl = fadd <4 x float> %i.kh, %i.kk
  %i.km = fadd <4 x float> %i.kb, %.sroa.0512.0.copyload
  %i.kn = fadd <4 x float> %i.kg, %.sroa.4513.0.copyload
  %i.ko = fadd <4 x float> %i.kl, %.sroa.5514.0.copyload
  store <4 x float> %i.km, ptr %i.au, align 16, !tbaa !176
  store <4 x float> %i.kn, ptr %.sroa.4459.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.ko, ptr %.sroa.5460.0..sroa_idx, align 16, !tbaa !176
  %i.kp = load <4 x float>, ptr %i.cw, align 16, !tbaa !176 ; 3 uses
  %.sroa.0524.0.copyload = load <4 x float>, ptr %4, align 16
  %.sroa.4525.0.copyload = load <4 x float>, ptr %.sroa.4465.0..sroa_idx, align 16
  %.sroa.5526.0.copyload = load <4 x float>, ptr %.sroa.5466.0..sroa_idx, align 16
  %i.kq = fmul <4 x float> %i.id, %i.kp
  %i.kr = fadd <4 x float> %.sroa.0524.0.copyload, %i.kq
  %i.ks = fmul <4 x float> %i.ie, %i.kp
  %i.kt = fadd <4 x float> %i.ks, %.sroa.4525.0.copyload
  %i.ku = fmul <4 x float> %i.if, %i.kp
  %i.kv = fadd <4 x float> %i.ku, %.sroa.5526.0.copyload
  store <4 x float> %i.kr, ptr %4, align 16, !tbaa !176
  store <4 x float> %i.kt, ptr %.sroa.4465.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.kv, ptr %.sroa.5466.0..sroa_idx, align 16, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.p, %bb.m
  %.0151.lcssa = phi <4 x float> [ zeroinitializer, %bb.m ], [ %i.hy, %bb.p ] ; 2 uses
  %.0150.lcssa = phi <4 x float> [ zeroinitializer, %bb.m ], [ %i.ic, %bb.p ]
  br i1 %2, label %.lr.ph1213.split, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bg, i64 784
  %i.kx = load <4 x float>, ptr %i.kw, align 16, !tbaa !176 ; 3 uses
  %i.ky = fcmp une <4 x float> %i.kx, zeroinitializer
  %i.kz = bitcast <4 x i1> %i.ky to i4
  %i.la = icmp eq i4 %i.kz, 0
  br i1 %i.la, label %._crit_edge1636, label %bb.r

._crit_edge1636:                                  ; preds = %bb.q
  %.sroa.0601.0.copyload.pre = load <4 x float>, ptr %i.at, align 16
  %.sroa.4602.0.copyload.pre = load <4 x float>, ptr %.sroa.4447.0..sroa_idx, align 16
  %.sroa.5603.0.copyload.pre = load <4 x float>, ptr %.sroa.5448.0..sroa_idx, align 16
  %.sroa.0598.0.copyload.pre = load <4 x float>, ptr %i.au, align 16
  %.sroa.4599.0.copyload.pre = load <4 x float>, ptr %.sroa.4459.0..sroa_idx, align 16
  %.sroa.5600.0.copyload.pre = load <4 x float>, ptr %.sroa.5460.0..sroa_idx, align 16
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bg, i64 720 ; 2 uses
  %.sroa.0530.0.copyload = load <4 x float>, ptr %i.at, align 16
  %.sroa.0533.0.copyload = load <4 x float>, ptr %i.au, align 16
  %i.lc = fsub <4 x float> %.sroa.0530.0.copyload, %.sroa.0533.0.copyload ; 3 uses
  %.sroa.5538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 656
  %.sroa.5538.0.copyload = load <4 x float>, ptr %.sroa.5538.0..sroa_idx, align 16 ; 2 uses
  %i.ld = fmul <4 x float> %i.lc, %.sroa.5538.0.copyload
  %.sroa.4531.0.copyload = load <4 x float>, ptr %.sroa.4447.0..sroa_idx, align 16
  %.sroa.4534.0.copyload = load <4 x float>, ptr %.sroa.4459.0..sroa_idx, align 16
  %i.le = fsub <4 x float> %.sroa.4531.0.copyload, %.sroa.4534.0.copyload ; 3 uses
  %.sroa.7540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 688
  %.sroa.7540.0.copyload = load <4 x float>, ptr %.sroa.7540.0..sroa_idx, align 16 ; 2 uses
  %i.lf = fmul <4 x float> %i.le, %.sroa.7540.0.copyload
  %.sroa.5532.0.copyload = load <4 x float>, ptr %.sroa.5448.0..sroa_idx, align 16
  %.sroa.5535.0.copyload = load <4 x float>, ptr %.sroa.5460.0..sroa_idx, align 16
  %i.lg = fsub <4 x float> %.sroa.5532.0.copyload, %.sroa.5535.0.copyload ; 3 uses
  %.sroa.8541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 704
  %.sroa.8541.0.copyload = load <4 x float>, ptr %.sroa.8541.0..sroa_idx, align 16
  %i.lh = fmul <4 x float> %i.lg, %.sroa.8541.0.copyload
  %i.li = fadd <4 x float> %i.lf, %i.lh
  %i.lj = fadd <4 x float> %i.ld, %i.li
  %.sroa.4537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 640
  %.sroa.4537.0.copyload = load <4 x float>, ptr %.sroa.4537.0..sroa_idx, align 16 ; 2 uses
  %i.lk = fmul <4 x float> %i.lc, %.sroa.4537.0.copyload
  %.sroa.6539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 672
  %.sroa.6539.0.copyload = load <4 x float>, ptr %.sroa.6539.0..sroa_idx, align 16
  %i.ll = fmul <4 x float> %i.le, %.sroa.6539.0.copyload
  %i.lm = fmul <4 x float> %.sroa.7540.0.copyload, %i.lg
  %i.ln = fadd <4 x float> %i.lm, %i.ll
  %i.lo = fadd <4 x float> %i.lk, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bg, i64 624
  %.sroa.0536.0.copyload = load <4 x float>, ptr %i.lp, align 16
  %i.lq = fmul <4 x float> %i.lc, %.sroa.0536.0.copyload
  %i.lr = fmul <4 x float> %i.le, %.sroa.4537.0.copyload
  %i.ls = fmul <4 x float> %.sroa.5538.0.copyload, %i.lg
  %i.lt = fadd <4 x float> %i.ls, %i.lr
  %i.lu = fadd <4 x float> %i.lt, %i.lq
  %.sroa.0548.0.copyload = load <4 x float>, ptr %i.lb, align 16, !tbaa !176 ; 2 uses
  %.sroa.5550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 736 ; 2 uses
  %.sroa.5550.0.copyload = load <4 x float>, ptr %.sroa.5550.0..sroa_idx, align 16, !tbaa !176 ; 2 uses
  %.sroa.6553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 752 ; 2 uses
  %.sroa.6553.0.copyload = load <4 x float>, ptr %.sroa.6553.0..sroa_idx, align 16, !tbaa !176 ; 2 uses
  %i.lv = fadd <4 x float> %.sroa.0548.0.copyload, %i.lu ; 3 uses
  %i.lw = fadd <4 x float> %.sroa.5550.0.copyload, %i.lo ; 3 uses
  %i.lx = fadd <4 x float> %i.lj, %.sroa.6553.0.copyload ; 3 uses
  %i.ly = fmul <4 x float> %.0151.lcssa, %i.kx    ; 3 uses
  %i.lz = fmul <4 x float> %i.lv, %i.lv
  %i.ma = fmul <4 x float> %i.lw, %i.lw
  %i.mb = fadd <4 x float> %i.lz, %i.ma
  %i.mc = fmul <4 x float> %i.lx, %i.lx
  %i.md = fadd <4 x float> %i.mb, %i.mc           ; 2 uses
  %i.me = fmul <4 x float> %i.ly, %i.ly
  %i.mf = fadd <4 x float> %i.me, splat (float f0x34000000)
  %i.mg = fcmp uge <4 x float> %i.mf, %i.md
  %i.mh = call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.md)
  %i.mi = fadd <4 x float> %i.mh, splat (float f0x34000000)
  %i.mj = fdiv <4 x float> %i.ly, %i.mi
  %i.mk = fcmp ogt <4 x float> %i.kx, zeroinitializer
  %i.ml = select <4 x i1> %i.mg, <4 x float> splat (float 1.000000e+00), <4 x float> %i.mj
  %i.mm = select <4 x i1> %i.mk, <4 x float> %i.ml, <4 x float> zeroinitializer ; 3 uses
  %i.mn = fmul <4 x float> %i.lv, %i.mm           ; 2 uses
  %i.mo = fmul <4 x float> %i.lw, %i.mm           ; 2 uses
  %i.mp = fmul <4 x float> %i.lx, %i.mm           ; 2 uses
  store <4 x float> %i.mn, ptr %i.lb, align 16, !tbaa !176
  store <4 x float> %i.mo, ptr %.sroa.5550.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.mp, ptr %.sroa.6553.0..sroa_idx, align 16, !tbaa !176
  %i.mq = fsub <4 x float> %i.mn, %.sroa.0548.0.copyload ; 6 uses
  %i.mr = fsub <4 x float> %i.mo, %.sroa.5550.0.copyload ; 6 uses
  %i.ms = fsub <4 x float> %i.mp, %.sroa.6553.0.copyload ; 6 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %.sroa.0577.0.copyload = load <4 x float>, ptr %i.mt, align 16
  %.sroa.4578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %.sroa.4578.0.copyload = load <4 x float>, ptr %.sroa.4578.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %.sroa.5579.0.copyload = load <4 x float>, ptr %.sroa.5579.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %.sroa.6580.0.copyload = load <4 x float>, ptr %.sroa.6580.0..sroa_idx, align 16
  %.sroa.7581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %.sroa.7581.0.copyload = load <4 x float>, ptr %.sroa.7581.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %.sroa.8582.0.copyload = load <4 x float>, ptr %.sroa.8582.0..sroa_idx, align 16
  %.sroa.0574.0.copyload = load <4 x float>, ptr %i.at, align 16
  %.sroa.4575.0.copyload = load <4 x float>, ptr %.sroa.4447.0..sroa_idx, align 16
  %.sroa.5576.0.copyload = load <4 x float>, ptr %.sroa.5448.0..sroa_idx, align 16
  %i.mu = fmul <4 x float> %.sroa.0577.0.copyload, %i.mq
  %i.mv = fmul <4 x float> %.sroa.4578.0.copyload, %i.mr
  %i.mw = fmul <4 x float> %.sroa.5579.0.copyload, %i.ms
  %i.mx = fadd <4 x float> %i.mv, %i.mw
  %i.my = fadd <4 x float> %i.mu, %i.mx
  %i.mz = fmul <4 x float> %.sroa.4578.0.copyload, %i.mq
  %i.na = fmul <4 x float> %i.mr, %.sroa.6580.0.copyload
  %i.nb = fmul <4 x float> %i.ms, %.sroa.7581.0.copyload
  %i.nc = fadd <4 x float> %i.na, %i.nb
  %i.nd = fadd <4 x float> %i.mz, %i.nc
  %i.ne = fmul <4 x float> %.sroa.5579.0.copyload, %i.mq
  %i.nf = fmul <4 x float> %i.mr, %.sroa.7581.0.copyload
  %i.ng = fmul <4 x float> %i.ms, %.sroa.8582.0.copyload
  %i.nh = fadd <4 x float> %i.nf, %i.ng
  %i.ni = fadd <4 x float> %i.ne, %i.nh
  %i.nj = fsub <4 x float> %.sroa.0574.0.copyload, %i.my ; 2 uses
  %i.nk = fsub <4 x float> %.sroa.4575.0.copyload, %i.nd ; 2 uses
  %i.nl = fsub <4 x float> %.sroa.5576.0.copyload, %i.ni ; 2 uses
  store <4 x float> %i.nj, ptr %i.at, align 16, !tbaa !176
  store <4 x float> %i.nk, ptr %.sroa.4447.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.nl, ptr %.sroa.5448.0..sroa_idx, align 16, !tbaa !176
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bg, i64 176
  %.sroa.0589.0.copyload = load <4 x float>, ptr %i.nm, align 16
  %.sroa.4590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  %.sroa.4590.0.copyload = load <4 x float>, ptr %.sroa.4590.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %.sroa.5591.0.copyload = load <4 x float>, ptr %.sroa.5591.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %.sroa.6592.0.copyload = load <4 x float>, ptr %.sroa.6592.0..sroa_idx, align 16
  %.sroa.7593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  %.sroa.7593.0.copyload = load <4 x float>, ptr %.sroa.7593.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 256
  %.sroa.8594.0.copyload = load <4 x float>, ptr %.sroa.8594.0..sroa_idx, align 16
  %.sroa.0586.0.copyload = load <4 x float>, ptr %i.au, align 16
  %.sroa.4587.0.copyload = load <4 x float>, ptr %.sroa.4459.0..sroa_idx, align 16
  %.sroa.5588.0.copyload = load <4 x float>, ptr %.sroa.5460.0..sroa_idx, align 16
  %i.nn = fmul <4 x float> %i.mq, %.sroa.0589.0.copyload
  %i.no = fmul <4 x float> %i.mr, %.sroa.4590.0.copyload
  %i.np = fmul <4 x float> %i.ms, %.sroa.5591.0.copyload
  %i.nq = fadd <4 x float> %i.no, %i.np
  %i.nr = fadd <4 x float> %i.nn, %i.nq
  %i.ns = fmul <4 x float> %i.mq, %.sroa.4590.0.copyload
  %i.nt = fmul <4 x float> %i.mr, %.sroa.6592.0.copyload
  %i.nu = fmul <4 x float> %i.ms, %.sroa.7593.0.copyload
  %i.nv = fadd <4 x float> %i.nt, %i.nu
  %i.nw = fadd <4 x float> %i.ns, %i.nv
  %i.nx = fmul <4 x float> %i.mq, %.sroa.5591.0.copyload
  %i.ny = fmul <4 x float> %i.mr, %.sroa.7593.0.copyload
  %i.nz = fmul <4 x float> %i.ms, %.sroa.8594.0.copyload
  %i.oa = fadd <4 x float> %i.ny, %i.nz
  %i.ob = fadd <4 x float> %i.nx, %i.oa
  %i.oc = fadd <4 x float> %i.nr, %.sroa.0586.0.copyload ; 2 uses
  %i.od = fadd <4 x float> %i.nw, %.sroa.4587.0.copyload ; 2 uses
  %i.oe = fadd <4 x float> %i.ob, %.sroa.5588.0.copyload ; 2 uses
  store <4 x float> %i.oc, ptr %i.au, align 16, !tbaa !176
  store <4 x float> %i.od, ptr %.sroa.4459.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.oe, ptr %.sroa.5460.0..sroa_idx, align 16, !tbaa !176
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge1636, %bb.r
  %.sroa.5600.0.copyload = phi <4 x float> [ %.sroa.5600.0.copyload.pre, %._crit_edge1636 ], [ %i.oe, %bb.r ]
  %.sroa.4599.0.copyload = phi <4 x float> [ %.sroa.4599.0.copyload.pre, %._crit_edge1636 ], [ %i.od, %bb.r ]
  %.sroa.0598.0.copyload = phi <4 x float> [ %.sroa.0598.0.copyload.pre, %._crit_edge1636 ], [ %i.oc, %bb.r ]
  %.sroa.5603.0.copyload = phi <4 x float> [ %.sroa.5603.0.copyload.pre, %._crit_edge1636 ], [ %i.nl, %bb.r ]
  %.sroa.4602.0.copyload = phi <4 x float> [ %.sroa.4602.0.copyload.pre, %._crit_edge1636 ], [ %i.nk, %bb.r ]
  %.sroa.0601.0.copyload = phi <4 x float> [ %.sroa.0601.0.copyload.pre, %._crit_edge1636 ], [ %i.nj, %bb.r ]
  %i.of = getelementptr inbounds nuw i8, ptr %i.bg, i64 272
  %i.og = fsub <4 x float> %.sroa.0598.0.copyload, %.sroa.0601.0.copyload
  %i.oh = fsub <4 x float> %.sroa.4599.0.copyload, %.sroa.4602.0.copyload
  %i.oi = fsub <4 x float> %.sroa.5600.0.copyload, %.sroa.5603.0.copyload
  %.sroa.0604.0.copyload = load <4 x float>, ptr %i.of, align 16 ; 2 uses
  %.sroa.4605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  %.sroa.4605.0.copyload = load <4 x float>, ptr %.sroa.4605.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 304
  %.sroa.5606.0.copyload = load <4 x float>, ptr %.sroa.5606.0..sroa_idx, align 16 ; 2 uses
  %i.oj = fmul <4 x float> %i.og, %.sroa.0604.0.copyload
  %i.ok = fmul <4 x float> %i.oh, %.sroa.4605.0.copyload
  %i.ol = fadd <4 x float> %i.oj, %i.ok
  %i.om = fmul <4 x float> %i.oi, %.sroa.5606.0.copyload
  %i.on = fadd <4 x float> %i.ol, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bg, i64 768 ; 2 uses
  %i.op = load <4 x float>, ptr %i.oo, align 16, !tbaa !176
  %i.oq = fmul <4 x float> %.0150.lcssa, %i.op    ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  %i.os = getelementptr inbounds nuw i8, ptr %i.bg, i64 528 ; 2 uses
  %i.ot = load <4 x float>, ptr %i.or, align 16, !tbaa !176
  %i.ou = load <4 x float>, ptr %i.os, align 16, !tbaa !176 ; 2 uses
  %i.ov = fmul <4 x float> %i.on, %i.ot
  %i.ow = fsub <4 x float> %i.ou, %i.ov
  %i.ox = fneg <4 x float> %i.oq
  %i.oy = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ox, <4 x float> %i.ow)
  %i.oz = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.oy, <4 x float> %i.oq) ; 2 uses
end_hunk_6
begin_hunk_7_@b3ApplyRestitution_Convex:bb.a
  %.not219 = icmp ult i64 %i.cc, %i.bu, !nosanitize !10
  br i1 %.not219, label %bb.n, label %bb.o, !prof !89, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @194, i64 %i.bu, i64 %i.cc) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw [192 x i8], ptr %i.bt, i64 %indvars.iv ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 176
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !176 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 128 ; 2 uses
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !tbaa !176 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  %.sroa.0126.0.copyload = load <4 x float>, ptr %i.cd, align 16, !tbaa !176 ; 4 uses
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.5128.0.copyload = load <4 x float>, ptr %.sroa.5128.0..sroa_idx, align 16, !tbaa !176 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.sroa.6.0.copyload = load <4 x float>, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !176 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %.sroa.0145.0.copyload = load <4 x float>, ptr %i.cj, align 16, !tbaa !176 ; 4 uses
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %.sroa.5147.0.copyload = load <4 x float>, ptr %.sroa.5147.0..sroa_idx, align 16, !tbaa !176 ; 4 uses
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %.sroa.6150.0.copyload = load <4 x float>, ptr %.sroa.6150.0..sroa_idx, align 16, !tbaa !176 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 112 ; 2 uses
  %i.cl = fcmp une <4 x float> %i.ch, zeroinitializer
  %i.cm = fadd <4 x float> %i.ad, %i.cf
  %i.cn = fcmp ule <4 x float> %i.cm, zeroinitializer
  %i.co = and <4 x i1> %i.cn, %i.cl
  %i.cp = and <4 x i1> %i.bv, %i.co
  %i.cq = load <4 x float>, ptr %i.ci, align 16, !tbaa !176
  %i.cr = select <4 x i1> %i.cp, <4 x float> %i.cq, <4 x float> zeroinitializer
  %.sroa.0153.0.copyload = load <4 x float>, ptr %3, align 16
  %.sroa.4140.0.copyload = load <4 x float>, ptr %.sroa.4140.0..sroa_idx, align 16 ; 2 uses
  %i.cs = fmul <4 x float> %.sroa.6150.0.copyload, %.sroa.4140.0.copyload
  %.sroa.5141.0.copyload = load <4 x float>, ptr %.sroa.5141.0..sroa_idx, align 16 ; 2 uses
  %i.ct = fmul <4 x float> %.sroa.5147.0.copyload, %.sroa.5141.0.copyload
  %i.cu = fsub <4 x float> %i.cs, %i.ct
  %i.cv = fadd <4 x float> %.sroa.0153.0.copyload, %i.cu
  %.sroa.0133.0.copyload = load <4 x float>, ptr %2, align 16
  %.sroa.4121.0.copyload = load <4 x float>, ptr %.sroa.4121.0..sroa_idx, align 16 ; 2 uses
  %i.cw = fmul <4 x float> %.sroa.6.0.copyload, %.sroa.4121.0.copyload
  %.sroa.5122.0.copyload = load <4 x float>, ptr %.sroa.5122.0..sroa_idx, align 16 ; 2 uses
  %i.cx = fmul <4 x float> %.sroa.5128.0.copyload, %.sroa.5122.0.copyload
  %i.cy = fsub <4 x float> %i.cw, %i.cx
  %i.cz = fadd <4 x float> %.sroa.0133.0.copyload, %i.cy
  %i.da = fsub <4 x float> %i.cv, %i.cz
  %.sroa.0165.0.copyload = load <4 x float>, ptr %i.bw, align 16 ; 2 uses
  %i.db = fmul <4 x float> %.sroa.0165.0.copyload, %i.da
  %.sroa.4154.0.copyload = load <4 x float>, ptr %.sroa.4154.0..sroa_idx, align 16
  %i.dc = fmul <4 x float> %.sroa.0145.0.copyload, %.sroa.5141.0.copyload
  %.sroa.0139.0.copyload = load <4 x float>, ptr %i.ak, align 16 ; 2 uses
  %i.dd = fmul <4 x float> %.sroa.6150.0.copyload, %.sroa.0139.0.copyload
  %i.de = fsub <4 x float> %i.dc, %i.dd
  %i.df = fadd <4 x float> %.sroa.4154.0.copyload, %i.de
  %.sroa.4134.0.copyload = load <4 x float>, ptr %.sroa.4134.0..sroa_idx, align 16
  %i.dg = fmul <4 x float> %.sroa.0126.0.copyload, %.sroa.5122.0.copyload
  %.sroa.0120.0.copyload = load <4 x float>, ptr %i.al, align 16 ; 2 uses
  %i.dh = fmul <4 x float> %.sroa.6.0.copyload, %.sroa.0120.0.copyload
  %i.di = fsub <4 x float> %i.dg, %i.dh
  %i.dj = fadd <4 x float> %.sroa.4134.0.copyload, %i.di
  %i.dk = fsub <4 x float> %i.df, %i.dj
  %.sroa.4166.0.copyload = load <4 x float>, ptr %.sroa.4166.0..sroa_idx, align 16 ; 2 uses
  %i.dl = fmul <4 x float> %.sroa.4166.0.copyload, %i.dk
  %i.dm = fadd <4 x float> %i.db, %i.dl
  %.sroa.5155.0.copyload = load <4 x float>, ptr %.sroa.5155.0..sroa_idx, align 16
  %i.dn = fmul <4 x float> %.sroa.5147.0.copyload, %.sroa.0139.0.copyload
  %i.do = fmul <4 x float> %.sroa.0145.0.copyload, %.sroa.4140.0.copyload
  %i.dp = fsub <4 x float> %i.dn, %i.do
  %i.dq = fadd <4 x float> %i.dp, %.sroa.5155.0.copyload
  %.sroa.5135.0.copyload = load <4 x float>, ptr %.sroa.5135.0..sroa_idx, align 16
  %i.dr = fmul <4 x float> %.sroa.5128.0.copyload, %.sroa.0120.0.copyload
  %i.ds = fmul <4 x float> %.sroa.0126.0.copyload, %.sroa.4121.0.copyload
  %i.dt = fsub <4 x float> %i.dr, %i.ds
  %i.du = fadd <4 x float> %i.dt, %.sroa.5135.0.copyload
  %i.dv = fsub <4 x float> %i.dq, %i.du
  %.sroa.5167.0.copyload = load <4 x float>, ptr %.sroa.5167.0..sroa_idx, align 16 ; 2 uses
  %i.dw = fmul <4 x float> %.sroa.5167.0.copyload, %i.dv
  %i.dx = fadd <4 x float> %i.dm, %i.dw
  %i.dy = load <4 x float>, ptr %i.bi, align 16, !tbaa !176
  %i.dz = fmul <4 x float> %i.cf, %i.dy
  %i.ea = fadd <4 x float> %i.dz, %i.dx
  %i.eb = fmul <4 x float> %i.cr, %i.ea
  %i.ec = load <4 x float>, ptr %i.ck, align 16, !tbaa !176 ; 2 uses
  %i.ed = fsub <4 x float> %i.ec, %i.eb
  %i.ee = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ed, <4 x float> zeroinitializer) ; 2 uses
  %i.ef = fsub <4 x float> %i.ee, %i.ec           ; 4 uses
  store <4 x float> %i.ee, ptr %i.ck, align 16, !tbaa !176
  %i.eg = fadd <4 x float> %i.ch, %i.ef
  store <4 x float> %i.eg, ptr %i.cg, align 16, !tbaa !176
  %i.eh = fmul <4 x float> %i.ef, %.sroa.0165.0.copyload ; 6 uses
  %i.ei = fmul <4 x float> %i.ef, %.sroa.4166.0.copyload ; 6 uses
  %i.ej = fmul <4 x float> %.sroa.5167.0.copyload, %i.ef ; 6 uses
  %i.ek = fmul <4 x float> %.sroa.5128.0.copyload, %i.ej
  %i.el = fmul <4 x float> %.sroa.6.0.copyload, %i.ei
  %i.em = fsub <4 x float> %i.ek, %i.el           ; 3 uses
  %i.en = fmul <4 x float> %.sroa.6.0.copyload, %i.eh
  %i.eo = fmul <4 x float> %.sroa.0126.0.copyload, %i.ej
  %i.ep = fsub <4 x float> %i.en, %i.eo           ; 3 uses
  %i.eq = fmul <4 x float> %.sroa.0126.0.copyload, %i.ei
  %i.er = fmul <4 x float> %.sroa.5128.0.copyload, %i.eh
  %i.es = fsub <4 x float> %i.eq, %i.er           ; 3 uses
  %.sroa.0180.0.copyload = load <4 x float>, ptr %i.bx, align 16
  %.sroa.4181.0.copyload = load <4 x float>, ptr %.sroa.4181.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5182.0.copyload = load <4 x float>, ptr %.sroa.5182.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6183.0.copyload = load <4 x float>, ptr %.sroa.6183.0..sroa_idx, align 16
  %.sroa.7184.0.copyload = load <4 x float>, ptr %.sroa.7184.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8185.0.copyload = load <4 x float>, ptr %.sroa.8185.0..sroa_idx, align 16
  %.sroa.0177.0.copyload = load <4 x float>, ptr %i.al, align 16
  %.sroa.4178.0.copyload = load <4 x float>, ptr %.sroa.4121.0..sroa_idx, align 16
  %.sroa.5179.0.copyload = load <4 x float>, ptr %.sroa.5122.0..sroa_idx, align 16
  %i.et = fmul <4 x float> %.sroa.0180.0.copyload, %i.em
  %i.eu = fmul <4 x float> %.sroa.4181.0.copyload, %i.ep
  %i.ev = fmul <4 x float> %.sroa.5182.0.copyload, %i.es
  %i.ew = fadd <4 x float> %i.eu, %i.ev
  %i.ex = fadd <4 x float> %i.et, %i.ew
  %i.ey = fmul <4 x float> %.sroa.4181.0.copyload, %i.em
  %i.ez = fmul <4 x float> %i.ep, %.sroa.6183.0.copyload
  %i.fa = fmul <4 x float> %i.es, %.sroa.7184.0.copyload
  %i.fb = fadd <4 x float> %i.ez, %i.fa
  %i.fc = fadd <4 x float> %i.ey, %i.fb
  %i.fd = fmul <4 x float> %i.em, %.sroa.5182.0.copyload
  %i.fe = fmul <4 x float> %i.ep, %.sroa.7184.0.copyload
  %i.ff = fmul <4 x float> %i.es, %.sroa.8185.0.copyload
  %i.fg = fadd <4 x float> %i.fe, %i.ff
  %i.fh = fadd <4 x float> %i.fd, %i.fg
  %i.fi = fsub <4 x float> %.sroa.0177.0.copyload, %i.ex
  %i.fj = fsub <4 x float> %.sroa.4178.0.copyload, %i.fc
  %i.fk = fsub <4 x float> %.sroa.5179.0.copyload, %i.fh
  store <4 x float> %i.fi, ptr %i.al, align 16, !tbaa !176
  store <4 x float> %i.fj, ptr %.sroa.4121.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.fk, ptr %.sroa.5122.0..sroa_idx, align 16, !tbaa !176
  %i.fl = load <4 x float>, ptr %i.by, align 16, !tbaa !176 ; 3 uses
  %.sroa.0189.0.copyload = load <4 x float>, ptr %2, align 16
  %.sroa.4190.0.copyload = load <4 x float>, ptr %.sroa.4134.0..sroa_idx, align 16
  %.sroa.5191.0.copyload = load <4 x float>, ptr %.sroa.5135.0..sroa_idx, align 16
  %i.fm = fmul <4 x float> %i.eh, %i.fl
  %i.fn = fsub <4 x float> %.sroa.0189.0.copyload, %i.fm
  %i.fo = fmul <4 x float> %i.ei, %i.fl
  %i.fp = fsub <4 x float> %.sroa.4190.0.copyload, %i.fo
  %i.fq = fmul <4 x float> %i.ej, %i.fl
  %i.fr = fsub <4 x float> %.sroa.5191.0.copyload, %i.fq
  store <4 x float> %i.fn, ptr %2, align 16, !tbaa !176
  store <4 x float> %i.fp, ptr %.sroa.4134.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.fr, ptr %.sroa.5135.0..sroa_idx, align 16, !tbaa !176
  %i.fs = fmul <4 x float> %.sroa.5147.0.copyload, %i.ej
  %i.ft = fmul <4 x float> %.sroa.6150.0.copyload, %i.ei
  %i.fu = fsub <4 x float> %i.fs, %i.ft           ; 3 uses
  %i.fv = fmul <4 x float> %.sroa.6150.0.copyload, %i.eh
  %i.fw = fmul <4 x float> %.sroa.0145.0.copyload, %i.ej
  %i.fx = fsub <4 x float> %i.fv, %i.fw           ; 3 uses
  %i.fy = fmul <4 x float> %.sroa.0145.0.copyload, %i.ei
  %i.fz = fmul <4 x float> %.sroa.5147.0.copyload, %i.eh
  %i.ga = fsub <4 x float> %i.fy, %i.fz           ; 3 uses
  %.sroa.0204.0.copyload = load <4 x float>, ptr %i.bz, align 16
  %.sroa.4205.0.copyload = load <4 x float>, ptr %.sroa.4205.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5206.0.copyload = load <4 x float>, ptr %.sroa.5206.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6207.0.copyload = load <4 x float>, ptr %.sroa.6207.0..sroa_idx, align 16
  %.sroa.7208.0.copyload = load <4 x float>, ptr %.sroa.7208.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8209.0.copyload = load <4 x float>, ptr %.sroa.8209.0..sroa_idx, align 16
  %.sroa.0201.0.copyload = load <4 x float>, ptr %i.ak, align 16
  %.sroa.4202.0.copyload = load <4 x float>, ptr %.sroa.4140.0..sroa_idx, align 16
  %.sroa.5203.0.copyload = load <4 x float>, ptr %.sroa.5141.0..sroa_idx, align 16
  %i.gb = fmul <4 x float> %i.fu, %.sroa.0204.0.copyload
  %i.gc = fmul <4 x float> %i.fx, %.sroa.4205.0.copyload
  %i.gd = fmul <4 x float> %i.ga, %.sroa.5206.0.copyload
  %i.ge = fadd <4 x float> %i.gc, %i.gd
  %i.gf = fadd <4 x float> %i.gb, %i.ge
  %i.gg = fmul <4 x float> %i.fu, %.sroa.4205.0.copyload
  %i.gh = fmul <4 x float> %i.fx, %.sroa.6207.0.copyload
  %i.gi = fmul <4 x float> %i.ga, %.sroa.7208.0.copyload
  %i.gj = fadd <4 x float> %i.gh, %i.gi
  %i.gk = fadd <4 x float> %i.gg, %i.gj
  %i.gl = fmul <4 x float> %i.fu, %.sroa.5206.0.copyload
  %i.gm = fmul <4 x float> %i.fx, %.sroa.7208.0.copyload
  %i.gn = fmul <4 x float> %i.ga, %.sroa.8209.0.copyload
  %i.go = fadd <4 x float> %i.gm, %i.gn
  %i.gp = fadd <4 x float> %i.gl, %i.go
  %i.gq = fadd <4 x float> %i.gf, %.sroa.0201.0.copyload
  %i.gr = fadd <4 x float> %i.gk, %.sroa.4202.0.copyload
  %i.gs = fadd <4 x float> %i.gp, %.sroa.5203.0.copyload
  store <4 x float> %i.gq, ptr %i.ak, align 16, !tbaa !176
  store <4 x float> %i.gr, ptr %.sroa.4140.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.gs, ptr %.sroa.5141.0..sroa_idx, align 16, !tbaa !176
  %i.gt = load <4 x float>, ptr %i.ca, align 16, !tbaa !176 ; 3 uses
  %.sroa.0213.0.copyload = load <4 x float>, ptr %3, align 16
  %.sroa.4214.0.copyload = load <4 x float>, ptr %.sroa.4154.0..sroa_idx, align 16
  %.sroa.5215.0.copyload = load <4 x float>, ptr %.sroa.5155.0..sroa_idx, align 16
  %i.gu = fmul <4 x float> %i.eh, %i.gt
  %i.gv = fadd <4 x float> %.sroa.0213.0.copyload, %i.gu
  %i.gw = fmul <4 x float> %i.ei, %i.gt
  %i.gx = fadd <4 x float> %i.gw, %.sroa.4214.0.copyload
  %i.gy = fmul <4 x float> %i.ej, %i.gt
  %i.gz = fadd <4 x float> %i.gy, %.sroa.5215.0.copyload
  store <4 x float> %i.gv, ptr %3, align 16, !tbaa !176
  store <4 x float> %i.gx, ptr %.sroa.4154.0..sroa_idx, align 16, !tbaa !176
  store <4 x float> %i.gz, ptr %.sroa.5155.0..sroa_idx, align 16, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.o, %bb.l
  call fastcc void @b3ScatterBodies(ptr noundef %i.g, ptr noundef %i.ax, ptr noundef %2)
  call fastcc void @b3ScatterBodies(ptr noundef %i.g, ptr noundef %i.bq, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %.lr.ph405.split

.lr.ph405.split:                                  ; preds = %bb.k, %._crit_edge
  %indvars.iv.next589 = add nsw i64 %indvars.iv588776, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count591
  br i1 %exitcond592.not, label %.split408.us, label %.lr.ph777
}

; Function Attrs: nounwind uwtable
define hidden void @b3StoreImpulses_Convex(i64 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 !func_sanitize !153 {
bb.a:
  %.sroa.0165.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.2166.0.extract.shift = lshr i64 %0, 32   ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @195, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %.fr2438 = freeze ptr %i.i                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169
  %.fr = freeze ptr %i.k                          ; 3 uses
  %i.l = icmp ne ptr %i.g, null, !nosanitize !10
  %i.m = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !10
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !10
  %i.p = and i1 %i.l, %i.o, !nosanitize !10
  br i1 %i.p, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @196, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154  ; 3 uses
  %i.s = sext i32 %2 to i64                       ; 2 uses
  %i.t = getelementptr inbounds [3848 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = mul nsw i64 %i.s, 3848
  %i.v = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 3 uses
  %i.w = add i64 %i.u, %i.v, !nosanitize !10      ; 3 uses
  %i.x = icmp ne ptr %i.r, null, !nosanitize !10  ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  %i.z = xor i1 %i.x, %i.y
  %i.aa = icmp uge i64 %i.w, %i.v, !nosanitize !10
  %i.ab = icmp slt i32 %2, 0
  %i.ac = xor i1 %i.ab, %i.aa
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !10
  br i1 %i.ad, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @197, i64 %i.v, i64 %i.w) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.t to i64, !nosanitize !10 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !10
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !10
  %i.ah = and i1 %i.x, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @198, i64 %i.ae) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !160 ; 4 uses
  %i.al = icmp ult i8 %i.ak, 2
  br i1 %i.al, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.am = zext i8 %i.ak to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @199, i64 %i.am) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 4440
  %i.ao = load float, ptr %i.an, align 8, !tbaa !161
  %i.ap = fneg float %i.ao                        ; 5 uses
  %i.aq = trunc nuw i64 %.sroa.2166.0.extract.shift to i32
  %i.ar = and i32 %i.aq, 65535
  %i.as = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0165.0.extract.trunc, i32 %i.ar), !nosanitize !10 ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0, !nosanitize !10 ; 3 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1, !nosanitize !10
  br i1 %i.au, label %bb.l, label %.preheader180, !prof !89, !nosanitize !10

.preheader180:                                    ; preds = %bb.k
  %i.av = ptrtoint ptr %.fr2438 to i64            ; 9 uses
  %.not2439 = icmp eq ptr %.fr2438, null
  br i1 %.not2439, label %.split2229.us, label %.preheader180.split.preheader, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.aw = and i64 %0, 4294967295
  %i.ax = and i64 %.sroa.2166.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @200, i64 %i.aw, i64 %i.ax) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader180.split:                              ; preds = %bb.n
  %indvars.iv.next4428 = add nuw nsw i64 %indvars.iv44276757, 1
  %i.ay = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bb, i32 1), !nosanitize !10 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 0, !nosanitize !10
  %i.ba = extractvalue { i32, i1 } %i.ay, 1, !nosanitize !10
  br i1 %i.ba, label %.split.us, label %.preheader180.split.preheader, !prof !92, !llvm.loop !235, !nosanitize !10

.split.us:                                        ; preds = %.preheader180.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @201, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader180.split.preheader:                    ; preds = %.preheader180, %.preheader180.split
  %i.bb = phi i32 [ %i.az, %.preheader180.split ], [ 1, %.preheader180 ] ; 3 uses
  %indvars.iv44276757 = phi i64 [ %indvars.iv.next4428, %.preheader180.split ], [ 0, %.preheader180 ] ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr2438, i64 %i.bc ; 2 uses
  %i.be = shl nsw i64 %i.bc, 4
  %i.bf = add i64 %i.be, %i.av, !nosanitize !10   ; 3 uses
  %3 = icmp ne i64 %i.bf, 0
  %4 = icmp uge i64 %i.bf, %i.av, !nosanitize !10
  %5 = icmp slt i32 %i.bb, 0
  %6 = xor i1 %5, %4
  %7 = and i1 %3, %6, !nosanitize !10
  br i1 %7, label %bb.m, label %.split2229.us, !prof !11, !nosanitize !10

.split2229.us:                                    ; preds = %.preheader180.split.preheader, %.preheader180
  %.us-phi2231 = phi i64 [ 16, %.preheader180 ], [ %i.bf, %.preheader180.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @202, i64 %i.av, i64 %.us-phi2231) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %.preheader180.split.preheader
  %i.bg = ptrtoint ptr %i.bd to i64, !nosanitize !10 ; 2 uses
  %i.bh = and i64 %i.bg, 7, !nosanitize !10
  %i.bi = icmp eq i64 %i.bh, 0, !nosanitize !10
  br i1 %i.bi, label %bb.n, label %.split2233, !prof !11, !nosanitize !10

.split2233:                                       ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @203, i64 %i.bg) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr %i.bd, align 8, !tbaa !171
  %.not156 = icmp sgt i32 %i.bj, %.sroa.0165.0.extract.trunc
  br i1 %.not156, label %.preheader179.split, label %.preheader180.split, !llvm.loop !235

.preheader179.split:                              ; preds = %bb.n
  %i.bk = icmp sgt i32 %i.at, %.sroa.0165.0.extract.trunc
  br i1 %i.bk, label %.lr.ph2435, label %._crit_edge2436

.lr.ph2435:                                       ; preds = %.preheader179.split
  %i.bl = ptrtoint ptr %.fr to i64                ; 3 uses
  %.not2441.a = icmp eq ptr %.fr, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  br label %bb.o

.loopexit178:                                     ; preds = %bb.bq, %.split2240
  %.1131.lcssa = phi i8 [ %.01302432, %.split2240 ], [ %.2132.lcssa, %bb.bq ] ; 2 uses
  %.1129.lcssa = phi i32 [ %.01282433, %.split2240 ], [ %i.ce, %bb.bq ] ; 2 uses
  %i.bn = icmp slt i32 %.1129.lcssa, %i.at
  %indvars.iv.next4433 = add nuw nsw i64 %indvars.iv4432, 1
  br i1 %i.bn, label %bb.o, label %._crit_edge2436, !llvm.loop !236

bb.o:                                             ; preds = %.lr.ph2435, %.loopexit178
  %indvars.iv4432 = phi i64 [ %indvars.iv44276757, %.lr.ph2435 ], [ %indvars.iv.next4433, %.loopexit178 ] ; 5 uses
  %.01282433 = phi i32 [ %.sroa.0165.0.extract.trunc, %.lr.ph2435 ], [ %.1129.lcssa, %.loopexit178 ] ; 5 uses
  %.01302432 = phi i8 [ %i.ak, %.lr.ph2435 ], [ %.1131.lcssa, %.loopexit178 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr2438, i64 %indvars.iv4432 ; 4 uses
  %i.bp = shl nuw nsw i64 %indvars.iv4432, 4
  %i.bq = add i64 %i.bp, %i.av, !nosanitize !10   ; 2 uses
  %.not2442 = icmp ult i64 %i.bq, %i.av, !nosanitize !10
  br i1 %.not2442, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @204, i64 %i.av, i64 %i.bq) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.br = ptrtoint ptr %i.bo to i64, !nosanitize !10 ; 2 uses
  %i.bs = and i64 %i.br, 7, !nosanitize !10
  %i.bt = icmp eq i64 %i.bs, 0, !nosanitize !10
  br i1 %i.bt, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @205, i64 %i.br) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !171 ; 2 uses
  %exitcond4434 = icmp eq i64 %indvars.iv4432, 2147483647
  br i1 %exitcond4434, label %bb.t, label %bb.u, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @206, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.bv = shl i64 %indvars.iv4432, 32
  %sext = add i64 %i.bv, 4294967296               ; 2 uses
  %i.bw = ashr exact i64 %sext, 28
  %i.bx = getelementptr inbounds i8, ptr %.fr2438, i64 %i.bw ; 2 uses
  %i.by = ashr exact i64 %sext, 28
  %i.bz = add i64 %i.by, %i.av, !nosanitize !10   ; 2 uses
  %.not2443 = icmp ult i64 %i.bz, %i.av, !nosanitize !10
  br i1 %.not2443, label %bb.v, label %bb.w, !prof !89, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @207, i64 %i.av, i64 %i.bz) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.ca = ptrtoint ptr %i.bx to i64, !nosanitize !10 ; 2 uses
  %i.cb = and i64 %i.ca, 7, !nosanitize !10
  %i.cc = icmp eq i64 %i.cb, 0, !nosanitize !10
  br i1 %i.cc, label %.split2240, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @208, i64 %i.ca) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split2240:                                       ; preds = %bb.w
  %i.cd = load i32, ptr %i.bx, align 8, !tbaa !171
  %i.ce = tail call noundef i32 @llvm.smin.i32(i32 %i.cd, i32 %i.at) ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !172
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !173 ; 3 uses
  %i.cj = icmp slt i32 %.01282433, %i.ce
  br i1 %i.cj, label %.lr.ph2243, label %.loopexit178

.lr.ph2243:                                       ; preds = %.split2240
  %i.ck = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.cl = icmp ne ptr %i.ci, null                 ; 2 uses
  br i1 %.not2441.a, label %.lr.ph2243.split.us, label %.lr.ph2243.split.preheader, !prof !89

.lr.ph2243.split.preheader:                       ; preds = %.lr.ph2243
  %i.cm = sext i32 %i.cg to i64
  %i.cn = sext i32 %.01282433 to i64
  %i.co = sext i32 %i.ce to i64
  br label %.lr.ph2243.split

.lr.ph2243.split.us:                              ; preds = %.lr.ph2243
  %i.cp = sext i32 %.01282433 to i64
  %i.cq = mul nsw i64 %i.cp, 1696
  %i.cr = icmp eq i32 %.01282433, 0
  br i1 %i.cr, label %.split2250, label %.split2246.us, !prof !11, !nosanitize !10

.lr.ph2243.split:                                 ; preds = %.lr.ph2243.split.preheader, %bb.bq
  %indvars.iv4424 = phi i64 [ %i.cn, %.lr.ph2243.split.preheader ], [ %indvars.iv.next4425, %bb.bq ] ; 6 uses
  %.11312241 = phi i8 [ %.01302432, %.lr.ph2243.split.preheader ], [ %.2132.lcssa, %bb.bq ]
  %i.cs = getelementptr inbounds [1696 x i8], ptr %.fr, i64 %indvars.iv4424 ; 30 uses
  %i.ct = mul nsw i64 %indvars.iv4424, 1696
  %i.cu = add i64 %i.ct, %i.bl, !nosanitize !10   ; 3 uses
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = icmp uge i64 %i.cu, %i.bl, !nosanitize !10
  %i.cx = icmp slt i64 %indvars.iv4424, 0
  %i.cy = xor i1 %i.cx, %i.cw
  %i.cz = and i1 %i.cv, %i.cy, !nosanitize !10
  br i1 %i.cz, label %bb.y, label %.split2246.us, !prof !11, !nosanitize !10

.split2246.us:                                    ; preds = %.lr.ph2243.split, %.lr.ph2243.split.us
  %.us-phi2248 = phi i64 [ %i.cq, %.lr.ph2243.split.us ], [ %i.cu, %.lr.ph2243.split ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @209, i64 %i.bl, i64 %.us-phi2248) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %.lr.ph2243.split
  %i.da = ptrtoint ptr %i.cs to i64, !nosanitize !10 ; 2 uses
  %i.db = and i64 %i.da, 15, !nosanitize !10
  %i.dc = icmp eq i64 %i.db, 0, !nosanitize !10
  br i1 %i.dc, label %bb.z, label %.split2250, !prof !11, !nosanitize !10

.split2250:                                       ; preds = %bb.y, %.lr.ph2243.split.us
  %.us-phi2251 = phi i64 [ 0, %.lr.ph2243.split.us ], [ %i.da, %bb.y ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @211, i64 %.us-phi2251) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 592
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 608
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 320
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 336
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 352
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 368
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 384
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 400
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 528
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 720
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 736
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 752
  %i.dp = trunc nsw i64 %indvars.iv4424 to i32
  %i.dq = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.dp, i32 %i.bu), !nosanitize !10 ; 2 uses
  %i.dr = extractvalue { i32, i1 } %i.dq, 1, !nosanitize !10
  br i1 %i.dr, label %bb.aa, label %.preheader177, !prof !89, !nosanitize !10

.preheader177:                                    ; preds = %bb.z
  %i.ds = extractvalue { i32, i1 } %i.dq, 0, !nosanitize !10 ; 4 uses
  %i.dt = add i32 %i.ds, 536870912
  %i.du = icmp ult i32 %i.dt, 1073741824
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 896 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 928 ; 7 uses
  %i.dy = icmp slt i32 %i.ds, 0
  br i1 %i.du, label %.preheader177.split.preheader, label %bb.ab, !prof !11, !nosanitize !10

.preheader177.split.preheader:                    ; preds = %.preheader177
  %i.dz = shl nsw i32 %i.ds, 2
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 1056
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 1104
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cs, i64 1040
  %.not176.1 = icmp ugt ptr %i.dx, inttoptr (i64 -193 to ptr)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 1248
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cs, i64 1296
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 1232
  %.not176.2 = icmp ugt ptr %i.dx, inttoptr (i64 -385 to ptr)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 1440
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cs, i64 1488
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cs, i64 1424
  %.not176.3 = icmp ugt ptr %i.dx, inttoptr (i64 -577 to ptr)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cs, i64 1632
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 1680
  %i.em = getelementptr inbounds nuw i8, ptr %i.cs, i64 1616
  %.not176.4 = icmp ugt ptr %i.dx, inttoptr (i64 -769 to ptr)
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 1824
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 1872
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 1808
  br label %.preheader177.split

bb.aa:                                            ; preds = %bb.z
  %i.eq = and i64 %indvars.iv4424, 4294967295
  %i.er = zext i32 %i.bu to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @212, i64 %i.eq, i64 %i.er) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader177.split:                              ; preds = %.preheader177.split.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader177.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 31 uses
  %.21322238 = phi i8 [ %.11312241, %.preheader177.split.preheader ], [ %.8.ph, %.loopexit ] ; 8 uses
  %i.es = add nuw nsw i64 %indvars.iv, %i.ea      ; 3 uses
  %.not157 = icmp slt i64 %i.es, %i.cm
  br i1 %.not157, label %bb.ac, label %bb.bq

bb.ab:                                            ; preds = %.preheader177
  %i.et = zext i32 %i.ds to i64, !nosanitize !10
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @213, i64 4, i64 %i.et) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %.preheader177.split
  %i.eu = shl nuw nsw i64 %indvars.iv, 3
  %i.ev = add i64 %i.eu, %i.dw, !nosanitize !10   ; 2 uses
  %.not158 = icmp ult i64 %i.ev, %i.dw, !nosanitize !10
  br i1 %.not158, label %bb.ad, label %bb.ae, !prof !89, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @214, i64 %i.dw, i64 %i.ev) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !175 ; 41 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.loopexit, label %bb.af

end_hunk_7
begin_hunk_8_@b3StoreImpulses_Convex:bb.a
  %i.iy = add i64 %i.ix, 960
  %.not176.5 = icmp ugt ptr %i.dx, inttoptr (i64 -961 to ptr)
  br i1 %.not176.5, label %split, label %bb.aq, !prof !89, !nosanitize !10

bb.aq:                                            ; preds = %.lr.ph.5
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @217, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ar:                                            ; preds = %._crit_edge
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @219, i64 %i.ck, i64 %i.gu) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %._crit_edge
  %i.iz = ptrtoint ptr %i.gs to i64, !nosanitize !10 ; 2 uses
  %i.ja = and i64 %i.iz, 3, !nosanitize !10
  %i.jb = icmp eq i64 %i.ja, 0, !nosanitize !10
  %i.jc = and i1 %i.cl, %i.jb
  br i1 %i.jc, label %bb.au, label %bb.at, !prof !11, !nosanitize !10

bb.at:                                            ; preds = %bb.as
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @220, i64 %i.iz) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.au:                                            ; preds = %bb.as
  %i.jd = load i32, ptr %i.gs, align 4, !tbaa !174 ; 2 uses
  %i.je = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 3 uses
  %i.jf = sext i32 %i.jd to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [216 x i8], ptr %i.je, i64 %i.jf ; 3 uses
  %i.jh = mul nsw i64 %i.jf, 216
  %i.ji = ptrtoint ptr %i.je to i64, !nosanitize !10 ; 3 uses
  %i.jj = add i64 %i.jh, %i.ji, !nosanitize !10   ; 3 uses
  %i.jk = icmp ne ptr %i.je, null, !nosanitize !10 ; 2 uses
  %i.jl = icmp eq i64 %i.jj, 0
  %i.jm = xor i1 %i.jk, %i.jl
  %i.jn = icmp uge i64 %i.jj, %i.ji, !nosanitize !10
  %i.jo = icmp slt i32 %i.jd, 0
  %i.jp = xor i1 %i.jo, %i.jn
  %i.jq = and i1 %i.jm, %i.jp, !nosanitize !10
  br i1 %i.jq, label %bb.aw, label %bb.av, !prof !11, !nosanitize !10

bb.av:                                            ; preds = %bb.au
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.ji, i64 %i.jj) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.aw:                                            ; preds = %bb.au
  %i.jr = ptrtoint ptr %i.jg to i64, !nosanitize !10 ; 2 uses
  %i.js = and i64 %i.jr, 7, !nosanitize !10
  %i.jt = icmp eq i64 %i.js, 0, !nosanitize !10
  %i.ju = and i1 %i.jk, %i.jt
  br i1 %i.ju, label %bb.ay, label %bb.ax, !prof !11, !nosanitize !10

bb.ax:                                            ; preds = %bb.aw
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @222, i64 %i.jr) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ay:                                            ; preds = %bb.aw
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jg, i64 68
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !115
  %i.jx = and i32 %i.jw, 1048576
  %.not159 = icmp ne i32 %i.jx, 0
  %or.cond = and i1 %.not159, %i.go
  br i1 %or.cond, label %.lr.ph2237.preheader, label %.loopexit

split4451:                                        ; preds = %.lr.ph2237.1, %.lr.ph2237.2, %.lr.ph2237.3, %.lr.ph2237.4
  %.sink6442 = phi i64 [ 112, %.lr.ph2237.2 ], [ 168, %.lr.ph2237.3 ], [ 224, %.lr.ph2237.4 ], [ 56, %.lr.ph2237.1 ]
  %i.jy = add i64 %.sink6442, %i.ez, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @223, i64 %i.ez, i64 %i.jy) #10, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph2237.preheader:                             ; preds = %bb.ay
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !163
  %i.kb = fcmp olt float %i.ka, %i.ap
  br i1 %i.kb, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %.lr.ph2237.preheader
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ex, i64 36
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !162
  %i.ke = fcmp ogt float %i.kd, 0.000000e+00
  br i1 %i.ke, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.bp, %bb.az, %bb.bh, %bb.bk, %bb.bn
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !164 ; 2 uses
  %i.kh = lshr i32 %i.kg, 6
  %i.ki = load ptr, ptr %i.ai, align 8, !tbaa !165 ; 3 uses
  %i.kj = zext nneg i32 %i.kh to i64              ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kj ; 3 uses
  %i.kl = shl nuw nsw i64 %i.kj, 3
  %i.km = ptrtoint ptr %i.ki to i64, !nosanitize !10 ; 3 uses
  %i.kn = add i64 %i.kl, %i.km, !nosanitize !10   ; 3 uses
  %i.ko = icmp ne ptr %i.ki, null, !nosanitize !10 ; 2 uses
  %i.kp = icmp eq i64 %i.kn, 0
  %i.kq = xor i1 %i.ko, %i.kp
  %i.kr = icmp uge i64 %i.kn, %i.km, !nosanitize !10
  %i.ks = and i1 %i.kr, %i.kq, !nosanitize !10
  br i1 %i.ks, label %bb.bc, label %bb.bb, !prof !11, !nosanitize !10

bb.bb:                                            ; preds = %bb.ba
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %i.km, i64 %i.kn) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.bc:                                            ; preds = %bb.ba
  %i.kt = ptrtoint ptr %i.kk to i64, !nosanitize !10 ; 2 uses
  %i.ku = and i64 %i.kt, 7, !nosanitize !10
  %i.kv = icmp eq i64 %i.ku, 0, !nosanitize !10
  %i.kw = and i1 %i.ko, %i.kv
  br i1 %i.kw, label %bb.be, label %bb.bd, !prof !11, !nosanitize !10

bb.bd:                                            ; preds = %bb.bc
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @241, i64 %i.kt) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.be:                                            ; preds = %bb.bc
  %i.kx = and i32 %i.kg, 63
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = shl nuw i64 1, %i.ky
  %i.la = load i64, ptr %i.kk, align 8, !tbaa !166
  %i.lb = or i64 %i.la, %i.kz
  store i64 %i.lb, ptr %i.kk, align 8, !tbaa !166
  br label %.loopexit

bb.bf:                                            ; preds = %bb.az, %.lr.ph2237.preheader
  %exitcond4423.not = icmp eq i32 %i.gn, 1
  br i1 %exitcond4423.not, label %.loopexit, label %.lr.ph2237.1

.lr.ph2237.1:                                     ; preds = %bb.bf
  %.not160.1 = icmp ugt ptr %i.ex, inttoptr (i64 -57 to ptr)
  br i1 %.not160.1, label %split4451, label %bb.bg, !prof !89, !nosanitize !10

bb.bg:                                            ; preds = %.lr.ph2237.1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ex, i64 96
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !163
  %i.le = fcmp olt float %i.ld, %i.ap
  br i1 %i.le, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ex, i64 92
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !162
  %i.lh = fcmp ogt float %i.lg, 0.000000e+00
  br i1 %i.lh, label %bb.ba, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %exitcond4423.1.not = icmp eq i32 %i.gn, 2
  br i1 %exitcond4423.1.not, label %.loopexit, label %.lr.ph2237.2

.lr.ph2237.2:                                     ; preds = %bb.bi
  %.not160.2 = icmp ugt ptr %i.ex, inttoptr (i64 -113 to ptr)
  br i1 %.not160.2, label %split4451, label %bb.bj, !prof !89, !nosanitize !10

bb.bj:                                            ; preds = %.lr.ph2237.2
  %i.li = getelementptr inbounds nuw i8, ptr %i.ex, i64 152
  %i.lj = load float, ptr %i.li, align 4, !tbaa !163
  %i.lk = fcmp olt float %i.lj, %i.ap
  br i1 %i.lk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ex, i64 148
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !162
  %i.ln = fcmp ogt float %i.lm, 0.000000e+00
  br i1 %i.ln, label %bb.ba, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %exitcond4423.2.not = icmp eq i32 %i.gn, 3
  br i1 %exitcond4423.2.not, label %.loopexit, label %.lr.ph2237.3

.lr.ph2237.3:                                     ; preds = %bb.bl
  %.not160.3 = icmp ugt ptr %i.ex, inttoptr (i64 -169 to ptr)
  br i1 %.not160.3, label %split4451, label %bb.bm, !prof !89, !nosanitize !10

bb.bm:                                            ; preds = %.lr.ph2237.3
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ex, i64 208
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !163
  %i.lq = fcmp olt float %i.lp, %i.ap
  br i1 %i.lq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ex, i64 204
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !162
  %i.lt = fcmp ogt float %i.ls, 0.000000e+00
  br i1 %i.lt, label %bb.ba, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %exitcond4423.3.not = icmp eq i32 %i.gn, 4
  br i1 %exitcond4423.3.not, label %.loopexit, label %.lr.ph2237.4

.lr.ph2237.4:                                     ; preds = %bb.bo
  %.not160.4 = icmp ugt ptr %i.ex, inttoptr (i64 -225 to ptr)
  br i1 %.not160.4, label %split4451, label %bb.bp, !prof !89, !nosanitize !10

bb.bp:                                            ; preds = %.lr.ph2237.4
  %i.lu = fcmp olt float %i.gr, %i.ap
  %i.lv = fcmp ogt float %i.gq, 0.000000e+00
  %or.cond6758 = select i1 %i.lu, i1 %i.lv, i1 false
  br i1 %or.cond6758, label %bb.ba, label %.loopexit

.loopexit:                                        ; preds = %bb.bf, %bb.bi, %bb.bl, %bb.bo, %bb.bp, %bb.ae, %bb.be, %bb.ay
  %.8.ph = phi i8 [ %.21322238, %bb.ae ], [ 1, %bb.be ], [ %.21322238, %bb.ay ], [ %.21322238, %bb.bp ], [ %.21322238, %bb.bf ], [ %.21322238, %bb.bo ], [ %.21322238, %bb.bl ], [ %.21322238, %bb.bi ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.bq, label %.preheader177.split, !llvm.loop !237

bb.bq:                                            ; preds = %.preheader177.split, %.loopexit
  %.2132.lcssa = phi i8 [ %.21322238, %.preheader177.split ], [ %.8.ph, %.loopexit ] ; 2 uses
  %indvars.iv.next4425 = add nsw i64 %indvars.iv4424, 1 ; 2 uses
  %exitcond4426.not = icmp eq i64 %indvars.iv.next4425, %i.co
  br i1 %exitcond4426.not, label %.loopexit178, label %.lr.ph2243.split, !llvm.loop !238

._crit_edge2436:                                  ; preds = %.loopexit178, %.preheader179.split
  %.0130.lcssa = phi i8 [ %i.ak, %.preheader179.split ], [ %.1131.lcssa, %.loopexit178 ]
  store i8 %.0130.lcssa, ptr %i.aj, align 8, !tbaa !160
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareContacts_Overflow(ptr noundef %0) local_unnamed_addr #8 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @224, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177  ; 4 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @225, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @226, i64 %i.i, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2632
  %i.o = load i32, ptr %i.n, align 8, !tbaa !180
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.insert.ext = zext nneg i32 %i.p to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 1659294987709317120
  tail call void @b3PrepareContacts_Mesh(i64 %.sroa.4.0.insert.insert, ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartContacts_Overflow(ptr noundef %0) local_unnamed_addr #8 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @227, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177  ; 4 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @228, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @229, i64 %i.i, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2632
  %i.o = load i32, ptr %i.n, align 8, !tbaa !180
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.insert.ext = zext nneg i32 %i.p to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 1659294987709317120
  tail call void @b3WarmStartContacts_Mesh(i64 %.sroa.4.0.insert.insert, ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3SolveContacts_Overflow(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #8 !func_sanitize !239 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @230, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177  ; 4 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @231, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @232, i64 %i.i, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2632
  %i.o = load i32, ptr %i.n, align 8, !tbaa !180
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.insert.ext = zext nneg i32 %i.p to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 1659294987709317120
  tail call void @b3SolveContacts_Mesh(i64 %.sroa.4.0.insert.insert, ptr noundef nonnull %0, i1 noundef zeroext %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3ApplyRestitution_Overflow(ptr noundef %0) local_unnamed_addr #8 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @233, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177  ; 4 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @234, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @235, i64 %i.i, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2632
  %i.o = load i32, ptr %i.n, align 8, !tbaa !180
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.insert.ext = zext nneg i32 %i.p to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 1659294987709317120
  tail call void @b3ApplyRestitution_Mesh(i64 %.sroa.4.0.insert.insert, ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3StoreImpulses_Overflow(ptr noundef %0) local_unnamed_addr #8 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @236, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177  ; 4 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @237, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @238, i64 %i.i, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2632
  %i.o = load i32, ptr %i.n, align 8, !tbaa !180
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.insert.ext = zext nneg i32 %i.p to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 1659294987709317120
  tail call void @b3StoreImpulses_Mesh(i64 %.sroa.4.0.insert.insert, ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
end_hunk_8
begin_hunk_9_@llvm.vector.reduce.smax.v4i32
!17 = !{!"p1 _ZTS11b3BodyState", !14, i64 0}
!18 = !{!"p1 _ZTS9b3BodySim", !14, i64 0}
!19 = !{!"p1 int", !14, i64 0}
!20 = !{!"b3AtomicInt", !6, i64 0}
!21 = !{!"p1 _ZTS23b3ContactConstraintWide", !14, i64 0}
!22 = !{!"p1 _ZTS17b3WidePrepareSpan", !14, i64 0}
!23 = !{!"p1 _ZTS20b3ManifoldConstraint", !14, i64 0}
!24 = !{!"p1 _ZTS19b3ContactConstraint", !14, i64 0}
!25 = !{!"p1 _ZTS20b3ContactPrepareSpan", !14, i64 0}
!26 = !{!"p1 _ZTS18b3JointPrepareSpan", !14, i64 0}
!27 = !{!"p1 _ZTS13b3SolverStage", !14, i64 0}
!28 = !{!"_Bool", !5, i64 0}
!29 = !{!"b3AtomicU32", !6, i64 0}
!30 = !{!"b3StepContext", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !6, i64 16, !13, i64 20, !13, i64 32, !12, i64 44, !12, i64 48, !15, i64 56, !16, i64 64, !17, i64 72, !18, i64 80, !19, i64 88, !6, i64 96, !19, i64 104, !20, i64 112, !19, i64 120, !21, i64 128, !22, i64 136, !6, i64 144, !23, i64 152, !24, i64 160, !25, i64 168, !25, i64 176, !26, i64 184, !6, i64 192, !6, i64 196, !27, i64 200, !6, i64 208, !28, i64 212, !5, i64 213, !29, i64 280, !5, i64 284, !20, i64 348, !5, i64 352}
!31 = !{!30, !15, i64 56}
!32 = !{!30, !18, i64 80}
!33 = !{!30, !17, i64 72}
!34 = !{!"p1 omnipotent char", !14, i64 0}
!35 = !{!"b3Stack", !34, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !6, i64 792}
!36 = !{!"b3DynamicArray_int", !19, i64 0, !6, i64 8, !6, i64 12}
!37 = !{!"p1 _ZTS12b3MoveResult", !14, i64 0}
!38 = !{!"p1 _ZTS10b3MovePair", !14, i64 0}
!39 = !{!"p1 _ZTS9b3SetItem", !14, i64 0}
!40 = !{!"b3HashSet", !39, i64 0, !6, i64 8, !6, i64 12}
!41 = !{!"b3BroadPhase", !5, i64 0, !5, i64 240, !36, i64 288, !37, i64 304, !38, i64 312, !6, i64 320, !20, i64 324, !40, i64 328}
!42 = !{!"b3ConstraintGraph", !5, i64 0}
!43 = !{!"p1 _ZTS16b3BlockAllocator", !14, i64 0}
!44 = !{!"b3DynamicArray_b3BlockAllocator", !43, i64 0, !6, i64 8, !6, i64 12}
!45 = !{!"p1 _ZTS7b3Mutex", !14, i64 0}
!46 = !{!"b3IdPool", !36, i64 0, !6, i64 16}
!47 = !{!"p1 _ZTS6b3Body", !14, i64 0}
!48 = !{!"b3DynamicArray_b3Body", !47, i64 0, !6, i64 8, !6, i64 12}
!49 = !{!"p1 _ZTS11b3SolverSet", !14, i64 0}
!50 = !{!"b3DynamicArray_b3SolverSet", !49, i64 0, !6, i64 8, !6, i64 12}
!51 = !{!"p1 _ZTS7b3Joint", !14, i64 0}
!52 = !{!"b3DynamicArray_b3Joint", !51, i64 0, !6, i64 8, !6, i64 12}
!53 = !{!"p1 _ZTS9b3Contact", !14, i64 0}
!54 = !{!"b3DynamicArray_b3Contact", !53, i64 0, !6, i64 8, !6, i64 12}
!55 = !{!"p1 _ZTS8b3Island", !14, i64 0}
!56 = !{!"b3DynamicArray_b3Island", !55, i64 0, !6, i64 8, !6, i64 12}
!57 = !{!"p1 _ZTS7b3Shape", !14, i64 0}
!58 = !{!"b3DynamicArray_b3Shape", !57, i64 0, !6, i64 8, !6, i64 12}
!59 = !{!"p1 _ZTS11b3NameEntry", !14, i64 0}
!60 = !{!"b3DynamicArray_b3NameEntry", !59, i64 0, !6, i64 8, !6, i64 12}
!61 = !{!"b3NameCache", !60, i64 0, !14, i64 16}
!62 = !{!"p1 _ZTS8b3Sensor", !14, i64 0}
!63 = !{!"b3DynamicArray_b3Sensor", !62, i64 0, !6, i64 8, !6, i64 12}
!64 = !{!"p1 _ZTS13b3TaskContext", !14, i64 0}
!65 = !{!"b3DynamicArray_b3TaskContext", !64, i64 0, !6, i64 8, !6, i64 12}
!66 = !{!"p1 _ZTS19b3SensorTaskContext", !14, i64 0}
!67 = !{!"b3DynamicArray_b3SensorTaskContext", !66, i64 0, !6, i64 8, !6, i64 12}
!68 = !{!"p1 _ZTS15b3BodyMoveEvent", !14, i64 0}
!69 = !{!"b3DynamicArray_b3BodyMoveEvent", !68, i64 0, !6, i64 8, !6, i64 12}
!70 = !{!"p1 _ZTS23b3SensorBeginTouchEvent", !14, i64 0}
!71 = !{!"b3DynamicArray_b3SensorBeginTouchEvent", !70, i64 0, !6, i64 8, !6, i64 12}
!72 = !{!"p1 _ZTS24b3ContactBeginTouchEvent", !14, i64 0}
!73 = !{!"b3DynamicArray_b3ContactBeginTouchEvent", !72, i64 0, !6, i64 8, !6, i64 12}
!74 = !{!"p1 _ZTS17b3ContactHitEvent", !14, i64 0}
!75 = !{!"b3DynamicArray_b3ContactHitEvent", !74, i64 0, !6, i64 8, !6, i64 12}
!76 = !{!"p1 _ZTS12b3JointEvent", !14, i64 0}
!77 = !{!"b3DynamicArray_b3JointEvent", !76, i64 0, !6, i64 8, !6, i64 12}
!78 = !{!"p1 long", !14, i64 0}
!79 = !{!"b3BitSet", !78, i64 0, !6, i64 8, !6, i64 12}
!80 = !{!"long", !5, i64 0}
!81 = !{!"b3Vec3", !12, i64 0, !12, i64 4, !12, i64 8}
!82 = !{!"short", !5, i64 0}
!83 = !{!"b3Profile", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88}
!84 = !{!"b3Capacity", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!85 = !{!"p1 _ZTS11b3Scheduler", !14, i64 0}
!86 = !{!"p1 _ZTS11b3Recording", !14, i64 0}
!87 = !{!"b3World", !35, i64 0, !41, i64 800, !42, i64 1144, !44, i64 3832, !45, i64 3848, !46, i64 3856, !48, i64 3880, !46, i64 3896, !50, i64 3920, !46, i64 3936, !52, i64 3960, !46, i64 3976, !54, i64 4000, !46, i64 4016, !56, i64 4040, !46, i64 4056, !58, i64 4080, !14, i64 4096, !61, i64 4104, !63, i64 4128, !65, i64 4144, !67, i64 4160, !69, i64 4176, !71, i64 4192, !73, i64 4208, !5, i64 4224, !5, i64 4256, !6, i64 4288, !75, i64 4296, !77, i64 4312, !79, i64 4328, !79, i64 4344, !79, i64 4360, !79, i64 4376, !14, i64 4392, !14, i64 4400, !14, i64 4408, !80, i64 4416, !6, i64 4424, !81, i64 4428, !12, i64 4440, !12, i64 4444, !12, i64 4448, !12, i64 4452, !12, i64 4456, !12, i64 4460, !12, i64 4464, !14, i64 4472, !14, i64 4480, !82, i64 4488, !83, i64 4492, !6, i64 4584, !6, i64 4588, !5, i64 4592, !84, i64 4624, !14, i64 4648, !14, i64 4656, !14, i64 4664, !14, i64 4672, !6, i64 4680, !14, i64 4688, !14, i64 4696, !14, i64 4704, !14, i64 4712, !85, i64 4720, !14, i64 4728, !86, i64 4736, !12, i64 4744, !12, i64 4748, !6, i64 4752, !6, i64 4756, !82, i64 4760, !28, i64 4762, !28, i64 4763, !28, i64 4764, !28, i64 4765, !28, i64 4766, !28, i64 4767}
!88 = !{!87, !28, i64 4764}
!89 = !{!"branch_weights", i32 1, i32 1048575}
!90 = !{!25, !25, i64 0}
!91 = !{!24, !24, i64 0}
!92 = !{!"branch_weights", i32 1, i32 1048574}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"p1 _ZTS13b3ContactSpec", !14, i64 0}
!95 = !{!"b3ContactPrepareSpan", !6, i64 0, !6, i64 4, !94, i64 8}
!96 = !{!95, !6, i64 0}
!97 = !{!87, !53, i64 4000}
!98 = !{!"p1 _ZTS10b3Manifold", !14, i64 0}
!99 = !{!"b3Quat", !81, i64 0, !12, i64 12}
!100 = !{!"b3Transform", !81, i64 0, !99, i64 12}
!101 = !{!"b3Contact", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !98, i64 72, !6, i64 80, !99, i64 84, !99, i64 100, !100, i64 116, !12, i64 144, !5, i64 152, !12, i64 192, !12, i64 196, !81, i64 200, !6, i64 212}
!102 = !{!101, !6, i64 60}
!103 = !{!101, !6, i64 64}
!104 = !{!"b3Matrix3", !81, i64 0, !81, i64 12, !81, i64 24}
!105 = !{!"b3BodySim", !100, i64 0, !81, i64 28, !99, i64 40, !81, i64 56, !81, i64 68, !81, i64 80, !81, i64 92, !12, i64 104, !104, i64 108, !104, i64 144, !12, i64 180, !81, i64 184, !12, i64 196, !12, i64 200, !12, i64 204, !6, i64 208, !6, i64 212}
!106 = !{!105, !12, i64 104}
!107 = !{!12, !12, i64 0}
!108 = !{!"b3ContactConstraint", !23, i64 0, !53, i64 8, !6, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !104, i64 32, !104, i64 68, !13, i64 104, !104, i64 116, !12, i64 152, !12, i64 156, !12, i64 160, !6, i64 164}
!109 = !{!108, !53, i64 8}
!110 = !{!108, !6, i64 164}
!111 = !{!108, !6, i64 16}
!112 = !{!108, !6, i64 20}
!113 = !{!108, !12, i64 24}
!114 = !{!108, !12, i64 28}
!115 = !{!101, !6, i64 68}
!116 = !{!101, !12, i64 144}
!117 = !{!108, !12, i64 152}
!118 = !{!108, !23, i64 0}
!119 = !{!101, !98, i64 72}
!120 = !{!"b3Manifold", !5, i64 0, !81, i64 224, !12, i64 236, !81, i64 240, !81, i64 252, !6, i64 264}
!121 = !{!120, !6, i64 264}
!122 = !{!81, !12, i64 0}
!123 = !{!81, !12, i64 4}
!124 = !{!"b3Vec2", !12, i64 0, !12, i64 4}
!125 = !{!"b3Matrix2", !124, i64 0, !124, i64 8}
!126 = !{!"b3ManifoldConstraint", !5, i64 0, !6, i64 192, !81, i64 196, !81, i64 208, !81, i64 220, !81, i64 232, !81, i64 244, !12, i64 256, !12, i64 260, !125, i64 264, !124, i64 280, !81, i64 288, !12, i64 300, !12, i64 304}
!127 = !{!126, !6, i64 192}
!128 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107}
!129 = !{!"b3ManifoldPoint", !81, i64 0, !81, i64 12, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !6, i64 44, !6, i64 48, !28, i64 52}
!130 = !{!129, !12, i64 24}
!131 = !{!129, !12, i64 32}
!132 = !{!"b3ManifoldConstraintPoint", !81, i64 0, !81, i64 12, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!133 = !{!132, !12, i64 32}
!134 = !{!132, !12, i64 36}
!135 = !{!132, !12, i64 24}
!136 = !{!132, !12, i64 40}
!137 = !{!132, !12, i64 28}
!138 = !{!132, !12, i64 44}
!139 = !{!126, !12, i64 256}
!140 = !{!120, !12, i64 236}
!141 = !{!126, !12, i64 260}
!142 = !{!"p1 _ZTS10b3JointSim", !14, i64 0}
!143 = !{!"b3DynamicArray_b3JointSim", !142, i64 0, !6, i64 8, !6, i64 12}
!144 = !{!"b3DynamicArray_b3ContactSpec", !94, i64 0, !6, i64 8, !6, i64 12}
!145 = !{!"b3GraphColor", !79, i64 0, !143, i64 16, !36, i64 32, !144, i64 48, !21, i64 64, !6, i64 72, !23, i64 80, !6, i64 88, !24, i64 96, !6, i64 104}
!146 = !{!145, !24, i64 96}
!147 = !{!"b3BodyState", !81, i64 0, !81, i64 12, !81, i64 24, !99, i64 36, !6, i64 52}
!148 = !{!147, !6, i64 52}
!149 = !{i32 -1056584962, i32 -970748493}
!150 = !{!30, !12, i64 12}
!151 = !{!87, !12, i64 4452}
!152 = !{!87, !12, i64 4444}
!153 = !{i32 -1056584962, i32 -238701951}
!154 = !{!87, !64, i64 4144}
!155 = !{!"p1 _ZTS18b3ArenaSharedState", !14, i64 0}
!156 = !{!"b3Arena", !34, i64 0, !6, i64 8, !6, i64 12, !155, i64 16}
!157 = !{!"p1 _ZTS11b3SensorHit", !14, i64 0}
!158 = !{!"b3DynamicArray_b3SensorHit", !157, i64 0, !6, i64 8, !6, i64 12}
!159 = !{!"b3TaskContext", !156, i64 0, !158, i64 24, !79, i64 40, !79, i64 56, !79, i64 72, !28, i64 88, !79, i64 96, !79, i64 112, !12, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !5, i64 160, !6, i64 1696, !5, i64 1700, !6, i64 3748, !5, i64 3752, !5, i64 3784}
!160 = !{!159, !28, i64 88}
!161 = !{!87, !12, i64 4440}
!162 = !{!129, !12, i64 36}
!163 = !{!129, !12, i64 40}
!164 = !{!101, !6, i64 56}
!165 = !{!79, !78, i64 0}
!166 = !{!80, !80, i64 0}
!167 = !{!"branch_weights", i32 1, i32 127}
!168 = !{!30, !22, i64 136}
!169 = !{!30, !21, i64 128}
!170 = !{!"b3WidePrepareSpan", !6, i64 0, !6, i64 4, !19, i64 8}
!171 = !{!170, !6, i64 0}
!172 = !{!170, !6, i64 4}
!173 = !{!170, !19, i64 8}
!174 = !{!6, !6, i64 0}
!175 = !{!98, !98, i64 0}
!176 = !{!5, !5, i64 0}
!177 = !{!30, !16, i64 64}
!178 = !{!145, !21, i64 64}
!179 = !{i32 -1056584962, i32 1492137945}
!180 = !{!145, !6, i64 56}
!181 = distinct !{!181, !93}
!182 = distinct !{!182, !93}
!183 = distinct !{!183, !93}
!184 = distinct !{!184, !93}
!185 = distinct !{!185, !93}
!186 = !{!23, !23, i64 0}
!187 = !{!95, !94, i64 8}
!188 = !{!"b3ContactSpec", !6, i64 0, !6, i64 4, !82, i64 8}
!189 = !{!188, !6, i64 0}
!190 = !{!101, !6, i64 80}
!191 = !{!188, !6, i64 4}
!192 = !{!126, !12, i64 300}
!193 = !{!126, !12, i64 304}
!194 = !{!126, !12, i64 280}
!195 = !{!126, !12, i64 284}
!196 = distinct !{!196, !93}
!197 = distinct !{!197, !93}
!198 = !{!87, !49, i64 3920}
!199 = !{!"b3DynamicArray_b3BodySim", !18, i64 0, !6, i64 8, !6, i64 12}
!200 = !{!"b3DynamicArray_b3BodyState", !17, i64 0, !6, i64 8, !6, i64 12}
!201 = !{!"p1 _ZTS11b3IslandSim", !14, i64 0}
!202 = !{!"b3DynamicArray_b3IslandSim", !201, i64 0, !6, i64 8, !6, i64 12}
!203 = !{!"b3SolverSet", !199, i64 0, !200, i64 16, !143, i64 32, !36, i64 48, !202, i64 64, !6, i64 80}
!204 = !{!203, !17, i64 16}
!205 = distinct !{!205, !93}
!206 = distinct !{!206, !93}
!207 = distinct !{!207, !93}
!208 = !{!108, !12, i64 160}
!209 = distinct !{!209, !93}
!210 = distinct !{!210, !93}
!211 = distinct !{!211, !93}
!212 = !{!108, !12, i64 156}
!213 = distinct !{!213, !93}
!214 = distinct !{!214, !93}
!215 = distinct !{!215, !93}
!216 = distinct !{!216, !93}
!217 = !{!"branch_weights", i32 134217473, i32 127}
!218 = !{i32 -1056584962, i32 901845932}
!219 = distinct !{!219, !93}
!220 = distinct !{!220, !93}
!221 = distinct !{!221, !93}
!222 = distinct !{!222, !93}
!223 = distinct !{!223, !93}
!224 = distinct !{!224, !93}
!225 = !{!101, !12, i64 192}
!226 = !{!101, !12, i64 196}
!227 = !{!120, !12, i64 252}
!228 = !{!120, !12, i64 256}
!229 = !{!120, !12, i64 260}
!230 = distinct !{!230, !93}
!231 = !{i32 -1056584962, i32 626594335}
!232 = !{i32 -1056584962, i32 476710063}
!233 = distinct !{!233, !93}
!234 = distinct !{!234, !93}
!235 = distinct !{!235, !93}
!236 = distinct !{!236, !93}
!237 = distinct !{!237, !93}
!238 = distinct !{!238, !93}
!239 = !{i32 -1056584962, i32 -300727642}
end_hunk_9
