Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.12?download=true
inline.NumInlined: 5045
inline.NumDeleted: 2384
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x2re6parserNtB6_6Parser5parseNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6RegexpEBa_:bb.a
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.ah, %.thread, %bb.cs, %bb.cj
  %common.resume.op = phi { ptr, i32 } [ %i.jx, %bb.cs ], [ %i.jr, %bb.cj ], [ %.pn176294, %.thread ], [ %.pn167, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit234.sink.split: ; preds = %bb.ci, %bb.cr
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit234

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit234: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit234.sink.split, %bb.ch, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

_RNCINvMs1_NtNtCs7gfv9tzbXmh_6yara_x2re6parserNtB8_6Parser5parseNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6RegexpEs0_0Bc_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir5ErrorECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.5158.sroa.4.0..sroa.5158.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5158.sroa.4.0..sroa.5158.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13254, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13254)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i8 0, ptr %0, align 8
  %.sroa.4157.sroa.4.0..sroa.4157.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i206, ptr %.sroa.4157.sroa.4.0..sroa.4157.0..sroa_idx.sroa_idx, align 8
  %.sroa.4157.sroa.5.0..sroa.4157.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.in, ptr %.sroa.4157.sroa.5.0..sroa.4157.0..sroa_idx.sroa_idx, align 8
  %.sroa.4157.sroa.6.0..sroa.4157.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.0.i.i208, ptr %.sroa.4157.sroa.6.0..sroa.4157.0..sroa_idx.sroa_idx, align 8
  %.sroa.4157.sroa.7.0..sroa.4157.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.06.0.i.i210, ptr %.sroa.4157.sroa.7.0..sroa.4157.0..sroa_idx.sroa_idx, align 8
  %.sroa.4157.sroa.8.0..sroa.4157.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.iz, ptr %.sroa.4157.sroa.8.0..sroa.4157.0..sroa_idx.sroa_idx, align 8
  %.sroa.4157.sroa.9.0..sroa.4157.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.07.0.i.i212, ptr %.sroa.4157.sroa.9.0..sroa.4157.0..sroa_idx.sroa_idx, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %.sroa.5158.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4131.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate8HirFrameEEECs7gfv9tzbXmh_6yara_x.exit.i227 unwind label %bb.cl

bb.cl:                                            ; preds = %_RNCINvMs1_NtNtCs7gfv9tzbXmh_6yara_x2re6parserNtB8_6Parser5parseNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6RegexpEs0_0Bc_.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4131.0..sroa_idx)
          to label %.body221 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate8HirFrameEEECs7gfv9tzbXmh_6yara_x.exit.i227: ; preds = %_RNCINvMs1_NtNtCs7gfv9tzbXmh_6yara_x2re6parserNtB8_6Parser5parseNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6RegexpEs0_0Bc_.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4131.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate10TranslatorECs7gfv9tzbXmh_6yara_x.exit231 unwind label %bb.br

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate10TranslatorECs7gfv9tzbXmh_6yara_x.exit231: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate8HirFrameEEECs7gfv9tzbXmh_6yara_x.exit.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate10TranslatorECs7gfv9tzbXmh_6yara_x.exit231
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s)
          to label %bb.cp unwind label %.loopexit307.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cn

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cu, %bb.cp
  %i.jv = load i64, ptr %i.y, align 8, !range !14, !alias.scope !159, !noundef !8
  %i.jw = icmp eq i64 %i.jv, -1
  br i1 %i.jw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit234, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit234.sink.split unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.cu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3ast5ErrorECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.jz = inttoptr i64 %i.gh to ptr
  %.sroa.7102.sroa.7.0..sroa.7102.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7102.sroa.7.0..sroa.7102.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  %.sroa.7102.sroa.8.0..sroa.7102.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7102.sroa.8.0..sroa.7102.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  store i8 0, ptr %0, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i, ptr %.sroa.5100.0..sroa_idx, align 8
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jz, ptr %.sroa.6101.0..sroa_idx, align 8
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.7102.0..sroa_idx, align 8
  %.sroa.7102.sroa.4.0..sroa.7102.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.06.0.i.i, ptr %.sroa.7102.sroa.4.0..sroa.7102.0..sroa_idx.sroa_idx, align 8
  %.sroa.7102.sroa.5.0..sroa.7102.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.gt, ptr %.sroa.7102.sroa.5.0..sroa.7102.0..sroa_idx.sroa_idx, align 8
  %.sroa.7102.sroa.6.0..sroa.7102.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.07.0.i.i, ptr %.sroa.7102.sroa.6.0..sroa.7102.0..sroa_idx.sroa_idx, align 8
  br label %bb.cq

