Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@190 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1833, i32 49 }, ptr @77, i8 3, i8 3 }
@191 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1836, i32 55 }, ptr @8 }
@192 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1838, i32 44 } }
@193 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1840, i32 23 }, ptr @151, i8 4, i8 3 }
@194 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1862, i32 49 } }
@195 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1908, i32 28 }, ptr @0, i8 3, i8 3 }
@196 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1911, i32 38 }, ptr @2, i8 3, i8 3 }
@197 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1911, i32 56 } }
@198 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1912, i32 43 }, ptr @107, i8 3, i8 3 }
@199 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1913, i32 35 }, ptr @4 }
@200 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1917, i32 38 }, ptr @8 }
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
  %.not6320 = icmp eq ptr %.0.fr, null
  br i1 %.not6320, label %.split4841.us, label %.preheader1085.split.preheader, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.ar = and i64 %0, 4294967295
  %i.as = and i64 %.sroa.21037.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @9, i64 %i.ar, i64 %i.as) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1085.split:                             ; preds = %bb.n
  %indvars.iv.next9912 = add nuw nsw i64 %indvars.iv991113886, 1
  %i.at = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aw, i32 1), !nosanitize !10 ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0, !nosanitize !10
  %i.av = extractvalue { i32, i1 } %i.at, 1, !nosanitize !10
  br i1 %i.av, label %.split.us, label %.preheader1085.split.preheader, !prof !92, !llvm.loop !181, !nosanitize !10

.split.us:                                        ; preds = %.preheader1085.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @10, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1085.split.preheader:                   ; preds = %.preheader1085, %.preheader1085.split
  %i.aw = phi i32 [ %i.au, %.preheader1085.split ], [ 1, %.preheader1085 ] ; 3 uses
  %indvars.iv991113886 = phi i64 [ %indvars.iv.next9912, %.preheader1085.split ], [ 0, %.preheader1085 ] ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %.0.fr, i64 %i.ax ; 2 uses
  %i.az = shl nsw i64 %i.ax, 4
  %i.ba = add i64 %i.az, %i.aq, !nosanitize !10   ; 3 uses
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = icmp uge i64 %i.ba, %i.aq, !nosanitize !10
  %i.bd = icmp slt i32 %i.aw, 0
  %i.be = xor i1 %i.bd, %i.bc
  %i.bf = and i1 %i.bb, %i.be, !nosanitize !10
  br i1 %i.bf, label %bb.m, label %.split4841.us, !prof !11, !nosanitize !10

.split4841.us:                                    ; preds = %.preheader1085.split.preheader, %.preheader1085
  %.us-phi4843 = phi i64 [ 16, %.preheader1085 ], [ %i.ba, %.preheader1085.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @11, i64 %i.aq, i64 %.us-phi4843) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %.preheader1085.split.preheader
  %i.bg = ptrtoint ptr %i.ay to i64, !nosanitize !10 ; 2 uses
  %i.bh = and i64 %i.bg, 7, !nosanitize !10
  %i.bi = icmp eq i64 %i.bh, 0, !nosanitize !10
  br i1 %i.bi, label %bb.n, label %.split4845, !prof !11, !nosanitize !10

.split4845:                                       ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.bg) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr %i.ay, align 8, !tbaa !96
  %.not588 = icmp sgt i32 %i.bj, %.sroa.01036.0.extract.trunc
  br i1 %.not588, label %.preheader.split, label %.preheader1085.split, !llvm.loop !181

.preheader.split:                                 ; preds = %bb.n
  %i.bk = icmp sgt i32 %i.ao, %.sroa.01036.0.extract.trunc
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader.split
  %i.bl = ptrtoint ptr %.0543 to i64              ; 5 uses
  %i.bm = icmp ne ptr %.0543, null                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  %i.bo = ptrtoint ptr %i.i to i64                ; 6 uses
  %i.bp = icmp ne ptr %i.i, null                  ; 4 uses
  %i.bq = ptrtoint ptr %i.k to i64                ; 6 uses
  %i.br = icmp ne ptr %i.k, null                  ; 4 uses
  %i.bs = ptrtoint ptr %.0542 to i64              ; 3 uses
  %i.bt = icmp ne ptr %.0542, null                ; 3 uses
  %i.bu = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  br label %bb.o

.loopexit:                                        ; preds = %._crit_edge4864.us, %.split4865
  %.1.lcssa = phi i32 [ %.05446319, %.split4865 ], [ %i.cs, %._crit_edge4864.us ] ; 2 uses
  %i.bw = icmp slt i32 %.1.lcssa, %i.ao
  br i1 %i.bw, label %bb.o, label %._crit_edge, !llvm.loop !182

bb.o:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv9916 = phi i64 [ %indvars.iv991113886, %.lr.ph ], [ %indvars.iv.next9917, %.loopexit ] ; 4 uses
  %.05446319 = phi i32 [ %.sroa.01036.0.extract.trunc, %.lr.ph ], [ %.1.lcssa, %.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.0.fr, i64 %indvars.iv9916 ; 3 uses
  %i.by = shl nuw nsw i64 %indvars.iv9916, 4
  %i.bz = add i64 %i.by, %i.aq, !nosanitize !10   ; 2 uses
  %.not6321 = icmp ult i64 %i.bz, %i.aq, !nosanitize !10
  br i1 %.not6321, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @14, i64 %i.aq, i64 %i.bz) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.ca = ptrtoint ptr %i.bx to i64, !nosanitize !10 ; 2 uses
  %i.cb = and i64 %i.ca, 7, !nosanitize !10
  %i.cc = icmp eq i64 %i.cb, 0, !nosanitize !10
  br i1 %i.cc, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.ca) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.cd = load i32, ptr %i.bx, align 8, !tbaa !96 ; 3 uses
  %indvars.iv.next9917 = add nuw nsw i64 %indvars.iv9916, 1 ; 3 uses
  %exitcond9919 = icmp eq i64 %indvars.iv9916, 2147483647
  br i1 %exitcond9919, label %bb.t, label %bb.u, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @16, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %sext = shl i64 %indvars.iv.next9917, 32        ; 2 uses
  %i.ce = ashr exact i64 %sext, 28
  %i.cf = getelementptr inbounds i8, ptr %.0.fr, i64 %i.ce ; 2 uses
  %i.cg = ashr exact i64 %sext, 28
  %i.ch = add i64 %i.cg, %i.aq, !nosanitize !10   ; 3 uses
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = icmp uge i64 %i.ch, %i.aq, !nosanitize !10
  %i.ck = and i64 %indvars.iv.next9917, 2147483648
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = xor i1 %i.cl, %i.cj
  %i.cn = and i1 %i.ci, %i.cm, !nosanitize !10
  br i1 %i.cn, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 %i.aq, i64 %i.ch) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.co = ptrtoint ptr %i.cf to i64, !nosanitize !10 ; 2 uses
  %i.cp = and i64 %i.co, 7, !nosanitize !10
  %i.cq = icmp eq i64 %i.cp, 0, !nosanitize !10
  br i1 %i.cq, label %.split4865, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @18, i64 %i.co) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split4865:                                       ; preds = %bb.w
  %i.cr = load i32, ptr %i.cf, align 8, !tbaa !96
  %i.cs = tail call noundef i32 @llvm.smin.i32(i32 %i.cr, i32 %i.ao) ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !187
  %.fr6322 = freeze ptr %i.cu                     ; 3 uses
  %i.cv = icmp slt i32 %.05446319, %i.cs
  br i1 %i.cv, label %.lr.ph4867, label %.loopexit

.lr.ph4867:                                       ; preds = %.split4865
  %i.cw = ptrtoint ptr %.fr6322 to i64            ; 4 uses
  %.not6323 = icmp eq ptr %.fr6322, null
  %i.cx = sext i32 %.05446319 to i64              ; 2 uses
  br i1 %.not6323, label %.lr.ph4867.split.us, label %.lr.ph4867.split.split.us.preheader, !prof !89

.lr.ph4867.split.us:                              ; preds = %.lr.ph4867
  %i.cy = mul nsw i64 %i.cx, 168
  %i.cz = add i64 %i.cy, %i.bl, !nosanitize !10   ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = xor i1 %i.bm, %i.da
  %i.dc = icmp uge i64 %i.cz, %i.bl, !nosanitize !10
  %i.dd = icmp slt i32 %.05446319, 0
  %i.de = xor i1 %i.dd, %i.dc
  %i.df = and i1 %i.db, %i.de, !nosanitize !10
  br i1 %i.df, label %bb.y, label %.split4870.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %.lr.ph4867.split.us
  %i.dg = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.05446319, i32 %i.cd), !nosanitize !10 ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.dg, 1, !nosanitize !10
  br i1 %i.dh, label %.split4874.us, label %bb.z, !prof !89, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.di = extractvalue { i32, i1 } %i.dg, 0, !nosanitize !10 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %i.dj, 12                   ; 2 uses
  %i.dl = icmp eq i32 %i.di, 0
  %i.dm = icmp uge i64 %i.dk, %i.cw, !nosanitize !10
  %i.dn = and i1 %i.dl, %i.dm
  br i1 %i.dn, label %.split4882, label %.split4878.us, !prof !11, !nosanitize !10

.lr.ph4867.split.split.us.preheader:              ; preds = %.lr.ph4867
  %i.do = sext i32 %i.cs to i64
  br label %.lr.ph4867.split.split.us

