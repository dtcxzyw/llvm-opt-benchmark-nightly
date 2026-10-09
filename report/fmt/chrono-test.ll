Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI2tmEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::formatter", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !232
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !319
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc37ELc70ELc32ELc37ELc84EEE5valueE, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.e, align 8
  %i.f = call noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext true)
  %i.g = load ptr, ptr %1, align 8, !tbaa !321    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  store ptr %i.k, ptr %1, align 8, !tbaa !321
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !322
  %i.n = sub i64 %i.m, %i.j
  store i64 %i.n, ptr %i.l, align 8, !tbaa !322
  %i.o = call ptr @_ZNK3fmt3v129formatterI2tmcvE9do_formatINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS0_7contextEEEDTcldtfp0_3outEERKS2_RT0_PKT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.fmt::v12::detail::tm_format_checker", align 1 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !321    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !322  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 5 uses
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !232
  %i.g = icmp eq i8 %i.f, 125
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN3fmt3v126detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(16) %0) ; 5 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !232   ; 3 uses
  %i.k = add i8 %i.j, -48
  %or.cond = icmp ult i8 %i.k, 10
  %i.l = icmp eq i8 %i.j, 123
  %or.cond5 = or i1 %i.l, %or.cond
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0        ; 4 uses
  %i.q = extractvalue { ptr, i32 } %i.o, 1
  %i.r = load i32, ptr %0, align 8, !tbaa !317
  %i.s = and i32 %i.r, -193
  %i.t = shl i32 %i.q, 6
  %i.u = or i32 %i.s, %i.t
  store i32 %i.u, ptr %0, align 8, !tbaa !317
  %i.v = icmp eq ptr %i.p, %i.d
  br i1 %i.v, label %bb.j, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e
  %.pr = load i8, ptr %i.p, align 1, !tbaa !232
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.w = phi i8 [ %.pr, %thread-pre-split ], [ %i.j, %bb.d ]
  %.0 = phi ptr [ %i.p, %thread-pre-split ], [ %i.h, %bb.d ] ; 2 uses
  %i.x = icmp eq i8 %i.w, 76
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %0, align 8, !tbaa !317
  %i.z = or i32 %i.y, 16384
  store i32 %i.z, ptr %0, align 8, !tbaa !317
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.aa, %bb.g ], [ %.0, %bb.f ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ab = zext i1 %2 to i8
  store i8 %i.ab, ptr %3, align 1, !tbaa !324
  %i.ac = call noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIcNS1_17tm_format_checkerEEEPKT_S6_S6_OT0_(ptr noundef nonnull %.1, ptr noundef nonnull %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not = icmp eq ptr %i.ac, %.1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %.1 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.1, ptr %i.ag, align 8, !tbaa !256
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !255
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.h, %bb.c, %bb.a, %bb.b
  %.139 = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.p, %bb.e ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ]
  ret ptr %.139
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
.peel.begin:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = load i8, ptr %0, align 1, !tbaa !232     ; 3 uses
  %i.c = lshr i8 %i.b, 2
  %i.d = and i8 %i.c, 62
  %i.e = zext nneg i8 %i.d to i64
  %i.f = lshr i64 4203265827220226048, %i.e
  %i.g = and i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp slt i64 %i.l, 1
  %spec.select = select i1 %i.m, ptr %0, ptr %i.i ; 5 uses
  %i.n = load i8, ptr %spec.select, align 1, !tbaa !232
  switch i8 %i.n, label %bb.a [
    i8 60, label %.loopexit
    i8 62, label %.loopexit49
    i8 94, label %.loopexit55
  ]

bb.a:                                             ; preds = %.peel.begin
  %i.o = icmp eq ptr %spec.select, %0
  br i1 %i.o, label %.loopexit44, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  switch i8 %i.b, label %.loopexit44 [
    i8 60, label %.loopexit55.thread60
    i8 62, label %.loopexit55.thread64
    i8 94, label %.loopexit55.thread
  ]

.loopexit55.thread64:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit55.thread60:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit:                                        ; preds = %.peel.begin
  br label %.loopexit55

.loopexit49:                                      ; preds = %.peel.begin
  br label %.loopexit55

.loopexit55:                                      ; preds = %.peel.begin, %.loopexit49, %.loopexit
  %.130.ph = phi i32 [ 1, %.loopexit ], [ 3, %.peel.begin ], [ 2, %.loopexit49 ] ; 2 uses
  %.not38 = icmp eq ptr %spec.select, %0
  br i1 %.not38, label %.loopexit55.thread, label %bb.b

bb.b:                                             ; preds = %.loopexit55
  switch i8 %i.b, label %bb.d [
    i8 125, label %.critedge
    i8 123, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1071) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %spec.select to i64         ; 3 uses
  %i.q = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 11 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !317
  %i.t = and i32 %i.s, -229377
  %i.u = trunc i64 %i.r to i32
  %i.v = shl i32 %i.u, 15
  %i.w = or i32 %i.t, %i.v
  store i32 %i.w, ptr %2, align 4, !tbaa !317
  switch i64 %i.r, label %iter.check [
    i64 1, label %bb.e
    i64 0, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit
  ]

iter.check:                                       ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  %i.y = sub i64 %i.q, %i.p
  %i.z = icmp ult i64 %i.y, -4
  %or.cond = or i1 %min.iters.check, %i.z
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = sub i64 %i.a, %i.q
  %i.ab = add i64 %i.aa, 3
  %diff.check = icmp ult i64 %i.ab, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check68 = icmp ult i64 %i.r, 32
  br i1 %min.iters.check68, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.r, 28
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !232
  %wide.load69 = load <16 x i8>, ptr %i.af, align 1, !tbaa !232
  store <16 x i8> %wide.load, ptr %i.x, align 4, !tbaa !232
  store <16 x i8> %wide.load69, ptr %i.ad, align 4, !tbaa !232
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !4774

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !327

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.r, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index71
  %wide.load72 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !232
  store <4 x i8> %wide.load72, ptr %i.x, align 4, !tbaa !232
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next73, %n.vec70
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4775

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.r, %n.vec70
  br i1 %cmp.n74, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.013.i.prol = phi i64 [ %i.an, %vec.epilog.scalar.ph.prol ], [ %.013.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !232
  %i.al = and i64 %.013.i.prol, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !232
  %i.an = add nuw i64 %.013.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !4776

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.013.i.unr = phi i64 [ %.013.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ] ; 5 uses
  %i.ao = sub i64 %.013.i.ph, %i.p
  %i.ap = add i64 %i.ao, %i.q
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %i.ar = and i64 %.013.i.unr, 3
  %i.as = add i64 %.013.i.unr, 1
  %i.at = and i64 %i.as, 3
  %i.au = and i64 %.013.i.unr, 3
  %i.av = xor i64 %i.au, 2
  %i.aw = add i64 %.013.i.unr, 3
  %i.ax = and i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %bb.d
  %i.bc = load i8, ptr %0, align 1, !tbaa !232
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.bc, ptr %i.bd, align 4, !tbaa !232
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 0, ptr %i.be, align 1, !tbaa !232
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 0, ptr %i.bf, align 2, !tbaa !232
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.013.i = phi i64 [ %.013.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.br, %vec.epilog.scalar.ph ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !232
  store i8 %i.bh, ptr %i.ay, align 1, !tbaa !232
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !232
  store i8 %i.bk, ptr %i.az, align 1, !tbaa !232
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !232
  store i8 %i.bn, ptr %i.ba, align 1, !tbaa !232
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !232
  store i8 %i.bq, ptr %i.bb, align 1, !tbaa !232
  %i.br = add nuw i64 %.013.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.br, %i.r
  br i1 %exitcond.not.i.3, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.scalar.ph, !llvm.loop !4777

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %.loopexit44

.loopexit55.thread:                               ; preds = %.loopexit55.thread64, %.loopexit55.thread60, %.peel.next, %.loopexit55
  %.130.ph59 = phi i32 [ %.130.ph, %.loopexit55 ], [ 3, %.peel.next ], [ 1, %.loopexit55.thread60 ], [ 2, %.loopexit55.thread64 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.loopexit44

.loopexit44:                                      ; preds = %bb.a, %.peel.next, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %.loopexit55.thread
  %.13042 = phi i32 [ %.130.ph, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %.130.ph59, %.loopexit55.thread ], [ 0, %.peel.next ], [ 0, %bb.a ]
  %.134 = phi ptr [ %i.bs, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.bt, %.loopexit55.thread ], [ %0, %.peel.next ], [ %0, %bb.a ]
  %i.bu = load i32, ptr %2, align 4, !tbaa !317
  %i.bv = and i32 %i.bu, -57
  %i.bw = shl nuw nsw i32 %.13042, 3
  %i.bx = or i32 %i.bv, %i.bw
  store i32 %i.bx, ptr %2, align 4, !tbaa !317
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.loopexit44
  %.132 = phi ptr [ %.134, %.loopexit44 ], [ %0, %bb.b ]
  ret ptr %.132
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIcNS1_17tm_format_checkerEEEPKT_S6_S6_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !232     ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 125, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit.thread
    i8 37, label %.lr.ph
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.446)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.phthread-pre-split:                           ; preds = %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
  %.pr = load i8, ptr %.3, align 1, !tbaa !232
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.phthread-pre-split
  %i.e = phi i8 [ %.pr, %.lr.phthread-pre-split ], [ %i.b, %bb.b ]
  %.0129168 = phi ptr [ %.3, %.lr.phthread-pre-split ], [ %0, %bb.b ] ; 5 uses
  switch i8 %i.e, label %bb.f [
    i8 125, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit.thread
    i8 37, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0129168, i64 1
  br label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit, !llvm.loop !4778

bb.g:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.0129168, i64 1 ; 3 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.446)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.k = load i8, ptr %i.g, align 1, !tbaa !232
  switch i8 %i.k, label %bb.n [
    i8 95, label %bb.l
    i8 45, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %.0129168, i64 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.0129168, i64 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1 = phi ptr [ %i.g, %bb.k ], [ %i.l, %bb.l ], [ %i.m, %bb.m ] ; 5 uses
  %i.n = icmp eq ptr %.1, %1
  br i1 %i.n, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.446)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.r:                                             ; preds = %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 41 uses
  %i.r = load i8, ptr %.1, align 1, !tbaa !232
  switch i8 %i.r, label %bb.au [
    i8 37, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 110, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 116, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 89, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 121, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 67, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 71, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 103, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
end_hunk_0
