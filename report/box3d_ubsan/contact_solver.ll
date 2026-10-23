Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@206 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1921, i32 10 } }
@207 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1921, i32 10 }, ptr @136, i8 3, i8 3 }
@208 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1928, i32 24 } }
@209 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1928, i32 24 }, ptr @136, i8 3, i8 3 }
@210 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1929, i32 54 }, ptr @8 }
@211 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1929, i32 37 } }
@212 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1929, i32 37 }, ptr @136, i8 3, i8 3 }
@213 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1935, i32 48 } }
@214 = private unnamed_addr constant { i16, i16, [77 x i8] } { i16 -1, i16 0, [77 x i8] c"'const b3ContactConstraintWide' (aka 'const struct b3ContactConstraintWide')\00" }
@215 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1936, i32 48 }, ptr @214, i8 4, i8 3 }
@216 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1949, i32 35 }, ptr @8 }
@217 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1953, i32 38 }, ptr @8 }
@218 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1959, i32 21 } }
@219 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1967, i32 8 }, ptr @42, i8 2, i8 3 }
@220 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1982, i32 57 } }
@221 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1987, i32 38 }, ptr @49, ptr @8 }
@222 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1987, i32 38 } }
@223 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1993, i32 21 } }
@224 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1993, i32 21 }, ptr @8, i8 2, i8 0 }
@225 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1994, i32 26 } }
@226 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1995, i32 21 }, ptr @25, i8 3, i8 3 }
@227 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1999, i32 39 } }
@228 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1933, i32 42 }, ptr @8 }
@229 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2023, i32 38 }, ptr @0, i8 3, i8 3 }
@230 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2024, i32 31 }, ptr @6, i8 3, i8 3 }
@231 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2024, i32 38 } }
@232 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2044, i32 38 }, ptr @0, i8 3, i8 3 }
@233 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2045, i32 31 }, ptr @6, i8 3, i8 3 }
@234 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2045, i32 38 } }
@235 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2065, i32 38 }, ptr @0, i8 3, i8 3 }
@236 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2066, i32 31 }, ptr @6, i8 3, i8 3 }
@237 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2066, i32 38 } }
@238 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2086, i32 38 }, ptr @0, i8 3, i8 3 }
@239 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2087, i32 31 }, ptr @6, i8 3, i8 3 }
@240 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2087, i32 38 } }
@241 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2107, i32 38 }, ptr @0, i8 3, i8 3 }
@242 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 2108, i32 31 }, ptr @6, i8 3, i8 3 }
@243 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 2108, i32 38 } }
@.src.3 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/bitset.h\00", align 1
@244 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 0, i16 12, [33 x i8] c"'uint64_t' (aka 'unsigned long')\00" }
@245 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.3, i32 31, i32 2 } }
@246 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 31, i32 2 }, ptr @244, i8 3, i8 1 }
@247 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 19 }, ptr @8, i8 2, i8 0 }
@248 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 63 }, ptr @8 }
@249 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 45 } }
@250 = private unnamed_addr constant { i16, i16, [53 x i8] } { i16 -1, i16 0, [53 x i8] c"'const b3BodyState' (aka 'const struct b3BodyState')\00" }
@251 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 45 }, ptr @250, i8 2, i8 0 }
@252 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 19 } }
@253 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 52 } }
@254 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 63 }, ptr @8 }
@255 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 45 } }
@256 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 45 }, ptr @250, i8 2, i8 0 }
@257 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 19 } }
@258 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 52 } }
@259 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 63 }, ptr @8 }
@260 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 45 } }
@261 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 45 }, ptr @250, i8 2, i8 0 }
@262 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 19 } }
@263 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 52 } }
@264 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 63 }, ptr @8 }
@265 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 45 } }
@266 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1031, i32 45 }, ptr @250, i8 2, i8 0 }
@267 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'const b3BodyStateW' (aka 'const struct b3BodyStateW')\00" }
@268 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1056, i32 45 }, ptr @267, i8 4, i8 3 }
@269 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 7 }, ptr @8, i8 2, i8 0 }
@270 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 46 }, ptr @8 }
@271 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 28 } }
@272 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 28 }, ptr @31, i8 2, i8 3 }
@273 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 7 } }
@274 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 35 } }
@275 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 46 }, ptr @8 }
@276 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 28 } }
@277 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1090, i32 28 }, ptr @31, i8 2, i8 3 }
@278 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 7 } }
@279 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 35 } }
@280 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 46 }, ptr @8 }
@281 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 28 } }
@282 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 28 }, ptr @31, i8 2, i8 3 }
@283 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 7 } }
@284 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 35 } }
@285 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 46 }, ptr @8 }
@286 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 28 } }
@287 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 28 }, ptr @31, i8 2, i8 3 }

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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.m) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4764
  %i.r = load i8, ptr %i.q, align 4, !tbaa !88    ; 3 uses
  %i.s = icmp ult i8 %i.r, 2
  br i1 %i.s, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.t = zext i8 %i.r to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @5, i64 %i.t) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.u = trunc nuw i8 %i.r to i1
  %i.v = select i1 %i.u, float 1.000000e+00, float 0.000000e+00 ; 6 uses
  %i.w = tail call float @b3GetLengthUnitsPerMeter() #12
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.ag, i64 %i.ah) #11, !nosanitize !10
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
  %.not6340 = icmp eq ptr %.0.fr, null
  br i1 %.not6340, label %.split4841.us, label %.preheader1085.split.preheader, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.ar = and i64 %0, 4294967295
  %i.as = and i64 %.sroa.21037.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @9, i64 %i.ar, i64 %i.as) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1085.split:                             ; preds = %bb.n
  %indvars.iv.next10076 = add nuw nsw i64 %indvars.iv1007514050, 1
  %i.at = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aw, i32 1), !nosanitize !10 ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0, !nosanitize !10
  %i.av = extractvalue { i32, i1 } %i.at, 1, !nosanitize !10
  br i1 %i.av, label %.split.us, label %.preheader1085.split.preheader, !prof !92, !llvm.loop !181, !nosanitize !10

.split.us:                                        ; preds = %.preheader1085.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @10, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1085.split.preheader:                   ; preds = %.preheader1085, %.preheader1085.split
  %i.aw = phi i32 [ %i.au, %.preheader1085.split ], [ 1, %.preheader1085 ] ; 3 uses
  %indvars.iv1007514050 = phi i64 [ %indvars.iv.next10076, %.preheader1085.split ], [ 0, %.preheader1085 ] ; 2 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @11, i64 %i.aq, i64 %.us-phi4843) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %.preheader1085.split.preheader
  %i.bb = ptrtoint ptr %i.ay to i64, !nosanitize !10 ; 2 uses
  %i.bc = and i64 %i.bb, 7, !nosanitize !10
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !10
  br i1 %i.bd, label %bb.n, label %.split4845, !prof !11, !nosanitize !10

.split4845:                                       ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.bb) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.ay, align 8, !tbaa !96
  %.not588 = icmp sgt i32 %i.be, %.sroa.01036.0.extract.trunc
  br i1 %.not588, label %.preheader, label %.preheader1085.split, !llvm.loop !181

.preheader:                                       ; preds = %bb.n
  %i.bf = icmp sgt i32 %i.ao, %.sroa.01036.0.extract.trunc
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
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
  br label %bb.o

.loopexit:                                        ; preds = %._crit_edge4864.us, %bb.t
  %.1.lcssa = phi i32 [ %.05446339, %bb.t ], [ %i.cg, %._crit_edge4864.us ] ; 2 uses
  %7 = icmp slt i32 %.1.lcssa, %i.ao
  br i1 %7, label %bb.o, label %._crit_edge, !llvm.loop !182

bb.o:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv10080 = phi i64 [ %indvars.iv1007514050, %.lr.ph ], [ %indvars.iv.next10081, %.loopexit ] ; 4 uses
  %.05446339 = phi i32 [ %.sroa.01036.0.extract.trunc, %.lr.ph ], [ %.1.lcssa, %.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.0.fr, i64 %indvars.iv10080 ; 3 uses
  %i.bs = shl nuw nsw i64 %indvars.iv10080, 4
  %i.bt = add i64 %i.bs, %i.aq, !nosanitize !10   ; 2 uses
  %.not6341 = icmp ult i64 %i.bt, %i.aq, !nosanitize !10
  br i1 %.not6341, label %8, label %bb.p, !prof !89, !nosanitize !10

8:                                                ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @14, i64 %i.aq, i64 %i.bt) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.bu = ptrtoint ptr %i.br to i64, !nosanitize !10 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !nosanitize !10
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !10
  br i1 %i.bw, label %bb.q, label %9, !prof !11, !nosanitize !10

9:                                                ; preds = %bb.p
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.bu) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !96 ; 3 uses
  %indvars.iv.next10081 = add nuw nsw i64 %indvars.iv10080, 1 ; 3 uses
  %exitcond10083 = icmp eq i64 %indvars.iv10080, 2147483647
  br i1 %exitcond10083, label %10, label %bb.r, !prof !89, !nosanitize !10

10:                                               ; preds = %bb.q
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @16, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %sext = shl i64 %indvars.iv.next10081, 32       ; 2 uses
  %i.by = ashr exact i64 %sext, 28
  %i.bz = getelementptr inbounds i8, ptr %.0.fr, i64 %i.by ; 2 uses
  %i.ca = ashr exact i64 %sext, 28
  %i.cb = add i64 %i.ca, %i.aq, !nosanitize !10   ; 3 uses
  %11 = icmp ne i64 %i.cb, 0
  %12 = icmp uge i64 %i.cb, %i.aq, !nosanitize !10
  %13 = and i64 %indvars.iv.next10081, 2147483648
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, %12
  %16 = and i1 %11, %15, !nosanitize !10
  br i1 %16, label %bb.s, label %17, !prof !11, !nosanitize !10

17:                                               ; preds = %bb.r
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 %i.aq, i64 %i.cb) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.r
  %i.cc = ptrtoint ptr %i.bz to i64, !nosanitize !10 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !nosanitize !10
  %i.ce = icmp eq i64 %i.cd, 0, !nosanitize !10
  br i1 %i.ce, label %bb.t, label %18, !prof !11, !nosanitize !10

18:                                               ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @18, i64 %i.cc) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.cf = load i32, ptr %i.bz, align 8, !tbaa !96
  %i.cg = tail call noundef i32 @llvm.smin.i32(i32 %i.cf, i32 %i.ao) ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !187
  %.fr6342 = freeze ptr %i.ci                     ; 3 uses
  %i.cj = icmp slt i32 %.05446339, %i.cg
  br i1 %i.cj, label %.lr.ph4867, label %.loopexit

.lr.ph4867:                                       ; preds = %bb.t
  %i.ck = ptrtoint ptr %.fr6342 to i64            ; 4 uses
  %.not6343 = icmp eq ptr %.fr6342, null
  %i.cl = sext i32 %.05446339 to i64              ; 2 uses
  br i1 %.not6343, label %.lr.ph4867.split.us, label %.lr.ph4867.split.split.us.preheader, !prof !89

.lr.ph4867.split.us:                              ; preds = %.lr.ph4867
  %19 = mul nsw i64 %i.cl, 168
  %20 = add i64 %19, %i.bg, !nosanitize !10       ; 3 uses
  %21 = icmp eq i64 %20, 0
  %22 = xor i1 %i.bh, %21
  %23 = icmp uge i64 %20, %i.bg, !nosanitize !10
  %24 = icmp slt i32 %.05446339, 0
  %25 = xor i1 %24, %23
  %26 = and i1 %22, %25, !nosanitize !10
  br i1 %26, label %27, label %.split4870.us, !prof !11, !nosanitize !10

27:                                               ; preds = %.lr.ph4867.split.us
  %28 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.05446339, i32 %i.bx), !nosanitize !10 ; 2 uses
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !10
  br i1 %29, label %.split4874.us, label %30, !prof !89, !nosanitize !10

30:                                               ; preds = %27
  %31 = extractvalue { i32, i1 } %28, 0, !nosanitize !10 ; 2 uses
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, 12                       ; 2 uses
  %34 = icmp eq i32 %31, 0
  %35 = icmp uge i64 %33, %i.ck, !nosanitize !10
  %36 = and i1 %34, %35
  br i1 %36, label %.split4882, label %.split4878.us, !prof !11, !nosanitize !10

.lr.ph4867.split.split.us.preheader:              ; preds = %.lr.ph4867
  %i.cm = sext i32 %i.cg to i64
  br label %.lr.ph4867.split.split.us

.lr.ph4867.split.split.us:                        ; preds = %.lr.ph4867.split.split.us.preheader, %._crit_edge4864.us
  %indvars.iv10071 = phi i64 [ %i.cl, %.lr.ph4867.split.split.us.preheader ], [ %indvars.iv.next10072, %._crit_edge4864.us ] ; 5 uses
  %i.cn = getelementptr inbounds [168 x i8], ptr %.0543, i64 %indvars.iv10071 ; 25 uses
  %i.co = mul nsw i64 %indvars.iv10071, 168
  %i.cp = add i64 %i.co, %i.bg, !nosanitize !10   ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = xor i1 %i.bh, %i.cq
  %i.cs = icmp uge i64 %i.cp, %i.bg, !nosanitize !10
  %i.ct = icmp slt i64 %indvars.iv10071, 0
  %i.cu = xor i1 %i.ct, %i.cs
  %i.cv = and i1 %i.cr, %i.cu, !nosanitize !10
  br i1 %i.cv, label %bb.u, label %.split4870.us, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %.lr.ph4867.split.split.us
  %i.cw = trunc nsw i64 %indvars.iv10071 to i32   ; 2 uses
  %i.cx = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cw, i32 %i.bx), !nosanitize !10 ; 2 uses
  %i.cy = extractvalue { i32, i1 } %i.cx, 1, !nosanitize !10
  br i1 %i.cy, label %.split4874.us, label %bb.v, !prof !89, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.cz = extractvalue { i32, i1 } %i.cx, 0, !nosanitize !10 ; 2 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds [12 x i8], ptr %.fr6342, i64 %i.da ; 3 uses
  %i.dc = mul nsw i64 %i.da, 12
  %i.dd = add i64 %i.dc, %i.ck, !nosanitize !10   ; 3 uses
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = icmp uge i64 %i.dd, %i.ck, !nosanitize !10
  %i.dg = icmp slt i32 %i.cz, 0
  %i.dh = xor i1 %i.dg, %i.df
  %i.di = and i1 %i.de, %i.dh, !nosanitize !10
  br i1 %i.di, label %bb.w, label %.split4878.us, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  %i.dj = ptrtoint ptr %i.db to i64, !nosanitize !10 ; 2 uses
  %i.dk = and i64 %i.dj, 3, !nosanitize !10
  %i.dl = icmp eq i64 %i.dk, 0, !nosanitize !10
  br i1 %i.dl, label %bb.x, label %.split4882, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.dm = load i32, ptr %i.db, align 4, !tbaa !189 ; 2 uses
  %i.dn = load ptr, ptr %i.bi, align 8, !tbaa !97 ; 3 uses
  %i.do = sext i32 %i.dm to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [216 x i8], ptr %i.dn, i64 %i.do ; 11 uses
  %i.dq = mul nsw i64 %i.do, 216
  %i.dr = ptrtoint ptr %i.dn to i64, !nosanitize !10 ; 3 uses
  %i.ds = add i64 %i.dq, %i.dr, !nosanitize !10   ; 3 uses
  %i.dt = icmp ne ptr %i.dn, null, !nosanitize !10 ; 2 uses
  %i.du = icmp eq i64 %i.ds, 0
  %i.dv = xor i1 %i.dt, %i.du
  %i.dw = icmp uge i64 %i.ds, %i.dr, !nosanitize !10
  %i.dx = icmp slt i32 %i.dm, 0
  %i.dy = xor i1 %i.dx, %i.dw
  %i.dz = and i1 %i.dv, %i.dy, !nosanitize !10
  br i1 %i.dz, label %bb.y, label %.split5445.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  %i.ea = ptrtoint ptr %i.dp to i64, !nosanitize !10 ; 2 uses
  %i.eb = and i64 %i.ea, 7, !nosanitize !10
  %i.ec = icmp eq i64 %i.eb, 0, !nosanitize !10
  %i.ed = and i1 %i.dt, %i.ec
  br i1 %i.ed, label %bb.z, label %.split5449.us, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 60
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !102 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !103 ; 4 uses
  %i.ei = icmp eq i32 %i.ef, -1
  br i1 %i.ei, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = sext i32 %i.ef to i64                   ; 4 uses
  %i.ek = getelementptr inbounds [216 x i8], ptr %i.i, i64 %i.ej ; 8 uses
  %i.el = mul nsw i64 %i.ej, 216
  %i.em = add i64 %i.el, %i.bj, !nosanitize !10   ; 3 uses
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = xor i1 %i.bk, %i.en
  %i.ep = icmp uge i64 %i.em, %i.bj, !nosanitize !10
  %i.eq = icmp slt i32 %i.ef, 0                   ; 2 uses
  %i.er = xor i1 %i.eq, %i.ep
  %i.es = and i1 %i.eo, %i.er, !nosanitize !10
  br i1 %i.es, label %bb.ab, label %.split5458.us, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.et = ptrtoint ptr %i.ek to i64, !nosanitize !10 ; 2 uses
  %i.eu = and i64 %i.et, 3, !nosanitize !10
  %i.ev = icmp eq i64 %i.eu, 0, !nosanitize !10
  %i.ew = and i1 %i.bk, %i.ev
  br i1 %i.ew, label %bb.ac, label %.split5462.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 104
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !106
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %.sroa.15959.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ek, i64 152
  %.sroa.15959.0.copyload960.us = load float, ptr %.sroa.15959.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.19970.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ek, i64 156
  %.sroa.27992.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ek, i64 164
  %.sroa.27992.0.copyload993.us = load float, ptr %.sroa.27992.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.311003.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ek, i64 168
  %i.fa = load <2 x float>, ptr %i.ez, align 4, !tbaa !107 ; 2 uses
  %i.fb = load <2 x float>, ptr %.sroa.19970.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %i.fc = load <2 x float>, ptr %.sroa.311003.0..sroa_idx.us, align 4, !tbaa !107
  %.sroa.391025.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ek, i64 176
  %.sroa.391025.0.copyload1026.us = load float, ptr %.sroa.391025.0..sroa_idx.us, align 4, !tbaa !107
  %i.fd = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.ej ; 5 uses
  %i.fe = mul nsw i64 %i.ej, 56
  %i.ff = add i64 %i.fe, %i.bl, !nosanitize !10   ; 3 uses
  %i.fg = icmp eq i64 %i.ff, 0
  %i.fh = xor i1 %i.bm, %i.fg
  %i.fi = icmp uge i64 %i.ff, %i.bl, !nosanitize !10
  %i.fj = xor i1 %i.eq, %i.fi
  %i.fk = and i1 %i.fh, %i.fj, !nosanitize !10
  br i1 %i.fk, label %bb.ad, label %.split5471.us, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  %i.fl = ptrtoint ptr %i.fd to i64, !nosanitize !10 ; 2 uses
  %i.fm = and i64 %i.fl, 3, !nosanitize !10
  %i.fn = icmp eq i64 %i.fm, 0, !nosanitize !10
  %i.fo = and i1 %i.bm, %i.fn
  br i1 %i.fo, label %bb.ae, label %.split5475.us, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %.sroa.5452.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.5452.0.copyload453.us = load float, ptr %.sroa.5452.0..sroa_idx.us, align 4, !tbaa !107
  %.sroa.0450.0.copyload451.us = load <2 x float>, ptr %i.fd, align 4, !tbaa !107
  %.sroa.0446.0.copyload447.us = load <2 x float>, ptr %i.fp, align 4, !tbaa !107
  %.sroa.5448.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %.sroa.5448.0.copyload449.us = load float, ptr %.sroa.5448.0..sroa_idx.us, align 4, !tbaa !107
  %i.fq = shufflevector <2 x float> %i.fb, <2 x float> %i.fa, <2 x i32> <i32 0, i32 3>
  %i.fr = shufflevector <2 x float> %i.fa, <2 x float> %i.fb, <2 x i32> <i32 0, i32 3>
  %i.fs = insertelement <2 x float> poison, float %.sroa.15959.0.copyload960.us, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %.sroa.27992.0.copyload993.us, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %.sroa.15959.0.us = phi float [ %.sroa.15959.0.copyload960.us, %bb.ae ], [ 0.000000e+00, %bb.z ] ; 4 uses
  %.sroa.27992.0.us = phi float [ %.sroa.27992.0.copyload993.us, %bb.ae ], [ 0.000000e+00, %bb.z ] ; 4 uses
  %.sroa.391025.0.us = phi float [ %.sroa.391025.0.copyload1026.us, %bb.ae ], [ 0.000000e+00, %bb.z ] ; 5 uses
  %.sroa.0446.0.us = phi <2 x float> [ %.sroa.0446.0.copyload447.us, %bb.ae ], [ zeroinitializer, %bb.z ] ; 2 uses
  %.sroa.5448.0.us = phi float [ %.sroa.5448.0.copyload449.us, %bb.ae ], [ 0.000000e+00, %bb.z ]
  %.sroa.0450.0.us = phi <2 x float> [ %.sroa.0450.0.copyload451.us, %bb.ae ], [ zeroinitializer, %bb.z ]
  %.sroa.5452.0.us = phi float [ %.sroa.5452.0.copyload453.us, %bb.ae ], [ 0.000000e+00, %bb.z ]
  %.0547.us = phi float [ %i.ey, %bb.ae ], [ 0.000000e+00, %bb.z ] ; 3 uses
  %i.fu = phi <2 x float> [ %i.fc, %bb.ae ], [ zeroinitializer, %bb.z ] ; 6 uses
  %i.fv = phi <2 x float> [ %i.fq, %bb.ae ], [ zeroinitializer, %bb.z ] ; 6 uses
  %i.fw = phi <2 x float> [ %i.fr, %bb.ae ], [ zeroinitializer, %bb.z ] ; 6 uses
  %i.fx = phi <2 x float> [ %i.ft, %bb.ae ], [ zeroinitializer, %bb.z ]
  %i.fy = icmp eq i32 %i.eh, -1
  br i1 %i.fy, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = sext i32 %i.eh to i64                   ; 4 uses
  %i.ga = getelementptr inbounds [216 x i8], ptr %i.i, i64 %i.fz ; 8 uses
  %i.gb = mul nsw i64 %i.fz, 216
  %i.gc = add i64 %i.gb, %i.bj, !nosanitize !10   ; 3 uses
  %i.gd = icmp eq i64 %i.gc, 0
  %i.ge = xor i1 %i.bk, %i.gd
  %i.gf = icmp uge i64 %i.gc, %i.bj, !nosanitize !10
  %i.gg = icmp slt i32 %i.eh, 0                   ; 2 uses
  %i.gh = xor i1 %i.gg, %i.gf
  %i.gi = and i1 %i.ge, %i.gh, !nosanitize !10
  br i1 %i.gi, label %bb.ah, label %.split5481.us, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %bb.ag
  %i.gj = ptrtoint ptr %i.ga to i64, !nosanitize !10 ; 2 uses
  %i.gk = and i64 %i.gj, 3, !nosanitize !10
  %i.gl = icmp eq i64 %i.gk, 0, !nosanitize !10
  %i.gm = and i1 %i.bk, %i.gl
  br i1 %i.gm, label %bb.ai, label %.split5485.us, !prof !11, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 104
  %i.go = load float, ptr %i.gn, align 4, !tbaa !106
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ga, i64 144
  %.sroa.15.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ga, i64 152
  %.sroa.15.0.copyload870.us = load float, ptr %.sroa.15.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.19.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ga, i64 156
  %.sroa.27.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ga, i64 164
  %.sroa.27.0.copyload900.us = load float, ptr %.sroa.27.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.31.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  %i.gq = load <2 x float>, ptr %i.gp, align 4, !tbaa !107 ; 2 uses
  %i.gr = load <2 x float>, ptr %.sroa.19.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %i.gs = load <2 x float>, ptr %.sroa.31.0..sroa_idx.us, align 4, !tbaa !107
  %.sroa.39.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ga, i64 176
  %.sroa.39.0.copyload930.us = load float, ptr %.sroa.39.0..sroa_idx.us, align 4, !tbaa !107
  %i.gt = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.fz ; 5 uses
  %i.gu = mul nsw i64 %i.fz, 56
  %i.gv = add i64 %i.gu, %i.bl, !nosanitize !10   ; 3 uses
  %i.gw = icmp eq i64 %i.gv, 0
  %i.gx = xor i1 %i.bm, %i.gw
  %i.gy = icmp uge i64 %i.gv, %i.bl, !nosanitize !10
  %i.gz = xor i1 %i.gg, %i.gy
  %i.ha = and i1 %i.gx, %i.gz, !nosanitize !10
  br i1 %i.ha, label %bb.aj, label %.split5494.us, !prof !11, !nosanitize !10

bb.aj:                                            ; preds = %bb.ai
  %i.hb = ptrtoint ptr %i.gt to i64, !nosanitize !10 ; 2 uses
  %i.hc = and i64 %i.hb, 3, !nosanitize !10
  %i.hd = icmp eq i64 %i.hc, 0, !nosanitize !10
  %i.he = and i1 %i.bm, %i.hd
  br i1 %i.he, label %bb.ak, label %.split5498.us, !prof !11, !nosanitize !10

bb.ak:                                            ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %.sroa.5436.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.5436.0.copyload437.us = load float, ptr %.sroa.5436.0..sroa_idx.us, align 4, !tbaa !107
  %.sroa.0434.0.copyload435.us = load <2 x float>, ptr %i.gt, align 4, !tbaa !107
  %.sroa.0430.0.copyload431.us = load <2 x float>, ptr %i.hf, align 4, !tbaa !107
  %.sroa.5432.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %.sroa.5432.0.copyload433.us = load float, ptr %.sroa.5432.0..sroa_idx.us, align 4, !tbaa !107
  %i.hg = shufflevector <2 x float> %i.gr, <2 x float> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.hh = shufflevector <2 x float> %i.gq, <2 x float> %i.gr, <2 x i32> <i32 0, i32 3>
  %i.hi = insertelement <2 x float> poison, float %.sroa.15.0.copyload870.us, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %.sroa.27.0.copyload900.us, i64 1
  br label %bb.al