.lr.ph4867.split.split.us:                        ; preds = %.lr.ph4867.split.split.us.preheader, %._crit_edge4864.us
  %indvars.iv9907 = phi i64 [ %i.cx, %.lr.ph4867.split.split.us.preheader ], [ %indvars.iv.next9908, %._crit_edge4864.us ] ; 5 uses
  %i.dp = getelementptr inbounds [168 x i8], ptr %.0543, i64 %indvars.iv9907 ; 25 uses
  %i.dq = mul nsw i64 %indvars.iv9907, 168
  %i.dr = add i64 %i.dq, %i.bl, !nosanitize !10   ; 3 uses
  %i.ds = icmp eq i64 %i.dr, 0
  %i.dt = xor i1 %i.bm, %i.ds
  %i.du = icmp uge i64 %i.dr, %i.bl, !nosanitize !10
  %i.dv = icmp slt i64 %indvars.iv9907, 0
  %i.dw = xor i1 %i.dv, %i.du
  %i.dx = and i1 %i.dt, %i.dw, !nosanitize !10
  br i1 %i.dx, label %bb.aa, label %.split4870.us, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %.lr.ph4867.split.split.us
  %i.dy = trunc nsw i64 %indvars.iv9907 to i32    ; 2 uses
  %i.dz = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.dy, i32 %i.cd), !nosanitize !10 ; 2 uses
  %i.ea = extractvalue { i32, i1 } %i.dz, 1, !nosanitize !10
  br i1 %i.ea, label %.split4874.us, label %bb.ab, !prof !89, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.eb = extractvalue { i32, i1 } %i.dz, 0, !nosanitize !10 ; 2 uses
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [12 x i8], ptr %.fr6322, i64 %i.ec ; 3 uses
  %i.ee = mul nsw i64 %i.ec, 12
  %i.ef = add i64 %i.ee, %i.cw, !nosanitize !10   ; 3 uses
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = icmp uge i64 %i.ef, %i.cw, !nosanitize !10
  %i.ei = icmp slt i32 %i.eb, 0
  %i.ej = xor i1 %i.ei, %i.eh
  %i.ek = and i1 %i.eg, %i.ej, !nosanitize !10
  br i1 %i.ek, label %bb.ac, label %.split4878.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.el = ptrtoint ptr %i.ed to i64, !nosanitize !10 ; 2 uses
  %i.em = and i64 %i.el, 3, !nosanitize !10
  %i.en = icmp eq i64 %i.em, 0, !nosanitize !10
  br i1 %i.en, label %bb.ad, label %.split4882, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load i32, ptr %i.ed, align 4, !tbaa !189 ; 2 uses
  %i.ep = load ptr, ptr %i.bn, align 8, !tbaa !97 ; 3 uses
  %i.eq = sext i32 %i.eo to i64                   ; 2 uses
  %i.er = getelementptr inbounds [216 x i8], ptr %i.ep, i64 %i.eq ; 11 uses
  %i.es = mul nsw i64 %i.eq, 216
  %i.et = ptrtoint ptr %i.ep to i64, !nosanitize !10 ; 3 uses
  %i.eu = add i64 %i.es, %i.et, !nosanitize !10   ; 3 uses
  %i.ev = icmp ne ptr %i.ep, null, !nosanitize !10 ; 2 uses
  %i.ew = icmp eq i64 %i.eu, 0
  %i.ex = xor i1 %i.ev, %i.ew
  %i.ey = icmp uge i64 %i.eu, %i.et, !nosanitize !10
  %i.ez = icmp slt i32 %i.eo, 0
  %i.fa = xor i1 %i.ez, %i.ey
  %i.fb = and i1 %i.ex, %i.fa, !nosanitize !10
  br i1 %i.fb, label %bb.ae, label %.split5439.us, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  %i.fc = ptrtoint ptr %i.er to i64, !nosanitize !10 ; 2 uses
  %i.fd = and i64 %i.fc, 7, !nosanitize !10
  %i.fe = icmp eq i64 %i.fd, 0, !nosanitize !10
  %i.ff = and i1 %i.ev, %i.fe
  br i1 %i.ff, label %bb.af, label %.split5443.us, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 60
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !102 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !103 ; 4 uses
  %i.fk = icmp eq i32 %i.fh, -1
  br i1 %i.fk, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = sext i32 %i.fh to i64                   ; 4 uses
  %i.fm = getelementptr inbounds [216 x i8], ptr %i.i, i64 %i.fl ; 8 uses
  %i.fn = mul nsw i64 %i.fl, 216
  %i.fo = add i64 %i.fn, %i.bo, !nosanitize !10   ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = xor i1 %i.bp, %i.fp
  %i.fr = icmp uge i64 %i.fo, %i.bo, !nosanitize !10
  %i.fs = icmp slt i32 %i.fh, 0                   ; 2 uses
  %i.ft = xor i1 %i.fs, %i.fr
  %i.fu = and i1 %i.fq, %i.ft, !nosanitize !10
  br i1 %i.fu, label %bb.ah, label %.split5452.us, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %bb.ag
  %i.fv = ptrtoint ptr %i.fm to i64, !nosanitize !10 ; 2 uses
  %i.fw = and i64 %i.fv, 3, !nosanitize !10
  %i.fx = icmp eq i64 %i.fw, 0, !nosanitize !10
  %i.fy = and i1 %i.bp, %i.fx
  br i1 %i.fy, label %bb.ai, label %.split5456.us, !prof !11, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 104
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !106
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %.sroa.15959.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.fm, i64 152
  %.sroa.15959.0.copyload960.us = load float, ptr %.sroa.15959.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
  %.sroa.19970.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.fm, i64 156
  %.sroa.27992.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.fm, i64 164
  %.sroa.27992.0.copyload993.us = load float, ptr %.sroa.27992.0..sroa_idx.us, align 4, !tbaa !107 ; 2 uses
end_hunk_0
begin_hunk_1_@b3ApplyRestitution_Mesh:bb.a
  %.sroa.0171.2 = phi <2 x float> [ %i.jg, %bb.ac ], [ %.sroa.0171.1944, %bb.ab ], [ %.sroa.0171.1944, %bb.aa ] ; 2 uses
  %.sroa.7174.2 = phi float [ %i.jh, %bb.ac ], [ %.sroa.7174.1945, %bb.ab ], [ %.sroa.7174.1945, %bb.aa ] ; 2 uses
  %.sroa.0177.2 = phi <2 x float> [ %i.hs, %bb.ac ], [ %.sroa.0177.1946, %bb.ab ], [ %.sroa.0177.1946, %bb.aa ] ; 2 uses
  %.sroa.7180.2 = phi float [ %i.hu, %bb.ac ], [ %.sroa.7180.1947, %bb.ab ], [ %.sroa.7180.1947, %bb.aa ] ; 2 uses
  %.sroa.0183.2 = phi <2 x float> [ %i.iw, %bb.ac ], [ %.sroa.0183.1948, %bb.ab ], [ %.sroa.0183.1948, %bb.aa ] ; 2 uses
  %.sroa.7186.2 = phi float [ %i.ix, %bb.ac ], [ %.sroa.7186.1949, %bb.ab ], [ %.sroa.7186.1949, %bb.aa ] ; 2 uses
  %.sroa.0189.2 = phi <2 x float> [ %i.gy, %bb.ac ], [ %.sroa.0189.1950, %bb.ab ], [ %.sroa.0189.1950, %bb.aa ] ; 2 uses
  %.sroa.7192.2 = phi float [ %i.hb, %bb.ac ], [ %.sroa.7192.1951, %bb.ab ], [ %.sroa.7192.1951, %bb.aa ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1678.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1678.not, label %._crit_edge, label %bb.w, !llvm.loop !209

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
  %.pre3215 = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %.pre3217 = and i64 %.pre3215, 7, !nosanitize !10
  %i.l = icmp eq i64 %.pre3217, 0
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
  %.pre-phi3218 = phi i1 [ %i.l, %._crit_edge ], [ true, %bb.h ]
  %.pre-phi3216 = phi i64 [ %.pre3215, %._crit_edge ], [ %i.n, %bb.h ]
  %.077.in = phi ptr [ %i.j, %._crit_edge ], [ %i.v, %bb.h ]
  %.076.in = phi ptr [ %i.k, %._crit_edge ], [ %i.u, %bb.h ]
  %.076 = load ptr, ptr %.076.in, align 8, !tbaa !90
  %.076.fr = freeze ptr %.076                     ; 7 uses
  %.077 = load ptr, ptr %.077.in, align 8, !tbaa !91
  %.077.fr = freeze ptr %.077                     ; 3 uses
  %i.w = icmp ne ptr %i.g, null, !nosanitize !10
  %i.x = and i1 %i.w, %.pre-phi3218, !nosanitize !10
  br i1 %i.x, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %.pre-phi3216) #10, !nosanitize !10
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
  %indvars.iv.next3195 = add nuw nsw i64 %indvars.iv31944381, 1
  %i.bg = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bj, i32 1), !nosanitize !10 ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 0, !nosanitize !10
  %i.bi = extractvalue { i32, i1 } %i.bg, 1, !nosanitize !10
  br i1 %i.bi, label %.split.us, label %.preheader116.split.preheader, !prof !92, !llvm.loop !213, !nosanitize !10

.split.us:                                        ; preds = %.preheader116.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @111, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split.preheader:                    ; preds = %.preheader116, %.preheader116.split
  %i.bj = phi i32 [ %i.bh, %.preheader116.split ], [ 1, %.preheader116 ] ; 4 uses
  %.0804382 = phi i32 [ %i.bj, %.preheader116.split ], [ 0, %.preheader116 ]
  %indvars.iv31944381 = phi i64 [ %indvars.iv.next3195, %.preheader116.split ], [ 0, %.preheader116 ] ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %i.bk ; 2 uses
  %i.bm = shl nsw i64 %i.bk, 4
  %i.bn = add i64 %i.bm, %i.bd, !nosanitize !10   ; 3 uses
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = icmp uge i64 %i.bn, %i.bd, !nosanitize !10
  %i.bq = icmp slt i32 %i.bj, 0
  %i.br = xor i1 %i.bq, %i.bp
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !10
  br i1 %i.bs, label %bb.s, label %.split1291.us, !prof !11, !nosanitize !10

.split1291.us:                                    ; preds = %.preheader116.split.preheader, %.preheader116
  %.us-phi1293 = phi i64 [ 16, %.preheader116 ], [ %i.bn, %.preheader116.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.bd, i64 %.us-phi1293) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %.preheader116.split.preheader
  %i.bt = ptrtoint ptr %i.bl to i64, !nosanitize !10 ; 2 uses
  %i.bu = and i64 %i.bt, 7, !nosanitize !10
  %i.bv = icmp eq i64 %i.bu, 0, !nosanitize !10
  br i1 %i.bv, label %bb.t, label %.split1295, !prof !11, !nosanitize !10

.split1295:                                       ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.bt) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %i.bl, align 8, !tbaa !96
  %.not109 = icmp sgt i32 %i.bw, %.sroa.0.0.extract.trunc
  br i1 %.not109, label %.preheader.split, label %.preheader116.split, !llvm.loop !213

.preheader.split:                                 ; preds = %bb.t
  %i.bx = icmp sgt i32 %i.bb, %.sroa.0.0.extract.trunc
  br i1 %i.bx, label %.lr.ph1574, label %._crit_edge1575

.lr.ph1574:                                       ; preds = %.preheader.split
  %i.by = ptrtoint ptr %.077.fr to i64            ; 4 uses
  %.not1751 = icmp eq ptr %.077.fr, null
  br i1 %.not1751, label %.lr.ph1574.split.split.us, label %.lr.ph1574.split.us, !prof !89

