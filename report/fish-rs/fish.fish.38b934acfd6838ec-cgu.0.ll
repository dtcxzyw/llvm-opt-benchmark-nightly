Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.0?download=true
inline.NumInlined: 118
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs4RW8js5ES7g_4fish:bb.a
  %i.ir = add i32 %i.iq, -1114112
  %i.is = icmp ult i32 %i.ir, -1112064
  br i1 %i.is, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %bb.ec

_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread: ; preds = %bb.bi, %bb.bh, %bb.bj, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit
  %.sroa.81.1.i621 = phi i8 [ 4, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit ], [ 4, %bb.bi ], [ 4, %bb.bj ], [ 3, %bb.bh ]
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.81.1.i621, ptr %i.it, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gj

bb.ec:                                            ; preds = %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit
  %i.iu = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !alias.scope !119, !noundef !7 ; 4 uses
  %i.iv = icmp sgt i64 %i.iu, -1
  call void @llvm.assume(i1 %i.iv)
  %i.iw = icmp samesign ult i64 %.sroa.0.2.val478, 128
  br i1 %i.iw, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ix = icmp samesign ult i64 %.sroa.0.2.val478, 2048 ; 2 uses
  %i.iy = icmp samesign ult i64 %.sroa.0.2.val478, 65536 ; 2 uses
  %..i508 = select i1 %i.iy, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.ix, i64 2, i64 %..i508
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.0.0.ph.i)
          to label %.noexc509 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc509:                                        ; preds = %bb.ed
  %i.iz = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !alias.scope !119, !nonnull !7, !noundef !7
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iu ; 9 uses
  %i.jb = trunc i64 %.sroa.0.2.val478 to i8
  %i.jc = and i8 %i.jb, 63
  %i.jd = or disjoint i8 %i.jc, -128              ; 3 uses
  %i.je = lshr i64 %.sroa.0.2.val478, 6
  %i.jf = trunc i64 %i.je to i8                   ; 2 uses
  %i.jg = and i8 %i.jf, 63
  %i.jh = or disjoint i8 %i.jg, -128              ; 2 uses
  %i.ji = lshr i64 %.sroa.0.2.val478, 12
  %i.jj = trunc i64 %i.ji to i8                   ; 2 uses
  %i.jk = and i8 %i.jj, 63
  %i.jl = or disjoint i8 %i.jk, -128
  %i.jm = lshr i64 %.sroa.0.2.val478, 18
  %i.jn = trunc i64 %i.jm to i8
  %i.jo = or disjoint i8 %i.jn, -16
  br i1 %i.ix, label %bb.ef, label %bb.eg

bb.ee:                                            ; preds = %bb.ec
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc510 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc510:                                        ; preds = %bb.ee
  %i.jp = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !alias.scope !119, !nonnull !7, !noundef !7
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.iu
  %i.jr = trunc nuw nsw i64 %.sroa.0.2.val478 to i8
  store i8 %i.jr, ptr %i.jq, align 1
  br label %bb.ej

bb.ef:                                            ; preds = %.noexc509
  %i.js = or disjoint i8 %i.jf, -64
  store i8 %i.js, ptr %i.ja, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  store i8 %i.jd, ptr %i.jt, align 1
  br label %bb.ej

bb.eg:                                            ; preds = %.noexc509
  br i1 %i.iy, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ju = or disjoint i8 %i.jj, -32
  store i8 %i.ju, ptr %i.ja, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  store i8 %i.jh, ptr %i.jv, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  store i8 %i.jd, ptr %i.jw, align 1
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  store i8 %i.jo, ptr %i.ja, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  store i8 %i.jl, ptr %i.jx, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  store i8 %i.jh, ptr %i.jy, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  store i8 %i.jd, ptr %i.jz, align 1
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.ef, %.noexc510
  %.sroa.0.03.i = phi i64 [ 1, %.noexc510 ], [ 2, %bb.ef ], [ 3, %bb.eh ], [ 4, %bb.ei ]
  %i.ka = add nuw i64 %.sroa.0.03.i, %i.iu        ; 2 uses
  store i64 %i.ka, ptr %.sroa.5289.0..sroa_idx, align 8, !alias.scope !119
  %i.kb = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  br label %bb.ex

bb.ek:                                            ; preds = %bb.bk
  %i.kc = load ptr, ptr %i.c, align 8, !noundef !7 ; 6 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ke = load i8, ptr %i.x, align 8, !range !14, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ke, ptr %i.kf, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gj

bb.em:                                            ; preds = %bb.ek
  %i.kg = load i64, ptr %i.x, align 8, !noundef !7 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ef, label %bb.en, label %bb.ex

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.kc, ptr %i.y, align 8
  store i64 %i.kg, ptr %i.z, align 8
  store i64 0, ptr %i.b, align 8
  store i64 0, ptr %.sroa.5390.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.7392.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.9394.0..sroa_idx, align 8
  store i64 %i.kg, ptr %.sroa.10395.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11396.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11396.sroa.4.0..sroa.11396.0..sroa_idx.sroa_idx, align 4
  store i8 2, ptr %.sroa.11396.sroa.5.0..sroa.11396.0..sroa_idx.sroa_idx, align 8
  store <4 x i8> <i8 1, i8 0, i8 2, i8 -1>, ptr %.sroa.12397.0..sroa_idx, align 4
  store i8 -1, ptr %.sroa.16399.0..sroa_idx, align 8
  store i64 0, ptr %i.aa, align 8
  store i64 0, ptr %.sroa.5402.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.7404.0..sroa_idx, align 8
  store i64 %i.kg, ptr %.sroa.9406.0..sroa_idx, align 8
  store i64 %i.kg, ptr %.sroa.10407.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11408.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11408.sroa.4.0..sroa.11408.0..sroa_idx.sroa_idx, align 4
  store i8 2, ptr %.sroa.11408.sroa.5.0..sroa.11408.0..sroa_idx.sroa_idx, align 8
  store <4 x i8> <i8 1, i8 0, i8 2, i8 -1>, ptr %.sroa.12409.0..sroa_idx, align 4
  store i8 -1, ptr %.sroa.16413.0..sroa_idx, align 8
  br label %bb.eo

bb.eo:                                            ; preds = %bb.et, %bb.en
  %.sroa.0225.0 = phi i64 [ 0, %bb.en ], [ %i.kn, %bb.et ] ; 4 uses
  %.sroa.0222.0 = phi i64 [ 0, %bb.en ], [ %i.kp, %bb.et ] ; 8 uses
  %i.kh = icmp ult i64 %.sroa.0225.0, %.sroa.16.0608
  br i1 %i.kh, label %bb.ep, label %bb.eu