bb.al:                                            ; preds = %bb.af, %bb.ak
  %.sroa.27.0.us = phi float [ %.sroa.27.0.copyload900.us, %bb.ak ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %.sroa.15.0.us = phi float [ %.sroa.15.0.copyload870.us, %bb.ak ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %.sroa.39.0.us = phi float [ %.sroa.39.0.copyload930.us, %bb.ak ], [ 0.000000e+00, %bb.af ] ; 4 uses
  %.sroa.0430.0.us = phi <2 x float> [ %.sroa.0430.0.copyload431.us, %bb.ak ], [ zeroinitializer, %bb.af ] ; 3 uses
  %.sroa.5432.0.us = phi float [ %.sroa.5432.0.copyload433.us, %bb.ak ], [ 0.000000e+00, %bb.af ]
  %.sroa.0434.0.us = phi <2 x float> [ %.sroa.0434.0.copyload435.us, %bb.ak ], [ zeroinitializer, %bb.af ] ; 2 uses
  %.sroa.5436.0.us = phi float [ %.sroa.5436.0.copyload437.us, %bb.ak ], [ 0.000000e+00, %bb.af ]
  %.0548.us = phi float [ %i.go, %bb.ak ], [ 0.000000e+00, %bb.af ] ; 3 uses
  %i.hk = phi <2 x float> [ %i.gs, %bb.ak ], [ zeroinitializer, %bb.af ] ; 5 uses
  %i.hl = phi <2 x float> [ %i.hg, %bb.ak ], [ zeroinitializer, %bb.af ] ; 5 uses
  %i.hm = phi <2 x float> [ %i.hh, %bb.ak ], [ zeroinitializer, %bb.af ] ; 6 uses
  %i.hn = phi <2 x float> [ %i.hj, %bb.ak ], [ zeroinitializer, %bb.af ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !190 ; 3 uses
  %i.hq = ptrtoint ptr %i.cn to i64, !nosanitize !10 ; 2 uses
  %i.hr = and i64 %i.hq, 7, !nosanitize !10
  %i.hs = icmp eq i64 %i.hr, 0, !nosanitize !10
  %i.ht = and i1 %i.bh, %i.hs
  br i1 %i.ht, label %bb.am, label %.split5507.us, !prof !11, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.dp, ptr %i.hu, align 8, !tbaa !109
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cn, i64 164
  store i32 %i.hp, ptr %i.hv, align 4, !tbaa !110
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 %i.ef, ptr %i.hw, align 8, !tbaa !111
  %i.hx = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  store i32 %i.eh, ptr %i.hx, align 4, !tbaa !112
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.hz = extractelement <2 x float> %i.fw, i64 0 ; 2 uses
  store float %i.hz, ptr %i.hy, align 8, !tbaa !107
  %.sroa.11948.0..sroa_idx950.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 36
  %i.ia = extractelement <2 x float> %i.fv, i64 1 ; 2 uses
  store float %i.ia, ptr %.sroa.11948.0..sroa_idx950.us, align 4, !tbaa !107
  %.sroa.15959.0..sroa_idx961.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store float %.sroa.15959.0.us, ptr %.sroa.15959.0..sroa_idx961.us, align 8, !tbaa !107
  %.sroa.19970.0..sroa_idx972.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.ib = extractelement <2 x float> %i.fv, i64 0 ; 2 uses
  store float %i.ib, ptr %.sroa.19970.0..sroa_idx972.us, align 4, !tbaa !107
  %.sroa.23981.0..sroa_idx983.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.ic = extractelement <2 x float> %i.fw, i64 1 ; 2 uses
  store float %i.ic, ptr %.sroa.23981.0..sroa_idx983.us, align 8, !tbaa !107
  %.sroa.27992.0..sroa_idx994.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 52
  store float %.sroa.27992.0.us, ptr %.sroa.27992.0..sroa_idx994.us, align 4, !tbaa !107
  %.sroa.311003.0..sroa_idx1005.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  store <2 x float> %i.fu, ptr %.sroa.311003.0..sroa_idx1005.us, align 8, !tbaa !107
  %.sroa.391025.0..sroa_idx1027.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  store float %.sroa.391025.0.us, ptr %.sroa.391025.0..sroa_idx1027.us, align 8, !tbaa !107
  %i.id = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store float %.0547.us, ptr %i.id, align 8, !tbaa !113
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cn, i64 68
  %i.if = shufflevector <2 x float> %i.hm, <2 x float> %i.hl, <4 x i32> <i32 0, i32 3, i32 poison, i32 2> ; 2 uses
  %i.ig = insertelement <4 x float> %i.if, float %.sroa.15.0.us, i64 2
  store <4 x float> %i.ig, ptr %i.ie, align 4, !tbaa !107
  %.sroa.23.0..sroa_idx891.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 84
  %i.ih = shufflevector <2 x float> %i.hm, <2 x float> %i.hk, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.ii = insertelement <4 x float> %i.ih, float %.sroa.27.0.us, i64 1
  store <4 x float> %i.ii, ptr %.sroa.23.0..sroa_idx891.us, align 4, !tbaa !107
  %.sroa.39.0..sroa_idx931.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  store float %.sroa.39.0.us, ptr %.sroa.39.0..sroa_idx931.us, align 4, !tbaa !107
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  store float %.0548.us, ptr %i.ij, align 4, !tbaa !114
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cn, i64 116
  %i.il = fadd <2 x float> %i.fw, %i.hm           ; 7 uses
  %i.im = fadd <2 x float> %i.fv, %i.hl           ; 6 uses
  %i.in = fadd <2 x float> %i.fx, %i.hn           ; 7 uses
  %i.io = fadd <2 x float> %i.fu, %i.hk           ; 6 uses
  %i.ip = extractelement <2 x float> %i.il, i64 1 ; 3 uses
  %i.iq = extractelement <2 x float> %i.io, i64 1 ; 2 uses
  %i.ir = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.is = extractelement <2 x float> %i.io, i64 0 ; 2 uses
  %i.it = fmul float %i.ir, %i.is
  %i.iu = extractelement <2 x float> %i.im, i64 0 ; 3 uses
  %i.iv = fmul float %i.iu, %i.iq
  %i.iw = fmul float %i.ip, %i.is
  %i.ix = fsub float %i.iv, %i.iw                 ; 2 uses
  %i.iy = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  %i.iz = extractelement <2 x float> %i.im, i64 1 ; 2 uses
  %i.ja = extractelement <2 x float> %i.in, i64 0
  %i.jb = fmul float %i.ja, %i.ix
  %i.jc = fadd float %.sroa.391025.0.us, %.sroa.39.0.us ; 5 uses
  %i.jd = fmul float %i.ip, %i.jc
  %i.je = fmul float %i.ir, %i.iq
  %i.jf = fsub float %i.jd, %i.je                 ; 2 uses
  %i.jg = fmul float %i.iu, %i.jc
  %i.jh = fsub float %i.it, %i.jg                 ; 2 uses
  %i.ji = fmul float %i.iy, %i.jf
  %i.jj = fmul float %i.iz, %i.jh
  %i.jk = fadd float %i.ji, %i.jj
  %i.jl = fadd float %i.jb, %i.jk                 ; 2 uses
  %i.jm = tail call float @llvm.fabs.f32(float %i.jl)
  %i.jn = fcmp ogt float %i.jm, f0x057A0000
  br i1 %i.jn, label %bb.an, label %b3InvertMatrix.exit.us

bb.an:                                            ; preds = %bb.am
  %i.jo = fdiv float 1.000000e+00, %i.jl          ; 2 uses
  %i.jp = shufflevector <2 x float> %i.io, <2 x float> %i.im, <2 x i32> <i32 1, i32 3>
  %i.jq = fmul <2 x float> %i.in, %i.jp
  %i.jr = shufflevector <2 x float> %i.im, <2 x float> %i.il, <2 x i32> <i32 1, i32 3>
  %i.js = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jt = insertelement <2 x float> %i.js, float %i.jc, i64 0
  %i.ju = fmul <2 x float> %i.jr, %i.jt
  %i.jv = fsub <2 x float> %i.jq, %i.ju
  %i.jw = shufflevector <2 x float> %i.il, <2 x float> %i.im, <4 x i32> <i32 0, i32 2, i32 poison, i32 3>
  %i.jx = insertelement <4 x float> %i.jw, float %i.ix, i64 2
  %i.jy = shufflevector <2 x float> %i.in, <2 x float> %i.io, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.jz = insertelement <4 x float> %i.jy, float 1.000000e+00, i64 2
  %i.ka = insertelement <4 x float> %i.jz, float %i.jc, i64 0
  %i.kb = fmul <4 x float> %i.jx, %i.ka
  %i.kc = shufflevector <2 x float> %i.in, <2 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.kd = insertelement <4 x float> %i.kc, float 0.000000e+00, i64 2
  %i.ke = shufflevector <2 x float> %i.io, <2 x float> %i.il, <4 x i32> <i32 0, i32 2, i32 poison, i32 1>
  %i.kf = insertelement <4 x float> %i.ke, float 1.000000e+00, i64 2
  %i.kg = fmul <4 x float> %i.kd, %i.kf
  %i.kh = fsub <4 x float> %i.kb, %i.kg
  %i.ki = fmul float %i.ip, %i.iy
  %i.kj = fmul float %i.iu, %i.iz
  %i.kk = fsub float %i.ki, %i.kj
  %i.kl = insertelement <4 x float> poison, float %i.jo, i64 0 ; 2 uses
  %i.km = shufflevector <2 x float> %i.jv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kn = shufflevector <4 x float> %i.kl, <4 x float> %i.km, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.ko = insertelement <4 x float> %i.kn, float %i.jh, i64 3
  %i.kp = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.kq = shufflevector <4 x float> %i.kp, <4 x float> %i.kn, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.kr = fmul <4 x float> %i.ko, %i.kq
  %i.ks = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kt = fmul <4 x float> %i.kh, %i.ks
  %i.ku = fmul float %i.kk, %i.jo
  br label %b3InvertMatrix.exit.us

b3InvertMatrix.exit.us:                           ; preds = %bb.an, %bb.am
  %.sroa.12850.0.us = phi float [ %i.ku, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.kv = phi <4 x float> [ %i.kr, %bb.an ], [ zeroinitializer, %bb.am ]
  %i.kw = phi <4 x float> [ %i.kt, %bb.an ], [ zeroinitializer, %bb.am ]
  store <4 x float> %i.kv, ptr %i.ik, align 4, !tbaa !107
  %.sroa.8846.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 132
  store <4 x float> %i.kw, ptr %.sroa.8846.0..sroa_idx.us, align 4, !tbaa !107
  %.sroa.12850.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 148
  store float %.sroa.12850.0.us, ptr %.sroa.12850.0..sroa_idx.us, align 4, !tbaa !107
  %i.kx = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.ky = getelementptr inbounds nuw i8, ptr %i.dp, i64 68
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !115
  %i.la = and i32 %i.kz, 8
  %.not589.us = icmp eq i32 %i.la, 0
  %.sink.v = select i1 %.not589.us, i64 20, i64 32
  %.sink = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kx, ptr noundef nonnull align 4 dereferenceable(12) %.sink, i64 12, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.dp, i64 144
  %i.lc = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  %i.ld = load float, ptr %i.lb, align 8, !tbaa !116
  store float %i.ld, ptr %i.lc, align 8, !tbaa !117
  %i.le = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  %i.lf = getelementptr inbounds nuw i8, ptr %i.cn, i64 156
  %i.lg = load <2 x float>, ptr %i.le, align 8, !tbaa !107
  store <2 x float> %i.lg, ptr %i.lf, align 4, !tbaa !107
  %i.lh = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !191 ; 2 uses
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [308 x i8], ptr %.0542, i64 %i.lj ; 3 uses
  %i.ll = mul nsw i64 %i.lj, 308
  %i.lm = add i64 %i.ll, %i.bn, !nosanitize !10   ; 3 uses
  %i.ln = icmp eq i64 %i.lm, 0
  %i.lo = xor i1 %i.bo, %i.ln
  %i.lp = icmp uge i64 %i.lm, %i.bn, !nosanitize !10
  %i.lq = icmp slt i32 %i.li, 0
  %i.lr = xor i1 %i.lq, %i.lp
  %i.ls = and i1 %i.lo, %i.lr, !nosanitize !10
  br i1 %i.ls, label %bb.ao, label %.split5570.us, !prof !11, !nosanitize !10

bb.ao:                                            ; preds = %b3InvertMatrix.exit.us
  store ptr %i.lk, ptr %i.cn, align 8, !tbaa !118
  %i.lt = icmp sgt i32 %i.hp, 0
  br i1 %i.lt, label %.lr.ph4863.us, label %._crit_edge4864.us

.lr.ph4863.us:                                    ; preds = %bb.ao
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.lv = ptrtoint ptr %i.lk to i64               ; 3 uses
  %.sroa.2357.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dp, i64 208 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.dp, i64 200 ; 2 uses
  %i.lx = fadd float %.0547.us, %.0548.us         ; 3 uses
  %.sroa.09.0.vec.extract.i672.us = extractelement <2 x float> %.sroa.0430.0.us, i64 0
  %.sroa.09.0.vec.extract.i656.us = extractelement <2 x float> %.sroa.0446.0.us, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i652.us = extractelement <2 x float> %.sroa.0446.0.us, i64 1 ; 2 uses
  %.sroa.07.0.vec.extract.i676.us = extractelement <2 x float> %.sroa.0434.0.us, i64 0
  %.sroa.07.4.vec.extract.i678.us = extractelement <2 x float> %.sroa.0434.0.us, i64 1
  %wide.trip.count10069 = zext nneg i32 %i.hp to i64
  %i.ly = extractelement <2 x float> %i.fu, i64 1
  %i.lz = insertelement <2 x float> poison, float %.sroa.39.0.us, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mc = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.md = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.me = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mf = insertelement <2 x float> %i.me, float %.sroa.391025.0.us, i64 0
  %i.mg = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mh = insertelement <2 x float> %i.mg, float %.sroa.15959.0.us, i64 0
  %i.mi = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mj = insertelement <2 x float> %i.mi, float %.sroa.27992.0.us, i64 0
  %i.mk = shufflevector <2 x float> %i.hk, <2 x float> %i.fu, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.ml = insertelement <8 x float> %i.mk, float %.sroa.39.0.us, i64 2
  %i.mm = insertelement <8 x float> %i.ml, float %.sroa.391025.0.us, i64 5
  %i.mn = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mo = shufflevector <4 x float> %i.if, <4 x float> %i.mn, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %i.mp = insertelement <8 x float> %i.mo, float %.sroa.15.0.us, i64 2
  %i.mq = insertelement <8 x float> %i.mp, float %i.hz, i64 3
  %i.mr = insertelement <8 x float> %i.mq, float %.sroa.15959.0.us, i64 5
  %i.ms = shufflevector <2 x float> %i.hl, <2 x float> %i.hm, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.mt = shufflevector <2 x float> %i.fw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mu = shufflevector <4 x float> %i.ms, <4 x float> %i.mt, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %i.mv = insertelement <8 x float> %i.mu, float %.sroa.27.0.us, i64 2
  %i.mw = insertelement <8 x float> %i.mv, float %i.ib, i64 3
  %i.mx = insertelement <8 x float> %i.mw, float %.sroa.27992.0.us, i64 5
  %i.my = insertelement <4 x float> poison, float %.sroa.5432.0.us, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %.sroa.5448.0.us, i64 1
  %i.na = shufflevector <2 x float> %.sroa.0430.0.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  br label %.lr.ph4863.split.us

.lr.ph4863.split.us:                              ; preds = %.lr.ph4863.us, %b3Invert2.exit.us
  %indvars.iv10066 = phi i64 [ 0, %.lr.ph4863.us ], [ %indvars.iv.next10067, %b3Invert2.exit.us ] ; 5 uses
  %i.nb = load ptr, ptr %i.lu, align 8, !tbaa !119 ; 3 uses
  %i.nc = getelementptr inbounds nuw [268 x i8], ptr %i.nb, i64 %indvars.iv10066 ; 10 uses
  %i.nd = mul nuw nsw i64 %indvars.iv10066, 268
  %i.ne = ptrtoint ptr %i.nb to i64, !nosanitize !10 ; 3 uses
  %i.nf = add i64 %i.nd, %i.ne, !nosanitize !10   ; 3 uses
  %i.ng = icmp ne ptr %i.nb, null, !nosanitize !10 ; 2 uses
  %i.nh = icmp eq i64 %i.nf, 0
  %i.ni = xor i1 %i.ng, %i.nh
  %i.nj = icmp uge i64 %i.nf, %i.ne, !nosanitize !10
  %i.nk = and i1 %i.ni, %i.nj, !nosanitize !10
  br i1 %i.nk, label %bb.ap, label %.split5577.us, !prof !11, !nosanitize !10

bb.ap:                                            ; preds = %.lr.ph4863.split.us
  %i.nl = getelementptr inbounds nuw [308 x i8], ptr %i.lk, i64 %indvars.iv10066 ; 41 uses
  %i.nm = mul nuw nsw i64 %indvars.iv10066, 308
  %i.nn = add i64 %i.nm, %i.lv, !nosanitize !10   ; 3 uses
  %i.no = icmp eq i64 %i.nn, 0
  %i.np = xor i1 %i.bo, %i.no
  %i.nq = icmp uge i64 %i.nn, %i.lv, !nosanitize !10
  %i.nr = and i1 %i.np, %i.nq, !nosanitize !10
  br i1 %i.nr, label %bb.aq, label %.split5581.us, !prof !11, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  %i.ns = ptrtoint ptr %i.nc to i64, !nosanitize !10 ; 5 uses
  %i.nt = and i64 %i.ns, 3, !nosanitize !10
  %i.nu = icmp eq i64 %i.nt, 0, !nosanitize !10
  %i.nv = and i1 %i.ng, %i.nu
  br i1 %i.nv, label %bb.ar, label %.split5585.us, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nc, i64 264
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !121 ; 8 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nc, i64 224
  %.sroa.0379.0.copyload.us = load <2 x float>, ptr %i.ny, align 4, !tbaa !107 ; 15 uses
  %.sroa.12.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nc, i64 232
  %.sroa.12.0.copyload.us = load float, ptr %.sroa.12.0..sroa_idx.us, align 4, !tbaa !107 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.017.0.vec.extract.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 0 ; 5 uses
  %i.nz = tail call float @llvm.fabs.f32(float %.sroa.017.0.vec.extract.i.us)
  %or.cond.i.us = fcmp ogt float %i.nz, 5.000000e-01
  br i1 %or.cond.i.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !122
  store float %.sroa.12.0.copyload.us, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  %.sroa.017.4.vec.extract.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 1
  %i.oa = fneg float %.sroa.017.4.vec.extract.i.us
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %.sroa.017.4.vec.extract21.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 1
  store float %.sroa.017.4.vec.extract21.i.us, ptr %.sroa.014.i, align 8, !tbaa !122
  %i.ob = fneg float %.sroa.017.0.vec.extract.i.us
  store float %i.ob, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.05.0.in.i.us = phi ptr [ %.sroa.014.i, %bb.at ], [ %.sroa.0.i, %bb.as ]
  %.sroa.5.0.i.us = phi float [ 0.000000e+00, %bb.at ], [ %i.oa, %bb.as ] ; 3 uses
  %.sroa.05.0.i.us = load <2 x float>, ptr %.sroa.05.0.in.i.us, align 8, !tbaa !107 ; 3 uses
  %i.oc = fmul <2 x float> %.sroa.05.0.i.us, %.sroa.05.0.i.us ; 2 uses
  %shift = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.oc, %shift
  %i.od = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.oe = fmul float %.sroa.5.0.i.us, %.sroa.5.0.i.us
  %i.of = fadd float %i.oe, %i.od                 ; 2 uses
  %i.og = fcmp ogt float %i.of, f0x057A0000
  br i1 %i.og, label %bb.av, label %b3Perp.exit.us

bb.av:                                            ; preds = %bb.au
  %i.oh = tail call float @sqrtf(float noundef %i.of) #12
  %i.oi = fdiv float 1.000000e+00, %i.oh          ; 2 uses
  %i.oj = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.ok = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ol = fmul <2 x float> %.sroa.05.0.i.us, %i.ok
  %i.om = fmul float %.sroa.5.0.i.us, %i.oi
  br label %b3Perp.exit.us

b3Perp.exit.us:                                   ; preds = %bb.av, %bb.au
  %.sroa.07.0.i.i.us = phi <2 x float> [ %i.ol, %bb.av ], [ zeroinitializer, %bb.au ] ; 10 uses
  %.sroa.5.0.i.i.us = phi float [ %i.om, %bb.av ], [ 0.000000e+00, %bb.au ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.sroa.09.4.vec.extract13.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 1 ; 3 uses
  %i.on = fmul float %.sroa.12.0.copyload.us, %.sroa.09.4.vec.extract13.i.us
  %.sroa.0.4.vec.extract8.i.us = extractelement <2 x float> %.sroa.0379.0.copyload.us, i64 1 ; 3 uses
  %i.oo = fmul float %.sroa.0.4.vec.extract8.i.us, %.sroa.5.0.i.i.us
  %i.op = fsub float %i.on, %i.oo                 ; 5 uses
  %i.oq = fmul float %.sroa.017.0.vec.extract.i.us, %.sroa.5.0.i.i.us
  %.sroa.09.0.vec.extract.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 0 ; 2 uses
  %i.or = fmul float %.sroa.12.0.copyload.us, %.sroa.09.0.vec.extract.i.us
  %i.os = fsub float %i.oq, %i.or                 ; 7 uses
  %i.ot = fmul float %.sroa.0.4.vec.extract8.i.us, %.sroa.09.0.vec.extract.i.us
  %i.ou = fmul float %.sroa.017.0.vec.extract.i.us, %.sroa.09.4.vec.extract13.i.us
  %i.ov = fsub float %i.ot, %i.ou                 ; 7 uses
  %i.ow = ptrtoint ptr %i.nl to i64, !nosanitize !10 ; 7 uses
  %i.ox = and i64 %i.ow, 3, !nosanitize !10
  %i.oy = icmp eq i64 %i.ox, 0, !nosanitize !10
  %i.oz = and i1 %i.bo, %i.oy
  br i1 %i.oz, label %bb.aw, label %.split5594.us, !prof !11, !nosanitize !10

bb.aw:                                            ; preds = %b3Perp.exit.us
  %.sroa.016.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.op, i64 0
  %.sroa.016.4.vec.insert.i.us = insertelement <2 x float> %.sroa.016.0.vec.insert.i.us, float %i.os, i64 1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nl, i64 192 ; 2 uses
  store i32 %i.nx, ptr %i.pa, align 4, !tbaa !127
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nl, i64 196
  store <2 x float> %.sroa.0379.0.copyload.us, ptr %i.pb, align 4, !tbaa !107
  %.sroa.12.0..sroa_idx388.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 204
  store float %.sroa.12.0.copyload.us, ptr %.sroa.12.0..sroa_idx388.us, align 4, !tbaa !107
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nl, i64 208
  store <2 x float> %.sroa.07.0.i.i.us, ptr %i.pc, align 4, !tbaa !107
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 216
  store float %.sroa.5.0.i.i.us, ptr %.sroa.8.0..sroa_idx.us, align 4, !tbaa !107
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nl, i64 220
  store <2 x float> %.sroa.016.4.vec.insert.i.us, ptr %i.pd, align 4, !tbaa !107
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 228
  store float %i.ov, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !107
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nl, i64 300
  %.sroa.2357.0.copyload.us = load float, ptr %.sroa.2357.0..sroa_idx.us, align 8
  %i.pf = fmul float %.sroa.5.0.i.i.us, %.sroa.2357.0.copyload.us
  %.sroa.0356.0.copyload.us = load <2 x float>, ptr %i.lw, align 8 ; 2 uses
  %foldExtExtBinop14052 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.0356.0.copyload.us
  %foldExtExtBinop14054 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.0356.0.copyload.us
  %shift14056 = shufflevector <2 x float> %foldExtExtBinop14054, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14057 = fadd <2 x float> %foldExtExtBinop14052, %shift14056
  %i.pg = extractelement <2 x float> %foldExtExtBinop14057, i64 0
  %i.ph = fadd float %i.pf, %i.pg
  store float %i.ph, ptr %i.pe, align 4, !tbaa !192
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nl, i64 304
  %.sroa.2353.0.copyload.us = load float, ptr %.sroa.2357.0..sroa_idx.us, align 8
  %i.pj = fmul float %i.ov, %.sroa.2353.0.copyload.us
  %.sroa.0352.0.copyload.us = load <2 x float>, ptr %i.lw, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i594.us = extractelement <2 x float> %.sroa.0352.0.copyload.us, i64 0
  %i.pk = fmul float %i.op, %.sroa.03.0.vec.extract.i594.us
  %.sroa.03.4.vec.extract.i596.us = extractelement <2 x float> %.sroa.0352.0.copyload.us, i64 1
  %i.pl = fmul float %i.os, %.sroa.03.4.vec.extract.i596.us
  %i.pm = fadd float %i.pk, %i.pl
  %i.pn = fadd float %i.pj, %i.pm
  store float %i.pn, ptr %i.pi, align 4, !tbaa !193
  %i.po = icmp sgt i32 %i.nx, 0                   ; 2 uses
  br i1 %i.po, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.aw
  %wide.trip.count = zext nneg i32 %i.nx to i64
  %i.pp = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.pq = insertelement <8 x float> %i.pp, float %.0548.us, i64 6
  %i.pr = insertelement <8 x float> %i.pq, float %.0547.us, i64 7
  %i.ps = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> %.sroa.0430.0.us, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.pt = insertelement <4 x float> %i.ps, float %.sroa.09.0.vec.extract.i656.us, i64 3
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.az ] ; 6 uses
  %.sroa.0345.04851.us = phi <2 x float> [ zeroinitializer, %.lr.ph.us.preheader ], [ %i.um, %bb.az ]
  %.sroa.0341.04849.us = phi <2 x float> [ zeroinitializer, %.lr.ph.us.preheader ], [ %i.uo, %bb.az ]
  %.05504848.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %i.ut, %bb.az ]
  %i.pu = phi <2 x float> [ zeroinitializer, %.lr.ph.us.preheader ], [ %i.us, %bb.az ]
  %exitcond.not = icmp eq i64 %indvars.iv, 5
  br i1 %exitcond.not, label %.split5615.us, label %bb.ax, !prof !89, !nosanitize !10

bb.ax:                                            ; preds = %.lr.ph.us
  %i.pv = getelementptr inbounds nuw [48 x i8], ptr %i.nl, i64 %indvars.iv ; 10 uses
  %i.pw = mul nuw nsw i64 %indvars.iv, 48
  %i.px = add i64 %i.pw, %i.ow, !nosanitize !10   ; 2 uses
  %.not591.us = icmp ult i64 %i.px, %i.ow, !nosanitize !10
  br i1 %.not591.us, label %.split5618.us, label %bb.ay, !prof !89, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  %i.py = mul nuw nsw i64 %indvars.iv, 56
  %i.pz = add i64 %i.py, %i.ns, !nosanitize !10   ; 2 uses
  %.not592.us = icmp ult i64 %i.pz, %i.ns, !nosanitize !10
  br i1 %.not592.us, label %.split5622.us, label %bb.az, !prof !89, !nosanitize !10

bb.az:                                            ; preds = %bb.ay
  %i.qa = getelementptr inbounds nuw [56 x i8], ptr %i.nc, i64 %indvars.iv ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 4 dereferenceable(12) %i.qa, i64 12, i1 false), !tbaa.struct !128
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 12 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qb, ptr noundef nonnull align 4 dereferenceable(12) %i.qc, i64 12, i1 false), !tbaa.struct !128
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !130 ; 2 uses
  %.sroa.0314.0.copyload.us = load <2 x float>, ptr %i.qb, align 4 ; 9 uses
  %.sroa.2315.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.pv, i64 20
  %.sroa.2315.0.copyload.us = load float, ptr %.sroa.2315.0..sroa_idx.us, align 4 ; 5 uses
  %.sroa.0312.0.copyload.us = load <2 x float>, ptr %i.pv, align 4 ; 11 uses
  %.sroa.2313.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %.sroa.2313.0.copyload.us = load float, ptr %.sroa.2313.0..sroa_idx.us, align 4 ; 5 uses
  %.sroa.0.0.vec.extract.i608.us = extractelement <2 x float> %.sroa.0312.0.copyload.us, i64 0
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.qg = fsub float %.sroa.2315.0.copyload.us, %.sroa.2313.0.copyload.us
  %i.qh = fmul float %.sroa.12.0.copyload.us, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.qk = load float, ptr %i.qi, align 4, !tbaa !131
  %i.ql = fmul float %i.v, %i.qk
  store float %i.ql, ptr %i.qj, align 4, !tbaa !133
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pv, i64 36
  store float 0.000000e+00, ptr %i.qm, align 4, !tbaa !134
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  %i.qo = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0379.0.copyload.us, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.qp = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.qq = shufflevector <8 x float> %i.qp, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.qr = insertelement <8 x float> %i.qq, float %.sroa.12.0.copyload.us, i64 0
  %i.qs = insertelement <8 x float> %i.qr, float %.sroa.2315.0.copyload.us, i64 1
  %i.qt = insertelement <8 x float> %i.qs, float %.sroa.2313.0.copyload.us, i64 4
  %i.qu = shufflevector <8 x float> %i.qt, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 4, i32 5, i32 6, i32 7>
  %i.qv = shufflevector <2 x float> %.sroa.0312.0.copyload.us, <2 x float> %.sroa.0379.0.copyload.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.qw = shufflevector <4 x float> %i.qv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qx = shufflevector <8 x float> %i.qw, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 14, i32 15>
  %i.qy = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> %.sroa.0314.0.copyload.us, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qz = shufflevector <8 x float> %i.qy, <8 x float> %i.qx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ra = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison>
  %i.rb = shufflevector <8 x float> %i.ra, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.rc = insertelement <8 x float> %i.rb, float %.sroa.2315.0.copyload.us, i64 0
  %i.rd = insertelement <8 x float> %i.rc, float %.sroa.12.0.copyload.us, i64 1
  %i.re = insertelement <8 x float> %i.rd, float %.sroa.2313.0.copyload.us, i64 3
  %i.rf = shufflevector <8 x float> %i.re, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %i.rg = fmul <8 x float> %i.qz, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pv, i64 28
  %i.ri = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.rj = shufflevector <2 x float> %.sroa.0312.0.copyload.us, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.rl = fsub <4 x float> %i.ri, %i.rk
  %foldExtExtBinop14059 = fsub <2 x float> %.sroa.0314.0.copyload.us, %.sroa.0312.0.copyload.us
  %foldExtExtBinop14061 = fmul <2 x float> %.sroa.0379.0.copyload.us, %foldExtExtBinop14059
  %i.rm = extractelement <2 x float> %foldExtExtBinop14061, i64 1
  %i.rn = fmul <4 x float> %i.pt, %i.rl           ; 4 uses
  %i.ro = extractelement <4 x float> %i.rn, i64 0
  %i.rp = fadd float %i.ro, %i.rm
  %i.rq = fadd float %i.qh, %i.rp
  %i.rr = fsub float %i.qe, %i.rq
  store float %i.rr, ptr %i.qf, align 4, !tbaa !135
  %i.rs = shufflevector <2 x float> %.sroa.0312.0.copyload.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rt = shufflevector <4 x float> %i.qo, <4 x float> %i.rs, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ru = shufflevector <8 x float> %i.rt, <8 x float> %i.pr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.rv = fmul <8 x float> %i.ru, %i.qu
  %i.rw = fsub <8 x float> %i.rv, %i.rg           ; 4 uses
  %i.rx = shufflevector <8 x float> %i.rw, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 poison, i32 poison>
  %i.ry = fmul <8 x float> %i.mr, %i.rx
  %i.rz = shufflevector <8 x float> %i.rw, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 4, i32 4, i32 4, i32 poison, i32 poison>
  %i.sa = fmul <8 x float> %i.mx, %i.rz
  %i.sb = fadd <8 x float> %i.ry, %i.sa
  %i.sc = shufflevector <8 x float> %i.rw, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 5, i32 5, i32 5, i32 poison, i32 poison>
  %i.sd = fmul <8 x float> %i.mm, %i.sc
  %i.se = fadd <8 x float> %i.sd, %i.sb
  %i.sf = fmul <8 x float> %i.rw, %i.se           ; 6 uses
  %i.sg = extractelement <8 x float> %i.sf, i64 3
  %i.sh = extractelement <8 x float> %i.sf, i64 4
  %i.si = fadd float %i.sg, %i.sh
  %i.sj = extractelement <8 x float> %i.sf, i64 5
  %i.sk = fadd float %i.sj, %i.si
  %i.sl = fadd float %i.lx, %i.sk
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
  %shift14063 = shufflevector <4 x float> %i.rn, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop14064 = fsub <4 x float> %i.rn, %shift14063
  %i.sv = extractelement <4 x float> %foldExtExtBinop14064, i64 1
  %i.sw = fadd float %.sroa.5436.0.us, %i.sv
  %i.sx = fmul float %.sroa.09.4.vec.extract13.i652.us, %.sroa.0.0.vec.extract.i608.us
  %i.sy = extractelement <4 x float> %i.rn, i64 3
  %i.sz = fsub float %i.sy, %i.sx
  %i.ta = fadd float %.sroa.5452.0.us, %i.sz
  %i.tb = fsub float %i.sw, %i.ta
  %i.tc = fmul float %.sroa.12.0.copyload.us, %i.tb
  %i.td = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> %i.na, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tf = insertelement <4 x float> %i.te, float %.sroa.09.4.vec.extract13.i652.us, i64 3
  %i.tg = insertelement <4 x float> %i.mz, float %.sroa.2315.0.copyload.us, i64 2
  %i.th = insertelement <4 x float> %i.tg, float %.sroa.2313.0.copyload.us, i64 3 ; 2 uses
  %i.ti = fmul <4 x float> %i.tf, %i.th
  %i.tj = shufflevector <2 x float> %.sroa.0314.0.copyload.us, <2 x float> %.sroa.0312.0.copyload.us, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.tk = insertelement <4 x float> %i.tj, float %.sroa.09.0.vec.extract.i672.us, i64 2
  %i.tl = insertelement <4 x float> %i.tk, float %.sroa.09.0.vec.extract.i656.us, i64 3
  %i.tm = fmul <4 x float> %i.th, %i.tl
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.to = fsub <4 x float> %i.ti, %i.tn           ; 3 uses
  %i.tp = extractelement <4 x float> %i.to, i64 2
  %i.tq = fadd float %.sroa.07.0.vec.extract.i676.us, %i.tp
  %i.tr = extractelement <4 x float> %i.to, i64 0
  %i.ts = fadd float %.sroa.07.4.vec.extract.i678.us, %i.tr
  %i.tt = shufflevector <4 x float> %i.to, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.tu = fadd <2 x float> %.sroa.0450.0.us, %i.tt ; 2 uses
  %i.tv = extractelement <2 x float> %i.tu, i64 0
  %i.tw = fsub float %i.tq, %i.tv
  %i.tx = fmul float %.sroa.017.0.vec.extract.i.us, %i.tw
  %i.ty = extractelement <2 x float> %i.tu, i64 1
  %i.tz = fsub float %i.ts, %i.ty
  %i.ua = fmul float %.sroa.0.4.vec.extract8.i.us, %i.tz
  %i.ub = fadd float %i.tx, %i.ua
  %i.uc = fadd float %i.tc, %i.ub
  store float %i.uc, ptr %i.rh, align 4, !tbaa !137
  %i.ud = fmul float %i.z, %i.qe
  %i.ue = fsub float 2.000000e+00, %i.ud          ; 3 uses
  %i.uf = fcmp olt float %i.ue, 1.000000e-10
  %i.ug = fcmp ogt float %i.ue, 1.000000e+00
  %i.uh = select i1 %i.ug, float 1.000000e+00, float %i.ue
  %i.ui = select i1 %i.uf, float 1.000000e-10, float %i.uh ; 2 uses
  %i.uj = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ul = fmul <2 x float> %.sroa.0312.0.copyload.us, %i.uk
  %i.um = fadd <2 x float> %.sroa.0345.04851.us, %i.ul ; 2 uses
  %i.un = fmul <2 x float> %.sroa.0314.0.copyload.us, %i.uk
  %i.uo = fadd <2 x float> %.sroa.0341.04849.us, %i.un ; 2 uses
  %i.up = insertelement <2 x float> poison, float %.sroa.2315.0.copyload.us, i64 0
  %i.uq = insertelement <2 x float> %i.up, float %.sroa.2313.0.copyload.us, i64 1
  %i.ur = fmul <2 x float> %i.uq, %i.uk
  %i.us = fadd <2 x float> %i.pu, %i.ur           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ut = fadd float %.05504848.us, %i.ui         ; 2 uses
  %exitcond10059.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond10059.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !183

._crit_edge.us:                                   ; preds = %bb.az, %bb.aw
  %.0550.lcssa.us = phi float [ 0.000000e+00, %bb.aw ], [ %i.ut, %bb.az ]
  %.sroa.0341.0.lcssa.us = phi <2 x float> [ zeroinitializer, %bb.aw ], [ %i.uo, %bb.az ] ; 2 uses
  %.sroa.0345.0.lcssa.us = phi <2 x float> [ zeroinitializer, %bb.aw ], [ %i.um, %bb.az ]
  %i.uu = phi <2 x float> [ zeroinitializer, %bb.aw ], [ %i.us, %bb.az ] ; 2 uses
  %i.uv = fdiv float 1.000000e+00, %.0550.lcssa.us ; 3 uses
  %.sroa.0.0.vec.extract.i602.us = extractelement <2 x float> %.sroa.0341.0.lcssa.us, i64 0
  %i.uw = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.ux = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uy = fmul <2 x float> %i.ux, %.sroa.0345.0.lcssa.us ; 11 uses
  %i.uz = extractelement <2 x float> %i.uu, i64 1
  %i.va = fmul float %i.uv, %i.uz                 ; 9 uses
  %i.vb = fmul float %i.uv, %.sroa.0.0.vec.extract.i602.us ; 3 uses
  %.sroa.05.0.vec.insert.i603.us = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vc = shufflevector <2 x float> %.sroa.0341.0.lcssa.us, <2 x float> %i.uu, <2 x i32> <i32 1, i32 2>
  %i.vd = fmul <2 x float> %i.ux, %i.vc           ; 6 uses
  %i.ve = shufflevector <2 x float> %.sroa.05.0.vec.insert.i603.us, <2 x float> %i.vd, <2 x i32> <i32 0, i32 2>
  %i.vf = getelementptr inbounds nuw i8, ptr %i.nl, i64 232
  store <2 x float> %i.uy, ptr %i.vf, align 4, !tbaa !107
  %.sroa.11.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 240
  store float %i.va, ptr %.sroa.11.0..sroa_idx.us, align 4, !tbaa !107
  %i.vg = getelementptr inbounds nuw i8, ptr %i.nl, i64 244
  store <2 x float> %i.ve, ptr %i.vg, align 4, !tbaa !107
  %.sroa.10.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 252
  %i.vh = extractelement <2 x float> %i.vd, i64 1 ; 2 uses
  store float %i.vh, ptr %.sroa.10.0..sroa_idx.us, align 4, !tbaa !107
  br i1 %i.po, label %.lr.ph4859.us.preheader, label %._crit_edge4860.us

.lr.ph4859.us.preheader:                          ; preds = %._crit_edge.us
  %.sroa.0148.0.copyload.us = load <2 x float>, ptr %i.nl, align 4
  %.sroa.2149.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.sroa.2149.0.copyload.us = load float, ptr %.sroa.2149.0..sroa_idx.us, align 4
  %i.vi = fsub float %i.va, %.sroa.2149.0.copyload.us ; 2 uses
  %i.vj = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us ; 2 uses
  %i.vk = fmul <2 x float> %i.vj, %i.vj           ; 2 uses
  %shift14066 = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14067 = fadd <2 x float> %i.vk, %shift14066
  %i.vl = extractelement <2 x float> %foldExtExtBinop14067, i64 0
  %i.vm = fmul float %i.vi, %i.vi
  %i.vn = fadd float %i.vm, %i.vl
  %i.vo = tail call float @sqrtf(float noundef %i.vn) #12
  %i.vp = getelementptr inbounds nuw i8, ptr %i.nl, i64 44
  store float %i.vo, ptr %i.vp, align 4, !tbaa !138
  %exitcond10065.not = icmp eq i32 %i.nx, 1
  br i1 %exitcond10065.not, label %._crit_edge4860.us, label %.lr.ph4859.us.1

.lr.ph4859.us.1:                                  ; preds = %.lr.ph4859.us.preheader
  %.not590.us.1 = icmp ugt ptr %i.nl, inttoptr (i64 -49 to ptr)
  br i1 %.not590.us.1, label %.split5668.us, label %bb.ba, !prof !89, !nosanitize !10

bb.ba:                                            ; preds = %.lr.ph4859.us.1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  %.sroa.0148.0.copyload.us.1 = load <2 x float>, ptr %i.vq, align 4
  %.sroa.2149.0..sroa_idx.us.1 = getelementptr inbounds nuw i8, ptr %i.nl, i64 56
  %.sroa.2149.0.copyload.us.1 = load float, ptr %.sroa.2149.0..sroa_idx.us.1, align 4
  %i.vr = fsub float %i.va, %.sroa.2149.0.copyload.us.1 ; 2 uses
  %i.vs = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.1 ; 2 uses
  %i.vt = fmul <2 x float> %i.vs, %i.vs           ; 2 uses
  %shift14069 = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14070 = fadd <2 x float> %i.vt, %shift14069
  %i.vu = extractelement <2 x float> %foldExtExtBinop14070, i64 0
  %i.vv = fmul float %i.vr, %i.vr
  %i.vw = fadd float %i.vv, %i.vu
  %i.vx = tail call float @sqrtf(float noundef %i.vw) #12
  %i.vy = getelementptr inbounds nuw i8, ptr %i.nl, i64 92
  store float %i.vx, ptr %i.vy, align 4, !tbaa !138
  %exitcond10065.1.not = icmp eq i32 %i.nx, 2
  br i1 %exitcond10065.1.not, label %._crit_edge4860.us, label %.lr.ph4859.us.2

.lr.ph4859.us.2:                                  ; preds = %bb.ba
  %.not590.us.2 = icmp ugt ptr %i.nl, inttoptr (i64 -97 to ptr)
  br i1 %.not590.us.2, label %.split5668.us, label %bb.bb, !prof !89, !nosanitize !10

bb.bb:                                            ; preds = %.lr.ph4859.us.2
  %i.vz = getelementptr inbounds nuw i8, ptr %i.nl, i64 96
  %.sroa.0148.0.copyload.us.2 = load <2 x float>, ptr %i.vz, align 4
  %.sroa.2149.0..sroa_idx.us.2 = getelementptr inbounds nuw i8, ptr %i.nl, i64 104
  %.sroa.2149.0.copyload.us.2 = load float, ptr %.sroa.2149.0..sroa_idx.us.2, align 4
  %i.wa = fsub float %i.va, %.sroa.2149.0.copyload.us.2 ; 2 uses
  %i.wb = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.2 ; 2 uses
  %i.wc = fmul <2 x float> %i.wb, %i.wb           ; 2 uses
  %shift14072 = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14073 = fadd <2 x float> %i.wc, %shift14072
  %i.wd = extractelement <2 x float> %foldExtExtBinop14073, i64 0
  %i.we = fmul float %i.wa, %i.wa
  %i.wf = fadd float %i.we, %i.wd
  %i.wg = tail call float @sqrtf(float noundef %i.wf) #12
  %i.wh = getelementptr inbounds nuw i8, ptr %i.nl, i64 140
  store float %i.wg, ptr %i.wh, align 4, !tbaa !138
  %exitcond10065.2.not = icmp eq i32 %i.nx, 3
  br i1 %exitcond10065.2.not, label %._crit_edge4860.us, label %.lr.ph4859.us.3

.lr.ph4859.us.3:                                  ; preds = %bb.bb
  %.not590.us.3 = icmp ugt ptr %i.nl, inttoptr (i64 -145 to ptr)
  br i1 %.not590.us.3, label %.split5668.us, label %bb.bc, !prof !89, !nosanitize !10

bb.bc:                                            ; preds = %.lr.ph4859.us.3
  %i.wi = getelementptr inbounds nuw i8, ptr %i.nl, i64 144
  %.sroa.0148.0.copyload.us.3 = load <2 x float>, ptr %i.wi, align 4
  %.sroa.2149.0..sroa_idx.us.3 = getelementptr inbounds nuw i8, ptr %i.nl, i64 152
  %.sroa.2149.0.copyload.us.3 = load float, ptr %.sroa.2149.0..sroa_idx.us.3, align 4
  %i.wj = fsub float %i.va, %.sroa.2149.0.copyload.us.3 ; 2 uses
  %i.wk = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.3 ; 2 uses
  %i.wl = fmul <2 x float> %i.wk, %i.wk           ; 2 uses
  %shift14075 = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14076 = fadd <2 x float> %i.wl, %shift14075
  %i.wm = extractelement <2 x float> %foldExtExtBinop14076, i64 0
  %i.wn = fmul float %i.wj, %i.wj
  %i.wo = fadd float %i.wn, %i.wm
  %i.wp = tail call float @sqrtf(float noundef %i.wo) #12
  %i.wq = getelementptr inbounds nuw i8, ptr %i.nl, i64 188
  store float %i.wp, ptr %i.wq, align 4, !tbaa !138
  %exitcond10065.3.not = icmp eq i32 %i.nx, 4
  br i1 %exitcond10065.3.not, label %._crit_edge4860.us, label %.lr.ph4859.us.4

.lr.ph4859.us.4:                                  ; preds = %bb.bc
  %.not590.us.4 = icmp ugt ptr %i.nl, inttoptr (i64 -193 to ptr)
  br i1 %.not590.us.4, label %.split5668.us, label %bb.bd, !prof !89, !nosanitize !10

bb.bd:                                            ; preds = %.lr.ph4859.us.4
  %.sroa.0148.0.copyload.us.4 = load <2 x float>, ptr %i.pa, align 4
  %.sroa.2149.0..sroa_idx.us.4 = getelementptr inbounds nuw i8, ptr %i.nl, i64 200
  %.sroa.2149.0.copyload.us.4 = load float, ptr %.sroa.2149.0..sroa_idx.us.4, align 4
  %i.wr = fsub float %i.va, %.sroa.2149.0.copyload.us.4 ; 2 uses
  %i.ws = fsub <2 x float> %i.uy, %.sroa.0148.0.copyload.us.4 ; 2 uses
  %i.wt = fmul <2 x float> %i.ws, %i.ws           ; 2 uses
  %shift14078 = shufflevector <2 x float> %i.wt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14079 = fadd <2 x float> %i.wt, %shift14078
  %i.wu = extractelement <2 x float> %foldExtExtBinop14079, i64 0
  %i.wv = fmul float %i.wr, %i.wr
  %i.ww = fadd float %i.wv, %i.wu
  %i.wx = tail call float @sqrtf(float noundef %i.ww) #12
  %i.wy = getelementptr inbounds nuw i8, ptr %i.nl, i64 236
  store float %i.wx, ptr %i.wy, align 4, !tbaa !138
  %exitcond10065.4.not = icmp eq i32 %i.nx, 5
  br i1 %exitcond10065.4.not, label %._crit_edge4860.us, label %.split5665.us

._crit_edge4860.us:                               ; preds = %.lr.ph4859.us.preheader, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %._crit_edge.us
  %i.wz = shufflevector <2 x float> %.sroa.07.0.i.i.us, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.xa = insertelement <2 x float> %i.wz, float %.sroa.5.0.i.i.us, i64 1
  %i.xb = fmul <2 x float> %i.xa, %i.uy
  %i.xc = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xd = insertelement <2 x float> %i.xc, float %i.va, i64 1
  %i.xe = fmul <2 x float> %.sroa.07.0.i.i.us, %i.xd
  %i.xf = insertelement <2 x float> %.sroa.07.0.i.i.us, float %i.op, i64 1 ; 3 uses
  %i.xg = insertelement <2 x float> poison, float %i.va, i64 0
  %i.xh = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xi = fmul <2 x float> %i.xf, %i.xh
  %i.xj = insertelement <2 x float> poison, float %.sroa.5.0.i.i.us, i64 0
  %i.xk = insertelement <2 x float> %i.xj, float %i.ov, i64 1
  %i.xl = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x float> %i.xk, %i.xl
  %i.xn = extractelement <2 x float> %i.uy, i64 1 ; 2 uses
  %i.xo = fmul float %i.ov, %i.xn
  %i.xp = fmul float %i.os, %i.va
  %i.xq = extractelement <2 x float> %i.uy, i64 0
  %i.xr = fmul float %i.os, %i.xq
  %i.xs = fmul float %i.op, %i.xn
  %i.xt = insertelement <2 x float> %i.xf, float %.sroa.5.0.i.i.us, i64 0
  %i.xu = fmul <2 x float> %i.xt, %i.vd
  %i.xv = fmul float %.sroa.09.4.vec.extract13.i.us, %i.vh
  %i.xw = insertelement <2 x float> %i.wz, float %i.ov, i64 0
  %i.xx = fmul <2 x float> %i.xw, %i.vd
  %i.xy = insertelement <2 x float> poison, float %i.os, i64 0
  %i.xz = insertelement <2 x float> %i.xy, float %.sroa.5.0.i.i.us, i64 1
  %i.ya = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yb = insertelement <2 x float> %i.ya, float %i.vb, i64 1 ; 2 uses
  %i.yc = fmul <2 x float> %i.xz, %i.yb
  %i.yd = insertelement <2 x float> %i.wz, float %i.os, i64 1
  %i.ye = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yf = fmul <2 x float> %i.yd, %i.ye
  %i.yg = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yh = fmul <2 x float> %i.xf, %i.yg
  %i.yi = fmul float %i.ov, %i.vb
  %i.yj = fsub <2 x float> %i.xb, %i.xe           ; 7 uses
  %i.yk = fsub float %i.xo, %i.xp                 ; 4 uses
  %i.yl = fsub <2 x float> %i.xi, %i.xm           ; 5 uses
  %i.ym = fsub float %i.xr, %i.xs                 ; 4 uses
  %i.yn = fsub <2 x float> %i.xx, %i.yc           ; 5 uses
  %i.yo = insertelement <2 x float> poison, float %i.xv, i64 0
  %i.yp = insertelement <2 x float> %i.yo, float %i.yi, i64 1
  %i.yq = fsub <2 x float> %i.xu, %i.yp           ; 5 uses
  %i.yr = fsub <2 x float> %i.yf, %i.yh           ; 5 uses
  %i.ys = extractelement <2 x float> %i.yl, i64 0
  %i.yt = extractelement <2 x float> %i.yj, i64 0
  %i.yu = shufflevector <2 x float> %i.yl, <2 x float> %i.yj, <2 x i32> <i32 0, i32 3>
  %i.yv = fmul <2 x float> %i.fv, %i.yu
  %i.yw = shufflevector <2 x float> %i.yj, <2 x float> %i.yl, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.yx = fmul <2 x float> %i.fw, %i.yw
  %i.yy = fadd <2 x float> %i.yv, %i.yx
  %i.yz = shufflevector <2 x float> %i.yj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.za = fmul <2 x float> %i.fu, %i.yz
  %i.zb = fadd <2 x float> %i.za, %i.yy
  %i.zc = fmul <2 x float> %i.yw, %i.zb           ; 2 uses
  %i.zd = fmul float %.sroa.15959.0.us, %i.yk
  %i.ze = extractelement <2 x float> %i.yl, i64 1 ; 3 uses
  %i.zf = fmul float %.sroa.27992.0.us, %i.ze
  %i.zg = fadd float %i.zd, %i.zf
  %i.zh = shufflevector <2 x float> %i.yj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zi = insertelement <2 x float> %i.zh, float %i.yk, i64 1
  %i.zj = fmul <2 x float> %i.mh, %i.zi
  %i.zk = fmul <2 x float> %i.mj, %i.yl
  %i.zl = fadd <2 x float> %i.zj, %i.zk
  %i.zm = insertelement <2 x float> %i.yj, float %i.ym, i64 1
  %i.zn = fmul <2 x float> %i.mf, %i.zm
  %i.zo = fadd <2 x float> %i.zn, %i.zl           ; 2 uses
  %i.zp = fmul float %i.ia, %i.yk
  %i.zq = fmul float %i.ic, %i.ze
  %i.zr = fadd float %i.zp, %i.zq
  %i.zs = fmul float %i.ly, %i.ym
  %i.zt = fadd float %i.zs, %i.zr                 ; 2 uses
  %i.zu = fmul float %.sroa.391025.0.us, %i.ym
  %i.zv = fadd float %i.zu, %i.zg                 ; 2 uses
  %i.zw = extractelement <2 x float> %i.zo, i64 1
  %i.zx = fmul float %i.yk, %i.zw
  %i.zy = fmul float %i.ze, %i.zt
  %i.zz = fadd float %i.zx, %i.zy
  %i.aaa = fmul float %i.ym, %i.zv
  %i.aab = fadd float %i.aaa, %i.zz
  %i.aac = fadd float %i.lx, %i.aab
  %i.aad = fmul <2 x float> %i.hn, %i.yn
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aaf = fmul <2 x float> %i.hn, %i.yq
  %i.aag = fadd <2 x float> %i.aaf, %i.aae
  %i.aah = shufflevector <2 x float> %i.yn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aai = fmul <2 x float> %i.hm, %i.yn
  %i.aaj = shufflevector <2 x float> %i.aai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aak = fmul <2 x float> %i.mc, %i.yq
  %i.aal = fadd <2 x float> %i.aak, %i.aaj
  %i.aam = fmul <2 x float> %i.mb, %i.yr
  %i.aan = fadd <2 x float> %i.aam, %i.aal        ; 2 uses
  %i.aao = fmul <2 x float> %i.hl, %i.aah
  %i.aap = fmul <2 x float> %i.hm, %i.yq
  %i.aaq = fadd <2 x float> %i.aap, %i.aao
  %i.aar = fmul <2 x float> %i.hk, %i.yr
  %i.aas = fadd <2 x float> %i.aar, %i.aaq        ; 2 uses
  %i.aat = fmul <2 x float> %i.ma, %i.yr
  %i.aau = fadd <2 x float> %i.aat, %i.aag        ; 2 uses
  %shift14084 = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14085 = fmul <2 x float> %i.yn, %shift14084
  %foldExtExtBinop14087 = fmul <2 x float> %i.yq, %i.aas
  %shift14089 = shufflevector <2 x float> %foldExtExtBinop14087, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14090 = fadd <2 x float> %foldExtExtBinop14085, %shift14089
  %foldExtExtBinop14092 = fmul <2 x float> %i.yr, %i.aau
  %shift14094 = shufflevector <2 x float> %foldExtExtBinop14092, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14095 = fadd <2 x float> %shift14094, %foldExtExtBinop14090
  %i.aav = extractelement <2 x float> %foldExtExtBinop14095, i64 0
  %i.aaw = fadd float %i.aav, %i.aac              ; 2 uses
  %i.aax = fmul <2 x float> %i.yj, %i.zo
  %i.aay = fmul float %i.ys, %i.zt
  %i.aaz = shufflevector <2 x float> %i.zc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aba = fadd <2 x float> %i.zc, %i.aaz
  %i.abb = insertelement <2 x float> %i.aba, float %i.aay, i64 1
  %i.abc = fadd <2 x float> %i.aax, %i.abb
  %i.abd = fmul float %i.yt, %i.zv
  %i.abe = insertelement <2 x float> %i.md, float %i.abd, i64 1
  %i.abf = fadd <2 x float> %i.abe, %i.abc
  %i.abg = shufflevector <2 x float> %i.yn, <2 x float> %i.yq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.abh = fmul <2 x float> %i.abg, %i.aan
  %i.abi = shufflevector <2 x float> %i.abg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abj = fmul <2 x float> %i.abi, %i.aas
  %i.abk = fadd <2 x float> %i.abj, %i.abh
  %i.abl = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abm = fmul <2 x float> %i.abl, %i.aau
  %i.abn = fadd <2 x float> %i.abm, %i.abk
  %i.abo = fadd <2 x float> %i.abn, %i.abf        ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.nl, i64 264
  %i.abq = insertelement <2 x float> %i.abo, float %i.aaw, i64 0
  %i.abr = fmul <2 x float> %i.abo, %i.abq        ; 2 uses
  %shift14097 = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14098 = fsub <2 x float> %i.abr, %shift14097
  %i.abs = extractelement <2 x float> %foldExtExtBinop14098, i64 0 ; 2 uses
  %i.abt = tail call float @llvm.fabs.f32(float %i.abs)
  %i.abu = fcmp ogt float %i.abt, f0x057A0000
  br i1 %i.abu, label %bb.be, label %b3Invert2.exit.us

bb.be:                                            ; preds = %._crit_edge4860.us
  %i.abv = fdiv float 1.000000e+00, %i.abs        ; 3 uses
  %i.abw = fmul float %i.aaw, %i.abv
  %i.abx = fneg float %i.abv
  %i.aby = insertelement <2 x float> poison, float %i.abv, i64 0
  %i.abz = insertelement <2 x float> %i.aby, float %i.abx, i64 1
  %i.aca = fmul <2 x float> %i.abo, %i.abz        ; 2 uses
  %i.acb = insertelement <2 x float> %i.aca, float %i.abw, i64 0
  %i.acc = shufflevector <2 x float> %i.aca, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b3Invert2.exit.us

b3Invert2.exit.us:                                ; preds = %bb.be, %._crit_edge4860.us
  %.sroa.5.0.i805.us = phi <2 x float> [ %i.acc, %bb.be ], [ zeroinitializer, %._crit_edge4860.us ]
  %.sroa.0.0.i.us = phi <2 x float> [ %i.acb, %bb.be ], [ zeroinitializer, %._crit_edge4860.us ]
  store <2 x float> %.sroa.0.0.i.us, ptr %i.abp, align 4, !tbaa !107
  %.sroa.426.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 272
  store <2 x float> %.sroa.5.0.i805.us, ptr %.sroa.426.0..sroa_idx.us, align 4, !tbaa !107
  %i.acd = getelementptr inbounds nuw i8, ptr %i.nl, i64 280
  %.sroa.224.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nc, i64 248 ; 2 uses
  %.sroa.224.0.copyload.us = load float, ptr %.sroa.224.0..sroa_idx.us, align 4
  %i.ace = fmul float %.sroa.5.0.i.i.us, %.sroa.224.0.copyload.us
  %i.acf = getelementptr inbounds nuw i8, ptr %i.nc, i64 240 ; 2 uses
  %.sroa.023.0.copyload.us = load <2 x float>, ptr %i.acf, align 4 ; 2 uses
  %foldExtExtBinop14100 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.023.0.copyload.us
  %foldExtExtBinop14102 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.023.0.copyload.us
  %shift14104 = shufflevector <2 x float> %foldExtExtBinop14102, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14105 = fadd <2 x float> %foldExtExtBinop14100, %shift14104
  %i.acg = extractelement <2 x float> %foldExtExtBinop14105, i64 0
  %i.ach = fadd float %i.ace, %i.acg
  %i.aci = fmul float %i.v, %i.ach
  store float %i.aci, ptr %i.acd, align 4, !tbaa !194
  %i.acj = getelementptr inbounds nuw i8, ptr %i.nl, i64 284
  %.sroa.220.0.copyload.us = load float, ptr %.sroa.224.0..sroa_idx.us, align 4
  %i.ack = fmul float %i.ov, %.sroa.220.0.copyload.us
  %.sroa.019.0.copyload.us = load <2 x float>, ptr %i.acf, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i812.us = extractelement <2 x float> %.sroa.019.0.copyload.us, i64 0
  %i.acl = fmul float %i.op, %.sroa.03.0.vec.extract.i812.us
  %.sroa.03.4.vec.extract.i814.us = extractelement <2 x float> %.sroa.019.0.copyload.us, i64 1
  %i.acm = fmul float %i.os, %.sroa.03.4.vec.extract.i814.us
  %i.acn = fadd float %i.acl, %i.acm
  %i.aco = fadd float %i.ack, %i.acn
  %i.acp = fmul float %i.v, %i.aco
  store float %i.acp, ptr %i.acj, align 4, !tbaa !195
  %i.acq = getelementptr inbounds nuw i8, ptr %i.nl, i64 256
  %i.acr = fmul <2 x float> %i.in, %.sroa.0379.0.copyload.us ; 2 uses
  %shift14107 = shufflevector <2 x float> %i.acr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14108 = fadd <2 x float> %i.acr, %shift14107
  %i.acs = extractelement <2 x float> %foldExtExtBinop14108, i64 0
  %i.act = fmul float %i.jc, %.sroa.12.0.copyload.us
  %i.acu = fadd float %i.act, %i.acs
  %i.acv = fmul float %.sroa.12.0.copyload.us, %i.acu
  %i.acw = fmul <2 x float> %i.il, %.sroa.0379.0.copyload.us
  %i.acx = shufflevector <2 x float> %.sroa.0379.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.acy = fmul <2 x float> %i.im, %i.acx
  %i.acz = insertelement <2 x float> poison, float %.sroa.12.0.copyload.us, i64 0
  %i.ada = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adb = fmul <2 x float> %i.io, %i.ada
  %i.adc = fadd <2 x float> %i.acy, %i.acw
  %i.add = fadd <2 x float> %i.adb, %i.adc
  %i.ade = fmul <2 x float> %.sroa.0379.0.copyload.us, %i.add ; 2 uses
  %shift14110 = shufflevector <2 x float> %i.ade, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14111 = fadd <2 x float> %i.ade, %shift14110
  %i.adf = extractelement <2 x float> %foldExtExtBinop14111, i64 0
  %i.adg = fadd float %i.acv, %i.adf              ; 2 uses
  %i.adh = fcmp ogt float %i.adg, 0.000000e+00
  %i.adi = fdiv float 1.000000e+00, %i.adg
  %i.adj = select i1 %i.adh, float %i.adi, float 0.000000e+00
  store float %i.adj, ptr %i.acq, align 4, !tbaa !139
  %i.adk = getelementptr inbounds nuw i8, ptr %i.nc, i64 236
  %i.adl = getelementptr inbounds nuw i8, ptr %i.nl, i64 260
  %i.adm = load float, ptr %i.adk, align 4, !tbaa !140
  %i.adn = fmul float %i.v, %i.adm
  store float %i.adn, ptr %i.adl, align 4, !tbaa !141
  %i.ado = getelementptr inbounds nuw i8, ptr %i.nl, i64 288
  %i.adp = getelementptr inbounds nuw i8, ptr %i.nc, i64 252
  %.sroa.01.0.copyload.us = load <2 x float>, ptr %i.adp, align 4
  %.sroa.22.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nc, i64 260
  %.sroa.22.0.copyload.us = load float, ptr %.sroa.22.0..sroa_idx.us, align 4
  %i.adq = fmul <2 x float> %i.bq, %.sroa.01.0.copyload.us
  %i.adr = fmul float %i.v, %.sroa.22.0.copyload.us
  store <2 x float> %i.adq, ptr %i.ado, align 4, !tbaa !107
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 296
  store float %i.adr, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !107
  %indvars.iv.next10067 = add nuw nsw i64 %indvars.iv10066, 1 ; 2 uses
  %exitcond10070.not = icmp eq i64 %indvars.iv.next10067, %wide.trip.count10069
  br i1 %exitcond10070.not, label %._crit_edge4864.us, label %.lr.ph4863.split.us, !llvm.loop !184

._crit_edge4864.us:                               ; preds = %b3Invert2.exit.us, %bb.ao
  %indvars.iv.next10072 = add nsw i64 %indvars.iv10071, 1 ; 2 uses
  %exitcond10074.not = icmp eq i64 %indvars.iv.next10072, %i.cm
  br i1 %exitcond10074.not, label %.loopexit, label %.lr.ph4867.split.split.us, !llvm.loop !185

.split4870.us:                                    ; preds = %.lr.ph4867.split.split.us, %.lr.ph4867.split.us
  %.us-phi4872 = phi i64 [ %20, %.lr.ph4867.split.us ], [ %i.cp, %.lr.ph4867.split.split.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @19, i64 %i.bg, i64 %.us-phi4872) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split4874.us:                                    ; preds = %bb.u, %27
  %.us-phi4876 = phi i32 [ %.05446339, %27 ], [ %i.cw, %bb.u ]
  %i.ads = zext i32 %.us-phi4876 to i64, !nosanitize !10
  %i.adt = zext i32 %i.bx to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @20, i64 %i.ads, i64 %i.adt) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split4878.us:                                    ; preds = %bb.v, %30
  %.us-phi4880 = phi i64 [ %33, %30 ], [ %i.dd, %bb.v ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @21, i64 %i.ck, i64 %.us-phi4880) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split4882:                                       ; preds = %bb.w, %30
  %.us-phi4883 = phi i64 [ 0, %30 ], [ %i.dj, %bb.w ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %.us-phi4883) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5445.us:                                    ; preds = %bb.x
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @24, i64 %i.dr, i64 %i.ds) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5449.us:                                    ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @26, i64 %i.ea) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5458.us:                                    ; preds = %bb.aa
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @27, i64 %i.bj, i64 %i.em) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5462.us:                                    ; preds = %bb.ab
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @29, i64 %i.et) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5471.us:                                    ; preds = %bb.ac
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.bl, i64 %i.ff) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5475.us:                                    ; preds = %bb.ad
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @32, i64 %i.fl) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5481.us:                                    ; preds = %bb.ag
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.bj, i64 %i.gc) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5485.us:                                    ; preds = %bb.ah
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.gj) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5494.us:                                    ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @35, i64 %i.bl, i64 %i.gv) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5498.us:                                    ; preds = %bb.aj
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @36, i64 %i.hb) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5507.us:                                    ; preds = %bb.al
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.hq) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5570.us:                                    ; preds = %b3InvertMatrix.exit.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @39, i64 %i.bn, i64 %i.lm) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5577.us:                                    ; preds = %.lr.ph4863.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @40, i64 %i.ne, i64 %i.nf) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5581.us:                                    ; preds = %bb.ap
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @41, i64 %i.lv, i64 %i.nn) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5585.us:                                    ; preds = %bb.aq
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @43, i64 %i.ns) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5594.us:                                    ; preds = %b3Perp.exit.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.ow) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5615.us:                                    ; preds = %.lr.ph.us
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @47, i64 5) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5618.us:                                    ; preds = %bb.ax
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @48, i64 %i.ow, i64 %i.px) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5622.us:                                    ; preds = %bb.ay
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @50, i64 %i.ns, i64 %i.pz) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5665.us:                                    ; preds = %bb.bd
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @51, i64 5) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split5668.us:                                    ; preds = %.lr.ph4859.us.1, %.lr.ph4859.us.2, %.lr.ph4859.us.3, %.lr.ph4859.us.4
  %.sink13568 = phi i64 [ 96, %.lr.ph4859.us.2 ], [ 144, %.lr.ph4859.us.3 ], [ 192, %.lr.ph4859.us.4 ], [ 48, %.lr.ph4859.us.1 ]
  %i.adu = add i64 %.sink13568, %i.ow, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @52, i64 %i.ow, i64 %i.adu) #11, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge:                                      ; preds = %.loopexit, %.preheader
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @53, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @54, i64 %i.i) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.n, i64 %i.q) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @56, i64 %i.t, i64 %i.u) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.ab = ptrtoint ptr %i.aa to i64, !nosanitize !10 ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !10
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !10
  br i1 %i.ad, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @58, i64 %i.ab) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64, !nosanitize !10 ; 2 uses
  %i.ag = and i64 %i.af, 7, !nosanitize !10
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !10
  br i1 %i.ah, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @60, i64 %i.af) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !204 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !146
  %.fr1652 = freeze ptr %i.ak                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.al, align 4
  %i.am = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.an = and i32 %i.am, 65535
  %i.ao = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0638.0.extract.trunc, i32 %i.an), !nosanitize !10 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 0, !nosanitize !10 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ao, 1, !nosanitize !10
  br i1 %i.aq, label %bb.n, label %.preheader, !prof !89, !nosanitize !10