.lr.ph1574.split.us:                              ; preds = %.lr.ph1574, %.loopexit.us
  %indvars.iv3199 = phi i64 [ %indvars.iv.next3200, %.loopexit.us ], [ %indvars.iv31944381, %.lr.ph1574 ] ; 5 uses
  %.0821572.us = phi i32 [ %.183.lcssa.us, %.loopexit.us ], [ %.sroa.0.0.extract.trunc, %.lr.ph1574 ] ; 3 uses
  %.0841571.us = phi i8 [ %.185.lcssa.us, %.loopexit.us ], [ %i.as, %.lr.ph1574 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.076.fr, i64 %indvars.iv3199 ; 2 uses
  %i.ca = shl nuw nsw i64 %indvars.iv3199, 4
  %i.cb = add i64 %i.ca, %i.bd, !nosanitize !10   ; 2 uses
  %.not1755 = icmp ult i64 %i.cb, %i.bd, !nosanitize !10
  br i1 %.not1755, label %.split1586.us, label %bb.u, !prof !89, !nosanitize !10

bb.u:                                             ; preds = %.lr.ph1574.split.us
  %i.cc = ptrtoint ptr %i.bz to i64, !nosanitize !10 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !nosanitize !10
  %i.ce = icmp eq i64 %i.cd, 0, !nosanitize !10
  br i1 %i.ce, label %bb.v, label %.split1589.us, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.cf = load i32, ptr %i.bz, align 8, !tbaa !96 ; 2 uses
  %exitcond3201 = icmp eq i64 %indvars.iv3199, 2147483647
  br i1 %exitcond3201, label %.split1592.us, label %bb.w, !prof !89, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  %i.cg = shl i64 %indvars.iv3199, 32
  %sext4157 = add i64 %i.cg, 4294967296           ; 2 uses
  %3 = ashr exact i64 %sext4157, 28
  %4 = getelementptr inbounds i8, ptr %.076.fr, i64 %3 ; 2 uses
  %5 = ashr exact i64 %sext4157, 28
  %6 = add i64 %5, %i.bd, !nosanitize !10         ; 2 uses
  %.not4158 = icmp ult i64 %6, %i.bd, !nosanitize !10
  br i1 %.not4158, label %.split1595.us, label %bb.x, !prof !89, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.ch = ptrtoint ptr %4 to i64, !nosanitize !10 ; 2 uses
  %i.ci = and i64 %i.ch, 7, !nosanitize !10
  %i.cj = icmp eq i64 %i.ci, 0, !nosanitize !10
  br i1 %i.cj, label %.split1345.us, label %.split1598.us, !prof !11, !nosanitize !10

.split1345.us:                                    ; preds = %bb.x
  %i.ck = load i32, ptr %4, align 8, !tbaa !96
  %i.cl = tail call noundef i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bb) ; 3 uses
  %i.cm = icmp slt i32 %.0821572.us, %i.cl
  br i1 %i.cm, label %.lr.ph1348.us.preheader, label %.loopexit.us

.lr.ph1348.us.preheader:                          ; preds = %.split1345.us
  %i.cn = sext i32 %.0821572.us to i64
  %i.co = sext i32 %i.cl to i64
  br label %.lr.ph1348.us

.lr.ph1348.us:                                    ; preds = %.lr.ph1348.us.preheader, %._crit_edge1343.us
  %indvars.iv3191 = phi i64 [ %i.cn, %.lr.ph1348.us.preheader ], [ %indvars.iv.next3192, %._crit_edge1343.us ] ; 6 uses
  %.1851346.us1579 = phi i8 [ %.0841571.us, %.lr.ph1348.us.preheader ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %i.cp = getelementptr inbounds [168 x i8], ptr %.077.fr, i64 %indvars.iv3191 ; 4 uses
  %i.cq = mul nsw i64 %indvars.iv3191, 168
  %i.cr = add i64 %i.cq, %i.by, !nosanitize !10   ; 3 uses
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = icmp uge i64 %i.cr, %i.by, !nosanitize !10
  %i.cu = icmp slt i64 %indvars.iv3191, 0
  %i.cv = xor i1 %i.cu, %i.ct
  %i.cw = and i1 %i.cs, %i.cv, !nosanitize !10
  br i1 %i.cw, label %bb.y, label %.split1352.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %.lr.ph1348.us
  %i.cx = trunc nsw i64 %indvars.iv3191 to i32
  %i.cy = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cx, i32 %i.cf), !nosanitize !10
  %i.cz = extractvalue { i32, i1 } %i.cy, 1, !nosanitize !10
  br i1 %i.cz, label %.split1356.us, label %bb.z, !prof !89, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.da = ptrtoint ptr %i.cp to i64, !nosanitize !10 ; 2 uses
  %i.db = and i64 %i.da, 7, !nosanitize !10
  %i.dc = icmp eq i64 %i.db, 0, !nosanitize !10
  br i1 %i.dc, label %bb.aa, label %.split1360, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !109 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 164
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !110 ; 2 uses
  %i.dh = icmp ne ptr %i.de, null, !nosanitize !10
  %i.di = ptrtoint ptr %i.de to i64, !nosanitize !10 ; 2 uses
  %i.dj = and i64 %i.di, 7, !nosanitize !10
  %i.dk = icmp eq i64 %i.dj, 0, !nosanitize !10
  %i.dl = and i1 %i.dh, %i.dk, !nosanitize !10
  br i1 %i.dl, label %.split1338.us, label %.split1617.us, !prof !11, !nosanitize !10

.split1338.us:                                    ; preds = %bb.aa
  %i.dm = icmp sgt i32 %i.dg, 0
  br i1 %i.dm, label %.lr.ph1342.us, label %._crit_edge1343.us

.lr.ph1342.us:                                    ; preds = %.split1338.us
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 68
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !115
  %.fr1756 = freeze i32 %i.do
  %i.dp = and i32 %.fr1756, 1048576
  %.not110.us.not = icmp eq i32 %i.dp, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 56 ; 5 uses
  %wide.trip.count3190 = zext nneg i32 %i.dg to i64
  br label %.lr.ph1342.split.us

.lr.ph1342.split.us:                              ; preds = %.lr.ph1342.us, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph1342.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 5 uses
  %.0791340.us = phi i8 [ 0, %.lr.ph1342.us ], [ %.1.lcssa.us, %._crit_edge.us ] ; 8 uses
  %.2861339.us = phi i8 [ %.1851346.us1579, %.lr.ph1342.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 7 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !119 ; 3 uses
  %i.dt = getelementptr inbounds nuw [268 x i8], ptr %i.ds, i64 %indvars.iv ; 33 uses
  %i.du = mul nuw nsw i64 %indvars.iv, 268
  %i.dv = ptrtoint ptr %i.ds to i64, !nosanitize !10 ; 3 uses
  %i.dw = add i64 %i.du, %i.dv, !nosanitize !10   ; 3 uses
  %i.dx = icmp ne ptr %i.ds, null, !nosanitize !10 ; 2 uses
  %i.dy = icmp eq i64 %i.dw, 0
  %i.dz = xor i1 %i.dx, %i.dy
  %i.ea = icmp uge i64 %i.dw, %i.dv, !nosanitize !10
  %i.eb = and i1 %i.dz, %i.ea, !nosanitize !10
  br i1 %i.eb, label %bb.ab, label %.split1626.us, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %.lr.ph1342.split.us
  %i.ec = load ptr, ptr %i.cp, align 8, !tbaa !118 ; 3 uses
  %i.ed = getelementptr inbounds nuw [308 x i8], ptr %i.ec, i64 %indvars.iv ; 40 uses
  %i.ee = mul nuw nsw i64 %indvars.iv, 308
  %i.ef = ptrtoint ptr %i.ec to i64, !nosanitize !10 ; 3 uses
  %i.eg = add i64 %i.ee, %i.ef, !nosanitize !10   ; 3 uses
  %i.eh = icmp ne ptr %i.ec, null, !nosanitize !10 ; 2 uses
  %i.ei = icmp eq i64 %i.eg, 0
  %i.ej = xor i1 %i.eh, %i.ei
  %i.ek = icmp uge i64 %i.eg, %i.ef, !nosanitize !10
  %i.el = and i1 %i.ej, %i.ek, !nosanitize !10
  br i1 %i.el, label %bb.ac, label %.split1630.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.em = ptrtoint ptr %i.ed to i64, !nosanitize !10 ; 4 uses
  %i.en = and i64 %i.em, 3, !nosanitize !10
  %i.eo = icmp eq i64 %i.en, 0, !nosanitize !10
  %i.ep = and i1 %i.eh, %i.eo
  br i1 %i.ep, label %bb.ad, label %.split1634.us, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  %i.eq = ptrtoint ptr %i.dt to i64, !nosanitize !10 ; 4 uses
  %i.er = and i64 %i.eq, 3, !nosanitize !10
  %i.es = icmp eq i64 %i.er, 0, !nosanitize !10
  %i.et = and i1 %i.dx, %i.es
  br i1 %i.et, label %bb.ae, label %.split1640.us, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 260
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !141
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 236
  store float %i.ev, ptr %i.ew, align 4, !tbaa !140
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 240
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 280
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 208
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 220
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.ez, align 4
  %.sroa.215.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ed, i64 216
  %.sroa.215.0.copyload.us = load float, ptr %.sroa.215.0..sroa_idx.us, align 4
  %.sroa.012.0.copyload.us = load <2 x float>, ptr %i.fa, align 4
  %.sroa.213.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ed, i64 228
  %.sroa.213.0.copyload.us = load float, ptr %.sroa.213.0..sroa_idx.us, align 4
  %i.fb = load <2 x float>, ptr %i.ey, align 4, !tbaa !107 ; 3 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fc, %.sroa.014.0.copyload.us
  %i.fe = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = fmul <2 x float> %i.fe, %.sroa.012.0.copyload.us
  %i.fg = fadd <2 x float> %i.fd, %i.ff
  %i.fh = insertelement <2 x float> poison, float %.sroa.215.0.copyload.us, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %.sroa.213.0.copyload.us, i64 1
  %i.fj = fmul <2 x float> %i.fb, %i.fi
  %i.fk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fj)
  store <2 x float> %i.fg, ptr %i.ex, align 4, !tbaa !107
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dt, i64 248
  store float %i.fk, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !107
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dt, i64 252
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ed, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fl, ptr noundef nonnull align 4 dereferenceable(12) %i.fm, i64 12, i1 false), !tbaa.struct !128
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ed, i64 192
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !127 ; 11 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.fs = load float, ptr %i.fq, align 4, !tbaa !133
  store float %i.fs, ptr %i.fr, align 4, !tbaa !131
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 36 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ed, i64 28 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 2 uses
  br i1 %.not110.us.not, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us1580.preheader

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !134
  store float %i.fx, ptr %i.fw, align 4, !tbaa !162
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !137
  store float %i.fy, ptr %i.fv, align 4, !tbaa !163
  %exitcond3189.not = icmp eq i32 %i.fo, 1
  br i1 %exitcond3189.not, label %._crit_edge.us, label %.lr.ph.split.us.us.1