bb.ep:                                            ; preds = %bb.eo
  %i.ki = invoke fastcc { ptr, i64 } @_RNvXs2_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_9GraphemesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(192) %i.b)
          to label %bb.eq unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %i.kj = extractvalue { ptr, i64 } %i.ki, 0      ; 3 uses
  %i.kk = extractvalue { ptr, i64 } %i.ki, 1      ; 2 uses
  %.not453 = icmp eq ptr %i.kj, null
  br i1 %.not453, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kk
  %i.km = invoke fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish(ptr noundef nonnull %i.kj, ptr noundef nonnull %i.kl)
          to label %._crit_edge949 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit

._crit_edge949:                                   ; preds = %bb.er
  %i.kn = add i64 %i.km, %.sroa.0225.0            ; 3 uses
  %i.ko = icmp ult i64 %i.kn, %.sroa.0225.0
  br i1 %i.ko, label %.invoke, label %bb.es

bb.es:                                            ; preds = %._crit_edge949
  %.not454 = icmp ugt i64 %i.kn, %.sroa.16.0608
  br i1 %.not454, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.kp = add i64 %i.kk, %.sroa.0222.0            ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.0222.0
  br i1 %i.kq, label %.invoke, label %bb.eo

bb.eu:                                            ; preds = %bb.eo, %bb.es, %bb.eq
  %i.kr = icmp eq i64 %.sroa.0222.0, 0
  br i1 %i.kr, label %.thread624, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %.not.i512 = icmp ult i64 %.sroa.0222.0, %i.kg
  br i1 %.not.i512, label %bb.ew, label %.split.i

.split.i:                                         ; preds = %bb.ev
  %i.ks = icmp eq i64 %.sroa.0222.0, %i.kg
  br i1 %i.ks, label %.thread624, label %.thread

bb.ew:                                            ; preds = %bb.ev
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.sroa.0222.0
  %i.ku = load i8, ptr %i.kt, align 1, !alias.scope !120, !noundef !7
  %i.kv = icmp sgt i8 %i.ku, -65
  br i1 %i.kv, label %.thread624, label %.thread

.thread624:                                       ; preds = %.split.i, %bb.eu, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ex

.thread:                                          ; preds = %.split.i, %bb.ew
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kc, i64 noundef %i.kg, i64 noundef 0, i64 noundef %.sroa.0222.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
          to label %bb.cg unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ex:                                            ; preds = %bb.bo, %bb.ce, %bb.cm, %bb.cw, %bb.dw, %bb.ej, %bb.em, %.thread624
  %.sroa.18.0 = phi i64 [ %i.fw, %bb.bo ], [ %.pre832, %bb.ce ], [ %i.gv, %bb.cm ], [ %.sroa.0222.0, %.thread624 ], [ %i.kg, %bb.em ], [ %i.ka, %bb.ej ], [ %i.im, %bb.dw ], [ %i.hd, %bb.cw ] ; 9 uses
  %.sroa.0233.0 = phi ptr [ %i.fv, %bb.bo ], [ %i.gk, %bb.ce ], [ %i.gu, %bb.cm ], [ %i.kc, %.thread624 ], [ %i.kc, %bb.em ], [ %i.kb, %bb.ej ], [ %i.il, %bb.dw ], [ %i.hc, %bb.cw ] ; 5 uses
  %.sroa.9179.3 = phi i64 [ %.sroa.9179.1, %bb.bo ], [ 0, %bb.ce ], [ 0, %bb.cm ], [ 0, %.thread624 ], [ 0, %bb.em ], [ 0, %bb.ej ], [ %.sroa.9179.6, %bb.dw ], [ %.sroa.9179.4, %bb.cw ] ; 3 uses
  %.sroa.0177.3 = phi ptr [ %.sroa.0177.1, %bb.bo ], [ inttoptr (i64 1 to ptr), %bb.ce ], [ inttoptr (i64 1 to ptr), %bb.cm ], [ inttoptr (i64 1 to ptr), %.thread624 ], [ inttoptr (i64 1 to ptr), %bb.em ], [ inttoptr (i64 1 to ptr), %bb.ej ], [ %.sroa.0177.6, %bb.dw ], [ %.sroa.0177.4, %bb.cw ] ; 3 uses
  %.sroa.16.2 = phi i64 [ %.sroa.16.0608, %bb.bo ], [ %.sroa.16.3, %bb.ce ], [ %.sroa.16.0608, %bb.cm ], [ %.sroa.0225.0, %.thread624 ], [ %.sroa.16.0608, %bb.em ], [ %.sroa.16.0608, %bb.ej ], [ %..i, %bb.dw ], [ %.sroa.16.0608, %bb.cw ] ; 2 uses
  %.sroa.0142.2 = phi i64 [ %.sroa.0142.0609, %bb.bo ], [ %.sroa.0142.3, %bb.ce ], [ %.sroa.0142.0609, %bb.cm ], [ 1, %.thread624 ], [ 0, %bb.em ], [ %.sroa.0142.0609, %bb.ej ], [ %.sroa.0142.4, %bb.dw ], [ %.sroa.0142.0609, %bb.cw ]
  %.sroa.529.4 = phi i8 [ %spec.select465, %bb.bo ], [ %spec.select465, %bb.ce ], [ %spec.select465, %bb.cm ], [ 0, %.thread624 ], [ 0, %bb.em ], [ 0, %bb.ej ], [ %spec.select465, %bb.dw ], [ %spec.select465, %bb.cw ]
  %.sroa.0251.0 = select i1 %i.ex, i1 %i.ad, i1 false ; 2 uses
  br i1 %.sroa.0251.0, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0233.0, i64 %.sroa.18.0
  %i.kx = invoke fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish(ptr noundef nonnull %.sroa.0233.0, ptr noundef nonnull %i.kw)
          to label %._crit_edge947 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ez:                                            ; preds = %bb.ex
  %i.ky = invoke noundef i64 @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, i64 noundef %.sroa.18.0)
          to label %bb.fa unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge947:                                   ; preds = %bb.ey, %bb.fa
  %.sroa.0253.0 = phi i64 [ %i.la, %bb.fa ], [ %i.kx, %bb.ey ] ; 3 uses
  %i.kz = trunc nuw i64 %.sroa.0142.2 to i1       ; 2 uses
  br i1 %.sroa.0116.0, label %bb.fc, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.la = add i64 %i.ky, %.sroa.18.0              ; 2 uses
  %i.lb = icmp ult i64 %i.la, %.sroa.18.0
  br i1 %i.lb, label %.invoke, label %._crit_edge947