.thread:                                          ; preds = %.loopexit307.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ax, %bb.bj, %.body221, %bb.ah
  %.pn176294 = phi { ptr, i32 } [ %.pn167, %bb.ah ], [ %.pn174, %.body221 ], [ %.pn.pn.i, %bb.ax ], [ %i.gz, %bb.bj ], [ %lpad.loopexit.split-lp, %.loopexit307.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #34
          to label %common.resume unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_21OptimisticMagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 32 captures(address, read_provenance) dereferenceable(384) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !13, !noundef !8 ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.g = load i64, ptr %i.f, align 32, !noundef !8 ; 4 uses
  %i.h = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.i = tail call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef %i.g) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.af, label %bb.ag

bb.c:                                             ; preds = %bb.av, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.n = load i64, ptr %i.l, align 32, !alias.scope !167, !noundef !8 ; 2 uses
  %i.o = load i64, ptr %i.m, align 32, !alias.scope !167, !noundef !8
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !167
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %.lr.ph.i
  %i.y = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.bv, %bb.ad ] ; 2 uses
  %i.z = phi i64 [ %i.n, %.lr.ph.i ], [ %i.bz, %bb.ad ] ; 6 uses
  %.not.i = icmp ult i64 %i.z, %i.y
  br i1 %.not.i, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.r, align 8, !alias.scope !167, !noundef !8 ; 3 uses
  %i.ab = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 %i.aa) ; 2 uses
  %.not31.i = icmp ugt i64 %i.ab, %i.z
  br i1 %.not31.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.ab)
  %i.ac = load ptr, ptr %i.s, align 16, !alias.scope !167, !nonnull !8, !noundef !8 ; 3 uses
  %i.ad = sub nuw i64 %..i.i, %i.z                ; 5 uses
  %.not32.i = icmp ugt i64 %i.ad, %i.aa
  br i1 %.not32.i, label %bb.h, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.t, align 8, !range !7, !alias.scope !167, !noundef !8
  %.not33.i = icmp eq i64 %i.ae, 0
  br i1 %.not33.i, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #36, !noalias !166
  unreachable

bb.i:                                             ; preds = %bb.l
  %.pre105.i.a = load i64, ptr %i.t, align 8, !alias.scope !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168
  %3 = trunc nuw i64 %.pre105.i.a to i1
  br i1 %3, label %bb.x, label %bb.y

bb.j:                                             ; preds = %bb.g
  %i.af = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef %i.z), !noalias !166 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = extractvalue { i64, ptr } %i.af, 1
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !166
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !166
  br label %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ad), !noalias !166 ; 9 uses
  %.not34.i = icmp eq ptr %i.aj, null
  br i1 %.not34.i, label %bb.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = ptrtoint ptr %i.aj to i64               ; 4 uses
  %i.al = and i64 %i.ak, 3                        ; 2 uses
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 0, label %bb.p
    i64 1, label %bb.q
  ], !prof !25

default.unreachable:                              ; preds = %bb.al, %bb.t, %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.r, !noalias !166

.noexc.i:                                         ; preds = %bb.n
  %i.an = lshr i64 %i.ak, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !166, !nonnull !8, !noundef !8
  %i.ar = invoke noundef i8 %i.aq(i32 noundef %i.ao)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.r, !noalias !166, !inline_history !0