.lr.ph.split.us.us.1:                             ; preds = %.lr.ph.split.us.us.preheader
  %.not111.us.us.1 = icmp ugt ptr %i.ed, inttoptr (i64 -49 to ptr)
  br i1 %.not111.us.us.1, label %.split1305.us, label %bb.af, !prof !89, !nosanitize !10

bb.af:                                            ; preds = %.lr.ph.split.us.us.1
  %.not112.us.us.1 = icmp ugt ptr %i.dt, inttoptr (i64 -57 to ptr)
  br i1 %.not112.us.us.1, label %.split1309.us, label %bb.ag, !prof !89, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.gb = load <2 x float>, ptr %i.fz, align 4, !tbaa !107
  store <2 x float> %i.gb, ptr %i.ga, align 4, !tbaa !107
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ed, i64 76
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.ge = load float, ptr %i.gc, align 4, !tbaa !137
  store float %i.ge, ptr %i.gd, align 4, !tbaa !163
  %exitcond3189.1.not = icmp eq i32 %i.fo, 2
  br i1 %exitcond3189.1.not, label %._crit_edge.us, label %.lr.ph.split.us.us.2

.lr.ph.split.us.us.2:                             ; preds = %bb.ag
  %.not111.us.us.2 = icmp ugt ptr %i.ed, inttoptr (i64 -97 to ptr)
  br i1 %.not111.us.us.2, label %.split1305.us, label %bb.ah, !prof !89, !nosanitize !10

bb.ah:                                            ; preds = %.lr.ph.split.us.us.2
  %.not112.us.us.2 = icmp ugt ptr %i.dt, inttoptr (i64 -113 to ptr)
  br i1 %.not112.us.us.2, label %.split1309.us, label %bb.ai, !prof !89, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ed, i64 128
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dt, i64 144
  %i.gh = load <2 x float>, ptr %i.gf, align 4, !tbaa !107
  store <2 x float> %i.gh, ptr %i.gg, align 4, !tbaa !107
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ed, i64 124
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dt, i64 152
  %i.gk = load float, ptr %i.gi, align 4, !tbaa !137
  store float %i.gk, ptr %i.gj, align 4, !tbaa !163
  %exitcond3189.2.not = icmp eq i32 %i.fo, 3
  br i1 %exitcond3189.2.not, label %._crit_edge.us, label %.lr.ph.split.us.us.3

.lr.ph.split.us.us.3:                             ; preds = %bb.ai
end_hunk_1
begin_hunk_2_@b3StoreImpulses_Mesh:bb.a
  %i.jk = load <2 x float>, ptr %i.jg, align 4, !tbaa !107
  store <2 x float> %i.jk, ptr %i.jh, align 4, !tbaa !107
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ed, i64 124
  %i.jm = getelementptr inbounds nuw i8, ptr %i.dt, i64 152
  %i.jn = load float, ptr %i.jl, align 4, !tbaa !137 ; 2 uses
  store float %i.jn, ptr %i.jm, align 4, !tbaa !163
  %i.jo = icmp eq i8 %.2.us.1, 0
  %i.jp = fcmp olt float %i.jn, %i.ax
  %or.cond114.us.2 = select i1 %i.jo, i1 %i.jp, i1 false
  %i.jq = fcmp ogt float %i.jj, 0.000000e+00
  %or.cond115.us.2 = select i1 %or.cond114.us.2, i1 %i.jq, i1 false
  br i1 %or.cond115.us.2, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jr = load i32, ptr %i.dr, align 8, !tbaa !164 ; 2 uses
  %i.js = lshr i32 %i.jr, 6
  %i.jt = load ptr, ptr %i.aq, align 8, !tbaa !165 ; 3 uses
  %i.ju = zext nneg i32 %i.js to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.ju ; 3 uses
  %i.jw = shl nuw nsw i64 %i.ju, 3
  %i.jx = ptrtoint ptr %i.jt to i64, !nosanitize !10 ; 3 uses
  %i.jy = add i64 %i.jw, %i.jx, !nosanitize !10   ; 3 uses
  %i.jz = icmp ne ptr %i.jt, null, !nosanitize !10 ; 2 uses
  %i.ka = icmp eq i64 %i.jy, 0
  %i.kb = xor i1 %i.jz, %i.ka
  %i.kc = icmp uge i64 %i.jy, %i.jx, !nosanitize !10
  %i.kd = and i1 %i.kc, %i.kb, !nosanitize !10
  br i1 %i.kd, label %bb.ay, label %.split1708.us, !prof !11, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  %i.ke = ptrtoint ptr %i.jv to i64, !nosanitize !10 ; 2 uses
  %i.kf = and i64 %i.ke, 7, !nosanitize !10
  %i.kg = icmp eq i64 %i.kf, 0, !nosanitize !10
  %i.kh = and i1 %i.jz, %i.kg
  br i1 %i.kh, label %b3SetBit.exit.us.2, label %.split1712.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.2:                               ; preds = %bb.ay
  %i.ki = and i32 %i.jr, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl nuw i64 1, %i.kj
  %i.kl = load i64, ptr %i.jv, align 8, !tbaa !166
  %i.km = or i64 %i.kl, %i.kk
  store i64 %i.km, ptr %i.jv, align 8, !tbaa !166
  br label %bb.az

bb.az:                                            ; preds = %b3SetBit.exit.us.2, %bb.aw
  %.4.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.4.us.1, %bb.aw ] ; 2 uses
  %.2.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.2.us.1, %bb.aw ] ; 3 uses
  %exitcond3186.2.not = icmp eq i32 %i.fo, 3
  br i1 %exitcond3186.2.not, label %._crit_edge.us, label %.lr.ph.split.us1580.3

.lr.ph.split.us1580.3:                            ; preds = %bb.az
  %.not111.us1582.3 = icmp ugt ptr %i.ed, inttoptr (i64 -145 to ptr)
  br i1 %.not111.us1582.3, label %.split1305.us, label %bb.ba, !prof !89, !nosanitize !10

bb.ba:                                            ; preds = %.lr.ph.split.us1580.3
  %.not112.us1583.3 = icmp ugt ptr %i.dt, inttoptr (i64 -169 to ptr)
  br i1 %.not112.us1583.3, label %.split1309.us, label %bb.bb, !prof !89, !nosanitize !10

bb.bb:                                            ; preds = %bb.ba
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dt, i64 200
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !134
  %i.kr = load <2 x float>, ptr %i.kn, align 4, !tbaa !107
  store <2 x float> %i.kr, ptr %i.ko, align 4, !tbaa !107
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ed, i64 172
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dt, i64 208
  %i.ku = load float, ptr %i.ks, align 4, !tbaa !137 ; 2 uses
  store float %i.ku, ptr %i.kt, align 4, !tbaa !163
  %i.kv = icmp eq i8 %.2.us.2, 0
  %i.kw = fcmp olt float %i.ku, %i.ax
  %or.cond114.us.3 = select i1 %i.kv, i1 %i.kw, i1 false
  %i.kx = fcmp ogt float %i.kq, 0.000000e+00
  %or.cond115.us.3 = select i1 %or.cond114.us.3, i1 %i.kx, i1 false
  br i1 %or.cond115.us.3, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ky = load i32, ptr %i.dr, align 8, !tbaa !164 ; 2 uses
  %i.kz = lshr i32 %i.ky, 6
  %i.la = load ptr, ptr %i.aq, align 8, !tbaa !165 ; 3 uses
  %i.lb = zext nneg i32 %i.kz to i64              ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lb ; 3 uses
  %i.ld = shl nuw nsw i64 %i.lb, 3
  %i.le = ptrtoint ptr %i.la to i64, !nosanitize !10 ; 3 uses
  %i.lf = add i64 %i.ld, %i.le, !nosanitize !10   ; 3 uses
  %i.lg = icmp ne ptr %i.la, null, !nosanitize !10 ; 2 uses
  %i.lh = icmp eq i64 %i.lf, 0
  %i.li = xor i1 %i.lg, %i.lh
  %i.lj = icmp uge i64 %i.lf, %i.le, !nosanitize !10
  %i.lk = and i1 %i.lj, %i.li, !nosanitize !10
  br i1 %i.lk, label %bb.bd, label %.split1708.us, !prof !11, !nosanitize !10

bb.bd:                                            ; preds = %bb.bc
  %i.ll = ptrtoint ptr %i.lc to i64, !nosanitize !10 ; 2 uses
  %i.lm = and i64 %i.ll, 7, !nosanitize !10
  %i.ln = icmp eq i64 %i.lm, 0, !nosanitize !10
  %i.lo = and i1 %i.lg, %i.ln
  br i1 %i.lo, label %b3SetBit.exit.us.3, label %.split1712.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.3:                               ; preds = %bb.bd
  %i.lp = and i32 %i.ky, 63
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = shl nuw i64 1, %i.lq
  %i.ls = load i64, ptr %i.lc, align 8, !tbaa !166
  %i.lt = or i64 %i.ls, %i.lr
  store i64 %i.lt, ptr %i.lc, align 8, !tbaa !166
  br label %bb.be

bb.be:                                            ; preds = %b3SetBit.exit.us.3, %bb.bb
  %.4.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.4.us.2, %bb.bb ] ; 2 uses
  %.2.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.2.us.2, %bb.bb ] ; 3 uses
  %exitcond3186.3.not = icmp eq i32 %i.fo, 4
  br i1 %exitcond3186.3.not, label %._crit_edge.us, label %.lr.ph.split.us1580.4

.lr.ph.split.us1580.4:                            ; preds = %bb.be
  %.not111.us1582.4 = icmp ugt ptr %i.ed, inttoptr (i64 -193 to ptr)
  br i1 %.not111.us1582.4, label %.split1305.us, label %bb.bf, !prof !89, !nosanitize !10