bb.fb:                                            ; preds = %._crit_edge947
  %spec.select464 = select i1 %i.kz, i64 %.sroa.16.2, i64 %.sroa.0253.0
  br label %bb.fd

bb.fc:                                            ; preds = %._crit_edge947
  %.sroa.16.2. = select i1 %i.kz, i64 %.sroa.16.2, i64 1
  %..i514 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0253.0, i64 %.sroa.16.2.)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.sroa.0256.0 = phi i64 [ %..i514, %bb.fc ], [ %spec.select464, %bb.fb ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0177.3, i64 %.sroa.9179.3 ; 5 uses
  %i.ld = invoke fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish(ptr noundef nonnull %.sroa.0177.3, ptr noundef nonnull %i.lc)
          to label %._crit_edge946 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

._crit_edge946:                                   ; preds = %bb.fd
  %i.le = add i64 %i.ld, %.sroa.0256.0            ; 5 uses
  %i.lf = icmp ult i64 %i.le, %i.ld
  br i1 %i.lf, label %bb.fe, label %bb.ff, !prof !10

bb.fe:                                            ; preds = %._crit_edge946
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.lg, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gj

bb.ff:                                            ; preds = %._crit_edge946
  %..i515 = call noundef i64 @llvm.umax.i64(i64 %i.le, i64 %.sroa.065.0872) ; 4 uses
  %i.lh = trunc nuw i8 %.sroa.13.2874 to i1       ; 3 uses
  %i.li = trunc nuw i8 %.sroa.529.4 to i1         ; 2 uses
  %or.cond = select i1 %i.lh, i1 true, i1 %i.li
  br i1 %or.cond, label %bb.fg, label %bb.fk

bb.fg:                                            ; preds = %bb.fk, %bb.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %.not.i.i.i.i516 = icmp ne i64 %.sroa.9179.3, 0
  %i.lj = zext i1 %.not.i.i.i.i516 to i64
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.lj)
          to label %.noexc528 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc528:                                        ; preds = %bb.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %.not.i9.i.i.i.i.i518 = icmp samesign eq i64 %.sroa.9179.3, 0
  br i1 %.not.i9.i.i.i.i.i518, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit530, label %.lr.ph.i.i.i.i.i519

.lr.ph.i.i.i.i.i519:                              ; preds = %.noexc528, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i524
  %.sroa.0.010.i.i.i.i.i520 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i522, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i524 ], [ %.sroa.0177.3, %.noexc528 ] ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i520, i64 1 ; 3 uses
  %i.ll = load i8, ptr %.sroa.0.010.i.i.i.i.i520, align 1, !alias.scope !128, !noalias !129, !noundef !7 ; 5 uses
  %i.lm = icmp sgt i8 %i.ll, -1
  br i1 %i.lm, label %bb.fh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i521

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i521: ; preds = %.lr.ph.i.i.i.i.i519
  %i.ln = and i8 %i.ll, 31
  %i.lo = zext nneg i8 %i.ln to i32               ; 3 uses
  %i.lp = icmp ne ptr %i.lk, %i.lc
  call void @llvm.assume(i1 %i.lp)
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i520, i64 2 ; 3 uses
  %i.lr = load i8, ptr %i.lk, align 1, !alias.scope !128, !noalias !129, !noundef !7
  %i.ls = shl nuw nsw i32 %i.lo, 6
  %i.lt = and i8 %i.lr, 63
  %i.lu = zext nneg i8 %i.lt to i32               ; 2 uses
  %i.lv = or disjoint i32 %i.ls, %i.lu
  %i.lw = icmp samesign ugt i8 %i.ll, -33
  br i1 %i.lw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i526, label %bb.fi

bb.fh:                                            ; preds = %.lr.ph.i.i.i.i.i519
  %i.lx = zext nneg i8 %i.ll to i32
  br label %bb.fi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i526: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i521
  %i.ly = icmp ne ptr %i.lq, %i.lc
  call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i520, i64 3 ; 3 uses
  %i.ma = load i8, ptr %i.lq, align 1, !alias.scope !128, !noalias !129, !noundef !7
  %i.mb = shl nuw nsw i32 %i.lu, 6
  %i.mc = and i8 %i.ma, 63
  %i.md = zext nneg i8 %i.mc to i32
  %i.me = or disjoint i32 %i.mb, %i.md            ; 2 uses
  %i.mf = shl nuw nsw i32 %i.lo, 12
  %i.mg = or disjoint i32 %i.me, %i.mf
  %i.mh = icmp samesign ugt i8 %i.ll, -17
  br i1 %i.mh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i527, label %bb.fi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i527: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i526
  %i.mi = icmp ne ptr %i.lz, %i.lc
  call void @llvm.assume(i1 %i.mi)
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i520, i64 4
  %i.mk = load i8, ptr %i.lz, align 1, !alias.scope !128, !noalias !129, !noundef !7
  %i.ml = shl nuw nsw i32 %i.lo, 18
  %i.mm = and i32 %i.ml, 1835008
  %i.mn = shl nuw nsw i32 %i.me, 6
  %i.mo = and i8 %i.mk, 63
  %i.mp = zext nneg i8 %i.mo to i32
  %i.mq = or disjoint i32 %i.mn, %i.mp
  %i.mr = or disjoint i32 %i.mq, %i.mm
  br label %bb.fi