.preheader:                                       ; preds = %bb.m
  %i.ar = icmp sgt i32 %i.ap, %.sroa.0638.0.extract.trunc
  br i1 %i.ar, label %.lr.ph1642, label %._crit_edge1643

.lr.ph1642:                                       ; preds = %.preheader
  %i.as = ptrtoint ptr %.fr1652 to i64, !nosanitize !10 ; 4 uses
  %.not1653 = icmp eq ptr %.fr1652, null, !nosanitize !10
  %i.at = ptrtoint ptr %i.ai to i64               ; 6 uses
  %i.au = icmp ne ptr %i.ai, null                 ; 2 uses
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.av = ashr exact i64 %sext, 32                ; 2 uses
  br i1 %.not1653, label %.lr.ph1642.split.us, label %.lr.ph1642.split.preheader, !prof !89

.lr.ph1642.split.preheader:                       ; preds = %.lr.ph1642
  %wide.trip.count2264 = sext i32 %i.ap to i64
  br label %.lr.ph1642.split

.lr.ph1642.split.us:                              ; preds = %.lr.ph1642
  %i.aw = mul nsw i64 %i.av, 168                  ; 2 uses
  %i.ax = icmp eq i64 %sext, 0
  %i.ay = icmp uge i64 %i.aw, %i.as, !nosanitize !10
  %i.az = icmp slt i32 %.sroa.0638.0.extract.trunc, 0
  %i.ba = xor i1 %i.az, %i.ay
  %i.bb = and i1 %i.ax, %i.ba, !nosanitize !10
  br i1 %i.bb, label %.split1649, label %.split1645.us, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bc = and i64 %0, 4294967295
  %i.bd = and i64 %.sroa.2.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @61, i64 %i.bc, i64 %i.bd) #11, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge1643:                                  ; preds = %bb.ap, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