bb.o:                                             ; preds = %bb.m
  %i.as = lshr i64 %i.ak, 32
  %i.at = icmp ult ptr %i.aj, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.as to i8 ; 2 uses
  %i.au = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.at)
  call void @llvm.assume(i1 %i.au)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.p:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !range !26, !noalias !166, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.q:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %i.aj, i64 31
  %i.ay = load i8, ptr %i.ax, align 8, !range !26, !noalias !166, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.r:                                             ; preds = %.noexc.i, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.aj) #34
          to label %common.resume unwind label %bb.w, !noalias !166

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.ay, %bb.q ], [ %switch.idx.cast.i.i.i.i, %bb.o ], [ %i.aw, %bb.p ], [ %i.ar, %.noexc.i ]
  %i.ba = icmp eq i8 %.sroa.0.0.i.i, 37
  br i1 %i.ba, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !166
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !166
  br label %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit

bb.t:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i
    i64 3, label %bb.u
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i
    i64 1, label %bb.v
  ], !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bb = icmp ult ptr %i.aj, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.ak, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i

bb.v:                                             ; preds = %bb.t
  %i.be = getelementptr i8, ptr %i.aj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !169, !noalias !168
  store i8 3, ptr %i.a, align 8, !alias.scope !169, !noalias !168
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf), !noalias !166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !166
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.r ], [ %i.de, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.i, %.thread.i
  %i.bh = load i64, ptr %i.u, align 16, !alias.scope !167, !noundef !8
  call void @_RNvXNtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB2_7ForwardNtB2_15FinderDirection12scope_window(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad, i64 noundef %i.bh), !noalias !166
  %.pre106.i.a = load ptr, ptr %i.b, align 8, !noalias !168
  %.pre107.i.a = load i64, ptr %i.v, align 8, !noalias !168
  %.pre108.i = load i64, ptr %i.w, align 8, !noalias !168
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.i
  %i.bi = phi i64 [ %.pre108.i, %bb.x ], [ 0, %bb.i ]
  %i.bj = phi i64 [ %.pre107.i.a, %bb.x ], [ %i.ad, %bb.i ]
  %i.bk = phi ptr [ %.pre106.i.a, %bb.x ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !168
  %i.bl = call { i64, i64 } @_RNvXNtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB2_7ForwardNtB2_15FinderDirection4find(ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bj), !noalias !166 ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = extractvalue { i64, i64 } %i.bl, 1
  %i.bp = add i64 %i.bo, %i.bi                    ; 2 uses
  %i.bq = add i64 %i.bp, %i.z                     ; 2 uses
  %i.br = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef %i.bq), !noalias !166 ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  store i64 0, ptr %i.t, align 8, !alias.scope !167
  %i.bu = load i64, ptr %i.l, align 32, !alias.scope !167, !noundef !8
  %i.bv = load i64, ptr %i.q, align 8, !alias.scope !167, !noundef !8 ; 3 uses
  %i.bw = load i64, ptr %i.r, align 8, !alias.scope !167, !noundef !8
  %.val37.i = load i64, ptr %i.x, align 16, !alias.scope !167, !noundef !8
  %i.bx = call i64 @llvm.usub.sat.i64(i64 %.val37.i, i64 1)
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.bu, i64 %i.by) ; 4 uses
  %.not.i.i = icmp ult i64 %i.bz, %i.bv
  br i1 %.not.i.i, label %bb.ad, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.ca = extractvalue { i64, ptr } %i.br, 1
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !166
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !166
  br label %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit

bb.ac:                                            ; preds = %bb.z
  %.val38.i = load i64, ptr %i.x, align 16, !alias.scope !167, !noundef !8
  %i.cb = add i64 %.val38.i, %i.bp
  store i64 1, ptr %i.t, align 8, !alias.scope !167
  store i64 %i.cb, ptr %i.u, align 16, !alias.scope !167
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.cc, align 8, !alias.scope !166
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %i.cd, align 8, !alias.scope !166
  store i64 -2, ptr %0, align 8, !alias.scope !166
  br label %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit

bb.ad:                                            ; preds = %bb.aa
  store i64 %i.bz, ptr %i.l, align 32, !alias.scope !167
  %i.ce = load i64, ptr %i.m, align 32, !alias.scope !167, !noundef !8
  %i.cf = icmp ult i64 %i.bz, %i.ce
  br i1 %i.cf, label %.loopexit.i, label %bb.d

bb.ae:                                            ; preds = %bb.aa
  store i64 %i.bv, ptr %i.m, align 32, !alias.scope !167
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ad, %bb.e, %bb.d, %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i, %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cg, align 8, !alias.scope !166
  store i64 -2, ptr %0, align 8, !alias.scope !166
  br label %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit

bb.af:                                            ; preds = %bb.b
  %i.ch = extractvalue { i64, ptr } %i.i, 1
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %.sroa.414.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5titan9go_re_sym9BuildInfoEBL_:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg2CeFYmfPbl_8protobuf7special13SpecialFieldsECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs7gfv9tzbXmh_6yara_x.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  ret void

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs7gfv9tzbXmh_6yara_x.exit, %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs7gfv9tzbXmh_6yara_x.exit6
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product23multi_cartesian_productINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1m_3zip3ZipINtNtNtB1q_5slice4iter4IterhEB2m_ENCNvMs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB32_16MaskCombinations3news_0EEB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !912
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB3C_INtNtB3G_3zip3ZipINtNtNtB3K_5slice4iter4IterhEB4L_ENCNvMs5_B29_NtB29_16MaskCombinations3news_0ENCINvBX_23multi_cartesian_productB4p_E0EE9from_iterB2d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.44.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product23multi_cartesian_productINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterhENCNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB33_16CaseCombinations3new0EEB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !916
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB3w_INtNtB6_9into_iter8IntoIterhENCNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB4Z_16CaseCombinations3new0ENCINvB11_23multi_cartesian_productB4j_E0EE9from_iterB53_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.44.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBX_6cursor6CursorRShEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.120, %bb.k ] ; 3 uses
  %.sroa.7.040 = phi i64 [ %2, %.lr.ph ], [ %.sroa.7.118, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read4readCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %.sroa.0.041, i64 noundef %.sroa.7.040) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split27
    i64 0, label %.split28
    i64 1, label %.split
  ], !prof !25

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !2

.split27:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %._crit_edge

.split28:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !26, !noundef !8
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !26, !noundef !8
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.7.040, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.7.040, i64 noundef %.sroa.7.040, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #39
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.7.040, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.split28, %.split27, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %bb.k, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @356, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ], [ %i.f, %.split28 ]
  ret ptr %.sroa.09.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit

bb.i:                                             ; preds = %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !919
  store i8 3, ptr %i.a, align 8, !alias.scope !919
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.120 = phi ptr [ %.sroa.0.041, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit ], [ %i.ac, %bb.h ]
  %.sroa.7.118 = phi i64 [ %.sroa.7.040, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.7.118, 0
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.f) #34
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !28, !noundef !8 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit, !prof !11

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEE0Cs7gfv9tzbXmh_6yara_x.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  %i.aj = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %.not = icmp eq i64 %i.am, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !noundef !8 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !range !28, !noundef !8
  %i.aq = sub nsw i64 %i.ap, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 range(i64 -9223372036854775807, -9223372036854775808) %i.aq, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !28
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !922

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 3 uses
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ak, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileENtNtB7_4read4Read8read_bufCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #36
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !25

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !8, !noundef !8
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !2

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !26, !noundef !8
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !26, !noundef !8
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !8 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !9, !noundef !8
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !923
  store i8 3, ptr %i.a, align 8, !alias.scope !923
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
end_hunk_1