bb.fi:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i527, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i526, %bb.fh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i521
  %.sroa.0.1.ph.i.i.i.i.i522 = phi ptr [ %i.lq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i521 ], [ %i.lz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i526 ], [ %i.mj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i527 ], [ %i.lk, %bb.fh ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i523 = phi i32 [ %i.lv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i521 ], [ %i.mg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i526 ], [ %i.mr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i527 ], [ %i.lx, %bb.fh ]
  %i.ms = load i64, ptr %i.u, align 8, !alias.scope !130, !noalias !128, !noundef !7 ; 3 uses
  %i.mt = load i64, ptr %1, align 8, !range !8, !alias.scope !130, !noalias !128, !noundef !7
  %i.mu = icmp eq i64 %i.ms, %i.mt
  br i1 %i.mu, label %bb.fj, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i524

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i524 unwind label %.loopexit.split-lp631.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i524: ; preds = %bb.fj, %bb.fi
  %i.mv = load ptr, ptr %i.v, align 8, !alias.scope !130, !noalias !128, !nonnull !7, !noundef !7
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.ms
  store i32 %spec.select.i.ph.i.i.i.i.i523, ptr %i.mw, align 4, !noalias !128
  %i.mx = add i64 %i.ms, 1
  store i64 %i.mx, ptr %i.u, align 8, !alias.scope !130, !noalias !128
  %.not.i.i.i.i.i.i525 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i522, %i.lc
  br i1 %.not.i.i.i.i.i.i525, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit530, label %.lr.ph.i.i.i.i.i519

bb.fk:                                            ; preds = %bb.ff
  %i.my = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %..i515, i64 noundef %i.le)
          to label %bb.fg unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit530: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i524, %.noexc528
  %.not = xor i1 %i.lh, true
  %or.cond5 = select i1 %.not, i1 %i.li, i1 false
  br i1 %or.cond5, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fm, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit530
  %i.mz = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48, i64 noundef %.sroa.0256.0, i64 noundef %.sroa.0253.0)
          to label %bb.fn unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.fm:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit530
  %i.na = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48, i64 noundef %..i515, i64 noundef %i.le)
          to label %bb.fl unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.fn:                                            ; preds = %bb.fl
  br i1 %.sroa.0251.0, label %bb.fs, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0233.0, i64 %.sroa.18.0 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.nc = lshr i64 %.sroa.18.0, 2
  %i.nd = and i64 %.sroa.18.0, 3
  %.not.i.i.i.i531 = icmp ne i64 %i.nd, 0
  %i.ne = zext i1 %.not.i.i.i.i531 to i64
  %.sroa.0.0.i.i.i.i532 = add nuw nsw i64 %i.nc, %i.ne
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i532)
          to label %.noexc543 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc543:                                        ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %.not.i9.i.i.i.i.i533 = icmp samesign eq i64 %.sroa.18.0, 0
  br i1 %.not.i9.i.i.i.i.i533, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545, label %.lr.ph.i.i.i.i.i534

.lr.ph.i.i.i.i.i534:                              ; preds = %.noexc543, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539
  %.sroa.0.010.i.i.i.i.i535 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i537, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539 ], [ %.sroa.0233.0, %.noexc543 ] ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i535, i64 1 ; 3 uses
  %i.ng = load i8, ptr %.sroa.0.010.i.i.i.i.i535, align 1, !alias.scope !138, !noalias !139, !noundef !7 ; 5 uses
  %i.nh = icmp sgt i8 %i.ng, -1
  br i1 %i.nh, label %bb.fp, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536: ; preds = %.lr.ph.i.i.i.i.i534
  %i.ni = and i8 %i.ng, 31
  %i.nj = zext nneg i8 %i.ni to i32               ; 3 uses
  %i.nk = icmp ne ptr %i.nf, %i.nb
  call void @llvm.assume(i1 %i.nk)
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i535, i64 2 ; 3 uses
  %i.nm = load i8, ptr %i.nf, align 1, !alias.scope !138, !noalias !139, !noundef !7
  %i.nn = shl nuw nsw i32 %i.nj, 6
  %i.no = and i8 %i.nm, 63
  %i.np = zext nneg i8 %i.no to i32               ; 2 uses
  %i.nq = or disjoint i32 %i.nn, %i.np
  %i.nr = icmp samesign ugt i8 %i.ng, -33
  br i1 %i.nr, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541, label %bb.fq

bb.fp:                                            ; preds = %.lr.ph.i.i.i.i.i534
  %i.ns = zext nneg i8 %i.ng to i32
  br label %bb.fq

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536
  %i.nt = icmp ne ptr %i.nl, %i.nb
  call void @llvm.assume(i1 %i.nt)
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i535, i64 3 ; 3 uses
  %i.nv = load i8, ptr %i.nl, align 1, !alias.scope !138, !noalias !139, !noundef !7
  %i.nw = shl nuw nsw i32 %i.np, 6
  %i.nx = and i8 %i.nv, 63
  %i.ny = zext nneg i8 %i.nx to i32
  %i.nz = or disjoint i32 %i.nw, %i.ny            ; 2 uses
  %i.oa = shl nuw nsw i32 %i.nj, 12
  %i.ob = or disjoint i32 %i.nz, %i.oa
  %i.oc = icmp samesign ugt i8 %i.ng, -17
  br i1 %i.oc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542, label %bb.fq

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541
  %i.od = icmp ne ptr %i.nu, %i.nb
  call void @llvm.assume(i1 %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i535, i64 4
  %i.of = load i8, ptr %i.nu, align 1, !alias.scope !138, !noalias !139, !noundef !7
  %i.og = shl nuw nsw i32 %i.nj, 18
  %i.oh = and i32 %i.og, 1835008
  %i.oi = shl nuw nsw i32 %i.nz, 6
  %i.oj = and i8 %i.of, 63
  %i.ok = zext nneg i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.oi, %i.ok
  %i.om = or disjoint i32 %i.ol, %i.oh
  br label %bb.fq

bb.fq:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541, %bb.fp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536
  %.sroa.0.1.ph.i.i.i.i.i537 = phi ptr [ %i.nl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536 ], [ %i.nu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541 ], [ %i.oe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542 ], [ %i.nf, %bb.fp ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i538 = phi i32 [ %i.nq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536 ], [ %i.ob, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541 ], [ %i.om, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542 ], [ %i.ns, %bb.fp ]
  %i.on = load i64, ptr %i.u, align 8, !alias.scope !140, !noalias !138, !noundef !7 ; 3 uses
  %i.oo = load i64, ptr %1, align 8, !range !8, !alias.scope !140, !noalias !138, !noundef !7
  %i.op = icmp eq i64 %i.on, %i.oo
  br i1 %i.op, label %bb.fr, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539 unwind label %.loopexit630

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539: ; preds = %bb.fr, %bb.fq
  %i.oq = load ptr, ptr %i.v, align 8, !alias.scope !140, !noalias !138, !nonnull !7, !noundef !7
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.on
  store i32 %spec.select.i.ph.i.i.i.i.i538, ptr %i.or, align 4, !noalias !138
  %i.os = add i64 %i.on, 1
  store i64 %i.os, ptr %i.u, align 8, !alias.scope !140, !noalias !138
  %.not.i.i.i.i.i.i540 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i537, %i.nb
  br i1 %.not.i.i.i.i.i.i540, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545, label %.lr.ph.i.i.i.i.i534

bb.fs:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0233.0, i64 noundef %.sroa.18.0)
          to label %bb.ft unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539, %.noexc543, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit
  br i1 %i.lh, label %bb.gb, label %bb.ga

bb.ft:                                            ; preds = %bb.fs
  %i.ot = load ptr, ptr %i.ae, align 8, !nonnull !7, !noundef !7 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish:bb.a
  %i.iu = add i32 %i.it, -1114112
  %i.iv = icmp ult i32 %i.iu, -1112064
  br i1 %i.iv, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %bb.eo

_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread: ; preds = %bb.bu, %bb.bt, %bb.bv, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit
  %.sroa.81.1.i583 = phi i8 [ 4, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit ], [ 4, %bb.bu ], [ 4, %bb.bv ], [ 3, %bb.bt ]
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.81.1.i583, ptr %i.iw, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gv

bb.eo:                                            ; preds = %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit
  %i.ix = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !alias.scope !237, !noundef !7 ; 4 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp samesign ult i64 %.sroa.0.2.val468, 128
  br i1 %i.iz, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ja = icmp samesign ult i64 %.sroa.0.2.val468, 2048 ; 2 uses
  %i.jb = icmp samesign ult i64 %.sroa.0.2.val468, 65536 ; 2 uses
  %..i492 = select i1 %i.jb, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.ja, i64 2, i64 %..i492
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.0.0.ph.i)
          to label %.noexc493 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.noexc493:                                        ; preds = %bb.ep
  %i.jc = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !alias.scope !237, !nonnull !7, !noundef !7
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ix ; 9 uses
  %i.je = trunc i64 %.sroa.0.2.val468 to i8
  %i.jf = and i8 %i.je, 63
  %i.jg = or disjoint i8 %i.jf, -128              ; 3 uses
  %i.jh = lshr i64 %.sroa.0.2.val468, 6
  %i.ji = trunc i64 %i.jh to i8                   ; 2 uses
  %i.jj = and i8 %i.ji, 63
  %i.jk = or disjoint i8 %i.jj, -128              ; 2 uses
  %i.jl = lshr i64 %.sroa.0.2.val468, 12
  %i.jm = trunc i64 %i.jl to i8                   ; 2 uses
  %i.jn = and i8 %i.jm, 63
  %i.jo = or disjoint i8 %i.jn, -128
  %i.jp = lshr i64 %.sroa.0.2.val468, 18
  %i.jq = trunc i64 %i.jp to i8
  %i.jr = or disjoint i8 %i.jq, -16
  br i1 %i.ja, label %bb.er, label %bb.es