.lr.ph1642.split:                                 ; preds = %.lr.ph1642.split.preheader, %bb.ap
  %indvars.iv2261 = phi i64 [ %i.av, %.lr.ph1642.split.preheader ], [ %indvars.iv.next2262, %bb.ap ] ; 4 uses
  %i.be = getelementptr inbounds [168 x i8], ptr %.fr1652, i64 %indvars.iv2261 ; 22 uses
  %i.bf = mul nsw i64 %indvars.iv2261, 168
  %i.bg = add i64 %i.bf, %i.as, !nosanitize !10   ; 3 uses
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = icmp uge i64 %i.bg, %i.as, !nosanitize !10
  %i.bj = icmp slt i64 %indvars.iv2261, 0
  %i.bk = xor i1 %i.bj, %i.bi
  %i.bl = and i1 %i.bh, %i.bk, !nosanitize !10
  br i1 %i.bl, label %bb.o, label %.split1645.us, !prof !11, !nosanitize !10

.split1645.us:                                    ; preds = %.lr.ph1642.split, %.lr.ph1642.split.us
  %.us-phi1647 = phi i64 [ %i.aw, %.lr.ph1642.split.us ], [ %i.bg, %.lr.ph1642.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @62, i64 %i.as, i64 %.us-phi1647) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %.lr.ph1642.split
  %i.bm = ptrtoint ptr %i.be to i64, !nosanitize !10 ; 2 uses
  %i.bn = and i64 %i.bm, 7, !nosanitize !10
  %i.bo = icmp eq i64 %i.bn, 0, !nosanitize !10
  br i1 %i.bo, label %bb.p, label %.split1649, !prof !11, !nosanitize !10

.split1649:                                       ; preds = %bb.o, %.lr.ph1642.split.us
end_hunk_0
begin_hunk_1_@b3ApplyRestitution_Mesh:bb.a

._crit_edge:                                      ; preds = %bb.af, %bb.x
  %.sroa.0171.1.lcssa = phi <2 x float> [ %.sroa.0171.0960, %bb.x ], [ %.sroa.0171.2, %bb.af ] ; 2 uses
  %.sroa.7174.1.lcssa = phi float [ %.sroa.7174.0961, %bb.x ], [ %.sroa.7174.2, %bb.af ] ; 2 uses
  %.sroa.0177.1.lcssa = phi <2 x float> [ %.sroa.0177.0962, %bb.x ], [ %.sroa.0177.2, %bb.af ] ; 2 uses
  %.sroa.7180.1.lcssa = phi float [ %.sroa.7180.0963, %bb.x ], [ %.sroa.7180.2, %bb.af ] ; 2 uses
  %.sroa.0183.1.lcssa = phi <2 x float> [ %.sroa.0183.0964, %bb.x ], [ %.sroa.0183.2, %bb.af ] ; 2 uses
  %.sroa.7186.1.lcssa = phi float [ %.sroa.7186.0965, %bb.x ], [ %.sroa.7186.2, %bb.af ] ; 2 uses
  %.sroa.0189.1.lcssa = phi <2 x float> [ %.sroa.0189.0966, %bb.x ], [ %.sroa.0189.2, %bb.af ] ; 2 uses
  %.sroa.7192.1.lcssa = phi float [ %.sroa.7192.0967, %bb.x ], [ %.sroa.7192.2, %bb.af ] ; 2 uses
  %i.ji = load i32, ptr %i.dg, align 4, !tbaa !148
  %i.jj = and i32 %i.ji, 4096
  %.not252 = icmp eq i32 %i.jj, 0
  br i1 %.not252, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  store <2 x float> %.sroa.0189.1.lcssa, ptr %i.bu, align 4, !tbaa !107
  store float %.sroa.7192.1.lcssa, ptr %.sroa.7192.0..sroa_idx, align 4, !tbaa !107
  store <2 x float> %.sroa.0183.1.lcssa, ptr %i.cm, align 4, !tbaa !107
  store float %.sroa.7186.1.lcssa, ptr %.sroa.7186.0..sroa_idx, align 4, !tbaa !107
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.jk = load i32, ptr %i.dh, align 4, !tbaa !148
  %i.jl = and i32 %i.jk, 4096
  %.not253 = icmp eq i32 %i.jl, 0
  br i1 %.not253, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store <2 x float> %.sroa.0177.1.lcssa, ptr %i.cg, align 4, !tbaa !107
  store float %.sroa.7180.1.lcssa, ptr %.sroa.7180.0..sroa_idx, align 4, !tbaa !107
  store <2 x float> %.sroa.0171.1.lcssa, ptr %i.cs, align 4, !tbaa !107
  store float %.sroa.7174.1.lcssa, ptr %.sroa.7174.0..sroa_idx, align 4, !tbaa !107
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %indvars.iv.next1754 = add nuw nsw i64 %indvars.iv1753, 1 ; 2 uses
  %exitcond1757.not = icmp eq i64 %indvars.iv.next1754, %wide.trip.count1756
  br i1 %exitcond1757.not, label %.loopexit, label %.lr.ph969.split, !llvm.loop !210

.loopexit:                                        ; preds = %bb.aj, %bb.k, %bb.v
  %indvars.iv.next1759 = add nsw i64 %indvars.iv1758, 1 ; 2 uses
  %exitcond1762.not = icmp eq i64 %indvars.iv.next1759, %wide.trip.count1761
  br i1 %exitcond1762.not, label %._crit_edge1181, label %.lr.ph1180.split, !llvm.loop !211
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @102, i64 %i.b) #11, !nosanitize !10
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
  %.pre3305 = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %.pre3307 = and i64 %.pre3305, 7, !nosanitize !10
  %i.l = icmp eq i64 %.pre3307, 0
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ne ptr %i.g, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 3 uses
  %i.o = and i64 %i.n, 7, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @103, i64 %i.n) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1144 ; 2 uses
  %.not = icmp ugt ptr %i.r, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.g, label %bb.h, !prof !89, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.t = add i64 %i.s, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @104, i64 %i.s, i64 %i.t) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 3816
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.pre-phi3308 = phi i1 [ %i.l, %._crit_edge ], [ true, %bb.h ]
  %.pre-phi3306 = phi i64 [ %.pre3305, %._crit_edge ], [ %i.n, %bb.h ]
  %.077.in = phi ptr [ %i.j, %._crit_edge ], [ %i.v, %bb.h ]
  %.076.in = phi ptr [ %i.k, %._crit_edge ], [ %i.u, %bb.h ]
  %.076 = load ptr, ptr %.076.in, align 8, !tbaa !90
  %.076.fr = freeze ptr %.076                     ; 7 uses
  %.077 = load ptr, ptr %.077.in, align 8, !tbaa !91
  %.077.fr = freeze ptr %.077                     ; 3 uses
  %i.w = icmp ne ptr %i.g, null, !nosanitize !10
  %i.x = and i1 %i.w, %.pre-phi3308, !nosanitize !10
  br i1 %i.x, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %.pre-phi3306) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @106, i64 %i.ad, i64 %i.ae) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.am = ptrtoint ptr %i.ab to i64, !nosanitize !10 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !10
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !10
  %i.ap = and i1 %i.af, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @108, i64 %i.am) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 88 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !160 ; 4 uses
  %i.at = icmp ult i8 %i.as, 2
  br i1 %i.at, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.au = zext i8 %i.as to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @109, i64 %i.au) #11, !nosanitize !10
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
  %.not1757 = icmp eq ptr %.076.fr, null
  br i1 %.not1757, label %.split1291.us, label %.preheader116.split.preheader, !prof !89

bb.r:                                             ; preds = %bb.q
  %i.be = and i64 %0, 4294967295
  %i.bf = and i64 %.sroa.2.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @110, i64 %i.be, i64 %i.bf) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split:                              ; preds = %bb.t
  %indvars.iv.next3285 = add nuw nsw i64 %indvars.iv32844471, 1
  %i.bg = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bj, i32 1), !nosanitize !10 ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 0, !nosanitize !10
  %i.bi = extractvalue { i32, i1 } %i.bg, 1, !nosanitize !10
  br i1 %i.bi, label %.split.us, label %.preheader116.split.preheader, !prof !92, !llvm.loop !213, !nosanitize !10

.split.us:                                        ; preds = %.preheader116.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @111, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split.preheader:                    ; preds = %.preheader116, %.preheader116.split
  %i.bj = phi i32 [ %i.bh, %.preheader116.split ], [ 1, %.preheader116 ] ; 4 uses
  %.0804472 = phi i32 [ %i.bj, %.preheader116.split ], [ 0, %.preheader116 ]
  %indvars.iv32844471 = phi i64 [ %indvars.iv.next3285, %.preheader116.split ], [ 0, %.preheader116 ] ; 2 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.bd, i64 %.us-phi1293) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %.preheader116.split.preheader
  %i.bo = ptrtoint ptr %i.bl to i64, !nosanitize !10 ; 2 uses
  %i.bp = and i64 %i.bo, 7, !nosanitize !10
  %i.bq = icmp eq i64 %i.bp, 0, !nosanitize !10
  br i1 %i.bq, label %bb.t, label %.split1295, !prof !11, !nosanitize !10

.split1295:                                       ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.bo) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.br = load i32, ptr %i.bl, align 8, !tbaa !96
  %.not109 = icmp sgt i32 %i.br, %.sroa.0.0.extract.trunc
  br i1 %.not109, label %.preheader, label %.preheader116.split, !llvm.loop !213

.preheader:                                       ; preds = %bb.t
  %i.bs = icmp sgt i32 %i.bb, %.sroa.0.0.extract.trunc
  br i1 %i.bs, label %.lr.ph1576, label %._crit_edge1577

.lr.ph1576:                                       ; preds = %.preheader
  %i.bt = ptrtoint ptr %.077.fr to i64            ; 4 uses
  %.not1758.a = icmp eq ptr %.077.fr, null
  br i1 %.not1758.a, label %.lr.ph1576.split.split.us, label %.lr.ph1576.split.us, !prof !89

.lr.ph1576.split.us:                              ; preds = %.lr.ph1576, %.loopexit.us
  %indvars.iv3289 = phi i64 [ %indvars.iv.next3290, %.loopexit.us ], [ %indvars.iv32844471, %.lr.ph1576 ] ; 5 uses
  %.0821574.us = phi i32 [ %.183.lcssa.us, %.loopexit.us ], [ %.sroa.0.0.extract.trunc, %.lr.ph1576 ] ; 3 uses
  %.0841573.us = phi i8 [ %.185.lcssa.us, %.loopexit.us ], [ %i.as, %.lr.ph1576 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.076.fr, i64 %indvars.iv3289 ; 2 uses
  %i.bv = shl nuw nsw i64 %indvars.iv3289, 4
  %i.bw = add i64 %i.bv, %i.bd, !nosanitize !10   ; 2 uses
  %.not1762.a = icmp ult i64 %i.bw, %i.bd, !nosanitize !10
  br i1 %.not1762.a, label %.split1588.us, label %bb.u, !prof !89, !nosanitize !10

bb.u:                                             ; preds = %.lr.ph1576.split.us
  %i.bx = ptrtoint ptr %i.bu to i64, !nosanitize !10 ; 2 uses
  %i.by = and i64 %i.bx, 7, !nosanitize !10
  %i.bz = icmp eq i64 %i.by, 0, !nosanitize !10
  br i1 %i.bz, label %bb.v, label %.split1591.us, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.ca = load i32, ptr %i.bu, align 8, !tbaa !96 ; 2 uses
  %exitcond3291 = icmp eq i64 %indvars.iv3289, 2147483647
  br i1 %exitcond3291, label %.split1594.us, label %bb.w, !prof !89, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  %i.cb = shl i64 %indvars.iv3289, 32
  %sext4247 = add i64 %i.cb, 4294967296           ; 2 uses
  %i.cc = ashr exact i64 %sext4247, 28
  %i.cd = getelementptr inbounds i8, ptr %.076.fr, i64 %i.cc ; 2 uses
  %i.ce = ashr exact i64 %sext4247, 28
  %i.cf = add i64 %i.ce, %i.bd, !nosanitize !10   ; 2 uses
  %.not4248 = icmp ult i64 %i.cf, %i.bd, !nosanitize !10
  br i1 %.not4248, label %.split1597.us, label %bb.x, !prof !89, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.cg = ptrtoint ptr %i.cd to i64, !nosanitize !10 ; 2 uses
  %i.ch = and i64 %i.cg, 7, !nosanitize !10
  %i.ci = icmp eq i64 %i.ch, 0, !nosanitize !10
  br i1 %i.ci, label %bb.y, label %.split1600.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  %i.cj = load i32, ptr %i.cd, align 8, !tbaa !96
  %i.ck = tail call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.bb) ; 3 uses
  %i.cl = icmp slt i32 %.0821574.us, %i.ck
  br i1 %i.cl, label %.lr.ph1348.us.preheader, label %.loopexit.us

.lr.ph1348.us.preheader:                          ; preds = %bb.y
  %i.cm = sext i32 %.0821574.us to i64
  %i.cn = sext i32 %i.ck to i64
  br label %.lr.ph1348.us

.lr.ph1348.us:                                    ; preds = %.lr.ph1348.us.preheader, %._crit_edge1343.us
  %indvars.iv3281 = phi i64 [ %i.cm, %.lr.ph1348.us.preheader ], [ %indvars.iv.next3282, %._crit_edge1343.us ] ; 6 uses
  %.1851345.us1581 = phi i8 [ %.0841573.us, %.lr.ph1348.us.preheader ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %i.co = getelementptr inbounds [168 x i8], ptr %.077.fr, i64 %indvars.iv3281 ; 4 uses
  %i.cp = mul nsw i64 %indvars.iv3281, 168
  %i.cq = add i64 %i.cp, %i.bt, !nosanitize !10   ; 3 uses
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = icmp uge i64 %i.cq, %i.bt, !nosanitize !10
  %i.ct = icmp slt i64 %indvars.iv3281, 0
  %i.cu = xor i1 %i.ct, %i.cs
  %i.cv = and i1 %i.cr, %i.cu, !nosanitize !10
  br i1 %i.cv, label %bb.z, label %.split1352.us, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %.lr.ph1348.us
  %i.cw = trunc nsw i64 %indvars.iv3281 to i32
  %i.cx = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cw, i32 %i.ca), !nosanitize !10
  %i.cy = extractvalue { i32, i1 } %i.cx, 1, !nosanitize !10
  br i1 %i.cy, label %.split1356.us, label %bb.aa, !prof !89, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.cz = ptrtoint ptr %i.co to i64, !nosanitize !10 ; 2 uses
  %i.da = and i64 %i.cz, 7, !nosanitize !10
  %i.db = icmp eq i64 %i.da, 0, !nosanitize !10
  br i1 %i.db, label %bb.ab, label %.split1360, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !109 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 164
  %i.df = load i32, ptr %i.de, align 4, !tbaa !110 ; 2 uses
  %i.dg = icmp ne ptr %i.dd, null, !nosanitize !10
  %i.dh = ptrtoint ptr %i.dd to i64, !nosanitize !10 ; 2 uses
  %i.di = and i64 %i.dh, 7, !nosanitize !10
  %i.dj = icmp eq i64 %i.di, 0, !nosanitize !10
  %i.dk = and i1 %i.dg, %i.dj, !nosanitize !10
  br i1 %i.dk, label %bb.ac, label %.split1619.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.dl = icmp sgt i32 %i.df, 0
  br i1 %i.dl, label %.lr.ph1342.us, label %._crit_edge1343.us

.lr.ph1342.us:                                    ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 68
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !115
  %.fr1763 = freeze i32 %i.dn
  %i.do = and i32 %.fr1763, 1048576
  %.not110.us.not = icmp eq i32 %i.do, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 5 uses
  %wide.trip.count3280 = zext nneg i32 %i.df to i64
  br label %.lr.ph1342.split.us

.lr.ph1342.split.us:                              ; preds = %.lr.ph1342.us, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph1342.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 5 uses
  %.0791339.us = phi i8 [ 0, %.lr.ph1342.us ], [ %.1.lcssa.us, %._crit_edge.us ] ; 8 uses
  %.2861338.us = phi i8 [ %.1851345.us1581, %.lr.ph1342.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 7 uses
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
  br i1 %i.ea, label %bb.ad, label %.split1628.us, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %.lr.ph1342.split.us
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
  br i1 %i.ek, label %bb.ae, label %.split1632.us, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  %i.el = ptrtoint ptr %i.ec to i64, !nosanitize !10 ; 4 uses
  %i.em = and i64 %i.el, 3, !nosanitize !10
  %i.en = icmp eq i64 %i.em, 0, !nosanitize !10
  %i.eo = and i1 %i.eg, %i.en
  br i1 %i.eo, label %bb.af, label %.split1636.us, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.ep = ptrtoint ptr %i.ds to i64, !nosanitize !10 ; 4 uses
  %i.eq = and i64 %i.ep, 3, !nosanitize !10
  %i.er = icmp eq i64 %i.eq, 0, !nosanitize !10
  %i.es = and i1 %i.dw, %i.er
  br i1 %i.es, label %bb.ag, label %.split1642.us, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
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
  br i1 %or.cond115.us.2, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
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
  br i1 %i.kc, label %bb.ba, label %.split1710.us, !prof !11, !nosanitize !10

bb.ba:                                            ; preds = %bb.az
  %i.kd = ptrtoint ptr %i.ju to i64, !nosanitize !10 ; 2 uses
  %i.ke = and i64 %i.kd, 7, !nosanitize !10
  %i.kf = icmp eq i64 %i.ke, 0, !nosanitize !10
  %i.kg = and i1 %i.jy, %i.kf
  br i1 %i.kg, label %b3SetBit.exit.us.2, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.2:                               ; preds = %bb.ba
  %i.kh = and i32 %i.jq, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = shl nuw i64 1, %i.ki
  %i.kk = load i64, ptr %i.ju, align 8, !tbaa !166
  %i.kl = or i64 %i.kk, %i.kj
  store i64 %i.kl, ptr %i.ju, align 8, !tbaa !166
  br label %bb.bb

bb.bb:                                            ; preds = %b3SetBit.exit.us.2, %bb.ay
  %.4.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.4.us.1, %bb.ay ] ; 2 uses
  %.2.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.2.us.1, %bb.ay ] ; 3 uses
  %exitcond3276.2.not = icmp eq i32 %i.fn, 3
  br i1 %exitcond3276.2.not, label %._crit_edge.us, label %.lr.ph.split.us1582.3

.lr.ph.split.us1582.3:                            ; preds = %bb.bb
  %.not111.us1584.3 = icmp ugt ptr %i.ec, inttoptr (i64 -145 to ptr)
  br i1 %.not111.us1584.3, label %.split1305.us, label %bb.bc, !prof !89, !nosanitize !10

bb.bc:                                            ; preds = %.lr.ph.split.us1582.3
  %.not112.us1585.3 = icmp ugt ptr %i.ds, inttoptr (i64 -169 to ptr)
  br i1 %.not112.us1585.3, label %.split1309.us, label %bb.bd, !prof !89, !nosanitize !10

bb.bd:                                            ; preds = %bb.bc
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
  br i1 %or.cond115.us.3, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
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
  br i1 %i.lj, label %bb.bf, label %.split1710.us, !prof !11, !nosanitize !10

bb.bf:                                            ; preds = %bb.be
  %i.lk = ptrtoint ptr %i.lb to i64, !nosanitize !10 ; 2 uses
  %i.ll = and i64 %i.lk, 7, !nosanitize !10
  %i.lm = icmp eq i64 %i.ll, 0, !nosanitize !10
  %i.ln = and i1 %i.lf, %i.lm
  br i1 %i.ln, label %b3SetBit.exit.us.3, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.3:                               ; preds = %bb.bf
  %i.lo = and i32 %i.kx, 63
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw i64 1, %i.lp
  %i.lr = load i64, ptr %i.lb, align 8, !tbaa !166
  %i.ls = or i64 %i.lr, %i.lq
  store i64 %i.ls, ptr %i.lb, align 8, !tbaa !166
  br label %bb.bg

bb.bg:                                            ; preds = %b3SetBit.exit.us.3, %bb.bd
  %.4.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.4.us.2, %bb.bd ] ; 2 uses
  %.2.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.2.us.2, %bb.bd ] ; 3 uses
  %exitcond3276.3.not = icmp eq i32 %i.fn, 4
  br i1 %exitcond3276.3.not, label %._crit_edge.us, label %.lr.ph.split.us1582.4

.lr.ph.split.us1582.4:                            ; preds = %bb.bg
  %.not111.us1584.4 = icmp ugt ptr %i.ec, inttoptr (i64 -193 to ptr)
  br i1 %.not111.us1584.4, label %.split1305.us, label %bb.bh, !prof !89, !nosanitize !10

bb.bh:                                            ; preds = %.lr.ph.split.us1582.4
  %.not112.us1585.4 = icmp ugt ptr %i.ds, inttoptr (i64 -225 to ptr)
  br i1 %.not112.us1585.4, label %.split1309.us, label %bb.bi, !prof !89, !nosanitize !10

bb.bi:                                            ; preds = %bb.bh
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
  br i1 %or.cond115.us.4, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
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
  br i1 %i.mq, label %bb.bk, label %.split1710.us, !prof !11, !nosanitize !10

bb.bk:                                            ; preds = %bb.bj
  %i.mr = ptrtoint ptr %i.mi to i64, !nosanitize !10 ; 2 uses
  %i.ms = and i64 %i.mr, 7, !nosanitize !10
  %i.mt = icmp eq i64 %i.ms, 0, !nosanitize !10
  %i.mu = and i1 %i.mm, %i.mt
  br i1 %i.mu, label %b3SetBit.exit.us.4, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.4:                               ; preds = %bb.bk
  %i.mv = and i32 %i.me, 63
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw i64 1, %i.mw
  %i.my = load i64, ptr %i.mi, align 8, !tbaa !166
  %i.mz = or i64 %i.my, %i.mx
  store i64 %i.mz, ptr %i.mi, align 8, !tbaa !166
  br label %bb.bl

bb.bl:                                            ; preds = %b3SetBit.exit.us.4, %bb.bi
  %.4.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.4.us.3, %bb.bi ]
  %.2.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.2.us.3, %bb.bi ]
  %exitcond3276.4.not = icmp eq i32 %i.fn, 5
  br i1 %exitcond3276.4.not, label %._crit_edge.us, label %.split1302.us

._crit_edge.us:                                   ; preds = %bb.ag, %bb.ao, %bb.am, %bb.ak, %bb.ai, %.lr.ph.split.us.us.preheader, %bb.bl, %bb.bg, %bb.bb, %bb.aw, %bb.ar
  %.3.lcssa.us = phi i8 [ %.2861338.us, %bb.ag ], [ %.2861338.us, %.lr.ph.split.us.us.preheader ], [ %.2861338.us, %bb.ao ], [ %.2861338.us, %bb.am ], [ %.2861338.us, %bb.ak ], [ %.2861338.us, %bb.ai ], [ %.4.us, %bb.ar ], [ %.4.us.1, %bb.aw ], [ %.4.us.2, %bb.bb ], [ %.4.us.3, %bb.bg ], [ %.4.us.4, %bb.bl ] ; 2 uses
  %.1.lcssa.us = phi i8 [ %.0791339.us, %bb.ag ], [ %.0791339.us, %.lr.ph.split.us.us.preheader ], [ %.0791339.us, %bb.ao ], [ %.0791339.us, %bb.am ], [ %.0791339.us, %bb.ak ], [ %.0791339.us, %bb.ai ], [ %.2.us, %bb.ar ], [ %.2.us.1, %bb.aw ], [ %.2.us.2, %bb.bb ], [ %.2.us.3, %bb.bg ], [ %.2.us.4, %bb.bl ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count3280
  br i1 %exitcond.not, label %._crit_edge1343.us, label %.lr.ph1342.split.us, !llvm.loop !214

._crit_edge1343.us:                               ; preds = %._crit_edge.us, %bb.ac
  %.286.lcssa.us = phi i8 [ %.1851345.us1581, %bb.ac ], [ %.3.lcssa.us, %._crit_edge.us ] ; 2 uses
  %indvars.iv.next3282 = add nsw i64 %indvars.iv3281, 1 ; 2 uses
  %exitcond3283.not = icmp eq i64 %indvars.iv.next3282, %i.cn
  br i1 %exitcond3283.not, label %.loopexit.us, label %.lr.ph1348.us, !llvm.loop !215

.loopexit.us:                                     ; preds = %._crit_edge1343.us, %bb.y
  %.185.lcssa.us = phi i8 [ %.0841573.us, %bb.y ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %.183.lcssa.us = phi i32 [ %.0821574.us, %bb.y ], [ %i.ck, %._crit_edge1343.us ] ; 2 uses
  %i.na = icmp slt i32 %.183.lcssa.us, %i.bb
  %indvars.iv.next3290 = add nuw nsw i64 %indvars.iv3289, 1
  br i1 %i.na, label %.lr.ph1576.split.us, label %._crit_edge1577, !llvm.loop !216

.lr.ph1576.split.split.us:                        ; preds = %.lr.ph1576
  %i.nb = sext i32 %.0804472 to i64               ; 2 uses
  %i.nc = shl nuw nsw i64 %i.nb, 4
  %i.nd = add i64 %i.nc, %i.bd, !nosanitize !10   ; 2 uses
  %.not1760 = icmp ult i64 %i.nd, %i.bd, !nosanitize !10
  br i1 %.not1760, label %.split1588.us, label %.lr.ph, !prof !167, !nosanitize !10

8:                                                ; preds = %.loopexit.us1740
  br i1 %10, label %.lr.ph, label %.split1588.us, !prof !217, !nosanitize !10

.lr.ph:                                           ; preds = %.lr.ph1576.split.split.us, %8
  %.pn = phi i64 [ %i.nl, %8 ], [ %i.nb, %.lr.ph1576.split.split.us ] ; 2 uses
  %i.ne = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %.pn ; 2 uses
  %i.nf = ptrtoint ptr %i.ne to i64, !nosanitize !10 ; 2 uses
  %i.ng = and i64 %i.nf, 7, !nosanitize !10
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !10
  br i1 %i.nh, label %bb.bm, label %.split1591.us, !prof !11, !nosanitize !10

bb.bm:                                            ; preds = %.lr.ph
  %indvars = trunc nsw i64 %.pn to i32
  %i.ni = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %indvars, i32 1), !nosanitize !10 ; 2 uses
  %i.nj = extractvalue { i32, i1 } %i.ni, 1, !nosanitize !10
  br i1 %i.nj, label %.split1594.us, label %bb.bn, !prof !89, !nosanitize !10

bb.bn:                                            ; preds = %bb.bm
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
  br i1 %13, label %bb.bo, label %.split1597.us, !prof !11, !nosanitize !10

bb.bo:                                            ; preds = %bb.bn
  %i.np = ptrtoint ptr %i.nm to i64, !nosanitize !10 ; 2 uses
  %i.nq = and i64 %i.np, 7, !nosanitize !10
  %i.nr = icmp eq i64 %i.nq, 0, !nosanitize !10
  br i1 %i.nr, label %.loopexit.us1740, label %.split1600.us, !prof !11, !nosanitize !10

.loopexit.us1740:                                 ; preds = %bb.bo
  %i.ns = load i32, ptr %i.nm, align 8, !tbaa !96
  %i.nt = tail call noundef i32 @llvm.smin.i32(i32 %i.ns, i32 %i.bb)
  %i.nu = icmp sgt i32 %i.nt, %.sroa.0.0.extract.trunc
  br i1 %i.nu, label %.lr.ph1348, label %8

.split1588.us:                                    ; preds = %.lr.ph1576.split.us, %8, %.lr.ph1576.split.split.us
  %.us-phi1589 = phi i64 [ %i.nd, %.lr.ph1576.split.split.us ], [ %i.no, %8 ], [ %i.bw, %.lr.ph1576.split.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.bd, i64 %.us-phi1589) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1591.us:                                    ; preds = %bb.u, %.lr.ph
  %.us-phi1592 = phi i64 [ %i.nf, %.lr.ph ], [ %i.bx, %bb.u ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %.us-phi1592) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1594.us:                                    ; preds = %bb.v, %bb.bm
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @116, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1597.us:                                    ; preds = %bb.w, %bb.bn
  %.us-phi1598 = phi i64 [ %i.no, %bb.bn ], [ %i.cf, %bb.w ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.bd, i64 %.us-phi1598) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1600.us:                                    ; preds = %bb.x, %bb.bo
  %.us-phi1601 = phi i64 [ %i.np, %bb.bo ], [ %i.cg, %bb.x ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %.us-phi1601) #11, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph1348:                                       ; preds = %.loopexit.us1740
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.nv = ashr exact i64 %sext, 32
  %i.nw = mul nsw i64 %i.nv, 168                  ; 2 uses
  %i.nx = icmp eq i64 %sext, 0
  %i.ny = icmp uge i64 %i.nw, %i.bt, !nosanitize !10
  %i.nz = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %i.oa = xor i1 %i.nz, %i.ny
  %i.ob = and i1 %i.nx, %i.oa, !nosanitize !10
  br i1 %i.ob, label %bb.bp, label %.split1352.us, !prof !11, !nosanitize !10

bb.bp:                                            ; preds = %.lr.ph1348
  %i.oc = load i32, ptr %i.ne, align 8, !tbaa !96 ; 2 uses
  %i.od = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.sroa.0.0.extract.trunc, i32 %i.oc), !nosanitize !10
  %i.oe = extractvalue { i32, i1 } %i.od, 1, !nosanitize !10
  br i1 %i.oe, label %.split1356.us, label %.split1360, !prof !89, !nosanitize !10