bb.bf:                                            ; preds = %.lr.ph.split.us1580.4
  %.not112.us1583.4 = icmp ugt ptr %i.dt, inttoptr (i64 -225 to ptr)
  br i1 %.not112.us1583.4, label %.split1309.us, label %bb.bg, !prof !89, !nosanitize !10

bb.bg:                                            ; preds = %bb.bf
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ed, i64 224
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dt, i64 256
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ed, i64 228
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !134
  %i.ly = load <2 x float>, ptr %i.lu, align 4, !tbaa !107
  store <2 x float> %i.ly, ptr %i.lv, align 4, !tbaa !107
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ed, i64 220
  %i.ma = getelementptr inbounds nuw i8, ptr %i.dt, i64 264
  %i.mb = load float, ptr %i.lz, align 4, !tbaa !137 ; 2 uses
  store float %i.mb, ptr %i.ma, align 4, !tbaa !163
  %i.mc = icmp eq i8 %.2.us.3, 0
  %i.md = fcmp olt float %i.mb, %i.ax
  %or.cond114.us.4 = select i1 %i.mc, i1 %i.md, i1 false
  %i.me = fcmp ogt float %i.lx, 0.000000e+00
  %or.cond115.us.4 = select i1 %or.cond114.us.4, i1 %i.me, i1 false
  br i1 %or.cond115.us.4, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.mf = load i32, ptr %i.dr, align 8, !tbaa !164 ; 2 uses
  %i.mg = lshr i32 %i.mf, 6
  %i.mh = load ptr, ptr %i.aq, align 8, !tbaa !165 ; 3 uses
  %i.mi = zext nneg i32 %i.mg to i64              ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mi ; 3 uses
  %i.mk = shl nuw nsw i64 %i.mi, 3
  %i.ml = ptrtoint ptr %i.mh to i64, !nosanitize !10 ; 3 uses
  %i.mm = add i64 %i.mk, %i.ml, !nosanitize !10   ; 3 uses
  %i.mn = icmp ne ptr %i.mh, null, !nosanitize !10 ; 2 uses
  %i.mo = icmp eq i64 %i.mm, 0
  %i.mp = xor i1 %i.mn, %i.mo
  %i.mq = icmp uge i64 %i.mm, %i.ml, !nosanitize !10
  %i.mr = and i1 %i.mq, %i.mp, !nosanitize !10
  br i1 %i.mr, label %bb.bi, label %.split1708.us, !prof !11, !nosanitize !10

bb.bi:                                            ; preds = %bb.bh
  %i.ms = ptrtoint ptr %i.mj to i64, !nosanitize !10 ; 2 uses
  %i.mt = and i64 %i.ms, 7, !nosanitize !10
  %i.mu = icmp eq i64 %i.mt, 0, !nosanitize !10
  %i.mv = and i1 %i.mn, %i.mu
  br i1 %i.mv, label %b3SetBit.exit.us.4, label %.split1712.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.4:                               ; preds = %bb.bi
  %i.mw = and i32 %i.mf, 63
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = shl nuw i64 1, %i.mx
  %i.mz = load i64, ptr %i.mj, align 8, !tbaa !166
  %i.na = or i64 %i.mz, %i.my
  store i64 %i.na, ptr %i.mj, align 8, !tbaa !166
  br label %bb.bj

bb.bj:                                            ; preds = %b3SetBit.exit.us.4, %bb.bg
  %.4.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.4.us.3, %bb.bg ]
  %.2.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.2.us.3, %bb.bg ]
  %exitcond3186.4.not = icmp eq i32 %i.fo, 5
  br i1 %exitcond3186.4.not, label %._crit_edge.us, label %.split1302.us

._crit_edge.us:                                   ; preds = %bb.ap, %bb.au, %bb.az, %bb.be, %bb.bj, %.lr.ph.split.us.us.preheader, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ae
  %.3.lcssa.us = phi i8 [ %.2861339.us, %bb.ae ], [ %.2861339.us, %.lr.ph.split.us.us.preheader ], [ %.2861339.us, %bb.am ], [ %.2861339.us, %bb.ak ], [ %.2861339.us, %bb.ai ], [ %.2861339.us, %bb.ag ], [ %.4.us, %bb.ap ], [ %.4.us.1, %bb.au ], [ %.4.us.2, %bb.az ], [ %.4.us.3, %bb.be ], [ %.4.us.4, %bb.bj ] ; 2 uses
  %.1.lcssa.us = phi i8 [ %.0791340.us, %bb.ae ], [ %.0791340.us, %.lr.ph.split.us.us.preheader ], [ %.0791340.us, %bb.am ], [ %.0791340.us, %bb.ak ], [ %.0791340.us, %bb.ai ], [ %.0791340.us, %bb.ag ], [ %.2.us, %bb.ap ], [ %.2.us.1, %bb.au ], [ %.2.us.2, %bb.az ], [ %.2.us.3, %bb.be ], [ %.2.us.4, %bb.bj ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count3190
  br i1 %exitcond.not, label %._crit_edge1343.us, label %.lr.ph1342.split.us, !llvm.loop !214

._crit_edge1343.us:                               ; preds = %._crit_edge.us, %.split1338.us
  %.286.lcssa.us = phi i8 [ %.1851346.us1579, %.split1338.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 2 uses
  %indvars.iv.next3192 = add nsw i64 %indvars.iv3191, 1 ; 2 uses
  %exitcond3193.not = icmp eq i64 %indvars.iv.next3192, %i.co
  br i1 %exitcond3193.not, label %.loopexit.us, label %.lr.ph1348.us, !llvm.loop !215

.loopexit.us:                                     ; preds = %._crit_edge1343.us, %.split1345.us
  %.185.lcssa.us = phi i8 [ %.0841571.us, %.split1345.us ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %.183.lcssa.us = phi i32 [ %.0821572.us, %.split1345.us ], [ %i.cl, %._crit_edge1343.us ] ; 2 uses
  %i.nb = icmp slt i32 %.183.lcssa.us, %i.bb
  %indvars.iv.next3200 = add nuw nsw i64 %indvars.iv3199, 1
  br i1 %i.nb, label %.lr.ph1574.split.us, label %._crit_edge1575, !llvm.loop !216

.lr.ph1574.split.split.us:                        ; preds = %.lr.ph1574
  %7 = sext i32 %.0804382 to i64                  ; 2 uses
  %i.nc = shl nuw nsw i64 %7, 4
  %i.nd = add i64 %i.nc, %i.bd, !nosanitize !10   ; 2 uses
  %.not1753 = icmp ult i64 %i.nd, %i.bd, !nosanitize !10
  br i1 %.not1753, label %.split1586.us, label %.lr.ph, !prof !167, !nosanitize !10

bb.bk:                                            ; preds = %.split1345.us1732
  br i1 %i.nq, label %.lr.ph, label %.split1586.us, !prof !217, !nosanitize !10

.lr.ph:                                           ; preds = %.lr.ph1574.split.split.us, %bb.bk
  %.pn = phi i64 [ %i.nl, %bb.bk ], [ %7, %.lr.ph1574.split.split.us ] ; 2 uses
  %i.ne = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %.pn ; 2 uses
  %i.nf = ptrtoint ptr %i.ne to i64, !nosanitize !10 ; 2 uses
  %i.ng = and i64 %i.nf, 7, !nosanitize !10
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !10
  br i1 %i.nh, label %bb.bl, label %.split1589.us, !prof !11, !nosanitize !10

bb.bl:                                            ; preds = %.lr.ph
  %indvars = trunc nsw i64 %.pn to i32
  %i.ni = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %indvars, i32 1), !nosanitize !10 ; 2 uses
  %i.nj = extractvalue { i32, i1 } %i.ni, 1, !nosanitize !10
  br i1 %i.nj, label %.split1592.us, label %bb.bm, !prof !89, !nosanitize !10

bb.bm:                                            ; preds = %bb.bl
  %i.nk = extractvalue { i32, i1 } %i.ni, 0, !nosanitize !10 ; 2 uses
  %i.nl = sext i32 %i.nk to i64                   ; 3 uses
  %i.nm = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %i.nl ; 2 uses
  %i.nn = shl nsw i64 %i.nl, 4
  %i.no = add i64 %i.nn, %i.bd, !nosanitize !10   ; 4 uses
  %i.np = icmp ne i64 %i.no, 0
  %i.nq = icmp uge i64 %i.no, %i.bd, !nosanitize !10 ; 2 uses
  %i.nr = icmp slt i32 %i.nk, 0
  %i.ns = xor i1 %i.nr, %i.nq
  %i.nt = and i1 %i.np, %i.ns, !nosanitize !10
  br i1 %i.nt, label %bb.bn, label %.split1595.us, !prof !11, !nosanitize !10

bb.bn:                                            ; preds = %bb.bm
  %i.nu = ptrtoint ptr %i.nm to i64, !nosanitize !10 ; 2 uses
  %i.nv = and i64 %i.nu, 7, !nosanitize !10
  %i.nw = icmp eq i64 %i.nv, 0, !nosanitize !10
  br i1 %i.nw, label %.split1345.us1732, label %.split1598.us, !prof !11, !nosanitize !10

.split1345.us1732:                                ; preds = %bb.bn
  %i.nx = load i32, ptr %i.nm, align 8, !tbaa !96
  %i.ny = tail call noundef i32 @llvm.smin.i32(i32 %i.nx, i32 %i.bb)
  %i.nz = icmp sgt i32 %i.ny, %.sroa.0.0.extract.trunc
  br i1 %i.nz, label %.lr.ph1348, label %bb.bk

.split1586.us:                                    ; preds = %.lr.ph1574.split.us, %bb.bk, %.lr.ph1574.split.split.us
  %.us-phi1587 = phi i64 [ %i.nd, %.lr.ph1574.split.split.us ], [ %i.no, %bb.bk ], [ %i.cb, %.lr.ph1574.split.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.bd, i64 %.us-phi1587) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1589.us:                                    ; preds = %bb.u, %.lr.ph
  %.us-phi1590 = phi i64 [ %i.nf, %.lr.ph ], [ %i.cc, %bb.u ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %.us-phi1590) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1592.us:                                    ; preds = %bb.v, %bb.bl
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @116, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1595.us:                                    ; preds = %bb.w, %bb.bm
  %.us-phi1596 = phi i64 [ %i.no, %bb.bm ], [ %6, %bb.w ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.bd, i64 %.us-phi1596) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1598.us:                                    ; preds = %bb.x, %bb.bn
  %.us-phi1599 = phi i64 [ %i.nu, %bb.bn ], [ %i.ch, %bb.x ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %.us-phi1599) #10, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph1348:                                       ; preds = %.split1345.us1732
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.oa = ashr exact i64 %sext, 32
  %i.ob = mul nsw i64 %i.oa, 168                  ; 2 uses
  %i.oc = icmp eq i64 %sext, 0
  %i.od = icmp uge i64 %i.ob, %i.by, !nosanitize !10
  %i.oe = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %i.of = xor i1 %i.oe, %i.od
  %i.og = and i1 %i.oc, %i.of, !nosanitize !10
  br i1 %i.og, label %bb.bo, label %.split1352.us, !prof !11, !nosanitize !10

bb.bo:                                            ; preds = %.lr.ph1348
  %i.oh = load i32, ptr %i.ne, align 8, !tbaa !96 ; 2 uses
  %i.oi = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.sroa.0.0.extract.trunc, i32 %i.oh), !nosanitize !10
  %i.oj = extractvalue { i32, i1 } %i.oi, 1, !nosanitize !10
  br i1 %i.oj, label %.split1356.us, label %.split1360, !prof !89, !nosanitize !10

.split1352.us:                                    ; preds = %.lr.ph1348.us, %.lr.ph1348
  %.us-phi1354 = phi i64 [ %i.ob, %.lr.ph1348 ], [ %i.cr, %.lr.ph1348.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.by, i64 %.us-phi1354) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1356.us:                                    ; preds = %bb.y, %bb.bo
  %.us-phi1357 = phi i32 [ %i.oh, %bb.bo ], [ %i.cf, %bb.y ]
  %.us-phi1358 = phi i64 [ %0, %bb.bo ], [ %indvars.iv3191, %bb.y ]
  %i.ok = and i64 %.us-phi1358, 4294967295
  %i.ol = zext i32 %.us-phi1357 to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @120, i64 %i.ok, i64 %i.ol) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1360:                                       ; preds = %bb.z, %bb.bo
  %.us-phi1361 = phi i64 [ 0, %bb.bo ], [ %i.da, %bb.z ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @121, i64 %.us-phi1361) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1617.us:                                    ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %i.di) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1626.us:                                    ; preds = %.lr.ph1342.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @123, i64 %i.dv, i64 %i.dw) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1630.us:                                    ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @124, i64 %i.ef, i64 %i.eg) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1634.us:                                    ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.em) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1640.us:                                    ; preds = %bb.ad
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %i.eq) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1302.us:                                    ; preds = %bb.bj, %bb.am
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @127, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1305.us:                                    ; preds = %.lr.ph.split.us.us.4, %.lr.ph.split.us.us.3, %.lr.ph.split.us.us.2, %.lr.ph.split.us.us.1, %.lr.ph.split.us1580.4, %.lr.ph.split.us1580.3, %.lr.ph.split.us1580.2, %.lr.ph.split.us1580.1
  %.sink = phi i64 [ 144, %.lr.ph.split.us.us.3 ], [ 96, %.lr.ph.split.us.us.2 ], [ 48, %.lr.ph.split.us.us.1 ], [ 192, %.lr.ph.split.us1580.4 ], [ 144, %.lr.ph.split.us1580.3 ], [ 96, %.lr.ph.split.us1580.2 ], [ 48, %.lr.ph.split.us1580.1 ], [ 192, %.lr.ph.split.us.us.4 ]
  %i.om = add i64 %.sink, %i.em, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @128, i64 %i.em, i64 %i.om) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1309.us:                                    ; preds = %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.bf, %bb.ba, %bb.av, %bb.aq
  %.sink4156 = phi i64 [ 168, %bb.aj ], [ 112, %bb.ah ], [ 56, %bb.af ], [ 224, %bb.bf ], [ 168, %bb.ba ], [ 112, %bb.av ], [ 56, %bb.aq ], [ 224, %bb.al ]
  %i.on = add i64 %.sink4156, %i.eq, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @129, i64 %i.eq, i64 %i.on) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1708.us:                                    ; preds = %bb.bh, %bb.bc, %bb.ax, %bb.as, %bb.an
  %.lcssa1800.ph = phi i64 [ %i.ml, %bb.bh ], [ %i.le, %bb.bc ], [ %i.jx, %bb.ax ], [ %i.iq, %bb.as ], [ %i.hj, %bb.an ]
  %.lcssa1798.ph = phi i64 [ %i.mm, %bb.bh ], [ %i.lf, %bb.bc ], [ %i.jy, %bb.ax ], [ %i.ir, %bb.as ], [ %i.hk, %bb.an ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %.lcssa1800.ph, i64 %.lcssa1798.ph) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1712.us:                                    ; preds = %bb.bi, %bb.bd, %bb.ay, %bb.at, %bb.ao
  %.lcssa1802.ph = phi i64 [ %i.ms, %bb.bi ], [ %i.ll, %bb.bd ], [ %i.ke, %bb.ay ], [ %i.ix, %bb.at ], [ %i.hq, %bb.ao ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @241, i64 %.lcssa1802.ph) #10, !nosanitize !10
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
  %indvars.iv.next24538 = add nuw nsw i64 %indvars.iv2453736922, 1
  %i.ao = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ar, i32 1), !nosanitize !10 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 0, !nosanitize !10
  %i.aq = extractvalue { i32, i1 } %i.ao, 1, !nosanitize !10
  br i1 %i.aq, label %.split.us, label %.preheader1196.split.preheader, !prof !92, !llvm.loop !219, !nosanitize !10