bb.eq:                                            ; preds = %bb.eo
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc494 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.noexc494:                                        ; preds = %bb.eq
  %i.js = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !alias.scope !237, !nonnull !7, !noundef !7
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ix
  %i.ju = trunc nuw nsw i64 %.sroa.0.2.val468 to i8
  store i8 %i.ju, ptr %i.jt, align 1
  br label %bb.ev

bb.er:                                            ; preds = %.noexc493
  %i.jv = or disjoint i8 %i.ji, -64
  store i8 %i.jv, ptr %i.jd, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 %i.jg, ptr %i.jw, align 1
  br label %bb.ev

bb.es:                                            ; preds = %.noexc493
  br i1 %i.jb, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.jx = or disjoint i8 %i.jm, -32
  store i8 %i.jx, ptr %i.jd, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 %i.jk, ptr %i.jy, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  store i8 %i.jg, ptr %i.jz, align 1
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  store i8 %i.jr, ptr %i.jd, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 %i.jo, ptr %i.ka, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  store i8 %i.jk, ptr %i.kb, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jd, i64 3
  store i8 %i.jg, ptr %i.kc, align 1
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.er, %.noexc494
  %.sroa.0.03.i = phi i64 [ 1, %.noexc494 ], [ 2, %bb.er ], [ 3, %bb.et ], [ 4, %bb.eu ]
  %i.kd = add nuw i64 %.sroa.0.03.i, %i.ix        ; 2 uses
  store i64 %i.kd, ptr %.sroa.5289.0..sroa_idx, align 8, !alias.scope !237
  %i.ke = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  br label %bb.fj

bb.ew:                                            ; preds = %bb.bw
  %i.kf = load ptr, ptr %i.c, align 8, !noundef !7 ; 6 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.kh = load i8, ptr %i.x, align 8, !range !14, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.kh, ptr %i.ki, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gv

bb.ey:                                            ; preds = %bb.ew
  %i.kj = load i64, ptr %i.x, align 8, !noundef !7 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.eg, label %bb.ez, label %bb.fj

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.kf, ptr %i.y, align 8
  store i64 %i.kj, ptr %i.z, align 8
  store i64 0, ptr %i.b, align 8
  store i64 0, ptr %.sroa.5390.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.7392.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.9394.0..sroa_idx, align 8
  store i64 %i.kj, ptr %.sroa.10395.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11396.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11396.sroa.4.0..sroa.11396.0..sroa_idx.sroa_idx, align 4
  store i8 2, ptr %.sroa.11396.sroa.5.0..sroa.11396.0..sroa_idx.sroa_idx, align 8
  store <4 x i8> <i8 1, i8 0, i8 2, i8 -1>, ptr %.sroa.12397.0..sroa_idx, align 4
  store i8 -1, ptr %.sroa.16399.0..sroa_idx, align 8
  store i64 0, ptr %i.aa, align 8
  store i64 0, ptr %.sroa.5402.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.7404.0..sroa_idx, align 8
  store i64 %i.kj, ptr %.sroa.9406.0..sroa_idx, align 8
  store i64 %i.kj, ptr %.sroa.10407.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11408.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.11408.sroa.4.0..sroa.11408.0..sroa_idx.sroa_idx, align 4
  store i8 2, ptr %.sroa.11408.sroa.5.0..sroa.11408.0..sroa_idx.sroa_idx, align 8
  store <4 x i8> <i8 1, i8 0, i8 2, i8 -1>, ptr %.sroa.12409.0..sroa_idx, align 4
  store i8 -1, ptr %.sroa.16413.0..sroa_idx, align 8
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ff, %bb.ez
  %.sroa.0225.0 = phi i64 [ 0, %bb.ez ], [ %i.kq, %bb.ff ] ; 4 uses
  %.sroa.0222.0 = phi i64 [ 0, %bb.ez ], [ %i.ks, %bb.ff ] ; 8 uses
  %i.kk = icmp ult i64 %.sroa.0225.0, %.sroa.16.0570
  br i1 %i.kk, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.kl = invoke fastcc { ptr, i64 } @_RNvXs2_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_9GraphemesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(192) %i.b)
          to label %bb.fc unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.km = extractvalue { ptr, i64 } %i.kl, 0      ; 3 uses
  %i.kn = extractvalue { ptr, i64 } %i.kl, 1      ; 2 uses
  %.not453 = icmp eq ptr %i.km, null
  br i1 %.not453, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kn
  %i.kp = invoke fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish(ptr noundef nonnull %i.km, ptr noundef nonnull %i.ko)
          to label %._crit_edge839 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit

._crit_edge839:                                   ; preds = %bb.fd
  %i.kq = add i64 %i.kp, %.sroa.0225.0            ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.0225.0
  br i1 %i.kr, label %.invoke, label %bb.fe

bb.fe:                                            ; preds = %._crit_edge839
  %.not454 = icmp ugt i64 %i.kq, %.sroa.16.0570
  br i1 %.not454, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ks = add i64 %i.kn, %.sroa.0222.0            ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %.sroa.0222.0
  br i1 %i.kt, label %.invoke, label %bb.fa

bb.fg:                                            ; preds = %bb.fa, %bb.fe, %bb.fc
  %i.ku = icmp eq i64 %.sroa.0222.0, 0
  br i1 %i.ku, label %.thread588, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.not.i496 = icmp ult i64 %.sroa.0222.0, %i.kj
  br i1 %.not.i496, label %bb.fi, label %.split.i

.split.i:                                         ; preds = %bb.fh
  %i.kv = icmp eq i64 %.sroa.0222.0, %i.kj
  br i1 %i.kv, label %.thread588, label %.thread585

bb.fi:                                            ; preds = %bb.fh
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.sroa.0222.0
  %i.kx = load i8, ptr %i.kw, align 1, !alias.scope !238, !noundef !7
  %i.ky = icmp sgt i8 %i.kx, -65
  br i1 %i.ky, label %.thread588, label %.thread585

.thread588:                                       ; preds = %.split.i, %bb.fg, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.fj

.thread585:                                       ; preds = %.split.i, %bb.fi
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kf, i64 noundef %i.kj, i64 noundef 0, i64 noundef %.sroa.0222.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
          to label %bb.cs unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fj:                                            ; preds = %bb.ca, %bb.cq, %bb.cy, %bb.di, %bb.ei, %bb.ev, %bb.ey, %.thread588
  %.sroa.18.0 = phi i64 [ %i.fz, %bb.ca ], [ %.pre, %bb.cq ], [ %i.gy, %bb.cy ], [ %.sroa.0222.0, %.thread588 ], [ %i.kj, %bb.ey ], [ %i.kd, %bb.ev ], [ %i.ip, %bb.ei ], [ %i.hg, %bb.di ] ; 9 uses
  %.sroa.0233.0 = phi ptr [ %i.fy, %bb.ca ], [ %i.gn, %bb.cq ], [ %i.gx, %bb.cy ], [ %i.kf, %.thread588 ], [ %i.kf, %bb.ey ], [ %i.ke, %bb.ev ], [ %i.io, %bb.ei ], [ %i.hf, %bb.di ] ; 5 uses
  %.sroa.9179.3 = phi i64 [ %.sroa.9179.1, %bb.ca ], [ 0, %bb.cq ], [ 0, %bb.cy ], [ 0, %.thread588 ], [ 0, %bb.ey ], [ 0, %bb.ev ], [ %.sroa.9179.6, %bb.ei ], [ %.sroa.9179.4, %bb.di ] ; 3 uses
  %.sroa.0177.3 = phi ptr [ %.sroa.0177.1, %bb.ca ], [ inttoptr (i64 1 to ptr), %bb.cq ], [ inttoptr (i64 1 to ptr), %bb.cy ], [ inttoptr (i64 1 to ptr), %.thread588 ], [ inttoptr (i64 1 to ptr), %bb.ey ], [ inttoptr (i64 1 to ptr), %bb.ev ], [ %.sroa.0177.6, %bb.ei ], [ %.sroa.0177.4, %bb.di ] ; 3 uses
  %.sroa.16.2 = phi i64 [ %.sroa.16.0570, %bb.ca ], [ %.sroa.16.3, %bb.cq ], [ %.sroa.16.0570, %bb.cy ], [ %.sroa.0225.0, %.thread588 ], [ %.sroa.16.0570, %bb.ey ], [ %.sroa.16.0570, %bb.ev ], [ %..i, %bb.ei ], [ %.sroa.16.0570, %bb.di ] ; 2 uses
  %.sroa.0142.2 = phi i64 [ %.sroa.0142.0571, %bb.ca ], [ %.sroa.0142.3, %bb.cq ], [ %.sroa.0142.0571, %bb.cy ], [ 1, %.thread588 ], [ 0, %bb.ey ], [ %.sroa.0142.0571, %bb.ev ], [ %.sroa.0142.4, %bb.ei ], [ %.sroa.0142.0571, %bb.di ]
  %.sroa.529.4 = phi i8 [ %spec.select465, %bb.ca ], [ %spec.select465, %bb.cq ], [ %spec.select465, %bb.cy ], [ 0, %.thread588 ], [ 0, %bb.ey ], [ 0, %bb.ev ], [ %spec.select465, %bb.ei ], [ %spec.select465, %bb.di ]
  %.sroa.0251.0 = select i1 %i.ez, i1 %i.ad, i1 false ; 2 uses
  br i1 %.sroa.0251.0, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0233.0, i64 %.sroa.18.0
  %i.la = invoke fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish(ptr noundef nonnull %.sroa.0233.0, ptr noundef nonnull %i.kz)
          to label %._crit_edge837 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.fl:                                            ; preds = %bb.fj
  %i.lb = invoke noundef i64 @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, i64 noundef %.sroa.18.0)
          to label %bb.fm unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

._crit_edge837:                                   ; preds = %bb.fk, %bb.fm
  %.sroa.0253.0 = phi i64 [ %i.ld, %bb.fm ], [ %i.la, %bb.fk ] ; 3 uses
  %i.lc = trunc nuw i64 %.sroa.0142.2 to i1       ; 2 uses
  br i1 %.sroa.0116.0, label %bb.fo, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ld = add i64 %i.lb, %.sroa.18.0              ; 2 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.18.0
  br i1 %i.le, label %.invoke, label %._crit_edge837

bb.fn:                                            ; preds = %._crit_edge837
  %spec.select464 = select i1 %i.lc, i64 %.sroa.16.2, i64 %.sroa.0253.0
  br label %bb.fp