.split1352.us:                                    ; preds = %.lr.ph1348.us, %.lr.ph1348
  %.us-phi1354 = phi i64 [ %i.nw, %.lr.ph1348 ], [ %i.cq, %.lr.ph1348.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.bt, i64 %.us-phi1354) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1356.us:                                    ; preds = %bb.z, %bb.bp
  %.us-phi1357 = phi i32 [ %i.oc, %bb.bp ], [ %i.ca, %bb.z ]
  %.us-phi1358 = phi i64 [ %0, %bb.bp ], [ %indvars.iv3281, %bb.z ]
  %i.of = and i64 %.us-phi1358, 4294967295
  %i.og = zext i32 %.us-phi1357 to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @120, i64 %i.of, i64 %i.og) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1360:                                       ; preds = %bb.aa, %bb.bp
  %.us-phi1361 = phi i64 [ 0, %bb.bp ], [ %i.cz, %bb.aa ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @121, i64 %.us-phi1361) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1619.us:                                    ; preds = %bb.ab
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %i.dh) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1628.us:                                    ; preds = %.lr.ph1342.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @123, i64 %i.du, i64 %i.dv) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1632.us:                                    ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @124, i64 %i.ee, i64 %i.ef) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1636.us:                                    ; preds = %bb.ae
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.el) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1642.us:                                    ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %i.ep) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1302.us:                                    ; preds = %bb.bl, %bb.ao
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @127, i64 5) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1305.us:                                    ; preds = %.lr.ph.split.us.us.4, %.lr.ph.split.us.us.3, %.lr.ph.split.us.us.2, %.lr.ph.split.us.us.1, %.lr.ph.split.us1582.4, %.lr.ph.split.us1582.3, %.lr.ph.split.us1582.2, %.lr.ph.split.us1582.1
  %.sink = phi i64 [ 144, %.lr.ph.split.us.us.3 ], [ 96, %.lr.ph.split.us.us.2 ], [ 48, %.lr.ph.split.us.us.1 ], [ 192, %.lr.ph.split.us1582.4 ], [ 144, %.lr.ph.split.us1582.3 ], [ 96, %.lr.ph.split.us1582.2 ], [ 48, %.lr.ph.split.us1582.1 ], [ 192, %.lr.ph.split.us.us.4 ]
  %i.oh = add i64 %.sink, %i.el, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @128, i64 %i.el, i64 %i.oh) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1309.us:                                    ; preds = %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.bh, %bb.bc, %bb.ax, %bb.as
  %.sink4246 = phi i64 [ 168, %bb.al ], [ 112, %bb.aj ], [ 56, %bb.ah ], [ 224, %bb.bh ], [ 168, %bb.bc ], [ 112, %bb.ax ], [ 56, %bb.as ], [ 224, %bb.an ]
  %i.oi = add i64 %.sink4246, %i.ep, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @129, i64 %i.ep, i64 %i.oi) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1710.us:                                    ; preds = %bb.bj, %bb.be, %bb.az, %bb.au, %bb.ap
  %.lcssa1807.ph = phi i64 [ %i.mk, %bb.bj ], [ %i.ld, %bb.be ], [ %i.jw, %bb.az ], [ %i.ip, %bb.au ], [ %i.hi, %bb.ap ]
  %.lcssa1805.ph = phi i64 [ %i.ml, %bb.bj ], [ %i.le, %bb.be ], [ %i.jx, %bb.az ], [ %i.iq, %bb.au ], [ %i.hj, %bb.ap ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @245, i64 %.lcssa1807.ph, i64 %.lcssa1805.ph) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split1714.us:                                    ; preds = %bb.bk, %bb.bf, %bb.ba, %bb.av, %bb.aq
  %.lcssa1809.ph = phi i64 [ %i.mr, %bb.bk ], [ %i.lk, %bb.bf ], [ %i.kd, %bb.ba ], [ %i.iw, %bb.av ], [ %i.hp, %bb.aq ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @246, i64 %.lcssa1809.ph) #11, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge1577:                                  ; preds = %.loopexit.us, %.preheader
  %.084.lcssa = phi i8 [ %i.as, %.preheader ], [ %.185.lcssa.us, %.loopexit.us ]
  store i8 %.084.lcssa, ptr %i.ar, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @b3GetWideContactConstraintByteCount() local_unnamed_addr #7 !func_sanitize !218 {
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @130, i64 %i.b) #11, !nosanitize !10
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
  %.fr12764 = freeze ptr %i.m                     ; 5 uses
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @131, i64 %i.s) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4764
  %i.x = load i8, ptr %i.w, align 4, !tbaa !88    ; 3 uses
  %i.y = icmp ult i8 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.z = zext i8 %i.x to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @132, i64 %i.z) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.aa = trunc nuw i8 %i.x to i1
  %i.ab = select i1 %i.aa, float 1.000000e+00, float 0.000000e+00 ; 7 uses
  %i.ac = tail call float @b3GetLengthUnitsPerMeter() #12
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
  %i.al = ptrtoint ptr %.fr12764 to i64           ; 9 uses
  %.not12765 = icmp eq ptr %.fr12764, null
  br i1 %.not12765, label %.split11240.us, label %.preheader1196.split.preheader, !prof !89

bb.h:                                             ; preds = %bb.g
  %i.am = and i64 %0, 4294967295
  %i.an = and i64 %.sroa.21149.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @133, i64 %i.am, i64 %i.an) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1196.split:                             ; preds = %bb.j
  %indvars.iv.next24351 = add nuw nsw i64 %indvars.iv2435036767, 1
  %i.ao = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ar, i32 1), !nosanitize !10 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 0, !nosanitize !10
  %i.aq = extractvalue { i32, i1 } %i.ao, 1, !nosanitize !10
  br i1 %i.aq, label %.split.us, label %.preheader1196.split.preheader, !prof !92, !llvm.loop !219, !nosanitize !10

.split.us:                                        ; preds = %.preheader1196.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @134, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1196.split.preheader:                   ; preds = %.preheader1196, %.preheader1196.split
  %i.ar = phi i32 [ %i.ap, %.preheader1196.split ], [ 1, %.preheader1196 ] ; 3 uses
  %indvars.iv2435036767 = phi i64 [ %indvars.iv.next24351, %.preheader1196.split ], [ 0, %.preheader1196 ] ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %.fr12764, i64 %i.as ; 2 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @135, i64 %i.al, i64 %.us-phi11242) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %.preheader1196.split.preheader
  %i.aw = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.ax = and i64 %i.aw, 7, !nosanitize !10
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !10
  br i1 %i.ay, label %bb.j, label %.split11244, !prof !11, !nosanitize !10

.split11244:                                      ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @137, i64 %i.aw) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.at, align 8, !tbaa !171
  %.not665 = icmp sgt i32 %i.az, %.sroa.01148.0.extract.trunc
  br i1 %.not665, label %.preheader1195, label %.preheader1196.split, !llvm.loop !219

.preheader1195:                                   ; preds = %bb.j
  %i.ba = icmp sgt i32 %i.aj, %.sroa.01148.0.extract.trunc
  br i1 %i.ba, label %.lr.ph12763, label %._crit_edge

.lr.ph12763:                                      ; preds = %.preheader1195
  %i.bb = ptrtoint ptr %i.o to i64                ; 3 uses
  %i.bc = icmp ne ptr %i.o, null                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  %i.be = ptrtoint ptr %i.i to i64                ; 6 uses
  %i.bf = icmp ne ptr %i.i, null                  ; 4 uses
  %i.bg = ptrtoint ptr %i.k to i64                ; 6 uses
  %i.bh = icmp ne ptr %i.k, null                  ; 4 uses
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  br label %bb.k

.loopexit:                                        ; preds = %bb.br, %bb.u
  %.1.lcssa = phi i32 [ %.062312762, %bb.u ], [ %i.by, %bb.br ] ; 2 uses
  %i.bi = icmp slt i32 %.1.lcssa, %i.aj
  br i1 %i.bi, label %bb.k, label %._crit_edge, !llvm.loop !220

bb.k:                                             ; preds = %.lr.ph12763, %.loopexit
  %indvars.iv24355 = phi i64 [ %indvars.iv2435036767, %.lr.ph12763 ], [ %indvars.iv.next24356, %.loopexit ] ; 4 uses
  %.062312762 = phi i32 [ %.sroa.01148.0.extract.trunc, %.lr.ph12763 ], [ %.1.lcssa, %.loopexit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.fr12764, i64 %indvars.iv24355 ; 4 uses
  %i.bk = shl nuw nsw i64 %indvars.iv24355, 4
  %i.bl = add i64 %i.bk, %i.al, !nosanitize !10   ; 2 uses
  %.not12766.a = icmp ult i64 %i.bl, %i.al, !nosanitize !10
  br i1 %.not12766.a, label %bb.l, label %bb.m, !prof !89, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @138, i64 %i.al, i64 %i.bl) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %i.bj to i64, !nosanitize !10 ; 2 uses
  %i.bn = and i64 %i.bm, 7, !nosanitize !10
  %i.bo = icmp eq i64 %i.bn, 0, !nosanitize !10
  br i1 %i.bo, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @139, i64 %i.bm) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.bj, align 8, !tbaa !171 ; 2 uses
  %indvars.iv.next24356 = add nuw nsw i64 %indvars.iv24355, 1 ; 3 uses
  %exitcond24359 = icmp eq i64 %indvars.iv24355, 2147483647
  br i1 %exitcond24359, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @140, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %sext = shl i64 %indvars.iv.next24356, 32       ; 2 uses
  %i.bq = ashr exact i64 %sext, 28
  %i.br = getelementptr inbounds i8, ptr %.fr12764, i64 %i.bq ; 2 uses
  %i.bs = ashr exact i64 %sext, 28
  %i.bt = add i64 %i.bs, %i.al, !nosanitize !10   ; 3 uses
  %7 = icmp ne i64 %i.bt, 0
  %8 = icmp uge i64 %i.bt, %i.al, !nosanitize !10
  %9 = and i64 %indvars.iv.next24356, 2147483648
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, %8
  %12 = and i1 %7, %11, !nosanitize !10
  br i1 %12, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 %i.al, i64 %i.bt) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.bu = ptrtoint ptr %i.br to i64, !nosanitize !10 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !nosanitize !10
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !10
  br i1 %i.bw, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @142, i64 %i.bu) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !171
  %i.by = tail call noundef i32 @llvm.smin.i32(i32 %i.bx, i32 %i.aj) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !172 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !173
  %.fr12767 = freeze ptr %i.cc                    ; 3 uses
  %i.cd = icmp slt i32 %.062312762, %i.by
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.u
  %i.ce = ptrtoint ptr %.fr12767 to i64           ; 4 uses
  %.not12768.a = icmp eq ptr %.fr12767, null
  %i.cf = sext i32 %i.ca to i64
  %i.cg = sext i32 %.062312762 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.br
  %indvars.iv24347 = phi i64 [ %i.cg, %.lr.ph ], [ %indvars.iv.next24348, %bb.br ] ; 7 uses
  %i.ch = getelementptr inbounds [1696 x i8], ptr %i.o, i64 %indvars.iv24347 ; 64 uses
  %i.ci = mul nsw i64 %indvars.iv24347, 1696
  %i.cj = add i64 %i.ci, %i.bb, !nosanitize !10   ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = xor i1 %i.bc, %i.ck
  %i.cm = icmp uge i64 %i.cj, %i.bb, !nosanitize !10
  %i.cn = icmp slt i64 %indvars.iv24347, 0
  %i.co = xor i1 %i.cn, %i.cm
  %i.cp = and i1 %i.cl, %i.co, !nosanitize !10
  br i1 %i.cp, label %bb.x, label %bb.w, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @143, i64 %i.bb, i64 %i.cj) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.x:                                             ; preds = %bb.v
  %i.cq = trunc nsw i64 %indvars.iv24347 to i32
  %i.cr = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cq, i32 %i.bp), !nosanitize !10 ; 2 uses
  %i.cs = extractvalue { i32, i1 } %i.cr, 1, !nosanitize !10
  br i1 %i.cs, label %bb.bo, label %.preheader, !prof !89, !nosanitize !10

.preheader:                                       ; preds = %bb.x
  %i.ct = extractvalue { i32, i1 } %i.cr, 0, !nosanitize !10 ; 5 uses
  %i.cu = add i32 %i.ct, 536870912
  %i.cv = icmp ult i32 %i.cu, 1073741824
  %i.cw = shl nsw i32 %i.ct, 2                    ; 3 uses
  %i.cx = icmp slt i32 %i.ct, 0
  %i.cy = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cz = and i64 %i.cy, 15
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = and i1 %i.bc, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 896 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ch, i64 144
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 160
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ch, i64 176
  %i.do = getelementptr inbounds nuw i8, ptr %i.ch, i64 192
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 208
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 224
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ch, i64 240
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ch, i64 256
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ch, i64 272
  %i.du = getelementptr inbounds nuw i8, ptr %i.ch, i64 288
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ch, i64 304
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ch, i64 320
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 336
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ch, i64 352
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ch, i64 368
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 384
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ch, i64 400
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ch, i64 768
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ch, i64 880
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ch, i64 784
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ch, i64 800
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ch, i64 816
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ch, i64 832
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ch, i64 848
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ch, i64 864
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %i.ch, i64 928 ; 7 uses
  %i.em = ptrtoint ptr %i.el to i64               ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ch, i64 416
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ch, i64 432
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ch, i64 448
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ch, i64 464
  %i.er = getelementptr inbounds nuw i8, ptr %i.ch, i64 480
  %i.es = getelementptr inbounds nuw i8, ptr %i.ch, i64 496
  %i.et = getelementptr inbounds nuw i8, ptr %i.ch, i64 544
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ch, i64 560
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ch, i64 576
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ch, i64 592
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ch, i64 608
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ch, i64 512
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ch, i64 528
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ch, i64 624
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ch, i64 640
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ch, i64 656
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ch, i64 672
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ch, i64 688
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ch, i64 704
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ch, i64 720
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ch, i64 736
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ch, i64 752
  br i1 %i.cv, label %.preheader.split, label %bb.bp, !prof !11, !nosanitize !10

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not12768.a, label %.preheader.split.split.us, label %.preheader.split.split.split.us.preheader, !prof !89

.preheader.split.split.us:                        ; preds = %.preheader.split
  %.not666.us = icmp slt i32 %i.cw, %i.ca
  br i1 %.not666.us, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.preheader.split.split.us
  %i.fj = sext i32 %i.cw to i64
  %i.fk = shl nsw i64 %i.fj, 2                    ; 2 uses
  %i.fl = icmp eq i32 %i.ct, 0
  %i.fm = icmp uge i64 %i.fk, %i.ce, !nosanitize !10
  %i.fn = and i1 %i.fl, %i.fm
  br i1 %i.fn, label %.split11270, label %.split11266.us, !prof !11, !nosanitize !10