.split.us:                                        ; preds = %.preheader1196.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @134, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader1196.split.preheader:                   ; preds = %.preheader1196, %.preheader1196.split
  %i.ar = phi i32 [ %i.ap, %.preheader1196.split ], [ 1, %.preheader1196 ] ; 3 uses
  %indvars.iv2453736922 = phi i64 [ %indvars.iv.next24538, %.preheader1196.split ], [ 0, %.preheader1196 ] ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %.fr12947, i64 %i.as ; 2 uses
  %i.au = shl nsw i64 %i.as, 4
  %i.av = add i64 %i.au, %i.al, !nosanitize !10   ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = icmp uge i64 %i.av, %i.al, !nosanitize !10
  %i.ay = icmp slt i32 %i.ar, 0
  %i.az = xor i1 %i.ay, %i.ax
  %i.ba = and i1 %i.aw, %i.az, !nosanitize !10
  br i1 %i.ba, label %bb.i, label %.split11240.us, !prof !11, !nosanitize !10

.split11240.us:                                   ; preds = %.preheader1196.split.preheader, %.preheader1196
  %.us-phi11242 = phi i64 [ 16, %.preheader1196 ], [ %i.av, %.preheader1196.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @135, i64 %i.al, i64 %.us-phi11242) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %.preheader1196.split.preheader
  %i.bb = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.bc = and i64 %i.bb, 7, !nosanitize !10
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !10
  br i1 %i.bd, label %bb.j, label %.split11244, !prof !11, !nosanitize !10

.split11244:                                      ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @137, i64 %i.bb) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.at, align 8, !tbaa !171
  %.not665 = icmp sgt i32 %i.be, %.sroa.01148.0.extract.trunc
  br i1 %.not665, label %.preheader1195.split, label %.preheader1196.split, !llvm.loop !219

.preheader1195.split:                             ; preds = %bb.j
  %i.bf = icmp sgt i32 %i.aj, %.sroa.01148.0.extract.trunc
  br i1 %i.bf, label %.lr.ph12946, label %._crit_edge

.lr.ph12946:                                      ; preds = %.preheader1195.split
  %i.bg = ptrtoint ptr %i.o to i64                ; 5 uses
  %i.bh = icmp ne ptr %i.o, null                  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  %i.bj = ptrtoint ptr %i.i to i64                ; 6 uses
  %i.bk = icmp ne ptr %i.i, null                  ; 4 uses
  %i.bl = ptrtoint ptr %i.k to i64                ; 6 uses
  %i.bm = icmp ne ptr %i.k, null                  ; 4 uses
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  br label %bb.k

.loopexit:                                        ; preds = %.critedge.split.us12766, %.critedge.split.us, %.split12760
  %.1.lcssa = phi i32 [ %.062312945, %.split12760 ], [ %i.cj, %.critedge.split.us ], [ %i.cj, %.critedge.split.us12766 ] ; 2 uses
  %i.bn = icmp slt i32 %.1.lcssa, %i.aj
  br i1 %i.bn, label %bb.k, label %._crit_edge, !llvm.loop !220