bb.fo:                                            ; preds = %._crit_edge837
  %.sroa.16.2. = select i1 %i.lc, i64 %.sroa.16.2, i64 1
  %..i498 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0253.0, i64 %.sroa.16.2.)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sroa.0256.0 = phi i64 [ %..i498, %bb.fo ], [ %spec.select464, %bb.fn ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0177.3, i64 %.sroa.9179.3 ; 5 uses
  %i.lg = invoke fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish(ptr noundef nonnull %.sroa.0177.3, ptr noundef nonnull %i.lf)
          to label %._crit_edge836 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 2 uses

._crit_edge836:                                   ; preds = %bb.fp
  %i.lh = add i64 %i.lg, %.sroa.0256.0            ; 5 uses
  %i.li = icmp ult i64 %i.lh, %i.lg
  br i1 %i.li, label %bb.fq, label %bb.fr, !prof !10

bb.fq:                                            ; preds = %._crit_edge836
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.lj, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gv

bb.fr:                                            ; preds = %._crit_edge836
  %..i499 = call noundef i64 @llvm.umax.i64(i64 %i.lh, i64 %.sroa.065.0) ; 4 uses
  %i.lk = trunc nuw i8 %.sroa.13.2 to i1          ; 3 uses
  %i.ll = trunc nuw i8 %.sroa.529.4 to i1         ; 2 uses
  %or.cond = select i1 %i.lk, i1 true, i1 %i.ll
  br i1 %or.cond, label %bb.fs, label %bb.fw

bb.fs:                                            ; preds = %bb.fw, %bb.fr
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %.not.i.i.i.i500 = icmp ne i64 %.sroa.9179.3, 0
  %i.lm = zext i1 %.not.i.i.i.i500 to i64
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.lm)
          to label %.noexc512 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.noexc512:                                        ; preds = %bb.fs
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.not.i9.i.i.i.i.i502 = icmp samesign eq i64 %.sroa.9179.3, 0
  br i1 %.not.i9.i.i.i.i.i502, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit514, label %.lr.ph.i.i.i.i.i503

.lr.ph.i.i.i.i.i503:                              ; preds = %.noexc512, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i508
  %.sroa.0.010.i.i.i.i.i504 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i506, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i508 ], [ %.sroa.0177.3, %.noexc512 ] ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i504, i64 1 ; 3 uses
  %i.lo = load i8, ptr %.sroa.0.010.i.i.i.i.i504, align 1, !alias.scope !246, !noalias !247, !noundef !7 ; 5 uses
  %i.lp = icmp sgt i8 %i.lo, -1
  br i1 %i.lp, label %bb.ft, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i505

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i505: ; preds = %.lr.ph.i.i.i.i.i503
  %i.lq = and i8 %i.lo, 31
  %i.lr = zext nneg i8 %i.lq to i32               ; 3 uses
  %i.ls = icmp ne ptr %i.ln, %i.lf
  call void @llvm.assume(i1 %i.ls)
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i504, i64 2 ; 3 uses
  %i.lu = load i8, ptr %i.ln, align 1, !alias.scope !246, !noalias !247, !noundef !7
  %i.lv = shl nuw nsw i32 %i.lr, 6
  %i.lw = and i8 %i.lu, 63
  %i.lx = zext nneg i8 %i.lw to i32               ; 2 uses
  %i.ly = or disjoint i32 %i.lv, %i.lx
  %i.lz = icmp samesign ugt i8 %i.lo, -33
  br i1 %i.lz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i510, label %bb.fu

bb.ft:                                            ; preds = %.lr.ph.i.i.i.i.i503
  %i.ma = zext nneg i8 %i.lo to i32
  br label %bb.fu

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i510: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i505
  %i.mb = icmp ne ptr %i.lt, %i.lf
  call void @llvm.assume(i1 %i.mb)
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i504, i64 3 ; 3 uses
  %i.md = load i8, ptr %i.lt, align 1, !alias.scope !246, !noalias !247, !noundef !7
  %i.me = shl nuw nsw i32 %i.lx, 6
  %i.mf = and i8 %i.md, 63
  %i.mg = zext nneg i8 %i.mf to i32
  %i.mh = or disjoint i32 %i.me, %i.mg            ; 2 uses
  %i.mi = shl nuw nsw i32 %i.lr, 12
  %i.mj = or disjoint i32 %i.mh, %i.mi
  %i.mk = icmp samesign ugt i8 %i.lo, -17
  br i1 %i.mk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i511, label %bb.fu

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i511: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i510
  %i.ml = icmp ne ptr %i.mc, %i.lf
  call void @llvm.assume(i1 %i.ml)
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i504, i64 4
  %i.mn = load i8, ptr %i.mc, align 1, !alias.scope !246, !noalias !247, !noundef !7
  %i.mo = shl nuw nsw i32 %i.lr, 18
  %i.mp = and i32 %i.mo, 1835008
  %i.mq = shl nuw nsw i32 %i.mh, 6
  %i.mr = and i8 %i.mn, 63
  %i.ms = zext nneg i8 %i.mr to i32
  %i.mt = or disjoint i32 %i.mq, %i.ms
  %i.mu = or disjoint i32 %i.mt, %i.mp
  br label %bb.fu

bb.fu:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i511, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i510, %bb.ft, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i505
  %.sroa.0.1.ph.i.i.i.i.i506 = phi ptr [ %i.lt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i505 ], [ %i.mc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i510 ], [ %i.mm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i511 ], [ %i.ln, %bb.ft ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i507 = phi i32 [ %i.ly, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i505 ], [ %i.mj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i510 ], [ %i.mu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i511 ], [ %i.ma, %bb.ft ]
  %i.mv = load i64, ptr %i.u, align 8, !alias.scope !248, !noalias !246, !noundef !7 ; 3 uses
  %i.mw = load i64, ptr %1, align 8, !range !8, !alias.scope !248, !noalias !246, !noundef !7
  %i.mx = icmp eq i64 %i.mv, %i.mw
  br i1 %i.mx, label %bb.fv, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i508

bb.fv:                                            ; preds = %bb.fu
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i508 unwind label %.loopexit.split-lp592.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i508: ; preds = %bb.fv, %bb.fu
  %i.my = load ptr, ptr %i.v, align 8, !alias.scope !248, !noalias !246, !nonnull !7, !noundef !7
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mv
  store i32 %spec.select.i.ph.i.i.i.i.i507, ptr %i.mz, align 4, !noalias !246
  %i.na = add i64 %i.mv, 1
  store i64 %i.na, ptr %i.u, align 8, !alias.scope !248, !noalias !246
  %.not.i.i.i.i.i.i509 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i506, %i.lf
  br i1 %.not.i.i.i.i.i.i509, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit514, label %.lr.ph.i.i.i.i.i503

bb.fw:                                            ; preds = %bb.fr
  %i.nb = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %..i499, i64 noundef %i.lh)
          to label %bb.fs unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 0 uses

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit514: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i508, %.noexc512
  %.not = xor i1 %i.lk, true
  %or.cond5 = select i1 %.not, i1 %i.ll, i1 false
  br i1 %or.cond5, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fy, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit514
  %i.nc = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48, i64 noundef %.sroa.0256.0, i64 noundef %.sroa.0253.0)
          to label %bb.fz unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 0 uses