.preheader.split.split.split.us.preheader:        ; preds = %.preheader.split
  %i.fo = sext i32 %i.cw to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ch, i64 1088
  %.not669.us.1 = icmp ugt ptr %i.el, inttoptr (i64 -193 to ptr)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ch, i64 1280
  %.not669.us.2 = icmp ugt ptr %i.el, inttoptr (i64 -385 to ptr)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ch, i64 1472
  %.not669.us.3 = icmp ugt ptr %i.el, inttoptr (i64 -577 to ptr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ch, i64 1664
  %.not669.us.4 = icmp ugt ptr %i.el, inttoptr (i64 -769 to ptr)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ch, i64 1856
  br label %.preheader.split.split.split.us

.preheader.split.split.split.us:                  ; preds = %.preheader.split.split.split.us.preheader, %._crit_edge11263.us
  %indvars.iv24343 = phi i64 [ 0, %.preheader.split.split.split.us.preheader ], [ %indvars.iv.next24344, %._crit_edge11263.us ] ; 88 uses
  %i.fu = add nuw nsw i64 %indvars.iv24343, %i.fo ; 3 uses
  %.not666.us11721 = icmp slt i64 %i.fu, %i.cf
  br i1 %.not666.us11721, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.preheader.split.split.split.us
  %i.fv = getelementptr inbounds [4 x i8], ptr %.fr12767, i64 %i.fu ; 2 uses
  %i.fw = shl nsw i64 %i.fu, 2
  %i.fx = add i64 %i.fw, %i.ce, !nosanitize !10   ; 3 uses
  %i.fy = icmp ne i64 %i.fx, 0
  %i.fz = icmp uge i64 %i.fx, %i.ce, !nosanitize !10
  %i.ga = xor i1 %i.cx, %i.fz
  %i.gb = and i1 %i.fy, %i.ga, !nosanitize !10
  br i1 %i.gb, label %bb.aa, label %.split11266.us, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.gc = ptrtoint ptr %i.fv to i64, !nosanitize !10 ; 2 uses
  %i.gd = and i64 %i.gc, 3, !nosanitize !10
  %i.ge = icmp eq i64 %i.gd, 0, !nosanitize !10
  br i1 %i.ge, label %bb.ab, label %.split11270, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.gf = load i32, ptr %i.fv, align 4, !tbaa !174 ; 2 uses
  %i.gg = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 3 uses
  %i.gh = sext i32 %i.gf to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [216 x i8], ptr %i.gg, i64 %i.gh ; 9 uses
  %i.gj = mul nsw i64 %i.gh, 216
  %i.gk = ptrtoint ptr %i.gg to i64, !nosanitize !10 ; 3 uses
  %i.gl = add i64 %i.gj, %i.gk, !nosanitize !10   ; 3 uses
  %i.gm = icmp ne ptr %i.gg, null, !nosanitize !10 ; 2 uses
  %i.gn = icmp eq i64 %i.gl, 0
  %i.go = xor i1 %i.gm, %i.gn
  %i.gp = icmp uge i64 %i.gl, %i.gk, !nosanitize !10
  %i.gq = icmp slt i32 %i.gf, 0
  %i.gr = xor i1 %i.gq, %i.gp
  %i.gs = and i1 %i.go, %i.gr, !nosanitize !10
  br i1 %i.gs, label %bb.ac, label %.split11729.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.gt = ptrtoint ptr %i.gi to i64, !nosanitize !10 ; 2 uses
  %i.gu = and i64 %i.gt, 7, !nosanitize !10
  %i.gv = icmp eq i64 %i.gu, 0, !nosanitize !10
  %i.gw = and i1 %i.gm, %i.gv
  br i1 %i.gw, label %bb.ad, label %.split11733.us, !prof !11, !nosanitize !10
end_hunk_2
begin_hunk_3_@b3PrepareContacts_Convex:bb.a
  %i.jk = icmp uge i64 %i.jh, %i.be, !nosanitize !10
  %i.jl = icmp slt i32 %i.hc, 0                   ; 2 uses
  %i.jm = xor i1 %i.jl, %i.jk
  %i.jn = and i1 %i.jj, %i.jm, !nosanitize !10
  br i1 %i.jn, label %bb.ap, label %.split11790.us, !prof !11, !nosanitize !10

bb.ap:                                            ; preds = %bb.ao
  %i.jo = ptrtoint ptr %i.jf to i64, !nosanitize !10 ; 2 uses
  %i.jp = and i64 %i.jo, 3, !nosanitize !10
  %i.jq = icmp eq i64 %i.jp, 0, !nosanitize !10
  %i.jr = and i1 %i.bf, %i.jq
  br i1 %i.jr, label %bb.aq, label %.split11794.us, !prof !11, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  %i.js = getelementptr inbounds nuw i8, ptr %i.jf, i64 104
  %i.jt = load float, ptr %i.js, align 4, !tbaa !106
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jf, i64 144
  %.sroa.21.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jf, i64 156
  %.sroa.39.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jf, i64 172
  %i.jv = load <3 x float>, ptr %i.ju, align 4, !tbaa !107
  %i.jw = shufflevector <3 x float> %i.jv, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 0>
  %i.jx = load <4 x float>, ptr %.sroa.21.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %i.jy = load <2 x float>, ptr %.sroa.39.0..sroa_idx.us, align 4, !tbaa !107
  %i.jz = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.je ; 5 uses
  %i.ka = mul nsw i64 %i.je, 56
  %i.kb = add i64 %i.ka, %i.bg, !nosanitize !10   ; 3 uses
  %i.kc = icmp eq i64 %i.kb, 0
  %i.kd = xor i1 %i.bh, %i.kc
  %i.ke = icmp uge i64 %i.kb, %i.bg, !nosanitize !10
  %i.kf = xor i1 %i.jl, %i.ke
  %i.kg = and i1 %i.kd, %i.kf, !nosanitize !10
  br i1 %i.kg, label %bb.ar, label %.split11803.us, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  %i.kh = ptrtoint ptr %i.jz to i64, !nosanitize !10 ; 2 uses
  %i.ki = and i64 %i.kh, 3, !nosanitize !10
  %i.kj = icmp eq i64 %i.ki, 0, !nosanitize !10
  %i.kk = and i1 %i.bh, %i.kj
  br i1 %i.kk, label %bb.as, label %.split11807.us, !prof !11, !nosanitize !10

bb.as:                                            ; preds = %bb.ar
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %.sroa.5377.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.sroa.5377.0.copyload378.us = load float, ptr %.sroa.5377.0..sroa_idx.us, align 4, !tbaa !107
  %.sroa.0375.0.copyload376.us = load <2 x float>, ptr %i.jz, align 4, !tbaa !107
  %.sroa.0371.0.copyload372.us = load <2 x float>, ptr %i.kl, align 4, !tbaa !107
  %.sroa.5373.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  %.sroa.5373.0.copyload374.us = load float, ptr %.sroa.5373.0..sroa_idx.us, align 4, !tbaa !107
  %i.km = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> %i.jx, <4 x i32> <i32 0, i32 4, i32 6, i32 1>
  %i.ko = shufflevector <4 x float> %i.km, <4 x float> %i.jx, <4 x i32> <i32 1, i32 6, i32 5, i32 7>
  br label %bb.at

bb.at:                                            ; preds = %bb.an, %bb.as
  %.sroa.0371.0.us = phi <2 x float> [ %.sroa.0371.0.copyload372.us, %bb.as ], [ zeroinitializer, %bb.an ] ; 3 uses
  %.sroa.5373.0.us = phi float [ %.sroa.5373.0.copyload374.us, %bb.as ], [ 0.000000e+00, %bb.an ]
  %.sroa.0375.0.us = phi <2 x float> [ %.sroa.0375.0.copyload376.us, %bb.as ], [ zeroinitializer, %bb.an ]
  %.sroa.5377.0.us = phi float [ %.sroa.5377.0.copyload378.us, %bb.as ], [ 0.000000e+00, %bb.an ]
  %.0629.us = phi float [ %i.jt, %bb.as ], [ 0.000000e+00, %bb.an ] ; 4 uses
  %i.kp = phi <4 x float> [ %i.kn, %bb.as ], [ zeroinitializer, %bb.an ] ; 14 uses
  %i.kq = phi <4 x float> [ %i.jw, %bb.as ], [ zeroinitializer, %bb.an ] ; 10 uses
  %i.kr = phi <4 x float> [ %i.ko, %bb.as ], [ zeroinitializer, %bb.an ] ; 7 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv24343
  store float %.0628.us, ptr %i.ks, align 4, !tbaa !176
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv24343
  store float %.0629.us, ptr %i.kt, align 4, !tbaa !176
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv24343
  %i.kv = extractelement <4 x float> %i.jb, i64 3
  store float %i.kv, ptr %i.ku, align 4, !tbaa !176
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv24343
  %i.kx = extractelement <4 x float> %i.jb, i64 2
  store float %i.kx, ptr %i.kw, align 4, !tbaa !176
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv24343
  %i.kz = extractelement <4 x float> %i.jb, i64 0
  store float %i.kz, ptr %i.ky, align 4, !tbaa !176
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv24343
  %i.lb = extractelement <4 x float> %i.jc, i64 2
  store float %i.lb, ptr %i.la, align 4, !tbaa !176
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv24343
  %i.ld = extractelement <4 x float> %i.ja, i64 2
  store float %i.ld, ptr %i.lc, align 4, !tbaa !176
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv24343
  %i.lf = extractelement <4 x float> %i.ja, i64 3
  store float %i.lf, ptr %i.le, align 4, !tbaa !176
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv24343
  %i.lh = extractelement <4 x float> %i.kq, i64 3 ; 2 uses
  store float %i.lh, ptr %i.lg, align 4, !tbaa !176
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv24343
  %i.lj = extractelement <4 x float> %i.kq, i64 2 ; 2 uses
  store float %i.lj, ptr %i.li, align 4, !tbaa !176
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv24343
  %i.ll = extractelement <4 x float> %i.kq, i64 0
  store float %i.ll, ptr %i.lk, align 4, !tbaa !176
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv24343
  %i.ln = extractelement <4 x float> %i.kr, i64 2 ; 2 uses
  store float %i.ln, ptr %i.lm, align 4, !tbaa !176
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv24343
  %i.lp = extractelement <4 x float> %i.kp, i64 2
  store float %i.lp, ptr %i.lo, align 4, !tbaa !176
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv24343
  %i.lr = extractelement <4 x float> %i.kp, i64 3
  store float %i.lr, ptr %i.lq, align 4, !tbaa !176
  %or.cond.us = or i1 %i.ho, %i.jd                ; 3 uses
  %.sroa.6975.0.us = select i1 %or.cond.us, float %.sroa.51144.0.copyload, float %.sroa.51147.0.copyload
  %.sroa.5972.0.us = select i1 %or.cond.us, float %.sroa.41143.0.copyload, float %.sroa.41146.0.copyload
  %.sroa.0970.0.us = select i1 %or.cond.us, float %.sroa.01142.0.copyload, float %.sroa.01145.0.copyload
  %i.ls = icmp ne ptr %i.gy, null, !nosanitize !10
  %i.lt = ptrtoint ptr %i.gy to i64, !nosanitize !10 ; 7 uses
  %i.lu = and i64 %i.lt, 3, !nosanitize !10
  %i.lv = icmp eq i64 %i.lu, 0, !nosanitize !10
  %i.lw = and i1 %i.ls, %i.lv, !nosanitize !10
  br i1 %i.lw, label %bb.au, label %.split11861.us, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  %i.lx = getelementptr inbounds nuw i8, ptr %i.gy, i64 224 ; 2 uses
  %.sroa.0961.0.copyload.us = load <2 x float>, ptr %i.lx, align 4, !tbaa !107 ; 10 uses
  %.sroa.12969.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gy, i64 232
  %.sroa.12969.0.copyload.us = load float, ptr %.sroa.12969.0..sroa_idx.us, align 4, !tbaa !107 ; 11 uses
  %.sroa.0961.0.vec.extract.us = extractelement <2 x float> %.sroa.0961.0.copyload.us, i64 0 ; 7 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv24343
  store float %.sroa.0961.0.vec.extract.us, ptr %i.ly, align 4, !tbaa !176
  %.sroa.0961.4.vec.extract.us = extractelement <2 x float> %.sroa.0961.0.copyload.us, i64 1 ; 8 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv24343
  store float %.sroa.0961.4.vec.extract.us, ptr %i.lz, align 4, !tbaa !176
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv24343
  store float %.sroa.12969.0.copyload.us, ptr %i.ma, align 4, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.mb = tail call float @llvm.fabs.f32(float %.sroa.0961.0.vec.extract.us)
  %or.cond.i.us = fcmp ogt float %i.mb, 5.000000e-01
  br i1 %or.cond.i.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !122
  store float %.sroa.12969.0.copyload.us, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  %i.mc = fneg float %.sroa.0961.4.vec.extract.us
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  store float %.sroa.0961.4.vec.extract.us, ptr %.sroa.014.i, align 8, !tbaa !122
  %i.md = fneg float %.sroa.0961.0.vec.extract.us
  store float %i.md, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !123
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.05.0.in.i.us = phi ptr [ %.sroa.014.i, %bb.aw ], [ %.sroa.0.i, %bb.av ]
  %.sroa.5.0.i.us = phi float [ 0.000000e+00, %bb.aw ], [ %i.mc, %bb.av ] ; 3 uses
  %.sroa.05.0.i.us = load <2 x float>, ptr %.sroa.05.0.in.i.us, align 8, !tbaa !107 ; 3 uses
  %i.me = fmul <2 x float> %.sroa.05.0.i.us, %.sroa.05.0.i.us ; 2 uses
  %shift = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.me, %shift
  %i.mf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.mg = fmul float %.sroa.5.0.i.us, %.sroa.5.0.i.us
  %i.mh = fadd float %i.mg, %i.mf                 ; 2 uses
  %i.mi = fcmp ogt float %i.mh, f0x057A0000
  br i1 %i.mi, label %bb.ay, label %b3Perp.exit.us

bb.ay:                                            ; preds = %bb.ax
  %i.mj = tail call float @sqrtf(float noundef %i.mh) #12
  %i.mk = fdiv float 1.000000e+00, %i.mj          ; 2 uses
  %i.ml = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = fmul <2 x float> %.sroa.05.0.i.us, %i.mm
  %i.mo = fmul float %.sroa.5.0.i.us, %i.mk
  br label %b3Perp.exit.us

b3Perp.exit.us:                                   ; preds = %bb.ay, %bb.ax
  %.sroa.07.0.i.i.us = phi <2 x float> [ %i.mn, %bb.ay ], [ zeroinitializer, %bb.ax ] ; 9 uses
  %.sroa.5.0.i.i.us = phi float [ %i.mo, %bb.ay ], [ 0.000000e+00, %bb.ax ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0954.0.vec.extract.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 0 ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv24343
  store float %.sroa.0954.0.vec.extract.us, ptr %i.mp, align 4, !tbaa !176
  %.sroa.0954.4.vec.extract.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 1 ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv24343
  store float %.sroa.0954.4.vec.extract.us, ptr %i.mq, align 4, !tbaa !176
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv24343
  store float %.sroa.5.0.i.i.us, ptr %i.mr, align 4, !tbaa !176
  %i.ms = fmul float %.sroa.12969.0.copyload.us, %.sroa.0954.4.vec.extract.us
  %i.mt = fmul float %.sroa.0961.4.vec.extract.us, %.sroa.5.0.i.i.us
  %i.mu = fsub float %i.ms, %i.mt                 ; 6 uses
  %i.mv = fmul float %.sroa.0961.0.vec.extract.us, %.sroa.5.0.i.i.us
  %i.mw = fmul float %.sroa.12969.0.copyload.us, %.sroa.0954.0.vec.extract.us
  %i.mx = fsub float %i.mv, %i.mw                 ; 6 uses
  %i.my = fmul float %.sroa.0961.4.vec.extract.us, %.sroa.0954.0.vec.extract.us
  %i.mz = fmul float %.sroa.0961.0.vec.extract.us, %.sroa.0954.4.vec.extract.us
  %i.na = fsub float %i.my, %i.mz                 ; 6 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv24343
  store float %i.mu, ptr %i.nb, align 4, !tbaa !176
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv24343
  store float %i.mx, ptr %i.nc, align 4, !tbaa !176
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv24343
  store float %i.na, ptr %i.nd, align 4, !tbaa !176
  %i.ne = getelementptr inbounds nuw i8, ptr %i.gi, i64 144
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv24343
  %i.ng = load float, ptr %i.ne, align 8, !tbaa !116
  store float %i.ng, ptr %i.nf, align 4, !tbaa !176
  %i.nh = getelementptr inbounds nuw i8, ptr %i.gi, i64 192
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv24343
  %i.nj = load float, ptr %i.nh, align 8, !tbaa !225
  store float %i.nj, ptr %i.ni, align 4, !tbaa !176
  %i.nk = getelementptr inbounds nuw i8, ptr %i.gi, i64 196
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv24343
  %i.nm = load float, ptr %i.nk, align 4, !tbaa !226
  store float %i.nm, ptr %i.nl, align 4, !tbaa !176
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv24343
  %.sroa.2352.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gi, i64 208 ; 2 uses
  %.sroa.2352.0.copyload.us = load float, ptr %.sroa.2352.0..sroa_idx.us, align 8
  %i.no = fmul float %.sroa.5.0.i.i.us, %.sroa.2352.0.copyload.us
  %i.np = getelementptr inbounds nuw i8, ptr %i.gi, i64 200 ; 2 uses
  %.sroa.0351.0.copyload.us = load <2 x float>, ptr %i.np, align 8 ; 2 uses
  %foldExtExtBinop36769 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.0351.0.copyload.us
  %foldExtExtBinop36771 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.0351.0.copyload.us
  %shift36773 = shufflevector <2 x float> %foldExtExtBinop36771, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36774 = fadd <2 x float> %foldExtExtBinop36769, %shift36773
  %i.nq = extractelement <2 x float> %foldExtExtBinop36774, i64 0
  %i.nr = fadd float %i.no, %i.nq
  store float %i.nr, ptr %i.nn, align 4, !tbaa !176
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv24343
  %.sroa.2348.0.copyload.us = load float, ptr %.sroa.2352.0..sroa_idx.us, align 8
  %i.nt = fmul float %i.na, %.sroa.2348.0.copyload.us
  %.sroa.0347.0.copyload.us = load <2 x float>, ptr %i.np, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i673.us = extractelement <2 x float> %.sroa.0347.0.copyload.us, i64 0
  %i.nu = fmul float %i.mu, %.sroa.03.0.vec.extract.i673.us
  %.sroa.03.4.vec.extract.i675.us = extractelement <2 x float> %.sroa.0347.0.copyload.us, i64 1
  %i.nv = fmul float %i.mx, %.sroa.03.4.vec.extract.i675.us
  %i.nw = fadd float %i.nu, %i.nv
  %i.nx = fadd float %i.nt, %i.nw
  store float %i.nx, ptr %i.ns, align 4, !tbaa !176
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv24343
  store float %.sroa.0970.0.us, ptr %i.ny, align 4, !tbaa !176
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv24343
  store float %.sroa.5972.0.us, ptr %i.nz, align 4, !tbaa !176
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv24343
  store float %.sroa.6975.0.us, ptr %i.oa, align 4, !tbaa !176
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gy, i64 264
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !121 ; 10 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv24343
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !174
  %i.oe = icmp sgt i32 %i.oc, 0                   ; 2 uses
  br i1 %i.oe, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %b3Perp.exit.us
  %i.of = fadd float %.0628.us, %.0629.us
  %.sroa.09.0.vec.extract.i764.us = extractelement <2 x float> %.sroa.0371.0.us, i64 0 ; 2 uses
  %.sroa.09.0.vec.extract.i748.us = extractelement <2 x float> %.sroa.0387.0.us, i64 0
  %.sroa.07.4.vec.extract.i754.us = extractelement <2 x float> %.sroa.0391.0.us, i64 1
  %wide.trip.count = zext nneg i32 %i.oc to i64
  %i.og = shufflevector <4 x float> %i.jc, <4 x float> %i.ja, <4 x i32> <i32 3, i32 4, i32 7, i32 poison>
  %i.oh = shufflevector <4 x float> %i.kp, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 3, i32 poison, i32 poison>
  %i.oi = shufflevector <4 x float> %i.og, <4 x float> %i.kr, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oj = shufflevector <8 x float> %i.oi, <8 x float> %i.oh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.ok = shufflevector <4 x float> %i.kq, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 0, i32 poison, i32 poison>
  %i.ol = shufflevector <4 x float> %i.jb, <4 x float> %i.kq, <8 x i32> <i32 3, i32 2, i32 0, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.om = shufflevector <8 x float> %i.ol, <8 x float> %i.ok, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.on = shufflevector <4 x float> %i.ja, <4 x float> %i.jc, <4 x i32> <i32 1, i32 6, i32 2, i32 poison>
  %i.oo = shufflevector <4 x float> %i.kr, <4 x float> %i.kp, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.op = shufflevector <8 x float> %i.oo, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.oq = shufflevector <4 x float> %i.on, <4 x float> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.or = shufflevector <8 x float> %i.oq, <8 x float> %i.op, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.os = shufflevector <2 x float> %.sroa.0961.0.copyload.us, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.ot = insertelement <8 x float> %i.os, float %.0629.us, i64 6
  %i.ou = insertelement <8 x float> %i.ot, float %.0628.us, i64 7
  %i.ov = shufflevector <2 x float> %.sroa.0375.0.us, <2 x float> %.sroa.0391.0.us, <4 x i32> <i32 poison, i32 0, i32 2, i32 1>
  %i.ow = insertelement <4 x float> %i.ov, float %.sroa.5393.0.us, i64 0
  %i.ox = shufflevector <2 x float> %.sroa.0387.0.us, <2 x float> %.sroa.0371.0.us, <4 x i32> <i32 0, i32 3, i32 1, i32 poison>
  %shift36780 = shufflevector <2 x float> %.sroa.0371.0.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bc ], [ 0, %.lr.ph.us ] ; 6 uses
  %.063011251.us = phi float [ %i.qa, %bb.bc ], [ 0.000000e+00, %.lr.ph.us ]
  %.sroa.0936.011249.us = phi <2 x float> [ %i.pv, %bb.bc ], [ zeroinitializer, %.lr.ph.us ]
  %.sroa.0941.011247.us = phi <2 x float> [ %i.pt, %bb.bc ], [ zeroinitializer, %.lr.ph.us ]
  %i.oy = phi <2 x float> [ %i.pz, %bb.bc ], [ zeroinitializer, %.lr.ph.us ]
  %exitcond.not = icmp eq i64 %indvars.iv, 5
  br i1 %exitcond.not, label %.split11942.us, label %bb.ba, !prof !89, !nosanitize !10

bb.ba:                                            ; preds = %bb.az
  %i.oz = getelementptr inbounds nuw [56 x i8], ptr %i.gy, i64 %indvars.iv ; 6 uses
  %i.pa = mul nuw nsw i64 %indvars.iv, 56
  %i.pb = add i64 %i.pa, %i.lt, !nosanitize !10   ; 2 uses
  %.not670.us = icmp ult i64 %i.pb, %i.lt, !nosanitize !10
  br i1 %.not670.us, label %.split11945.us, label %bb.bb, !prof !89, !nosanitize !10

bb.bb:                                            ; preds = %bb.ba
  %i.pc = mul nuw nsw i64 %indvars.iv, 192
  %i.pd = add i64 %i.pc, %i.em, !nosanitize !10   ; 2 uses
  %.not671.us = icmp ult i64 %i.pd, %i.em, !nosanitize !10
  br i1 %.not671.us, label %.split11949.us, label %bb.bc, !prof !89, !nosanitize !10

bb.bc:                                            ; preds = %bb.bb
  %i.pe = getelementptr inbounds nuw [192 x i8], ptr %i.el, i64 %indvars.iv ; 11 uses
  %.sroa.0930.0.copyload.us = load <2 x float>, ptr %i.oz, align 4, !tbaa !107 ; 10 uses
  %.sroa.9935.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %.sroa.9935.0.copyload.us = load float, ptr %.sroa.9935.0..sroa_idx.us, align 4, !tbaa !107 ; 7 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %.sroa.9929.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oz, i64 20
  %.sroa.9929.0.copyload.us = load float, ptr %.sroa.9929.0..sroa_idx.us, align 4, !tbaa !107 ; 6 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %.sroa.0924.0.copyload.us = load <2 x float>, ptr %i.pf, align 4, !tbaa !107 ; 11 uses
  %i.ph = shufflevector <2 x float> %.sroa.0924.0.copyload.us, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pi = shufflevector <2 x float> %.sroa.0924.0.copyload.us, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.pj = load float, ptr %i.pg, align 4, !tbaa !130 ; 2 uses
  %i.pk = fmul float %i.af, %i.pj
  %i.pl = fsub float 2.000000e+00, %i.pk          ; 3 uses
  %i.pm = fcmp olt float %i.pl, 1.000000e-10
  %i.pn = fcmp ogt float %i.pl, 1.000000e+00
  %i.po = select i1 %i.pn, float 1.000000e+00, float %i.pl
  %i.pp = select i1 %i.pm, float 1.000000e-10, float %i.po ; 2 uses
  %.sroa.0.0.vec.extract.i688.us = extractelement <2 x float> %.sroa.0930.0.copyload.us, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i689.us = extractelement <2 x float> %.sroa.0930.0.copyload.us, i64 1 ; 3 uses
  %i.pq = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.pr = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ps = fmul <2 x float> %.sroa.0930.0.copyload.us, %i.pr
  %i.pt = fadd <2 x float> %.sroa.0941.011247.us, %i.ps ; 2 uses
  %.sroa.0.0.vec.extract.i693.us = extractelement <2 x float> %.sroa.0924.0.copyload.us, i64 0
  %.sroa.0.4.vec.extract.i695.us = extractelement <2 x float> %.sroa.0924.0.copyload.us, i64 1 ; 3 uses
  %i.pu = fmul <2 x float> %.sroa.0924.0.copyload.us, %i.pr
  %i.pv = fadd <2 x float> %.sroa.0936.011249.us, %i.pu ; 2 uses
  %i.pw = insertelement <2 x float> poison, float %.sroa.9935.0.copyload.us, i64 0
  %i.px = insertelement <2 x float> %i.pw, float %.sroa.9929.0.copyload.us, i64 1
  %i.py = fmul <2 x float> %i.px, %i.pr
  %i.pz = fadd <2 x float> %i.oy, %i.py           ; 2 uses
  %i.qa = fadd float %.063011251.us, %i.pp        ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv24343
  store float %.sroa.0.0.vec.extract.i688.us, ptr %i.qb, align 4, !tbaa !176
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv24343
  store float %.sroa.0.4.vec.extract.i689.us, ptr %i.qd, align 4, !tbaa !176
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %indvars.iv24343
  store float %.sroa.9935.0.copyload.us, ptr %i.qf, align 4, !tbaa !176
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pe, i64 48
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %indvars.iv24343
  store float %.sroa.0.0.vec.extract.i693.us, ptr %i.qh, align 4, !tbaa !176
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pe, i64 64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %indvars.iv24343
  store float %.sroa.0.4.vec.extract.i695.us, ptr %i.qj, align 4, !tbaa !176
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pe, i64 80
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %indvars.iv24343
  store float %.sroa.9929.0.copyload.us, ptr %i.ql, align 4, !tbaa !176
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pe, i64 96
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv24343
  %i.qo = fsub float %.sroa.9929.0.copyload.us, %.sroa.9935.0.copyload.us
  %i.qp = fmul float %.sroa.12969.0.copyload.us, %i.qo
  %foldExtExtBinop36776 = fsub <2 x float> %.sroa.0924.0.copyload.us, %.sroa.0930.0.copyload.us
  %foldExtExtBinop36778 = fmul <2 x float> %.sroa.0961.0.copyload.us, %foldExtExtBinop36776
  %i.qq = extractelement <2 x float> %foldExtExtBinop36778, i64 0
  %i.qr = fsub float %.sroa.0.4.vec.extract.i695.us, %.sroa.0.4.vec.extract.i689.us
  %i.qs = fmul float %.sroa.0961.4.vec.extract.us, %i.qr
  %i.qt = fadd float %i.qq, %i.qs
  %i.qu = fadd float %i.qp, %i.qt
  %i.qv = fsub float %i.pj, %i.qu
  store float %i.qv, ptr %i.qn, align 4, !tbaa !176
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pe, i64 112
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv24343
  %i.qz = load float, ptr %i.qw, align 4, !tbaa !131
  %i.ra = fmul float %i.ab, %i.qz
  store float %i.ra, ptr %i.qy, align 4, !tbaa !176
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pe, i64 128
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.rc, align 4, !tbaa !176
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pe, i64 144
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv24343
  %i.rf = shufflevector <2 x float> %.sroa.0930.0.copyload.us, <2 x float> %.sroa.0961.0.copyload.us, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> %i.pi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ri = shufflevector <8 x float> %i.rh, <8 x float> %i.ou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.rj = shufflevector <2 x float> %.sroa.0930.0.copyload.us, <2 x float> %.sroa.0924.0.copyload.us, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.rk = shufflevector <8 x float> %i.rj, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.rl = insertelement <8 x float> %i.rk, float %.sroa.12969.0.copyload.us, i64 0
  %i.rm = insertelement <8 x float> %i.rl, float %.sroa.9935.0.copyload.us, i64 1
  %i.rn = insertelement <8 x float> %i.rm, float %.sroa.9929.0.copyload.us, i64 4
  %i.ro = shufflevector <8 x float> %i.rn, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 4, i32 5, i32 6, i32 7>
  %i.rp = fmul <8 x float> %i.ri, %i.ro
  %i.rq = shufflevector <2 x float> %.sroa.0924.0.copyload.us, <2 x float> %.sroa.0961.0.copyload.us, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rs = shufflevector <8 x float> %i.rr, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 14, i32 15>
  %i.rt = shufflevector <2 x float> %.sroa.0961.0.copyload.us, <2 x float> %.sroa.0930.0.copyload.us, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ru = shufflevector <8 x float> %i.rt, <8 x float> %i.rs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.rv = shufflevector <2 x float> %.sroa.0930.0.copyload.us, <2 x float> %.sroa.0924.0.copyload.us, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison>
  %i.rw = shufflevector <8 x float> %i.rv, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.rx = insertelement <8 x float> %i.rw, float %.sroa.9935.0.copyload.us, i64 0
  %i.ry = insertelement <8 x float> %i.rx, float %.sroa.12969.0.copyload.us, i64 1
  %i.rz = insertelement <8 x float> %i.ry, float %.sroa.9929.0.copyload.us, i64 3
  %i.sa = shufflevector <8 x float> %i.rz, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %i.sb = fmul <8 x float> %i.ru, %i.sa
  %i.sc = fsub <8 x float> %i.rp, %i.sb           ; 4 uses
  %i.sd = shufflevector <8 x float> %i.sc, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 poison, i32 poison>
  %i.se = fmul <8 x float> %i.om, %i.sd
  %i.sf = shufflevector <8 x float> %i.sc, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 4, i32 4, i32 4, i32 poison, i32 poison>
  %i.sg = fmul <8 x float> %i.or, %i.sf
  %i.sh = fadd <8 x float> %i.se, %i.sg
  %i.si = shufflevector <8 x float> %i.sc, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 5, i32 5, i32 5, i32 poison, i32 poison>
  %i.sj = fmul <8 x float> %i.oj, %i.si
  %i.sk = fadd <8 x float> %i.sj, %i.sh
  %i.sl = fmul <8 x float> %i.sc, %i.sk           ; 6 uses
  %i.sm = extractelement <8 x float> %i.sl, i64 0
  %i.sn = extractelement <8 x float> %i.sl, i64 1
  %i.so = fadd float %i.sm, %i.sn
  %i.sp = extractelement <8 x float> %i.sl, i64 2
  %i.sq = fadd float %i.sp, %i.so
  %i.sr = fadd float %i.of, %i.sq
  %i.ss = extractelement <8 x float> %i.sl, i64 3
  %i.st = extractelement <8 x float> %i.sl, i64 4
  %i.su = fadd float %i.ss, %i.st
  %i.sv = extractelement <8 x float> %i.sl, i64 5
  %i.sw = fadd float %i.sv, %i.su
  %i.sx = fadd float %i.sr, %i.sw                 ; 2 uses
  %i.sy = fcmp ogt float %i.sx, 0.000000e+00
  %i.sz = fdiv float 1.000000e+00, %i.sx
  %i.ta = select i1 %i.sy, float %i.sz, float 0.000000e+00
  store float %i.ta, ptr %i.re, align 4, !tbaa !176
  %i.tb = getelementptr inbounds nuw i8, ptr %i.pe, i64 176
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv24343
  %i.td = fmul float %.sroa.09.0.vec.extract.i764.us, %.sroa.0.4.vec.extract.i695.us
  %foldExtExtBinop36781 = fmul <2 x float> %shift36780, %.sroa.0924.0.copyload.us
  %i.te = extractelement <2 x float> %foldExtExtBinop36781, i64 0
  %i.tf = fsub float %i.td, %i.te
  %i.tg = fadd float %.sroa.5377.0.us, %i.tf
  %i.th = shufflevector <4 x float> %i.ox, <4 x float> %i.ph, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ti = shufflevector <2 x float> %.sroa.0930.0.copyload.us, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.tj = insertelement <4 x float> %i.ti, float %.sroa.9929.0.copyload.us, i64 1
  %i.tk = insertelement <4 x float> %i.tj, float %.sroa.9935.0.copyload.us, i64 2
  %i.tl = insertelement <4 x float> %i.tk, float %.sroa.5373.0.us, i64 3 ; 2 uses
  %i.tm = fmul <4 x float> %i.th, %i.tl
  %i.tn = shufflevector <2 x float> %.sroa.0387.0.us, <2 x float> %.sroa.0924.0.copyload.us, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.to = insertelement <4 x float> %i.tn, float %.sroa.0.4.vec.extract.i689.us, i64 2
  %i.tp = insertelement <4 x float> %i.to, float %.sroa.09.0.vec.extract.i764.us, i64 3
  %i.tq = shufflevector <2 x float> %.sroa.0930.0.copyload.us, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> %i.tl, <4 x i32> <i32 0, i32 7, i32 poison, i32 5>
  %i.ts = insertelement <4 x float> %i.tr, float %.sroa.5389.0.us, i64 2
  %i.tt = fmul <4 x float> %i.tp, %i.ts
  %i.tu = fsub <4 x float> %i.tm, %i.tt
  %i.tv = fadd <4 x float> %i.ow, %i.tu           ; 4 uses
  %i.tw = extractelement <4 x float> %i.tv, i64 0
  %i.tx = fsub float %i.tg, %i.tw
  %i.ty = fmul float %.sroa.12969.0.copyload.us, %i.tx
  %shift36783 = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop36784 = fsub <4 x float> %i.tv, %shift36783
  %i.tz = extractelement <4 x float> %foldExtExtBinop36784, i64 1
  %i.ua = fmul float %.sroa.0961.0.vec.extract.us, %i.tz
  %i.ub = fmul float %.sroa.5389.0.us, %.sroa.0.0.vec.extract.i688.us
  %i.uc = fmul float %.sroa.09.0.vec.extract.i748.us, %.sroa.9935.0.copyload.us
  %i.ud = fsub float %i.ub, %i.uc
  %i.ue = fadd float %.sroa.07.4.vec.extract.i754.us, %i.ud
  %i.uf = extractelement <4 x float> %i.tv, i64 3
  %i.ug = fsub float %i.uf, %i.ue
  %i.uh = fmul float %.sroa.0961.4.vec.extract.us, %i.ug
  %i.ui = fadd float %i.ua, %i.uh
  %i.uj = fadd float %i.ty, %i.ui
  store float %i.uj, ptr %i.tc, align 4, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond24332.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond24332.not, label %._crit_edge.us, label %bb.az, !llvm.loop !221

._crit_edge.us:                                   ; preds = %bb.bc, %b3Perp.exit.us
  %.sroa.0941.0.lcssa.us = phi <2 x float> [ zeroinitializer, %b3Perp.exit.us ], [ %i.pt, %bb.bc ] ; 2 uses
  %.sroa.0936.0.lcssa.us = phi <2 x float> [ zeroinitializer, %b3Perp.exit.us ], [ %i.pv, %bb.bc ] ; 2 uses
  %.0630.lcssa.us = phi float [ 0.000000e+00, %b3Perp.exit.us ], [ %i.qa, %bb.bc ]
  %i.uk = phi <2 x float> [ zeroinitializer, %b3Perp.exit.us ], [ %i.pz, %bb.bc ]
  %i.ul = fdiv float 1.000000e+00, %.0630.lcssa.us ; 3 uses
  %.sroa.0.0.vec.extract.i677.us = extractelement <2 x float> %.sroa.0941.0.lcssa.us, i64 0
  %.sroa.0.0.vec.extract.i681.us = extractelement <2 x float> %.sroa.0936.0.lcssa.us, i64 0
  %i.um = fmul float %.sroa.0.0.vec.extract.i677.us, %i.ul ; 3 uses
  %i.un = fmul float %.sroa.0.0.vec.extract.i681.us, %i.ul ; 4 uses
  %i.uo = shufflevector <2 x float> %.sroa.0941.0.lcssa.us, <2 x float> %.sroa.0936.0.lcssa.us, <2 x i32> <i32 1, i32 3>
  %i.up = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ur = fmul <2 x float> %i.uo, %i.uq           ; 6 uses
  %i.us = fmul <2 x float> %i.uk, %i.uq           ; 6 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv24343
  store float %i.um, ptr %i.ut, align 4, !tbaa !176
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv24343
  %i.uv = extractelement <2 x float> %i.ur, i64 0 ; 2 uses
  store float %i.uv, ptr %i.uu, align 4, !tbaa !176
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv24343
  %i.ux = extractelement <2 x float> %i.us, i64 0 ; 6 uses
  store float %i.ux, ptr %i.uw, align 4, !tbaa !176
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv24343
  store float %i.un, ptr %i.uy, align 4, !tbaa !176
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv24343
  %i.va = extractelement <2 x float> %i.ur, i64 1 ; 3 uses
  store float %i.va, ptr %i.uz, align 4, !tbaa !176
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv24343
  %i.vc = extractelement <2 x float> %i.us, i64 1 ; 3 uses
  store float %i.vc, ptr %i.vb, align 4, !tbaa !176
  br i1 %i.oe, label %.lr.ph11258.us.preheader, label %._crit_edge11259.us

.lr.ph11258.us.preheader:                         ; preds = %._crit_edge.us
  %.sroa.0154.0.copyload.us = load <2 x float>, ptr %i.gy, align 4
  %.sroa.2155.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.2155.0.copyload.us = load float, ptr %.sroa.2155.0..sroa_idx.us, align 4
  %i.vd = fsub float %i.ux, %.sroa.2155.0.copyload.us ; 2 uses
  %i.ve = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vf = insertelement <2 x float> %i.ve, float %i.um, i64 0 ; 5 uses
  %i.vg = fsub <2 x float> %i.vf, %.sroa.0154.0.copyload.us ; 2 uses
  %i.vh = fmul <2 x float> %i.vg, %i.vg           ; 2 uses
  %shift36786 = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36787 = fadd <2 x float> %i.vh, %shift36786
  %i.vi = extractelement <2 x float> %foldExtExtBinop36787, i64 0
  %i.vj = fmul float %i.vd, %i.vd
  %i.vk = fadd float %i.vj, %i.vi
  %i.vl = tail call float @sqrtf(float noundef %i.vk) #12
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv24343
  store float %i.vl, ptr %i.vm, align 4, !tbaa !176
  %exitcond24338.not = icmp eq i32 %i.oc, 1
  br i1 %exitcond24338.not, label %._crit_edge11259.us, label %.lr.ph11258.us.1

.lr.ph11258.us.1:                                 ; preds = %.lr.ph11258.us.preheader
  %i.vn = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %.not668.us.1 = icmp ugt ptr %i.gy, inttoptr (i64 -57 to ptr)
  br i1 %.not668.us.1, label %.split12031.us, label %bb.bd, !prof !89, !nosanitize !10

bb.bd:                                            ; preds = %.lr.ph11258.us.1
  br i1 %.not669.us.1, label %.split12035.us, label %bb.be, !prof !89, !nosanitize !10

bb.be:                                            ; preds = %bb.bd
  %.sroa.0154.0.copyload.us.1 = load <2 x float>, ptr %i.vn, align 4
  %.sroa.2155.0..sroa_idx.us.1 = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %.sroa.2155.0.copyload.us.1 = load float, ptr %.sroa.2155.0..sroa_idx.us.1, align 4
  %i.vo = fsub float %i.ux, %.sroa.2155.0.copyload.us.1 ; 2 uses
  %i.vp = fsub <2 x float> %i.vf, %.sroa.0154.0.copyload.us.1 ; 2 uses
  %i.vq = fmul <2 x float> %i.vp, %i.vp           ; 2 uses
  %shift36789 = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36790 = fadd <2 x float> %i.vq, %shift36789
  %i.vr = extractelement <2 x float> %foldExtExtBinop36790, i64 0
  %i.vs = fmul float %i.vo, %i.vo
  %i.vt = fadd float %i.vs, %i.vr
  %i.vu = tail call float @sqrtf(float noundef %i.vt) #12
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv24343
  store float %i.vu, ptr %i.vv, align 4, !tbaa !176
  %exitcond24338.1.not = icmp eq i32 %i.oc, 2
  br i1 %exitcond24338.1.not, label %._crit_edge11259.us, label %.lr.ph11258.us.2

.lr.ph11258.us.2:                                 ; preds = %bb.be
  %i.vw = getelementptr inbounds nuw i8, ptr %i.gy, i64 112
  %.not668.us.2 = icmp ugt ptr %i.gy, inttoptr (i64 -113 to ptr)
  br i1 %.not668.us.2, label %.split12031.us, label %bb.bf, !prof !89, !nosanitize !10

bb.bf:                                            ; preds = %.lr.ph11258.us.2
  br i1 %.not669.us.2, label %.split12035.us, label %bb.bg, !prof !89, !nosanitize !10

bb.bg:                                            ; preds = %bb.bf
  %.sroa.0154.0.copyload.us.2 = load <2 x float>, ptr %i.vw, align 4
  %.sroa.2155.0..sroa_idx.us.2 = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  %.sroa.2155.0.copyload.us.2 = load float, ptr %.sroa.2155.0..sroa_idx.us.2, align 4
  %i.vx = fsub float %i.ux, %.sroa.2155.0.copyload.us.2 ; 2 uses
  %i.vy = fsub <2 x float> %i.vf, %.sroa.0154.0.copyload.us.2 ; 2 uses
  %i.vz = fmul <2 x float> %i.vy, %i.vy           ; 2 uses
  %shift36792 = shufflevector <2 x float> %i.vz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36793 = fadd <2 x float> %i.vz, %shift36792
  %i.wa = extractelement <2 x float> %foldExtExtBinop36793, i64 0
  %i.wb = fmul float %i.vx, %i.vx
  %i.wc = fadd float %i.wb, %i.wa
  %i.wd = tail call float @sqrtf(float noundef %i.wc) #12
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv24343
  store float %i.wd, ptr %i.we, align 4, !tbaa !176
  %exitcond24338.2.not = icmp eq i32 %i.oc, 3
  br i1 %exitcond24338.2.not, label %._crit_edge11259.us, label %.lr.ph11258.us.3

.lr.ph11258.us.3:                                 ; preds = %bb.bg
  %i.wf = getelementptr inbounds nuw i8, ptr %i.gy, i64 168
  %.not668.us.3 = icmp ugt ptr %i.gy, inttoptr (i64 -169 to ptr)
  br i1 %.not668.us.3, label %.split12031.us, label %bb.bh, !prof !89, !nosanitize !10

bb.bh:                                            ; preds = %.lr.ph11258.us.3
  br i1 %.not669.us.3, label %.split12035.us, label %bb.bi, !prof !89, !nosanitize !10

bb.bi:                                            ; preds = %bb.bh
  %.sroa.0154.0.copyload.us.3 = load <2 x float>, ptr %i.wf, align 4
  %.sroa.2155.0..sroa_idx.us.3 = getelementptr inbounds nuw i8, ptr %i.gy, i64 176
  %.sroa.2155.0.copyload.us.3 = load float, ptr %.sroa.2155.0..sroa_idx.us.3, align 4
  %i.wg = fsub float %i.ux, %.sroa.2155.0.copyload.us.3 ; 2 uses
  %i.wh = fsub <2 x float> %i.vf, %.sroa.0154.0.copyload.us.3 ; 2 uses
  %i.wi = fmul <2 x float> %i.wh, %i.wh           ; 2 uses
  %shift36795 = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36796 = fadd <2 x float> %i.wi, %shift36795
  %i.wj = extractelement <2 x float> %foldExtExtBinop36796, i64 0
  %i.wk = fmul float %i.wg, %i.wg
  %i.wl = fadd float %i.wk, %i.wj
  %i.wm = tail call float @sqrtf(float noundef %i.wl) #12
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv24343
  store float %i.wm, ptr %i.wn, align 4, !tbaa !176
  %exitcond24338.3.not = icmp eq i32 %i.oc, 4
  br i1 %exitcond24338.3.not, label %._crit_edge11259.us, label %.lr.ph11258.us.4

.lr.ph11258.us.4:                                 ; preds = %bb.bi
  %.not668.us.4 = icmp ugt ptr %i.gy, inttoptr (i64 -225 to ptr)
  br i1 %.not668.us.4, label %.split12031.us, label %bb.bj, !prof !89, !nosanitize !10

bb.bj:                                            ; preds = %.lr.ph11258.us.4
  br i1 %.not669.us.4, label %.split12035.us, label %bb.bk, !prof !89, !nosanitize !10

bb.bk:                                            ; preds = %bb.bj
  %.sroa.0154.0.copyload.us.4 = load <2 x float>, ptr %i.lx, align 4
  %.sroa.2155.0..sroa_idx.us.4 = getelementptr inbounds nuw i8, ptr %i.gy, i64 232
  %.sroa.2155.0.copyload.us.4 = load float, ptr %.sroa.2155.0..sroa_idx.us.4, align 4
  %i.wo = fsub float %i.ux, %.sroa.2155.0.copyload.us.4 ; 2 uses
  %i.wp = fsub <2 x float> %i.vf, %.sroa.0154.0.copyload.us.4 ; 2 uses
  %i.wq = fmul <2 x float> %i.wp, %i.wp           ; 2 uses
  %shift36798 = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36799 = fadd <2 x float> %i.wq, %shift36798
  %i.wr = extractelement <2 x float> %foldExtExtBinop36799, i64 0
  %i.ws = fmul float %i.wo, %i.wo
  %i.wt = fadd float %i.ws, %i.wr
  %i.wu = tail call float @sqrtf(float noundef %i.wt) #12
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv24343
  store float %i.wu, ptr %i.wv, align 4, !tbaa !176
  %exitcond24338.4.not = icmp eq i32 %i.oc, 5
  br i1 %exitcond24338.4.not, label %._crit_edge11259.us, label %.split12028.us

._crit_edge11259.us:                              ; preds = %.lr.ph11258.us.preheader, %bb.be, %bb.bg, %bb.bi, %bb.bk, %._crit_edge.us
  %i.ww = fmul float %.sroa.5.0.i.i.us, %i.uv
  %i.wx = shufflevector <2 x float> %.sroa.07.0.i.i.us, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.wy = fmul <2 x float> %i.wx, %i.us
  %i.wz = shufflevector <2 x float> %.sroa.07.0.i.i.us, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.xa = fmul <2 x float> %i.wz, %i.us
  %i.xb = insertelement <2 x float> poison, float %.sroa.5.0.i.i.us, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xd = insertelement <2 x float> poison, float %i.um, i64 0
  %i.xe = insertelement <2 x float> %i.xd, float %i.un, i64 1 ; 4 uses
  %i.xf = fmul <2 x float> %i.xc, %i.xe
  %i.xg = fmul <2 x float> %i.wx, %i.xe
  %i.xh = fmul <2 x float> %i.wz, %i.ur
  %i.xi = insertelement <2 x float> %i.xc, float %i.na, i64 0 ; 2 uses
  %i.xj = fmul <2 x float> %i.xi, %i.ur           ; 2 uses
  %i.xk = insertelement <2 x float> %.sroa.07.0.i.i.us, float %i.mx, i64 0 ; 2 uses
  %i.xl = fmul <2 x float> %i.xk, %i.us
  %i.xm = insertelement <2 x float> %i.wz, float %i.mu, i64 0 ; 2 uses
  %i.xn = fmul <2 x float> %i.xm, %i.us
  %i.xo = fmul <2 x float> %i.xi, %i.xe
  %i.xp = fmul <2 x float> %i.xk, %i.xe
  %i.xq = fmul <2 x float> %i.xm, %i.ur
  %i.xr = fmul float %i.na, %i.va
  %i.xs = fmul float %i.mx, %i.vc
  %i.xt = fsub float %i.xr, %i.xs                 ; 4 uses
  %i.xu = fmul float %i.mu, %i.vc
  %i.xv = fmul float %i.na, %i.un
  %i.xw = fsub float %i.xu, %i.xv                 ; 4 uses
  %i.xx = extractelement <4 x float> %i.kp, i64 1
  %i.xy = extractelement <4 x float> %i.kr, i64 3
  %i.xz = extractelement <4 x float> %i.kp, i64 0
  %i.ya = fmul float %i.lh, %i.xt
  %i.yb = fmul float %i.xx, %i.xw
  %i.yc = fadd float %i.ya, %i.yb
  %i.yd = fmul float %i.lj, %i.xt
  %i.ye = fmul float %i.ln, %i.xw
  %i.yf = fadd float %i.yd, %i.ye
  %i.yg = fsub <2 x float> %i.xj, %i.xl           ; 5 uses
  %i.yh = insertelement <2 x float> %i.xj, float %i.ww, i64 0
  %i.yi = fsub <2 x float> %i.yh, %i.wy           ; 4 uses
  %i.yj = fsub <2 x float> %i.xn, %i.xo           ; 5 uses
  %i.yk = fsub <2 x float> %i.xa, %i.xf           ; 4 uses
  %i.yl = fsub <2 x float> %i.xg, %i.xh           ; 5 uses
end_hunk_3
begin_hunk_4_@b3PrepareContacts_Convex:bb.a
  %i.aai = fmul float %i.xt, %i.aaf
  %i.aaj = fmul float %i.xw, %i.aah
  %i.aak = fadd float %i.aai, %i.aaj
  %i.aal = fmul <2 x float> %i.yi, %i.zq
  %i.aam = fmul <2 x float> %i.yk, %i.zy
  %i.aan = fadd <2 x float> %i.aal, %i.aam
  %i.aao = fmul <2 x float> %i.yl, %i.aab
  %i.aap = fadd <2 x float> %i.aao, %i.aan
  %i.aaq = extractelement <2 x float> %i.yg, i64 1
  %i.aar = fmul float %i.aaq, %i.aaf
  %i.aas = extractelement <2 x float> %i.yj, i64 1
  %i.aat = fmul float %i.aas, %i.aah
  %i.aau = fadd float %i.aar, %i.aat
  %i.aav = shufflevector <4 x float> %i.jb, <4 x float> %i.kq, <2 x i32> <i32 2, i32 4>
  %i.aaw = insertelement <2 x float> %i.yi, float %i.xt, i64 1
  %i.aax = fmul <2 x float> %i.aav, %i.aaw
  %i.aay = shufflevector <4 x float> %i.jc, <4 x float> %i.kp, <2 x i32> <i32 2, i32 6>
  %i.aaz = insertelement <2 x float> %i.yk, float %i.xw, i64 1
  %i.aba = fmul <2 x float> %i.aay, %i.aaz
  %i.abb = fadd <2 x float> %i.aax, %i.aba
  %i.abc = shufflevector <4 x float> %i.ja, <4 x float> %i.kp, <2 x i32> <i32 0, i32 7>
  %i.abd = insertelement <2 x float> %i.yl, float %i.yp, i64 1
  %i.abe = fmul <2 x float> %i.abc, %i.abd
  %i.abf = fadd <2 x float> %i.abe, %i.abb        ; 2 uses
  %i.abg = shufflevector <2 x float> %i.yk, <2 x float> %i.yl, <2 x i32> <i32 0, i32 3>
  %i.abh = fmul <2 x float> %i.abg, %i.abf        ; 2 uses
  %foldExtExtBinop36811 = fadd <2 x float> %i.zd, %i.abh
  %shift36813 = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36814 = fadd <2 x float> %shift36813, %foldExtExtBinop36811
  %i.abi = extractelement <2 x float> %i.abf, i64 1
  %i.abj = fmul float %i.yp, %i.abi
  %i.abk = fadd float %i.abj, %i.aak
  %i.abl = fadd float %i.abk, %i.aad              ; 2 uses
  %i.abm = shufflevector <2 x float> %i.abh, <2 x float> %foldExtExtBinop36814, <2 x i32> <i32 1, i32 2>
  %i.abn = insertelement <2 x float> poison, float %i.aau, i64 0
  %i.abo = insertelement <2 x float> %i.abn, float %i.yq, i64 1
  %i.abp = fadd <2 x float> %i.abm, %i.abo
  %i.abq = fadd <2 x float> %i.aap, %i.abp        ; 4 uses
  %i.abr = extractelement <2 x float> %i.abq, i64 1
  %i.abs = fmul float %i.abr, %i.abl
  %foldExtExtBinop36816 = fmul <2 x float> %i.abq, %i.abq
  %i.abt = extractelement <2 x float> %foldExtExtBinop36816, i64 0
  %i.abu = fsub float %i.abs, %i.abt              ; 2 uses
  %i.abv = tail call float @llvm.fabs.f32(float %i.abu)
  %i.abw = fcmp ogt float %i.abv, f0x057A0000
  br i1 %i.abw, label %bb.bl, label %b3Invert2.exit.us

bb.bl:                                            ; preds = %._crit_edge11259.us
  %i.abx = fdiv float 1.000000e+00, %i.abu        ; 3 uses
  %i.aby = fmul float %i.abl, %i.abx
  %.sroa.0.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.aby, i64 0
  %i.abz = fneg float %i.abx
  %i.aca = insertelement <2 x float> poison, float %i.abz, i64 0
  %i.acb = insertelement <2 x float> %i.aca, float %i.abx, i64 1
  %i.acc = fmul <2 x float> %i.abq, %i.acb        ; 2 uses
  %i.acd = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.us, <2 x float> %i.acc, <2 x i32> <i32 0, i32 2>
  br label %b3Invert2.exit.us

b3Invert2.exit.us:                                ; preds = %bb.bl, %._crit_edge11259.us
  %.sroa.5.0.i880.us = phi <2 x float> [ %i.acc, %bb.bl ], [ zeroinitializer, %._crit_edge11259.us ]
  %.sroa.0.0.i.us = phi <2 x float> [ %i.acd, %bb.bl ], [ zeroinitializer, %._crit_edge11259.us ] ; 2 uses
  %.sroa.0918.0.vec.extract.us = extractelement <2 x float> %.sroa.0.0.i.us, i64 0
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv24343
  store float %.sroa.0918.0.vec.extract.us, ptr %i.ace, align 4, !tbaa !176
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv24343
  %.sroa.0918.4.vec.extract.us = extractelement <2 x float> %.sroa.0.0.i.us, i64 1
  store float %.sroa.0918.4.vec.extract.us, ptr %i.acf, align 4, !tbaa !176
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv24343
  %.sroa.5919.12.vec.extract.us = extractelement <2 x float> %.sroa.5.0.i880.us, i64 1
  store float %.sroa.5919.12.vec.extract.us, ptr %i.acg, align 4, !tbaa !176
  %i.ach = getelementptr inbounds nuw i8, ptr %i.gy, i64 240 ; 2 uses
  %.sroa.031.0.copyload.us = load <2 x float>, ptr %i.ach, align 4 ; 2 uses
  %.sroa.232.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gy, i64 248 ; 2 uses
  %.sroa.232.0.copyload.us = load float, ptr %.sroa.232.0..sroa_idx.us, align 4
  %foldExtExtBinop36818 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.031.0.copyload.us
  %foldExtExtBinop36820 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.031.0.copyload.us
  %shift36822 = shufflevector <2 x float> %foldExtExtBinop36820, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36823 = fadd <2 x float> %foldExtExtBinop36818, %shift36822
  %i.aci = extractelement <2 x float> %foldExtExtBinop36823, i64 0
  %i.acj = fmul float %.sroa.5.0.i.i.us, %.sroa.232.0.copyload.us
  %i.ack = fadd float %i.acj, %i.aci
  %i.acl = fmul float %i.ab, %i.ack
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv24343
  store float %i.acl, ptr %i.acm, align 4, !tbaa !176
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv24343
  %.sroa.228.0.copyload.us = load float, ptr %.sroa.232.0..sroa_idx.us, align 4
  %i.aco = fmul float %i.na, %.sroa.228.0.copyload.us
  %.sroa.027.0.copyload.us = load <2 x float>, ptr %i.ach, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i891.us = extractelement <2 x float> %.sroa.027.0.copyload.us, i64 0
  %i.acp = fmul float %i.mu, %.sroa.03.0.vec.extract.i891.us
  %.sroa.03.4.vec.extract.i893.us = extractelement <2 x float> %.sroa.027.0.copyload.us, i64 1
  %i.acq = fmul float %i.mx, %.sroa.03.4.vec.extract.i893.us
  %i.acr = fadd float %i.acp, %i.acq
  %i.acs = fadd float %i.aco, %i.acr
  %i.act = fmul float %i.ab, %i.acs
  store float %i.act, ptr %i.acn, align 4, !tbaa !176
  %i.acu = fadd <4 x float> %i.jb, %i.kq          ; 7 uses
  %i.acv = fadd <4 x float> %i.ja, %i.kp          ; 10 uses
  %i.acw = fadd <4 x float> %i.jc, %i.kr          ; 6 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv24343
  %i.acy = extractelement <4 x float> %i.acu, i64 0
  %i.acz = fmul float %i.acy, %.sroa.0961.0.vec.extract.us
  %i.ada = extractelement <4 x float> %i.acv, i64 2
  %i.adb = fmul float %i.ada, %.sroa.0961.4.vec.extract.us
  %i.adc = fadd float %i.acz, %i.adb
  %i.add = extractelement <4 x float> %i.acv, i64 3
  %i.ade = fmul float %i.add, %.sroa.12969.0.copyload.us
  %i.adf = fadd float %i.ade, %i.adc
  %i.adg = fmul float %.sroa.12969.0.copyload.us, %i.adf
  %i.adh = shufflevector <4 x float> %i.acu, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.adi = shufflevector <2 x float> %.sroa.0961.0.copyload.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adj = fmul <2 x float> %i.adh, %i.adi
  %i.adk = shufflevector <4 x float> %i.acv, <4 x float> %i.acw, <2 x i32> <i32 1, i32 6> ; 2 uses
  %i.adl = shufflevector <2 x float> %.sroa.0961.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.adm = fmul <2 x float> %i.adk, %i.adl
  %i.adn = fadd <2 x float> %i.adj, %i.adm
  %i.ado = shufflevector <4 x float> %i.acw, <4 x float> %i.acv, <2 x i32> <i32 3, i32 4>
  %i.adp = insertelement <2 x float> poison, float %.sroa.12969.0.copyload.us, i64 0
  %i.adq = shufflevector <2 x float> %i.adp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adr = fmul <2 x float> %i.ado, %i.adq
  %i.ads = fadd <2 x float> %i.adr, %i.adn
  %i.adt = fmul <2 x float> %.sroa.0961.0.copyload.us, %i.ads ; 2 uses
  %shift36825 = shufflevector <2 x float> %i.adt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36826 = fadd <2 x float> %i.adt, %shift36825
  %i.adu = extractelement <2 x float> %foldExtExtBinop36826, i64 0
  %i.adv = fadd float %i.adg, %i.adu              ; 2 uses
  %i.adw = fcmp ogt float %i.adv, 0.000000e+00
  %i.adx = fdiv float 1.000000e+00, %i.adv
  %i.ady = select i1 %i.adw, float %i.adx, float 0.000000e+00
  store float %i.ady, ptr %i.acx, align 4, !tbaa !176
  %i.adz = getelementptr inbounds nuw i8, ptr %i.gy, i64 236
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv24343
  %i.aeb = load float, ptr %i.adz, align 4, !tbaa !140
  %i.aec = fmul float %i.ab, %i.aeb
  store float %i.aec, ptr %i.aea, align 4, !tbaa !176
  %shift36828 = shufflevector <4 x float> %i.acv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop36829 = fmul <4 x float> %i.acv, %shift36828
  %i.aed = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.aee = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift36834 = fmul <4 x float> %i.aed, %i.aee
  %foldExtExtBinop36835 = fsub <4 x float> %foldExtExtBinop36829, %shift36834
  %i.aef = shufflevector <4 x float> %i.acv, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.aeg = shufflevector <4 x float> %i.acw, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aeh = fmul <2 x float> %i.aef, %i.aeg
  %i.aei = shufflevector <4 x float> %i.acv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aej = shufflevector <4 x float> %i.acv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aek = fmul <2 x float> %i.aei, %i.aej
  %i.ael = fsub <2 x float> %i.aeh, %i.aek        ; 2 uses
  %i.aem = shufflevector <4 x float> %i.acu, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.aen = fmul <2 x float> %i.aem, %i.ael        ; 2 uses
  %shift36837 = shufflevector <2 x float> %i.aen, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36838 = fadd <2 x float> %shift36837, %i.aen
  %i.aeo = extractelement <2 x float> %foldExtExtBinop36838, i64 0
  %foldExtExtBinop36840 = fmul <4 x float> %i.acu, %foldExtExtBinop36835
  %i.aep = extractelement <4 x float> %foldExtExtBinop36840, i64 0
  %i.aeq = fadd float %i.aep, %i.aeo              ; 2 uses
  %i.aer = tail call float @llvm.fabs.f32(float %i.aeq)
  %i.aes = fcmp ogt float %i.aer, f0x057A0000
  br i1 %i.aes, label %bb.bm, label %b3InvertMatrix.exit.us

bb.bm:                                            ; preds = %b3Invert2.exit.us
  %i.aet = shufflevector <4 x float> %i.acu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aeu = fdiv float 1.000000e+00, %i.aeq        ; 3 uses
  %i.aev = extractelement <2 x float> %i.ael, i64 0
  %i.aew = fmul float %i.aev, %i.aeu
  %i.aex = fmul <4 x float> %i.acv, %i.acu
  %i.aey = shufflevector <4 x float> %i.acu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>
  %i.aez = fmul <4 x float> %i.acw, %i.aey
  %i.afa = fsub <4 x float> %i.aex, %i.aez
  %i.afb = fmul <2 x float> %i.adk, %i.aet        ; 2 uses
  %shift36842 = shufflevector <2 x float> %i.afb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36843 = fsub <2 x float> %shift36842, %i.afb
  %i.afc = extractelement <2 x float> %foldExtExtBinop36843, i64 0
  %i.afd = insertelement <4 x float> poison, float %i.aeu, i64 0
  %i.afe = shufflevector <4 x float> %i.afd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aff = fmul <4 x float> %i.afa, %i.afe
  %i.afg = fmul float %i.afc, %i.aeu
  br label %b3InvertMatrix.exit.us

b3InvertMatrix.exit.us:                           ; preds = %bb.bm, %b3Invert2.exit.us
  %.sroa.0905.0.us = phi float [ %i.aew, %bb.bm ], [ 0.000000e+00, %b3Invert2.exit.us ]
  %.sroa.16.0.us = phi float [ %i.afg, %bb.bm ], [ 0.000000e+00, %b3Invert2.exit.us ]
  %i.afh = phi <4 x float> [ %i.aff, %bb.bm ], [ zeroinitializer, %b3Invert2.exit.us ] ; 4 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv24343
  store float %.sroa.0905.0.us, ptr %i.afi, align 4, !tbaa !176
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv24343
  %i.afk = extractelement <4 x float> %i.afh, i64 0
  store float %i.afk, ptr %i.afj, align 4, !tbaa !176
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv24343
  %i.afm = extractelement <4 x float> %i.afh, i64 2
  store float %i.afm, ptr %i.afl, align 4, !tbaa !176
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv24343
  %i.afo = extractelement <4 x float> %i.afh, i64 3
  store float %i.afo, ptr %i.afn, align 4, !tbaa !176
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv24343
  %i.afq = extractelement <4 x float> %i.afh, i64 1
  store float %i.afq, ptr %i.afp, align 4, !tbaa !176
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv24343
  store float %.sroa.16.0.us, ptr %i.afr, align 4, !tbaa !176
  %i.afs = getelementptr inbounds nuw i8, ptr %i.gy, i64 252
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !227
  %i.afu = fmul float %i.ab, %i.aft
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv24343
  store float %i.afu, ptr %i.afv, align 4, !tbaa !176
  %i.afw = getelementptr inbounds nuw i8, ptr %i.gy, i64 256
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv24343
  %i.afy = load float, ptr %i.afw, align 4, !tbaa !228
  %i.afz = fmul float %i.ab, %i.afy
  store float %i.afz, ptr %i.afx, align 4, !tbaa !176
  %i.aga = getelementptr inbounds nuw i8, ptr %i.gy, i64 260
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv24343
  %i.agc = load float, ptr %i.aga, align 4, !tbaa !229
  %i.agd = fmul float %i.ab, %i.agc
  store float %i.agd, ptr %i.agb, align 4, !tbaa !176
  %i.age = icmp slt i32 %i.oc, 4
  br i1 %i.age, label %.lr.ph11262.us.preheader, label %._crit_edge11263.us

.lr.ph11262.us.preheader:                         ; preds = %b3InvertMatrix.exit.us
  %i.agf = sext i32 %i.oc to i64
  br label %.lr.ph11262.us

.lr.ph11262.us:                                   ; preds = %.lr.ph11262.us.preheader, %bb.bn
  %indvars.iv24339 = phi i64 [ %i.agf, %.lr.ph11262.us.preheader ], [ %indvars.iv.next24340, %bb.bn ] ; 4 uses
  %i.agg = mul nsw i64 %indvars.iv24339, 192
  %i.agh = add i64 %i.agg, %i.em, !nosanitize !10 ; 3 uses
  %i.agi = icmp ne i64 %i.agh, 0, !nosanitize !10
  %i.agj = icmp uge i64 %i.agh, %i.em, !nosanitize !10
  %i.agk = icmp slt i64 %indvars.iv24339, 0
  %i.agl = xor i1 %i.agk, %i.agj
  %i.agm = and i1 %i.agi, %i.agl, !nosanitize !10
  br i1 %i.agm, label %bb.bn, label %.split12120.us, !prof !11, !nosanitize !10

bb.bn:                                            ; preds = %.lr.ph11262.us
  %i.agn = getelementptr inbounds [192 x i8], ptr %i.el, i64 %indvars.iv24339 ; 12 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ago, align 4, !tbaa !176
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.agq, align 4, !tbaa !176
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agn, i64 32
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ags, align 4, !tbaa !176
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agn, i64 48
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.agu, align 4, !tbaa !176
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agn, i64 64
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.agw, align 4, !tbaa !176
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agn, i64 80
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.agy, align 4, !tbaa !176
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agn, i64 96
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.aha, align 4, !tbaa !176
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agn, i64 112
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ahc, align 4, !tbaa !176
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agn, i64 128
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ahe, align 4, !tbaa !176
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agn, i64 144
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ahg, align 4, !tbaa !176
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agn, i64 176
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ahi, align 4, !tbaa !176
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agn, i64 160
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ahk, align 4, !tbaa !176
  %indvars.iv.next24340 = add nsw i64 %indvars.iv24339, 1 ; 2 uses
  %exitcond24342.not = icmp eq i64 %indvars.iv.next24340, 4
  br i1 %exitcond24342.not, label %._crit_edge11263.us, label %.lr.ph11262.us, !llvm.loop !222

._crit_edge11263.us:                              ; preds = %bb.bn, %b3InvertMatrix.exit.us
  %indvars.iv.next24344 = add nuw nsw i64 %indvars.iv24343, 1 ; 2 uses
  %exitcond24346.not = icmp eq i64 %indvars.iv.next24344, 4
  br i1 %exitcond24346.not, label %.critedge, label %.preheader.split.split.split.us, !llvm.loop !223

bb.bo:                                            ; preds = %bb.x
  %i.ahl = and i64 %indvars.iv24347, 4294967295
  %i.ahm = zext i32 %i.bp to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @144, i64 %i.ahl, i64 %i.ahm) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.bp:                                            ; preds = %.preheader
  %i.ahn = zext i32 %i.ct to i64, !nosanitize !10
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @145, i64 4, i64 %i.ahn) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11266.us:                                   ; preds = %bb.z, %bb.y
  %.us-phi11268 = phi i64 [ %i.fk, %bb.y ], [ %i.fx, %bb.z ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @146, i64 %i.ce, i64 %.us-phi11268) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11270:                                      ; preds = %bb.aa, %bb.y
  %.us-phi11271 = phi i64 [ 0, %bb.y ], [ %i.gc, %bb.aa ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %.us-phi11271) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11729.us:                                   ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @148, i64 %i.gk, i64 %i.gl) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11733.us:                                   ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @149, i64 %i.gt) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11745.us:                                   ; preds = %bb.ad
  %i.aho = zext nneg i32 %i.ha to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @150, i64 %i.aho, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11748.us:                                   ; preds = %bb.ae
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @152, i64 %i.cy) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11754.us:                                   ; preds = %bb.af
  %i.ahp = zext nneg i32 %i.hc to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @153, i64 %i.ahp, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11760.us:                                   ; preds = %bb.ag
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @154, i64 %i.de, i64 %i.hm) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11767.us:                                   ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @155, i64 %i.be, i64 %i.hs) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11771.us:                                   ; preds = %bb.aj
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @156, i64 %i.hz) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11780.us:                                   ; preds = %bb.ak
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @157, i64 %i.bg, i64 %i.im) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11784.us:                                   ; preds = %bb.al
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @158, i64 %i.is) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11790.us:                                   ; preds = %bb.ao
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @159, i64 %i.be, i64 %i.jh) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11794.us:                                   ; preds = %bb.ap
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @160, i64 %i.jo) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11803.us:                                   ; preds = %bb.aq
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @161, i64 %i.bg, i64 %i.kb) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11807.us:                                   ; preds = %bb.ar
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @162, i64 %i.kh) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11861.us:                                   ; preds = %bb.at
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @163, i64 %i.lt) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11942.us:                                   ; preds = %bb.az
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @164, i64 5) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11945.us:                                   ; preds = %bb.ba
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @165, i64 %i.lt, i64 %i.pb) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split11949.us:                                   ; preds = %bb.bb
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @166, i64 %i.em, i64 %i.pd) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split12028.us:                                   ; preds = %bb.bk
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @167, i64 5) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split12031.us:                                   ; preds = %.lr.ph11258.us.1, %.lr.ph11258.us.2, %.lr.ph11258.us.3, %.lr.ph11258.us.4
  %.sink = phi i64 [ 112, %.lr.ph11258.us.2 ], [ 168, %.lr.ph11258.us.3 ], [ 224, %.lr.ph11258.us.4 ], [ 56, %.lr.ph11258.us.1 ]
  %i.ahq = add i64 %.sink, %i.lt, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @168, i64 %i.lt, i64 %i.ahq) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split12035.us:                                   ; preds = %bb.bd, %bb.bf, %bb.bh, %bb.bj
  %.sink35474 = phi i64 [ 384, %bb.bf ], [ 576, %bb.bh ], [ 768, %bb.bj ], [ 192, %bb.bd ]
  %i.ahr = add i64 %.sink35474, %i.em
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @169, i64 %i.em, i64 %i.ahr) #11, !nosanitize !10
  unreachable, !nosanitize !10