bb.k:                                             ; preds = %.lr.ph12946, %.loopexit
  %indvars.iv24542 = phi i64 [ %indvars.iv2453736922, %.lr.ph12946 ], [ %indvars.iv.next24543, %.loopexit ] ; 4 uses
  %.062312945 = phi i32 [ %.sroa.01148.0.extract.trunc, %.lr.ph12946 ], [ %.1.lcssa, %.loopexit ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr12947, i64 %indvars.iv24542 ; 4 uses
  %i.bp = shl nuw nsw i64 %indvars.iv24542, 4
  %i.bq = add i64 %i.bp, %i.al, !nosanitize !10   ; 2 uses
  %.not12949 = icmp ult i64 %i.bq, %i.al, !nosanitize !10
  br i1 %.not12949, label %bb.l, label %bb.m, !prof !89, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @138, i64 %i.al, i64 %i.bq) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.br = ptrtoint ptr %i.bo to i64, !nosanitize !10 ; 2 uses
  %i.bs = and i64 %i.br, 7, !nosanitize !10
  %i.bt = icmp eq i64 %i.bs, 0, !nosanitize !10
  br i1 %i.bt, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @139, i64 %i.br) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !171 ; 3 uses
  %indvars.iv.next24543 = add nuw nsw i64 %indvars.iv24542, 1 ; 3 uses
  %exitcond24545 = icmp eq i64 %indvars.iv24542, 2147483647
  br i1 %exitcond24545, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @140, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %sext = shl i64 %indvars.iv.next24543, 32       ; 2 uses
  %i.bv = ashr exact i64 %sext, 28
  %i.bw = getelementptr inbounds i8, ptr %.fr12947, i64 %i.bv ; 2 uses
  %i.bx = ashr exact i64 %sext, 28
  %i.by = add i64 %i.bx, %i.al, !nosanitize !10   ; 3 uses
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = icmp uge i64 %i.by, %i.al, !nosanitize !10
  %i.cb = and i64 %indvars.iv.next24543, 2147483648
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = xor i1 %i.cc, %i.ca
  %i.ce = and i1 %i.bz, %i.cd, !nosanitize !10
  br i1 %i.ce, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 %i.al, i64 %i.by) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.cf = ptrtoint ptr %i.bw to i64, !nosanitize !10 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !nosanitize !10
  %i.ch = icmp eq i64 %i.cg, 0, !nosanitize !10
  br i1 %i.ch, label %.split12760, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @142, i64 %i.cf) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split12760:                                      ; preds = %bb.s
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !171
  %i.cj = tail call noundef i32 @llvm.smin.i32(i32 %i.ci, i32 %i.aj) ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !172 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !173
  %.fr12950 = freeze ptr %i.cn                    ; 3 uses
  %i.co = icmp slt i32 %.062312945, %i.cj
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.split12760
  %i.cp = ptrtoint ptr %.fr12950 to i64           ; 4 uses
  %.not12951 = icmp eq ptr %.fr12950, null
  br i1 %.not12951, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader, !prof !89

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cq = sext i32 %i.cl to i64
  %i.cr = sext i32 %.062312945 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cs = sext i32 %.062312945 to i64
  %wide.trip.count24535 = sext i32 %i.cj to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.critedge.split.us12766
  %indvars.iv24528 = phi i64 [ %i.cr, %.lr.ph.split.us.preheader ], [ %indvars.iv.next24529, %.critedge.split.us12766 ] ; 6 uses
  %i.ct = getelementptr inbounds [1696 x i8], ptr %i.o, i64 %indvars.iv24528 ; 64 uses
  %i.cu = mul nsw i64 %indvars.iv24528, 1696
  %i.cv = add i64 %i.cu, %i.bg, !nosanitize !10   ; 3 uses
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = xor i1 %i.bh, %i.cw
  %i.cy = icmp uge i64 %i.cv, %i.bg, !nosanitize !10
  %i.cz = icmp slt i64 %indvars.iv24528, 0
  %i.da = xor i1 %i.cz, %i.cy
  %i.db = and i1 %i.cx, %i.da, !nosanitize !10
  br i1 %i.db, label %bb.u, label %.split12768.us, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %.lr.ph.split.us
  %i.dc = trunc nsw i64 %indvars.iv24528 to i32
  %i.dd = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.dc, i32 %i.bu), !nosanitize !10 ; 2 uses
  %i.de = extractvalue { i32, i1 } %i.dd, 1, !nosanitize !10
  br i1 %i.de, label %.split12772.us, label %.preheader.us, !prof !89, !nosanitize !10

.preheader.us:                                    ; preds = %bb.u
  %i.df = extractvalue { i32, i1 } %i.dd, 0, !nosanitize !10 ; 4 uses
  %i.dg = add i32 %i.df, 536870912
  %i.dh = icmp ult i32 %i.dg, 1073741824
  %i.di = icmp slt i32 %i.df, 0
  %i.dj = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.dk = and i64 %i.dj, 15
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = and i1 %i.bh, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 896 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ct, i64 144
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 160
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 192
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 208
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ct, i64 256
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 272
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ct, i64 288
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 304
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 320
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 336
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 352
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.el = getelementptr inbounds nuw i8, ptr %i.ct, i64 384
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 400
  %i.en = getelementptr inbounds nuw i8, ptr %i.ct, i64 768
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 880
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ct, i64 784
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ct, i64 800
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 816
  %i.es = getelementptr inbounds nuw i8, ptr %i.ct, i64 832
  %i.et = getelementptr inbounds nuw i8, ptr %i.ct, i64 848
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ct, i64 864
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ct, i64 928 ; 7 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 8 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ct, i64 416
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ct, i64 432
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ct, i64 448
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ct, i64 464
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ct, i64 480
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ct, i64 496
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ct, i64 544
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ct, i64 560
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ct, i64 576
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ct, i64 592
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ct, i64 608
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ct, i64 512
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ct, i64 528
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ct, i64 624
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ct, i64 640
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ct, i64 656
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ct, i64 672
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ct, i64 688
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ct, i64 704
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ct, i64 736
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ct, i64 752
  br i1 %i.dh, label %.preheader.split.split.split.us.us.preheader, label %.split12776.us, !prof !11, !nosanitize !10

.preheader.split.split.split.us.us.preheader:     ; preds = %.preheader.us
  %i.fu = shl nsw i32 %i.df, 2
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ct, i64 1088
  %.not669.us.us.1 = icmp ugt ptr %i.ew, inttoptr (i64 -193 to ptr)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1280
  %.not669.us.us.2 = icmp ugt ptr %i.ew, inttoptr (i64 -385 to ptr)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ct, i64 1472
  %.not669.us.us.3 = icmp ugt ptr %i.ew, inttoptr (i64 -577 to ptr)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ct, i64 1664
  %.not669.us.us.4 = icmp ugt ptr %i.ew, inttoptr (i64 -769 to ptr)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ct, i64 1856
  br label %.preheader.split.split.split.us.us

.preheader.split.split.split.us.us:               ; preds = %.preheader.split.split.split.us.us.preheader, %._crit_edge11263.us.us
  %indvars.iv24524 = phi i64 [ 0, %.preheader.split.split.split.us.us.preheader ], [ %indvars.iv.next24525, %._crit_edge11263.us.us ] ; 88 uses
  %i.gb = add nuw nsw i64 %indvars.iv24524, %i.fv ; 3 uses
  %.not666.us11721.us = icmp slt i64 %i.gb, %i.cq
  br i1 %.not666.us11721.us, label %bb.v, label %.critedge.split.us12766

bb.v:                                             ; preds = %.preheader.split.split.split.us.us
  %i.gc = getelementptr inbounds [4 x i8], ptr %.fr12950, i64 %i.gb ; 2 uses
  %i.gd = shl nsw i64 %i.gb, 2
  %i.ge = add i64 %i.gd, %i.cp, !nosanitize !10   ; 3 uses
  %i.gf = icmp ne i64 %i.ge, 0
  %i.gg = icmp uge i64 %i.ge, %i.cp, !nosanitize !10
  %i.gh = xor i1 %i.di, %i.gg
  %i.gi = and i1 %i.gf, %i.gh, !nosanitize !10
end_hunk_2
begin_hunk_3_@b3ApplyRestitution_Convex:bb.a
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
  %indvars.iv.next4426 = add nuw nsw i64 %indvars.iv44256755, 1
  %i.ay = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bb, i32 1), !nosanitize !10 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 0, !nosanitize !10
  %i.ba = extractvalue { i32, i1 } %i.ay, 1, !nosanitize !10
  br i1 %i.ba, label %.split.us, label %.preheader180.split.preheader, !prof !92, !llvm.loop !235, !nosanitize !10

.split.us:                                        ; preds = %.preheader180.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @201, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader180.split.preheader:                    ; preds = %.preheader180, %.preheader180.split
  %i.bb = phi i32 [ %i.az, %.preheader180.split ], [ 1, %.preheader180 ] ; 3 uses
  %indvars.iv44256755 = phi i64 [ %indvars.iv.next4426, %.preheader180.split ], [ 0, %.preheader180 ] ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr2438, i64 %i.bc ; 2 uses
  %i.be = shl nsw i64 %i.bc, 4
  %i.bf = add i64 %i.be, %i.av, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = icmp uge i64 %i.bf, %i.av, !nosanitize !10
  %i.bi = icmp slt i32 %i.bb, 0
  %i.bj = xor i1 %i.bi, %i.bh
  %i.bk = and i1 %i.bg, %i.bj, !nosanitize !10
  br i1 %i.bk, label %bb.m, label %.split2229.us, !prof !11, !nosanitize !10

.split2229.us:                                    ; preds = %.preheader180.split.preheader, %.preheader180
  %.us-phi2231 = phi i64 [ 16, %.preheader180 ], [ %i.bf, %.preheader180.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @202, i64 %i.av, i64 %.us-phi2231) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %.preheader180.split.preheader
  %i.bl = ptrtoint ptr %i.bd to i64, !nosanitize !10 ; 2 uses
  %i.bm = and i64 %i.bl, 7, !nosanitize !10
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !10
  br i1 %i.bn, label %bb.n, label %.split2233, !prof !11, !nosanitize !10

.split2233:                                       ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @203, i64 %i.bl) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.bd, align 8, !tbaa !171
  %.not156 = icmp sgt i32 %i.bo, %.sroa.0165.0.extract.trunc
  br i1 %.not156, label %.preheader179.split, label %.preheader180.split, !llvm.loop !235

.preheader179.split:                              ; preds = %bb.n
  %i.bp = icmp sgt i32 %i.at, %.sroa.0165.0.extract.trunc
  br i1 %i.bp, label %.lr.ph2435, label %._crit_edge2436

.lr.ph2435:                                       ; preds = %.preheader179.split
  %i.bq = ptrtoint ptr %.fr to i64                ; 3 uses
  %.not2440 = icmp eq ptr %.fr, null
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  br label %bb.o

.loopexit178:                                     ; preds = %bb.bq, %.split2240
  %.1131.lcssa = phi i8 [ %.01302432, %.split2240 ], [ %.2132.lcssa, %bb.bq ] ; 2 uses
  %.1129.lcssa = phi i32 [ %.01282433, %.split2240 ], [ %i.cf, %bb.bq ] ; 2 uses
  %i.bs = icmp slt i32 %.1129.lcssa, %i.at
  %indvars.iv.next4431 = add nuw nsw i64 %indvars.iv4430, 1
  br i1 %i.bs, label %bb.o, label %._crit_edge2436, !llvm.loop !236