bb.fy:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit514
  %i.nd = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48, i64 noundef %..i499, i64 noundef %i.lh)
          to label %bb.fx unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 0 uses

bb.fz:                                            ; preds = %bb.fx
  br i1 %.sroa.0251.0, label %bb.ge, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0233.0, i64 %.sroa.18.0 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.nf = lshr i64 %.sroa.18.0, 2
  %i.ng = and i64 %.sroa.18.0, 3
  %.not.i.i.i.i515 = icmp ne i64 %i.ng, 0
  %i.nh = zext i1 %.not.i.i.i.i515 to i64
  %.sroa.0.0.i.i.i.i516 = add nuw nsw i64 %i.nf, %i.nh
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i516)
          to label %.noexc527 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.noexc527:                                        ; preds = %bb.ga
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.not.i9.i.i.i.i.i517 = icmp samesign eq i64 %.sroa.18.0, 0
  br i1 %.not.i9.i.i.i.i.i517, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529, label %.lr.ph.i.i.i.i.i518

.lr.ph.i.i.i.i.i518:                              ; preds = %.noexc527, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523
  %.sroa.0.010.i.i.i.i.i519 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i521, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523 ], [ %.sroa.0233.0, %.noexc527 ] ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i519, i64 1 ; 3 uses
  %i.nj = load i8, ptr %.sroa.0.010.i.i.i.i.i519, align 1, !alias.scope !256, !noalias !257, !noundef !7 ; 5 uses
  %i.nk = icmp sgt i8 %i.nj, -1
  br i1 %i.nk, label %bb.gb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520: ; preds = %.lr.ph.i.i.i.i.i518
  %i.nl = and i8 %i.nj, 31
  %i.nm = zext nneg i8 %i.nl to i32               ; 3 uses
  %i.nn = icmp ne ptr %i.ni, %i.ne
  call void @llvm.assume(i1 %i.nn)
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i519, i64 2 ; 3 uses
  %i.np = load i8, ptr %i.ni, align 1, !alias.scope !256, !noalias !257, !noundef !7
  %i.nq = shl nuw nsw i32 %i.nm, 6
  %i.nr = and i8 %i.np, 63
  %i.ns = zext nneg i8 %i.nr to i32               ; 2 uses
  %i.nt = or disjoint i32 %i.nq, %i.ns
  %i.nu = icmp samesign ugt i8 %i.nj, -33
  br i1 %i.nu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525, label %bb.gc

bb.gb:                                            ; preds = %.lr.ph.i.i.i.i.i518
  %i.nv = zext nneg i8 %i.nj to i32
  br label %bb.gc

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520
  %i.nw = icmp ne ptr %i.no, %i.ne
  call void @llvm.assume(i1 %i.nw)
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i519, i64 3 ; 3 uses
  %i.ny = load i8, ptr %i.no, align 1, !alias.scope !256, !noalias !257, !noundef !7
  %i.nz = shl nuw nsw i32 %i.ns, 6
  %i.oa = and i8 %i.ny, 63
  %i.ob = zext nneg i8 %i.oa to i32
  %i.oc = or disjoint i32 %i.nz, %i.ob            ; 2 uses
  %i.od = shl nuw nsw i32 %i.nm, 12
  %i.oe = or disjoint i32 %i.oc, %i.od
  %i.of = icmp samesign ugt i8 %i.nj, -17
  br i1 %i.of, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526, label %bb.gc

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525
  %i.og = icmp ne ptr %i.nx, %i.ne
  call void @llvm.assume(i1 %i.og)
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i519, i64 4
  %i.oi = load i8, ptr %i.nx, align 1, !alias.scope !256, !noalias !257, !noundef !7
  %i.oj = shl nuw nsw i32 %i.nm, 18
  %i.ok = and i32 %i.oj, 1835008
  %i.ol = shl nuw nsw i32 %i.oc, 6
  %i.om = and i8 %i.oi, 63
  %i.on = zext nneg i8 %i.om to i32
  %i.oo = or disjoint i32 %i.ol, %i.on
  %i.op = or disjoint i32 %i.oo, %i.ok
  br label %bb.gc

bb.gc:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525, %bb.gb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520
  %.sroa.0.1.ph.i.i.i.i.i521 = phi ptr [ %i.no, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520 ], [ %i.nx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525 ], [ %i.oh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526 ], [ %i.ni, %bb.gb ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i522 = phi i32 [ %i.nt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520 ], [ %i.oe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525 ], [ %i.op, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526 ], [ %i.nv, %bb.gb ]
  %i.oq = load i64, ptr %i.u, align 8, !alias.scope !258, !noalias !256, !noundef !7 ; 3 uses
  %i.or = load i64, ptr %1, align 8, !range !8, !alias.scope !258, !noalias !256, !noundef !7
  %i.os = icmp eq i64 %i.oq, %i.or
  br i1 %i.os, label %bb.gd, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523 unwind label %.loopexit591

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523: ; preds = %bb.gd, %bb.gc
  %i.ot = load ptr, ptr %i.v, align 8, !alias.scope !258, !noalias !256, !nonnull !7, !noundef !7
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.oq
  store i32 %spec.select.i.ph.i.i.i.i.i522, ptr %i.ou, align 4, !noalias !256
  %i.ov = add i64 %i.oq, 1
  store i64 %i.ov, ptr %i.u, align 8, !alias.scope !258, !noalias !256
  %.not.i.i.i.i.i.i524 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i521, %i.ne
  br i1 %.not.i.i.i.i.i.i524, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529, label %.lr.ph.i.i.i.i.i518

bb.ge:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0233.0, i64 noundef %.sroa.18.0)
          to label %bb.gf unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523, %.noexc527, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit
  br i1 %i.lk, label %bb.gn, label %bb.gm

bb.gf:                                            ; preds = %bb.ge
  %i.ow = load ptr, ptr %i.ae, align 8, !nonnull !7, !noundef !7 ; 2 uses
end_hunk_1