.split12120.us:                                   ; preds = %.lr.ph11262.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @170, i64 %i.em, i64 %i.agh) #11, !nosanitize !10
  unreachable, !nosanitize !10

.critedge:                                        ; preds = %._crit_edge11263.us, %.preheader.split.split.split.us, %.preheader.split.split.us
  %i.ahs = icmp eq i64 %indvars.iv24347, 2147483647
  br i1 %i.ahs, label %bb.bq, label %bb.br, !prof !89, !nosanitize !10

bb.bq:                                            ; preds = %.critedge
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @171, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.br:                                            ; preds = %.critedge
  %indvars.iv.next24348 = add nsw i64 %indvars.iv24347, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next24348 to i32
  %i.aht = icmp sgt i32 %i.by, %indvars
  br i1 %i.aht, label %bb.v, label %.loopexit, !llvm.loop !224

._crit_edge:                                      ; preds = %.loopexit, %.preheader1195
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_mul_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartContacts_Convex(i64 %0, ptr noundef %1) local_unnamed_addr #8 !func_sanitize !9 {
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @172, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @174, i64 %i.k) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = mul nuw nsw i64 %.sroa.4155.0.extract.shift, 112
  %i.p = add i64 %i.o, %i.k, !nosanitize !10      ; 2 uses
  %.not = icmp ult i64 %i.p, %i.k, !nosanitize !10
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @175, i64 %i.k, i64 %i.p) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.4155.0.extract.shift
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178
  %.fr774 = freeze ptr %i.s                       ; 3 uses
  %i.t = trunc nuw i64 %.sroa.3153.0.extract.shift to i32
  %i.u = and i32 %i.t, 65535
  %i.v = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0151.0.extract.trunc, i32 %i.u), !nosanitize !10 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1, !nosanitize !10
  br i1 %i.w, label %._crit_edge, label %.lr.ph763, !prof !167, !nosanitize !10

.lr.ph763:                                        ; preds = %bb.g
  %i.x = extractvalue { i32, i1 } %i.v, 0, !nosanitize !10 ; 2 uses
  %i.y = ptrtoint ptr %.fr774 to i64              ; 4 uses
  %.not775 = icmp eq ptr %.fr774, null
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
  br i1 %.not775, label %.lr.ph763.split.us, label %.lr.ph763.split.preheader, !prof !89

.lr.ph763.split.preheader:                        ; preds = %.lr.ph763
  %sext1113 = shl i64 %0, 32
  %i.ab = ashr exact i64 %sext1113, 32            ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.sroa.0151.0.extract.trunc)
  %wide.trip.count1104 = sext i32 %smax to i64    ; 2 uses
  %exitcond1105.not1410 = icmp eq i64 %i.ab, %wide.trip.count1104
  br i1 %exitcond1105.not1410, label %.split765.us, label %.lr.ph1412

.lr.ph763.split.us:                               ; preds = %.lr.ph763
  %i.ac = icmp sgt i32 %i.x, %.sroa.0151.0.extract.trunc
  br i1 %i.ac, label %bb.h, label %.split765.us

bb.h:                                             ; preds = %.lr.ph763.split.us
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = mul nsw i64 %i.ad, 1696                 ; 2 uses
  %i.af = icmp eq i64 %sext, 0
  %i.ag = icmp uge i64 %i.ae, %i.y, !nosanitize !10
  %i.ah = icmp slt i32 %.sroa.0151.0.extract.trunc, 0
  %i.ai = xor i1 %i.ah, %i.ag
  %i.aj = and i1 %i.af, %i.ai, !nosanitize !10
  br i1 %i.aj, label %.split771.us, label %.split767.us, !prof !11, !nosanitize !10

.split771.us:                                     ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  br label %.split771

._crit_edge:                                      ; preds = %bb.g
  %i.ak = and i64 %0, 4294967295
  %i.al = and i64 %.sroa.3153.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @176, i64 %i.ak, i64 %i.al) #11, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph763.split:                                  ; preds = %._crit_edge.split.us.split.us.split.us
  %indvars.iv.next1102 = add nsw i64 %indvars.iv11011411, 1 ; 2 uses
  %exitcond1105.not = icmp eq i64 %indvars.iv.next1102, %wide.trip.count1104
  br i1 %exitcond1105.not, label %.split765.us, label %.lr.ph1412

.split765.us:                                     ; preds = %.lr.ph763.split, %.lr.ph763.split.preheader, %.lr.ph763.split.us
  ret void

.lr.ph1412:                                       ; preds = %.lr.ph763.split.preheader, %.lr.ph763.split
  %indvars.iv11011411 = phi i64 [ %indvars.iv.next1102, %.lr.ph763.split ], [ %i.ab, %.lr.ph763.split.preheader ] ; 5 uses
  %i.am = getelementptr inbounds [1696 x i8], ptr %.fr774, i64 %indvars.iv11011411 ; 58 uses
  %i.an = mul nsw i64 %indvars.iv11011411, 1696
  %i.ao = add i64 %i.an, %i.y, !nosanitize !10    ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = icmp uge i64 %i.ao, %i.y, !nosanitize !10
  %i.ar = icmp slt i64 %indvars.iv11011411, 0
  %i.as = xor i1 %i.ar, %i.aq
  %i.at = and i1 %i.ap, %i.as, !nosanitize !10
  br i1 %i.at, label %bb.i, label %.split767.us, !prof !11, !nosanitize !10

.split767.us:                                     ; preds = %.lr.ph1412, %bb.h
  %.us-phi769 = phi i64 [ %i.ae, %bb.h ], [ %i.ao, %.lr.ph1412 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @177, i64 %i.y, i64 %.us-phi769) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %.lr.ph1412
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.au = ptrtoint ptr %i.am to i64, !nosanitize !10 ; 2 uses
  %i.av = and i64 %i.au, 15, !nosanitize !10
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !10
  br i1 %i.aw, label %bb.j, label %.split771, !prof !11, !nosanitize !10

.split771:                                        ; preds = %bb.i, %.split771.us
  %.us-phi772 = phi i64 [ 0, %.split771.us ], [ %i.au, %bb.i ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @178, i64 %.us-phi772) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  call fastcc void @b3GatherBodies(ptr dead_on_unwind noalias writable align 16 %2, ptr noundef %i.g, ptr noundef %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call fastcc void @b3GatherBodies(ptr dead_on_unwind noalias writable align 16 %3, ptr noundef %i.g, ptr noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.az = load <4 x i32>, ptr %i.ay, align 16, !tbaa !174
  %i.ba = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.az) ; 2 uses
  %.promoted = load <4 x float>, ptr %2, align 16 ; 2 uses
  %.promoted610 = load <4 x float>, ptr %3, align 16 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.split.us.split.us.split.us

.lr.ph:                                           ; preds = %bb.j
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

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.sroa.0177.0.copyload609613.us.us.us = phi <4 x float> [ %.promoted, %.lr.ph ], [ %i.da, %bb.k ]
  %.sroa.0204.0.copyload611612.us.us.us = phi <4 x float> [ %.promoted610, %.lr.ph ], [ %i.ei, %bb.k ]
  %i.bl = mul nuw nsw i64 %indvars.iv, 192
  %i.bm = add i64 %i.bl, %i.bd, !nosanitize !10   ; 2 uses
  %.not332.us.us.us = icmp ult i64 %i.bm, %i.bd, !nosanitize !10
  br i1 %.not332.us.us.us, label %.split.us, label %bb.k, !prof !89, !nosanitize !10

bb.k:                                             ; preds = %.lr.ph.split.us.split.us.split.us
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
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @179, i64 %i.bd, i64 %i.bm) #11, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge.split.us.split.us.split.us:           ; preds = %bb.k, %bb.j
  %.sroa.0267.0.copyload = phi <4 x float> [ %.promoted610, %bb.j ], [ %i.ei, %bb.k ]
  %.sroa.0240.0.copyload = phi <4 x float> [ %.promoted, %bb.j ], [ %i.da, %bb.k ]
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.kz = icmp eq i64 %indvars.iv11011411, 2147483647
  br i1 %i.kz, label %bb.l, label %.lr.ph763.split, !prof !89, !nosanitize !10