bb.o:                                             ; preds = %.lr.ph2435, %.loopexit178
  %indvars.iv4430 = phi i64 [ %indvars.iv44256755, %.lr.ph2435 ], [ %indvars.iv.next4431, %.loopexit178 ] ; 5 uses
  %.01282433 = phi i32 [ %.sroa.0165.0.extract.trunc, %.lr.ph2435 ], [ %.1129.lcssa, %.loopexit178 ] ; 5 uses
  %.01302432 = phi i8 [ %i.ak, %.lr.ph2435 ], [ %.1131.lcssa, %.loopexit178 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.fr2438, i64 %indvars.iv4430 ; 4 uses
  %i.bu = shl nuw nsw i64 %indvars.iv4430, 4
  %i.bv = add i64 %i.bu, %i.av, !nosanitize !10   ; 2 uses
  %.not2441 = icmp ult i64 %i.bv, %i.av, !nosanitize !10
  br i1 %.not2441, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @204, i64 %i.av, i64 %i.bv) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bw = ptrtoint ptr %i.bt to i64, !nosanitize !10 ; 2 uses
  %i.bx = and i64 %i.bw, 7, !nosanitize !10
  %i.by = icmp eq i64 %i.bx, 0, !nosanitize !10
  br i1 %i.by, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @205, i64 %i.bw) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.bz = load i32, ptr %i.bt, align 8, !tbaa !171 ; 2 uses
  %exitcond4432 = icmp eq i64 %indvars.iv4430, 2147483647
  br i1 %exitcond4432, label %bb.t, label %bb.u, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @206, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.ca = shl i64 %indvars.iv4430, 32
  %sext = add i64 %i.ca, 4294967296               ; 2 uses
  %3 = ashr exact i64 %sext, 28
  %4 = getelementptr inbounds i8, ptr %.fr2438, i64 %3 ; 2 uses
  %5 = ashr exact i64 %sext, 28
  %6 = add i64 %5, %i.av, !nosanitize !10         ; 2 uses
  %.not6440 = icmp ult i64 %6, %i.av, !nosanitize !10
  br i1 %.not6440, label %bb.v, label %bb.w, !prof !89, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @207, i64 %i.av, i64 %6) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.cb = ptrtoint ptr %4 to i64, !nosanitize !10 ; 2 uses
  %i.cc = and i64 %i.cb, 7, !nosanitize !10
  %i.cd = icmp eq i64 %i.cc, 0, !nosanitize !10
  br i1 %i.cd, label %.split2240, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @208, i64 %i.cb) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split2240:                                       ; preds = %bb.w
  %i.ce = load i32, ptr %4, align 8, !tbaa !171
  %i.cf = tail call noundef i32 @llvm.smin.i32(i32 %i.ce, i32 %i.at) ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !172
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !173 ; 3 uses
  %i.ck = icmp slt i32 %.01282433, %i.cf
  br i1 %i.ck, label %.lr.ph2243, label %.loopexit178

.lr.ph2243:                                       ; preds = %.split2240
  %i.cl = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cm = icmp ne ptr %i.cj, null                 ; 2 uses
  br i1 %.not2440, label %.lr.ph2243.split.us, label %.lr.ph2243.split.preheader, !prof !89

.lr.ph2243.split.preheader:                       ; preds = %.lr.ph2243
  %i.cn = sext i32 %i.ch to i64
  %i.co = sext i32 %.01282433 to i64
  %i.cp = sext i32 %i.cf to i64
  br label %.lr.ph2243.split

.lr.ph2243.split.us:                              ; preds = %.lr.ph2243
  %i.cq = sext i32 %.01282433 to i64
  %i.cr = mul nsw i64 %i.cq, 1696
  %i.cs = icmp eq i32 %.01282433, 0
  br i1 %i.cs, label %.split2250, label %.split2246.us, !prof !11, !nosanitize !10

.lr.ph2243.split:                                 ; preds = %.lr.ph2243.split.preheader, %bb.bq
  %indvars.iv4422 = phi i64 [ %i.co, %.lr.ph2243.split.preheader ], [ %indvars.iv.next4423, %bb.bq ] ; 6 uses
  %.11312241 = phi i8 [ %.01302432, %.lr.ph2243.split.preheader ], [ %.2132.lcssa, %bb.bq ]
  %i.ct = getelementptr inbounds [1696 x i8], ptr %.fr, i64 %indvars.iv4422 ; 30 uses
  %i.cu = mul nsw i64 %indvars.iv4422, 1696
  %i.cv = add i64 %i.cu, %i.bq, !nosanitize !10   ; 3 uses
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = icmp uge i64 %i.cv, %i.bq, !nosanitize !10
  %i.cy = icmp slt i64 %indvars.iv4422, 0
  %i.cz = xor i1 %i.cy, %i.cx
  %i.da = and i1 %i.cw, %i.cz, !nosanitize !10
  br i1 %i.da, label %bb.y, label %.split2246.us, !prof !11, !nosanitize !10

.split2246.us:                                    ; preds = %.lr.ph2243.split, %.lr.ph2243.split.us
  %.us-phi2248 = phi i64 [ %i.cr, %.lr.ph2243.split.us ], [ %i.cv, %.lr.ph2243.split ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @209, i64 %i.bq, i64 %.us-phi2248) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %.lr.ph2243.split
  %i.db = ptrtoint ptr %i.ct to i64, !nosanitize !10 ; 2 uses
  %i.dc = and i64 %i.db, 15, !nosanitize !10
  %i.dd = icmp eq i64 %i.dc, 0, !nosanitize !10
  br i1 %i.dd, label %bb.z, label %.split2250, !prof !11, !nosanitize !10

.split2250:                                       ; preds = %bb.y, %.lr.ph2243.split.us
  %.us-phi2251 = phi i64 [ 0, %.lr.ph2243.split.us ], [ %i.db, %bb.y ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @211, i64 %.us-phi2251) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 592
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 608
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 320
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 336
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 352
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 384
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 400
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 528
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 720
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 736
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 752
  %i.dq = trunc nsw i64 %indvars.iv4422 to i32
  %i.dr = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.dq, i32 %i.bz), !nosanitize !10 ; 2 uses
  %i.ds = extractvalue { i32, i1 } %i.dr, 1, !nosanitize !10
  br i1 %i.ds, label %bb.aa, label %.preheader177, !prof !89, !nosanitize !10

.preheader177:                                    ; preds = %bb.z
  %i.dt = extractvalue { i32, i1 } %i.dr, 0, !nosanitize !10 ; 4 uses
  %i.du = add i32 %i.dt, 536870912
  %i.dv = icmp ult i32 %i.du, 1073741824
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ct, i64 896 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 928 ; 7 uses
  %i.dz = icmp slt i32 %i.dt, 0
  br i1 %i.dv, label %.preheader177.split.preheader, label %bb.ab, !prof !11, !nosanitize !10

.preheader177.split.preheader:                    ; preds = %.preheader177
  %i.ea = shl nsw i32 %i.dt, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 1056
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ct, i64 1104
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 1040
  %.not176.1 = icmp ugt ptr %i.dy, inttoptr (i64 -193 to ptr)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ct, i64 1248
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 1296
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 1232
  %.not176.2 = icmp ugt ptr %i.dy, inttoptr (i64 -385 to ptr)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 1440
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 1488
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 1424
  %.not176.3 = icmp ugt ptr %i.dy, inttoptr (i64 -577 to ptr)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ct, i64 1632
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 1680
  %i.en = getelementptr inbounds nuw i8, ptr %i.ct, i64 1616
  %.not176.4 = icmp ugt ptr %i.dy, inttoptr (i64 -769 to ptr)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 1824
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ct, i64 1872
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ct, i64 1808
  br label %.preheader177.split

bb.aa:                                            ; preds = %bb.z
  %i.er = and i64 %indvars.iv4422, 4294967295
  %i.es = zext i32 %i.bz to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @212, i64 %i.er, i64 %i.es) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader177.split:                              ; preds = %.preheader177.split.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader177.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 31 uses
  %.21322238 = phi i8 [ %.11312241, %.preheader177.split.preheader ], [ %.8.ph, %.loopexit ] ; 8 uses
  %i.et = add nuw nsw i64 %indvars.iv, %i.eb      ; 3 uses
  %.not157 = icmp slt i64 %i.et, %i.cn
  br i1 %.not157, label %bb.ac, label %bb.bq

bb.ab:                                            ; preds = %.preheader177
  %i.eu = zext i32 %i.dt to i64, !nosanitize !10
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @213, i64 4, i64 %i.eu) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %.preheader177.split
  %i.ev = shl nuw nsw i64 %indvars.iv, 3
  %i.ew = add i64 %i.ev, %i.dx, !nosanitize !10   ; 2 uses
  %.not158 = icmp ult i64 %i.ew, %i.dx, !nosanitize !10
  br i1 %.not158, label %bb.ad, label %bb.ae, !prof !89, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @214, i64 %i.dx, i64 %i.ew) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !175 ; 41 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fa = ptrtoint ptr %i.ey to i64, !nosanitize !10 ; 6 uses
  %i.fb = and i64 %i.fa, 3, !nosanitize !10
  %i.fc = icmp eq i64 %i.fb, 0, !nosanitize !10
  br i1 %i.fc, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @215, i64 %i.fa) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !107 ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !107 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 240
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.fk = load float, ptr %i.fi, align 4, !tbaa !107
  %i.fl = fmul float %i.fg, %i.fk
  %i.fm = load float, ptr %i.fj, align 4, !tbaa !107
  %i.fn = fmul float %i.fe, %i.fm
  %i.fo = fadd float %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv
  %i.fr = load float, ptr %i.fp, align 4, !tbaa !107
  %i.fs = fmul float %i.fg, %i.fr
  %i.ft = load float, ptr %i.fq, align 4, !tbaa !107
  %i.fu = fmul float %i.fe, %i.ft
  %i.fv = fadd float %i.fs, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv
  %i.fy = load float, ptr %i.fw, align 4, !tbaa !107
  %i.fz = fmul float %i.fg, %i.fy
  %i.ga = load float, ptr %i.fx, align 4, !tbaa !107
  %i.gb = fmul float %i.fe, %i.ga
  %i.gc = fadd float %i.fz, %i.gb
  store float %i.fo, ptr %i.fh, align 4, !tbaa !107
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 244
  store float %i.fv, ptr %.sroa.2163.0..sroa_idx, align 4, !tbaa !107
  %.sroa.3164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 248
  store float %i.gc, ptr %.sroa.3164.0..sroa_idx, align 4, !tbaa !107
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ey, i64 236
  %i.gf = load float, ptr %i.gd, align 4, !tbaa !107
  store float %i.gf, ptr %i.ge, align 4, !tbaa !140
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ey, i64 252
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !107
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv
  %i.gl = load float, ptr %i.gj, align 4, !tbaa !107
  %i.gm = load float, ptr %i.gk, align 4, !tbaa !107 ; 6 uses
  store float %i.gi, ptr %i.gg, align 4, !tbaa !107
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 256
  store float %i.gl, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !107
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 260
  store float %i.gm, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !107
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ey, i64 264
  %i.go = load i32, ptr %i.gn, align 4            ; 11 uses
end_hunk_3