bb.l:                                             ; preds = %._crit_edge.split.us.split.us.split.us
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @180, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3GatherBodies(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 16 captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #8 !func_sanitize !231 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64, !nosanitize !10  ; 11 uses
  %i.b = and i64 %i.a, 3, !nosanitize !10
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !10
  br i1 %i.c, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @247, i64 %i.a) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @248, i64 %i.h, i64 1) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @249, i64 %i.m, i64 %i.n) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.k to i64, !nosanitize !10 ; 2 uses
  %i.w = and i64 %i.v, 3, !nosanitize !10
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !10
  %i.y = and i1 %i.o, %i.x
  br i1 %i.y, label %bb.j, label %bb.i, !prof !11, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @251, i64 %i.v) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @252, i64 %i.a, i64 %i.ab) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !174 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %bb.o, label %bb.p, !prof !89, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @253, i64 %i.a, i64 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n
  %i.af = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 -1) ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1, !nosanitize !10
  br i1 %i.ag, label %bb.q, label %bb.r, !prof !89, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  %i.ah = zext i32 %i.ad to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @254, i64 %i.ah, i64 1) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @255, i64 %i.am, i64 %i.an) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.r
  %i.av = ptrtoint ptr %i.ak to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 3, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.ao, %i.ax
  br i1 %i.ay, label %bb.v, label %bb.u, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @256, i64 %i.av) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @257, i64 %i.a, i64 %i.bb) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !174 ; 3 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not33, label %bb.aa, label %bb.ab, !prof !89, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @258, i64 %i.a, i64 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.ab:                                            ; preds = %bb.z
  %i.bf = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bd, i32 -1) ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.bf, 1, !nosanitize !10
  br i1 %i.bg, label %bb.ac, label %bb.ad, !prof !89, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.bh = zext i32 %i.bd to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @259, i64 %i.bh, i64 1) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @260, i64 %i.bm, i64 %i.bn) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.af:                                            ; preds = %bb.ad
  %i.bv = ptrtoint ptr %i.bk to i64, !nosanitize !10 ; 2 uses
  %i.bw = and i64 %i.bv, 3, !nosanitize !10
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !10
  %i.by = and i1 %i.bo, %i.bx
  br i1 %i.by, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @261, i64 %i.bv) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @262, i64 %i.a, i64 %i.cb) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.ak:                                            ; preds = %bb.ai
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !174 ; 3 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not35, label %bb.am, label %bb.an, !prof !89, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @263, i64 %i.a, i64 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.an:                                            ; preds = %bb.al
  %i.cf = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cd, i32 -1) ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.cf, 1, !nosanitize !10
  br i1 %i.cg, label %bb.ao, label %bb.ap, !prof !89, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  %i.ch = zext i32 %i.cd to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @264, i64 %i.ch, i64 1) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @265, i64 %i.cm, i64 %i.cn) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.ar:                                            ; preds = %bb.ap
  %i.cv = ptrtoint ptr %i.ck to i64, !nosanitize !10 ; 2 uses
  %i.cw = and i64 %i.cv, 3, !nosanitize !10
  %i.cx = icmp eq i64 %i.cw, 0, !nosanitize !10
  %i.cy = and i1 %i.co, %i.cx
  br i1 %i.cy, label %bb.at, label %bb.as, !prof !11, !nosanitize !10

bb.as:                                            ; preds = %bb.ar
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @266, i64 %i.cv) #11, !nosanitize !10
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
define internal fastcc void @b3ScatterBodies(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #9 !func_sanitize !232 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64, !nosanitize !10  ; 2 uses
  %i.b = and i64 %i.a, 15, !nosanitize !10
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !10
  br i1 %i.c, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @268, i64 %i.a) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @269, i64 %i.i) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @270, i64 %i.o, i64 1) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @271, i64 %i.t, i64 %i.u) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.h
  %i.ac = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !10
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !10
  %i.af = and i1 %i.v, %i.ae
  br i1 %i.af, label %bb.l, label %bb.k, !prof !11, !nosanitize !10

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %i.ac) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @273, i64 %i.i, i64 %i.be) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !174 ; 3 uses
  %.not154 = icmp eq i32 %i.bg, 0
  br i1 %.not154, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not152, label %bb.t, label %bb.u, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @274, i64 %i.i, i64 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.bh = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 -1) ; 2 uses
  %i.bi = extractvalue { i32, i1 } %i.bh, 1, !nosanitize !10
  br i1 %i.bi, label %bb.v, label %bb.w, !prof !89, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.bj = zext i32 %i.bg to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @275, i64 %i.bj, i64 1) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @276, i64 %i.bo, i64 %i.bp) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.bx = ptrtoint ptr %i.bm to i64, !nosanitize !10 ; 2 uses
  %i.by = and i64 %i.bx, 3, !nosanitize !10
  %i.bz = icmp eq i64 %i.by, 0, !nosanitize !10
  %i.ca = and i1 %i.bq, %i.bz
  br i1 %i.ca, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @277, i64 %i.bx) #11, !nosanitize !10
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
end_hunk_4
begin_hunk_5_@b3SolveContacts_Convex:bb.a
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.q, %bb.n
  %.0151.lcssa = phi <4 x float> [ zeroinitializer, %bb.n ], [ %i.hy, %bb.q ] ; 2 uses
  %.0150.lcssa = phi <4 x float> [ zeroinitializer, %bb.n ], [ %i.ic, %bb.q ]
  br i1 %2, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bg, i64 784
  %i.kx = load <4 x float>, ptr %i.kw, align 16, !tbaa !176 ; 3 uses
  %i.ky = fcmp une <4 x float> %i.kx, zeroinitializer
  %i.kz = bitcast <4 x i1> %i.ky to i4
  %i.la = icmp eq i4 %i.kz, 0
  br i1 %i.la, label %._crit_edge1677, label %bb.s

._crit_edge1677:                                  ; preds = %bb.r
  %.sroa.0601.0.copyload.pre = load <4 x float>, ptr %i.at, align 16
  %.sroa.4602.0.copyload.pre = load <4 x float>, ptr %.sroa.4447.0..sroa_idx, align 16
  %.sroa.5603.0.copyload.pre = load <4 x float>, ptr %.sroa.5448.0..sroa_idx, align 16
  %.sroa.0598.0.copyload.pre = load <4 x float>, ptr %i.au, align 16
  %.sroa.4599.0.copyload.pre = load <4 x float>, ptr %.sroa.4459.0..sroa_idx, align 16
  %.sroa.5600.0.copyload.pre = load <4 x float>, ptr %.sroa.5460.0..sroa_idx, align 16
  br label %bb.t

bb.s:                                             ; preds = %bb.r
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
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge1677, %bb.s
  %.sroa.5600.0.copyload = phi <4 x float> [ %.sroa.5600.0.copyload.pre, %._crit_edge1677 ], [ %i.oe, %bb.s ]
  %.sroa.4599.0.copyload = phi <4 x float> [ %.sroa.4599.0.copyload.pre, %._crit_edge1677 ], [ %i.od, %bb.s ]
  %.sroa.0598.0.copyload = phi <4 x float> [ %.sroa.0598.0.copyload.pre, %._crit_edge1677 ], [ %i.oc, %bb.s ]
  %.sroa.5603.0.copyload = phi <4 x float> [ %.sroa.5603.0.copyload.pre, %._crit_edge1677 ], [ %i.nl, %bb.s ]
  %.sroa.4602.0.copyload = phi <4 x float> [ %.sroa.4602.0.copyload.pre, %._crit_edge1677 ], [ %i.nk, %bb.s ]
  %.sroa.0601.0.copyload = phi <4 x float> [ %.sroa.0601.0.copyload.pre, %._crit_edge1677 ], [ %i.nj, %bb.s ]
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
end_hunk_5
begin_hunk_6_@b3ApplyRestitution_Convex:bb.a
  %.not219 = icmp ult i64 %i.cc, %i.bu, !nosanitize !10
  br i1 %.not219, label %bb.o, label %bb.p, !prof !89, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @197, i64 %i.bu, i64 %i.cc) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.p, %bb.m
  call fastcc void @b3ScatterBodies(ptr noundef %i.g, ptr noundef %i.ax, ptr noundef %2)
  call fastcc void @b3ScatterBodies(ptr noundef %i.g, ptr noundef %i.bq, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %._crit_edge
  %i.ha = icmp eq i64 %indvars.iv608801, 2147483647
  br i1 %i.ha, label %bb.r, label %.lr.ph406.split, !prof !89, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @198, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10
}

; Function Attrs: nounwind uwtable
define hidden void @b3StoreImpulses_Convex(i64 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !func_sanitize !153 {
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @199, i64 %i.b) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %.fr2439 = freeze ptr %i.i                      ; 5 uses
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @200, i64 %i.m) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @201, i64 %i.v, i64 %i.w) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.t to i64, !nosanitize !10 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !10
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !10
  %i.ah = and i1 %i.x, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @202, i64 %i.ae) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !160 ; 4 uses
  %i.al = icmp ult i8 %i.ak, 2
  br i1 %i.al, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.am = zext i8 %i.ak to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @203, i64 %i.am) #11, !nosanitize !10
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
  %i.av = ptrtoint ptr %.fr2439 to i64            ; 9 uses
  %.not2440 = icmp eq ptr %.fr2439, null
  br i1 %.not2440, label %.split2229.us, label %.preheader180.split.preheader, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.aw = and i64 %0, 4294967295
  %i.ax = and i64 %.sroa.2166.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @204, i64 %i.aw, i64 %i.ax) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader180.split:                              ; preds = %bb.n
  %indvars.iv.next4447.a = add nuw nsw i64 %indvars.iv44466814, 1
  %i.ay = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bb, i32 1), !nosanitize !10 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 0, !nosanitize !10
  %i.ba = extractvalue { i32, i1 } %i.ay, 1, !nosanitize !10
  br i1 %i.ba, label %.split.us, label %.preheader180.split.preheader, !prof !92, !llvm.loop !235, !nosanitize !10

.split.us:                                        ; preds = %.preheader180.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader180.split.preheader:                    ; preds = %.preheader180, %.preheader180.split
  %i.bb = phi i32 [ %i.az, %.preheader180.split ], [ 1, %.preheader180 ] ; 3 uses
  %indvars.iv44466814 = phi i64 [ %indvars.iv.next4447.a, %.preheader180.split ], [ 0, %.preheader180 ] ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr2439, i64 %i.bc ; 2 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @206, i64 %i.av, i64 %.us-phi2231) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %.preheader180.split.preheader
  %i.bg = ptrtoint ptr %i.bd to i64, !nosanitize !10 ; 2 uses
  %i.bh = and i64 %i.bg, 7, !nosanitize !10
  %i.bi = icmp eq i64 %i.bh, 0, !nosanitize !10
  br i1 %i.bi, label %bb.n, label %.split2233, !prof !11, !nosanitize !10

.split2233:                                       ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @207, i64 %i.bg) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr %i.bd, align 8, !tbaa !171
  %.not156 = icmp sgt i32 %i.bj, %.sroa.0165.0.extract.trunc
  br i1 %.not156, label %.preheader179, label %.preheader180.split, !llvm.loop !235

.preheader179:                                    ; preds = %bb.n
  %i.bk = icmp sgt i32 %i.at, %.sroa.0165.0.extract.trunc
  br i1 %i.bk, label %.lr.ph2436, label %._crit_edge2437

.lr.ph2436:                                       ; preds = %.preheader179
  %i.bl = ptrtoint ptr %.fr to i64                ; 3 uses
  %.not2441.a = icmp eq ptr %.fr, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  br label %bb.o

.loopexit178:                                     ; preds = %bb.bt, %bb.y
  %.1131.lcssa = phi i8 [ %.01302433, %bb.y ], [ %.2132.lcssa, %bb.bt ] ; 2 uses
  %.1129.lcssa = phi i32 [ %.01282434, %bb.y ], [ %i.ce, %bb.bt ] ; 2 uses
  %i.bn = icmp slt i32 %.1129.lcssa, %i.at
  %indvars.iv.next4452 = add nuw nsw i64 %indvars.iv4451, 1
  br i1 %i.bn, label %bb.o, label %._crit_edge2437, !llvm.loop !236

bb.o:                                             ; preds = %.lr.ph2436, %.loopexit178
  %indvars.iv4451 = phi i64 [ %indvars.iv44466814, %.lr.ph2436 ], [ %indvars.iv.next4452, %.loopexit178 ] ; 5 uses
  %.01282434 = phi i32 [ %.sroa.0165.0.extract.trunc, %.lr.ph2436 ], [ %.1129.lcssa, %.loopexit178 ] ; 5 uses
  %.01302433 = phi i8 [ %i.ak, %.lr.ph2436 ], [ %.1131.lcssa, %.loopexit178 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr2439, i64 %indvars.iv4451 ; 4 uses
  %i.bp = shl nuw nsw i64 %indvars.iv4451, 4
  %i.bq = add i64 %i.bp, %i.av, !nosanitize !10   ; 2 uses
  %.not2442 = icmp ult i64 %i.bq, %i.av, !nosanitize !10
  br i1 %.not2442, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @208, i64 %i.av, i64 %i.bq) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.br = ptrtoint ptr %i.bo to i64, !nosanitize !10 ; 2 uses
  %i.bs = and i64 %i.br, 7, !nosanitize !10
  %i.bt = icmp eq i64 %i.bs, 0, !nosanitize !10
  br i1 %i.bt, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @209, i64 %i.br) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !171 ; 2 uses
  %exitcond4453 = icmp eq i64 %indvars.iv4451, 2147483647
  br i1 %exitcond4453, label %bb.t, label %bb.u, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @210, i64 2147483647, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.bv = shl i64 %indvars.iv4451, 32
  %sext = add i64 %i.bv, 4294967296               ; 2 uses
  %i.bw = ashr exact i64 %sext, 28
  %i.bx = getelementptr inbounds i8, ptr %.fr2439, i64 %i.bw ; 2 uses
  %i.by = ashr exact i64 %sext, 28
  %i.bz = add i64 %i.by, %i.av, !nosanitize !10   ; 2 uses
  %.not6484 = icmp ult i64 %i.bz, %i.av, !nosanitize !10
  br i1 %.not6484, label %bb.v, label %bb.w, !prof !89, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @211, i64 %i.av, i64 %i.bz) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.ca = ptrtoint ptr %i.bx to i64, !nosanitize !10 ; 2 uses
  %i.cb = and i64 %i.ca, 7, !nosanitize !10
  %i.cc = icmp eq i64 %i.cb, 0, !nosanitize !10
  br i1 %i.cc, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @212, i64 %i.ca) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.cd = load i32, ptr %i.bx, align 8, !tbaa !171
  %i.ce = tail call noundef i32 @llvm.smin.i32(i32 %i.cd, i32 %i.at) ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !172
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !173 ; 3 uses
  %i.cj = icmp slt i32 %.01282434, %i.ce
  br i1 %i.cj, label %.lr.ph2243, label %.loopexit178

.lr.ph2243:                                       ; preds = %bb.y
  %i.ck = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.cl = icmp ne ptr %i.ci, null                 ; 2 uses
  br i1 %.not2441.a, label %.lr.ph2243.split.us, label %.lr.ph2243.split.preheader, !prof !89

.lr.ph2243.split.preheader:                       ; preds = %.lr.ph2243
  %i.cm = sext i32 %i.cg to i64
  %i.cn = sext i32 %.01282434 to i64
  br label %.lr.ph2243.split

.lr.ph2243.split.us:                              ; preds = %.lr.ph2243
  %i.co = sext i32 %.01282434 to i64
  %i.cp = mul nsw i64 %i.co, 1696
  %i.cq = icmp eq i32 %.01282434, 0
  br i1 %i.cq, label %.split2250, label %.split2246.us, !prof !11, !nosanitize !10

.lr.ph2243.split:                                 ; preds = %.lr.ph2243.split.preheader, %bb.bt
  %indvars.iv4444 = phi i64 [ %i.cn, %.lr.ph2243.split.preheader ], [ %indvars.iv.next4445, %bb.bt ] ; 7 uses
  %.11312240 = phi i8 [ %.01302433, %.lr.ph2243.split.preheader ], [ %.2132.lcssa, %bb.bt ]
  %i.cr = getelementptr inbounds [1696 x i8], ptr %.fr, i64 %indvars.iv4444 ; 30 uses
  %i.cs = mul nsw i64 %indvars.iv4444, 1696
  %i.ct = add i64 %i.cs, %i.bl, !nosanitize !10   ; 3 uses
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = icmp uge i64 %i.ct, %i.bl, !nosanitize !10
  %i.cw = icmp slt i64 %indvars.iv4444, 0
  %i.cx = xor i1 %i.cw, %i.cv
  %i.cy = and i1 %i.cu, %i.cx, !nosanitize !10
  br i1 %i.cy, label %bb.z, label %.split2246.us, !prof !11, !nosanitize !10

.split2246.us:                                    ; preds = %.lr.ph2243.split, %.lr.ph2243.split.us
  %.us-phi2248 = phi i64 [ %i.cp, %.lr.ph2243.split.us ], [ %i.ct, %.lr.ph2243.split ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @213, i64 %i.bl, i64 %.us-phi2248) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %.lr.ph2243.split
  %i.cz = ptrtoint ptr %i.cr to i64, !nosanitize !10 ; 2 uses
  %i.da = and i64 %i.cz, 15, !nosanitize !10
  %i.db = icmp eq i64 %i.da, 0, !nosanitize !10
  br i1 %i.db, label %bb.aa, label %.split2250, !prof !11, !nosanitize !10

.split2250:                                       ; preds = %bb.z, %.lr.ph2243.split.us
  %.us-phi2251 = phi i64 [ 0, %.lr.ph2243.split.us ], [ %i.cz, %bb.z ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @215, i64 %.us-phi2251) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 592
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 608
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 320
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 336
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 352
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 368
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 384
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 400
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cr, i64 528
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 720
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 736
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 752
  %i.do = trunc nsw i64 %indvars.iv4444 to i32    ; 2 uses
  %i.dp = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.do, i32 %i.bu), !nosanitize !10 ; 2 uses
  %i.dq = extractvalue { i32, i1 } %i.dp, 1, !nosanitize !10
  br i1 %i.dq, label %bb.ab, label %.preheader177, !prof !89, !nosanitize !10

.preheader177:                                    ; preds = %bb.aa
  %i.dr = extractvalue { i32, i1 } %i.dp, 0, !nosanitize !10 ; 4 uses
  %i.ds = add i32 %i.dr, 536870912
  %i.dt = icmp ult i32 %i.ds, 1073741824
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 896 ; 2 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 928 ; 7 uses
  %i.dx = icmp slt i32 %i.dr, 0
  br i1 %i.dt, label %.preheader177.split.preheader, label %bb.ac, !prof !11, !nosanitize !10

.preheader177.split.preheader:                    ; preds = %.preheader177
  %i.dy = shl nsw i32 %i.dr, 2
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 1056
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 1104
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cr, i64 1040
  %.not176.1 = icmp ugt ptr %i.dw, inttoptr (i64 -193 to ptr)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cr, i64 1248
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cr, i64 1296
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cr, i64 1232
  %.not176.2 = icmp ugt ptr %i.dw, inttoptr (i64 -385 to ptr)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cr, i64 1440
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cr, i64 1488
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cr, i64 1424
  %.not176.3 = icmp ugt ptr %i.dw, inttoptr (i64 -577 to ptr)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cr, i64 1632
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cr, i64 1680
  %i.el = getelementptr inbounds nuw i8, ptr %i.cr, i64 1616
  %.not176.4 = icmp ugt ptr %i.dw, inttoptr (i64 -769 to ptr)
  %i.em = getelementptr inbounds nuw i8, ptr %i.cr, i64 1824
  %i.en = getelementptr inbounds nuw i8, ptr %i.cr, i64 1872
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cr, i64 1808
  br label %.preheader177.split

bb.ab:                                            ; preds = %bb.aa
  %i.ep = and i64 %indvars.iv4444, 4294967295
  %i.eq = zext i32 %i.bu to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @216, i64 %i.ep, i64 %i.eq) #11, !nosanitize !10
  unreachable, !nosanitize !10

.preheader177.split:                              ; preds = %.preheader177.split.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader177.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 31 uses
  %.21322238 = phi i8 [ %.11312240, %.preheader177.split.preheader ], [ %.8.ph, %.loopexit ] ; 8 uses
  %i.er = add nuw nsw i64 %indvars.iv, %i.dz      ; 3 uses
  %.not157 = icmp slt i64 %i.er, %i.cm
  br i1 %.not157, label %bb.ad, label %bb.br

bb.ac:                                            ; preds = %.preheader177
  %i.es = zext i32 %i.dr to i64, !nosanitize !10
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @217, i64 4, i64 %i.es) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %.preheader177.split
  %i.et = shl nuw nsw i64 %indvars.iv, 3
  %i.eu = add i64 %i.et, %i.dv, !nosanitize !10   ; 2 uses
  %.not158 = icmp ult i64 %i.eu, %i.dv, !nosanitize !10
  br i1 %.not158, label %bb.ae, label %bb.af, !prof !89, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @218, i64 %i.dv, i64 %i.eu) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.af:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !175 ; 41 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_6
begin_hunk_7_@b3StoreImpulses_Convex:bb.a
  %i.ix = add i64 %i.iw, 960
  %.not176.5 = icmp ugt ptr %i.dw, inttoptr (i64 -961 to ptr)
  br i1 %.not176.5, label %split, label %bb.ar, !prof !89, !nosanitize !10

bb.ar:                                            ; preds = %.lr.ph.5
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @221, i64 5) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %._crit_edge
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @223, i64 %i.ck, i64 %i.gt) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.at:                                            ; preds = %._crit_edge
  %i.iy = ptrtoint ptr %i.gr to i64, !nosanitize !10 ; 2 uses
  %i.iz = and i64 %i.iy, 3, !nosanitize !10
  %i.ja = icmp eq i64 %i.iz, 0, !nosanitize !10
  %i.jb = and i1 %i.cl, %i.ja
  br i1 %i.jb, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @224, i64 %i.iy) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at
  %i.jc = load i32, ptr %i.gr, align 4, !tbaa !174 ; 2 uses
  %i.jd = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 3 uses
  %i.je = sext i32 %i.jc to i64                   ; 2 uses
  %i.jf = getelementptr inbounds [216 x i8], ptr %i.jd, i64 %i.je ; 3 uses
  %i.jg = mul nsw i64 %i.je, 216
  %i.jh = ptrtoint ptr %i.jd to i64, !nosanitize !10 ; 3 uses
  %i.ji = add i64 %i.jg, %i.jh, !nosanitize !10   ; 3 uses
  %i.jj = icmp ne ptr %i.jd, null, !nosanitize !10 ; 2 uses
  %i.jk = icmp eq i64 %i.ji, 0
  %i.jl = xor i1 %i.jj, %i.jk
  %i.jm = icmp uge i64 %i.ji, %i.jh, !nosanitize !10
  %i.jn = icmp slt i32 %i.jc, 0
  %i.jo = xor i1 %i.jn, %i.jm
  %i.jp = and i1 %i.jl, %i.jo, !nosanitize !10
  br i1 %i.jp, label %bb.ax, label %bb.aw, !prof !11, !nosanitize !10

bb.aw:                                            ; preds = %bb.av
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @225, i64 %i.jh, i64 %i.ji) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.ax:                                            ; preds = %bb.av
  %i.jq = ptrtoint ptr %i.jf to i64, !nosanitize !10 ; 2 uses
  %i.jr = and i64 %i.jq, 7, !nosanitize !10
  %i.js = icmp eq i64 %i.jr, 0, !nosanitize !10
  %i.jt = and i1 %i.jj, %i.js
  br i1 %i.jt, label %bb.az, label %bb.ay, !prof !11, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @226, i64 %i.jq) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.az:                                            ; preds = %bb.ax
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jf, i64 68
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !115
  %i.jw = and i32 %i.jv, 1048576
  %.not159 = icmp ne i32 %i.jw, 0
  %or.cond = and i1 %.not159, %i.gn
  br i1 %or.cond, label %.lr.ph2237.preheader, label %.loopexit

split4470:                                        ; preds = %.lr.ph2237.1, %.lr.ph2237.2, %.lr.ph2237.3, %.lr.ph2237.4
  %.sink6483 = phi i64 [ 112, %.lr.ph2237.2 ], [ 168, %.lr.ph2237.3 ], [ 224, %.lr.ph2237.4 ], [ 56, %.lr.ph2237.1 ]
  %i.jx = add i64 %.sink6483, %i.ey, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @227, i64 %i.ey, i64 %i.jx) #11, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph2237.preheader:                             ; preds = %bb.az
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !163
  %i.ka = fcmp olt float %i.jz, %i.ap
  br i1 %i.ka, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph2237.preheader
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ew, i64 36
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !162
  %i.kd = fcmp ogt float %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.bq, %bb.ba, %bb.bi, %bb.bl, %bb.bo
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !164 ; 2 uses
  %i.kg = lshr i32 %i.kf, 6
  %i.kh = load ptr, ptr %i.ai, align 8, !tbaa !165 ; 3 uses
  %i.ki = zext nneg i32 %i.kg to i64              ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.ki ; 3 uses
  %i.kk = shl nuw nsw i64 %i.ki, 3
  %i.kl = ptrtoint ptr %i.kh to i64, !nosanitize !10 ; 3 uses
  %i.km = add i64 %i.kk, %i.kl, !nosanitize !10   ; 3 uses
  %i.kn = icmp ne ptr %i.kh, null, !nosanitize !10 ; 2 uses
  %i.ko = icmp eq i64 %i.km, 0
  %i.kp = xor i1 %i.kn, %i.ko
  %i.kq = icmp uge i64 %i.km, %i.kl, !nosanitize !10
  %i.kr = and i1 %i.kq, %i.kp, !nosanitize !10
  br i1 %i.kr, label %bb.bd, label %bb.bc, !prof !11, !nosanitize !10

bb.bc:                                            ; preds = %bb.bb
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @245, i64 %i.kl, i64 %i.km) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.bd:                                            ; preds = %bb.bb
  %i.ks = ptrtoint ptr %i.kj to i64, !nosanitize !10 ; 2 uses
  %i.kt = and i64 %i.ks, 7, !nosanitize !10
  %i.ku = icmp eq i64 %i.kt, 0, !nosanitize !10
  %i.kv = and i1 %i.kn, %i.ku
  br i1 %i.kv, label %bb.bf, label %bb.be, !prof !11, !nosanitize !10

bb.be:                                            ; preds = %bb.bd
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @246, i64 %i.ks) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.bf:                                            ; preds = %bb.bd
  %i.kw = and i32 %i.kf, 63
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = shl nuw i64 1, %i.kx
  %i.kz = load i64, ptr %i.kj, align 8, !tbaa !166
  %i.la = or i64 %i.kz, %i.ky
  store i64 %i.la, ptr %i.kj, align 8, !tbaa !166
  br label %.loopexit

bb.bg:                                            ; preds = %bb.ba, %.lr.ph2237.preheader
  %exitcond4443.not = icmp eq i32 %i.gm, 1
  br i1 %exitcond4443.not, label %.loopexit, label %.lr.ph2237.1

.lr.ph2237.1:                                     ; preds = %bb.bg
  %.not160.1 = icmp ugt ptr %i.ew, inttoptr (i64 -57 to ptr)
  br i1 %.not160.1, label %split4470, label %bb.bh, !prof !89, !nosanitize !10

bb.bh:                                            ; preds = %.lr.ph2237.1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !163
  %i.ld = fcmp olt float %i.lc, %i.ap
  br i1 %i.ld, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.le = getelementptr inbounds nuw i8, ptr %i.ew, i64 92
  %i.lf = load float, ptr %i.le, align 4, !tbaa !162
  %i.lg = fcmp ogt float %i.lf, 0.000000e+00
  br i1 %i.lg, label %bb.bb, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %exitcond4443.1.not = icmp eq i32 %i.gm, 2
  br i1 %exitcond4443.1.not, label %.loopexit, label %.lr.ph2237.2

.lr.ph2237.2:                                     ; preds = %bb.bj
  %.not160.2 = icmp ugt ptr %i.ew, inttoptr (i64 -113 to ptr)
  br i1 %.not160.2, label %split4470, label %bb.bk, !prof !89, !nosanitize !10

bb.bk:                                            ; preds = %.lr.ph2237.2
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.li = load float, ptr %i.lh, align 4, !tbaa !163
  %i.lj = fcmp olt float %i.li, %i.ap
  br i1 %i.lj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ew, i64 148
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !162
  %i.lm = fcmp ogt float %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.bb, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %exitcond4443.2.not = icmp eq i32 %i.gm, 3
  br i1 %exitcond4443.2.not, label %.loopexit, label %.lr.ph2237.3

.lr.ph2237.3:                                     ; preds = %bb.bm
  %.not160.3 = icmp ugt ptr %i.ew, inttoptr (i64 -169 to ptr)
  br i1 %.not160.3, label %split4470, label %bb.bn, !prof !89, !nosanitize !10

bb.bn:                                            ; preds = %.lr.ph2237.3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ew, i64 208
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !163
  %i.lp = fcmp olt float %i.lo, %i.ap
  br i1 %i.lp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ew, i64 204
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !162
  %i.ls = fcmp ogt float %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.bb, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %exitcond4443.3.not = icmp eq i32 %i.gm, 4
  br i1 %exitcond4443.3.not, label %.loopexit, label %.lr.ph2237.4

.lr.ph2237.4:                                     ; preds = %bb.bp
  %.not160.4 = icmp ugt ptr %i.ew, inttoptr (i64 -225 to ptr)
  br i1 %.not160.4, label %split4470, label %bb.bq, !prof !89, !nosanitize !10

bb.bq:                                            ; preds = %.lr.ph2237.4
  %i.lt = fcmp olt float %i.gq, %i.ap
  %i.lu = fcmp ogt float %i.gp, 0.000000e+00
  %or.cond6815 = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond6815, label %bb.bb, label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %bb.bj, %bb.bm, %bb.bp, %bb.bq, %bb.af, %bb.bf, %bb.az
  %.8.ph = phi i8 [ %.21322238, %bb.af ], [ 1, %bb.bf ], [ %.21322238, %bb.az ], [ %.21322238, %bb.bq ], [ %.21322238, %bb.bg ], [ %.21322238, %bb.bp ], [ %.21322238, %bb.bm ], [ %.21322238, %bb.bj ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.br, label %.preheader177.split, !llvm.loop !237

bb.br:                                            ; preds = %.preheader177.split, %.loopexit
  %.2132.lcssa = phi i8 [ %.21322238, %.preheader177.split ], [ %.8.ph, %.loopexit ] ; 2 uses
  %i.lv = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.do, i32 1), !nosanitize !10 ; 2 uses
  %i.lw = extractvalue { i32, i1 } %i.lv, 1, !nosanitize !10
  br i1 %i.lw, label %bb.bs, label %bb.bt, !prof !89, !nosanitize !10

bb.bs:                                            ; preds = %bb.br
  %i.lx = and i64 %indvars.iv4444, 4294967295
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @228, i64 %i.lx, i64 1) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.bt:                                            ; preds = %bb.br
  %i.ly = extractvalue { i32, i1 } %i.lv, 0, !nosanitize !10
  %i.lz = icmp slt i32 %i.ly, %i.ce
  %indvars.iv.next4445 = add nsw i64 %indvars.iv4444, 1
  br i1 %i.lz, label %.lr.ph2243.split, label %.loopexit178, !llvm.loop !238

._crit_edge2437:                                  ; preds = %.loopexit178, %.preheader179
  %.0130.lcssa = phi i8 [ %i.ak, %.preheader179 ], [ %.1131.lcssa, %.loopexit178 ]
  store i8 %.0130.lcssa, ptr %i.aj, align 8, !tbaa !160
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareContacts_Overflow(ptr noundef %0) local_unnamed_addr #9 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @229, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @230, i64 %i.i) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @231, i64 %i.i, i64 %i.m) #11, !nosanitize !10
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
define hidden void @b3WarmStartContacts_Overflow(ptr noundef %0) local_unnamed_addr #9 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @232, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @233, i64 %i.i) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @234, i64 %i.i, i64 %i.m) #11, !nosanitize !10
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
define hidden void @b3SolveContacts_Overflow(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #9 !func_sanitize !239 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @235, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @236, i64 %i.i) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @237, i64 %i.i, i64 %i.m) #11, !nosanitize !10
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
define hidden void @b3ApplyRestitution_Overflow(ptr noundef %0) local_unnamed_addr #9 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @238, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @239, i64 %i.i) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %i.i, i64 %i.m) #11, !nosanitize !10
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
define hidden void @b3StoreImpulses_Overflow(ptr noundef %0) local_unnamed_addr #9 !func_sanitize !179 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @241, i64 %i.b) #11, !nosanitize !10
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @242, i64 %i.i) #11, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.f, label %bb.g, !prof !89, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.i, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @243, i64 %i.i, i64 %i.m) #11, !nosanitize !10
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
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

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
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
end_hunk_7
begin_hunk_8_@llvm.vector.reduce.smax.v4i32
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
end_hunk_8
