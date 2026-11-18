Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/xtask-61f946471b8db643.xtask.67645c52e71c337-cgu.01?download=true
inline.NumInlined: 360
inline.NumDeleted: 170
begin_hunk_0_@_RNvXs7_NtCsyoCoCcM3Qh_5xtask13semver_checksNtB5_10SemverArgsNtNtCs9ZYirdRbabK_12clap_builder6derive4Args12augment_args:bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.fv = load i64, ptr %i.fu, align 8, !range !13, !alias.scope !678, !noundef !6 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -1
  br i1 %i.fw, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.fx = icmp eq i64 %i.fv, 0
  br i1 %i.fx, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.val1.i.i.i.i113 = load i64, ptr %i.fy, align 8, !alias.scope !681, !noundef !6 ; 2 uses
  %i.fz = icmp eq i64 %.val1.i.i.i.i113, 0
  br i1 %i.fz, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %.val.i.i.i.i114 = load ptr, ptr %i.ga, align 8, !alias.scope !681, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i114, i64 noundef range(i64 1, 0) %.val1.i.i.i.i113, i64 noundef 1) #18, !noalias !682
  br label %bb.da

bb.cz:                                            ; preds = %bb.cs
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !673
  unreachable

bb.da:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv
  store i64 %i.fs, ptr %i.fu, align 8, !alias.scope !674
  %.sroa.6.0..sroa_idx4.i115 = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i115, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i111, i64 16, i1 false), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i111)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(624) %i.u, ptr noundef nonnull align 8 dereferenceable(624) %i.t, i64 624, i1 false), !alias.scope !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder7commandNtB3_7Command3argNtNtB5_3arg3ArgECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(624) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

.body:                                            ; preds = %.body.i, %bb.dd, %.thread126, %.body84.thread
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body85148, %.body84.thread ], [ %i.ge, %bb.dd ], [ %.pn125, %.thread126 ], [ %i.ax, %.body.i ]
  resume { ptr, i32 } %.pn42

.body84.thread:                                   ; preds = %bb.cs, %bb.ch, %bb.bw, %bb.bt, %.body84.thread152
  %eh.lpad-body85148 = phi { ptr, i32 } [ %lpad.thr_comm150, %.body84.thread152 ], [ %.pn.i100, %bb.ch ], [ %.pn.i88, %bb.bw ], [ %i.eu, %bb.bt ], [ %i.fr, %bb.cs ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder7command7CommandECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(776) %i.aa) #20
          to label %.body unwind label %bb.db

bb.db:                                            ; preds = %bb.dd, %.thread126, %bb.dc, %.body84.thread
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.dc:                                            ; preds = %bb.aw
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3arg3ArgECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(624) %i.ad) #20
          to label %.thread126 unwind label %bb.db

.thread126:                                       ; preds = %bb.bl, %bb.bc, %bb.dc, %bb.an, %bb.ac, %bb.r, %bb.o, %.thread139
  %.pn125 = phi { ptr, i32 } [ %i.ct, %bb.an ], [ %lpad.thr_comm, %.thread139 ], [ %.pn.i51, %bb.ac ], [ %i.bt, %bb.o ], [ %.pn.i, %bb.r ], [ %i.gd, %bb.dc ], [ %i.ed, %bb.bl ], [ %.pn.i.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder7command7CommandECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(776) %i.aj) #20
          to label %.body unwind label %bb.db

bb.dd:                                            ; preds = %bb.a, %bb.b
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder7command7CommandECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(776) %i.an) #20
          to label %.body unwind label %bb.db
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscI6d9CVNmLh_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !684 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 !guid !687 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !688, !noundef !6 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !688, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !688, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !688
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 !guid !694 {
bb.a:
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !695
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !696, !noundef !6 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !696, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !696
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !696
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !697 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !707 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !15, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !18, !alias.scope !708, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !708, !nonnull !6, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !708, !noundef !6 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !708 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !710, !noalias !711, !noundef !6
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !712, !noundef !6 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !712, !noundef !6
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !712, !noundef !6
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !712, !noundef !6
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !709
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !6
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.l:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !710, !noalias !713, !noundef !6
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !714, !noundef !6 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i: ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !714, !noundef !6
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = icmp samesign ugt i8 %i.cj, -33
  br i1 %i.cs, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ct = zext nneg i8 %i.cj to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cu = load i8, ptr %i.bq, align 1, !noalias !714, !noundef !6
  %i.cv = shl nuw nsw i32 %i.cq, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cm, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.cj, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.dc = load i8, ptr %i.bt, align 1, !noalias !714, !noundef !6
  %i.dd = shl nuw nsw i32 %i.cm, 18
  %i.de = and i32 %i.dd, 1835008
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.dc, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.de
  br label %.loopexit.loopexit

.loopexit74:                                      ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa70 = phi i8 [ %.promoted26, %.split.i.i.peel ], [ %.promoted26, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa67 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dk = xor i8 %.lcssa70, 1
  store i8 %i.dk, ptr %i.g, align 8, !alias.scope !708
  tail call void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa67, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #17, !noalias !713
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.da, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit14.i.i ], [ %i.dj, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit16.i.i ], [ %i.cr, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsyoCoCcM3Qh_5xtask.exit12.i.i ], [ %i.ct, %bb.p ]
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  br label %.loopexit

.loopexit75:                                      ; preds = %bb.d
  %i.dm = xor i8 %.promoted26, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !708
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit75
  store i8 1, ptr %i.d, align 2, !alias.scope !708
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa69 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !708
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !708
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit75
  %i.dn = phi i64 [ %.lcssa69, %.loopexit ], [ %i.k, %.loopexit75 ], [ %i.k, %.critedge ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %i.dp, align 8
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7: ; preds = %.preheader, %bb.q, %bb.r
  %storemerge = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.u, %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7
  ret void

bb.t:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext true)
  br label %bb.s

bb.u:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext false)
  br label %bb.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !719 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noalias !720, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsyoCoCcM3Qh_5xtask.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsyoCoCcM3Qh_5xtask(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsyoCoCcM3Qh_5xtask.exit

_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsyoCoCcM3Qh_5xtask.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtNtCs9ZYirdRbabK_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_3str3StrE15into_resettableCsyoCoCcM3Qh_5xtask(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockNtNtCs40k4W9msRzi_5alloc6string6StringE10initializeNCINvB2_11get_or_initNCNvXs7_NtCsyoCoCcM3Qh_5xtask13semver_checksNtB2b_10SemverArgsNtNtCs9ZYirdRbabK_12clap_builder6derive4Args12augment_args0E0zEB2d_(ptr noundef nonnull align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtCs9ZYirdRbabK_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsyoCoCcM3Qh_5xtask(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs9ZYirdRbabK_12clap_builder7builder10resettableINtNtCscI6d9CVNmLh_4core6option6OptionReEINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettable(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance), i64) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsyoCoCcM3Qh_5xtask(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsyoCoCcM3Qh_5xtask(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECsyoCoCcM3Qh_5xtask(ptr dead_on_unwind noalias noundef writable sret([624 x i8]) align 8 captures(none) dereferenceable(624), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(624), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsi_NtNtCs9ZYirdRbabK_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_6os_str5OsStrE15into_resettableCsyoCoCcM3Qh_5xtask(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2k_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3K_3Arg14default_valuesBU_ABU_B3y_E0EE9from_iterCsyoCoCcM3Qh_5xtask(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB15_6marker4SyncNtB2V_4SendEL_EENtNtB13_4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsdfAJ7lwe7WW_14cargo_metadata4NodeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsdfAJ7lwe7WW_14cargo_metadata9PackageIdENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9ZYirdRbabK_12clap_builder7mkeymap3KeyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value10AnyValueIdENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder7builder3arg3ArgENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder7builder7command7CommandENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder7builder9arg_group8ArgGroupENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecReENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCscI6d9CVNmLh_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCs9ZYirdRbabK_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrbEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTcbEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB1c_6marker4SyncNtB32_4SendEL_EENtNtB1a_4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsdfAJ7lwe7WW_14cargo_metadata4NodeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsdfAJ7lwe7WW_14cargo_metadata9PackageIdENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs9ZYirdRbabK_12clap_builder7mkeymap3KeyENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value10AnyValueIdENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder7builder3arg3ArgENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder7builder7command7CommandENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder7builder9arg_group8ArgGroupENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecReENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_3vec3VecNtNtB1A_6os_str5OsStrEEEENtNtNtB2l_3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9ZYirdRbabK_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrbEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTReRSBP_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!504 = distinct !{!504, !503, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg10value_nameReECsyoCoCcM3Qh_5xtask: argument 0"}
!505 = distinct !{!505, !503, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg10value_nameReECsyoCoCcM3Qh_5xtask: argument 1"}
!506 = distinct !{!506, !503, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg10value_nameReECsyoCoCcM3Qh_5xtask: argument 2"}
!507 = distinct !{!507, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask"}
!508 = distinct !{!508, !507, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask: argument 0"}
!509 = distinct !{!509, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask"}
!510 = distinct !{!510, !509, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask: argument 0"}
!511 = distinct !{!511, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask"}
!512 = distinct !{!512, !511, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask: argument 0"}
!513 = distinct !{!513, i1 true, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg6actionNtNtB7_6action9ArgActionECsyoCoCcM3Qh_5xtask"}
!514 = distinct !{!514, !513, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg6actionNtNtB7_6action9ArgActionECsyoCoCcM3Qh_5xtask: argument 0"}
!515 = distinct !{!515, !513, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg6actionNtNtB7_6action9ArgActionECsyoCoCcM3Qh_5xtask: argument 1"}
!516 = distinct !{!516, i1 true, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask"}
!517 = distinct !{!517, !516, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask: argument 0"}
!518 = distinct !{!518, !516, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask: argument 1"}
!519 = distinct !{!519, !516, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask: argument 2"}
!520 = distinct !{!520, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask"}
!521 = distinct !{!521, !520, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask: argument 0"}
!522 = distinct !{!522, i1 true, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg9long_helpINtNtCscI6d9CVNmLh_4core6option6OptionReEECsyoCoCcM3Qh_5xtask"}
!523 = distinct !{!523, !522, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg9long_helpINtNtCscI6d9CVNmLh_4core6option6OptionReEECsyoCoCcM3Qh_5xtask: argument 0"}
!524 = distinct !{!524, !522, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg9long_helpINtNtCscI6d9CVNmLh_4core6option6OptionReEECsyoCoCcM3Qh_5xtask: argument 1"}
!525 = distinct !{!525, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask"}
!526 = distinct !{!526, !525, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask: argument 0"}
!527 = distinct !{!527, i1 true, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask"}
!528 = distinct !{!528, !527, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask: argument 0"}
!529 = distinct !{!529, !527, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask: argument 1"}
!530 = distinct !{!530, !527, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask: argument 2"}
!531 = distinct !{!531, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrEECsyoCoCcM3Qh_5xtask"}
!532 = distinct !{!532, !531, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrEECsyoCoCcM3Qh_5xtask: argument 0"}
!533 = distinct !{!533, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask"}
!534 = distinct !{!534, !533, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask: argument 0"}
!535 = distinct !{!535, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask"}
!536 = distinct !{!536, !535, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask: argument 0"}
!537 = distinct !{!537, i1 true, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg13default_valueReECsyoCoCcM3Qh_5xtask"}
!538 = distinct !{!538, !537, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg13default_valueReECsyoCoCcM3Qh_5xtask: argument 0"}
!539 = distinct !{!539, !537, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg13default_valueReECsyoCoCcM3Qh_5xtask: argument 1"}
!540 = distinct !{!540, !537, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg13default_valueReECsyoCoCcM3Qh_5xtask: argument 2"}
!541 = distinct !{!541, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrECsyoCoCcM3Qh_5xtask"}
!542 = distinct !{!542, !541, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrECsyoCoCcM3Qh_5xtask: argument 0"}
!543 = distinct !{!543, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrECsyoCoCcM3Qh_5xtask"}
!544 = distinct !{!544, !543, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrECsyoCoCcM3Qh_5xtask: argument 0"}
!545 = distinct !{!545, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5inner5InnerECsyoCoCcM3Qh_5xtask"}
!546 = distinct !{!546, !545, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5inner5InnerECsyoCoCcM3Qh_5xtask: argument 0"}
!547 = distinct !{!547, i1 true, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg14default_valuesNtNtB7_6os_str5OsStrAB1c_j1_ECsyoCoCcM3Qh_5xtask"}
!548 = distinct !{!548, !547, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg14default_valuesNtNtB7_6os_str5OsStrAB1c_j1_ECsyoCoCcM3Qh_5xtask: argument 2"}
!549 = distinct !{!549, !547, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg14default_valuesNtNtB7_6os_str5OsStrAB1c_j1_ECsyoCoCcM3Qh_5xtask: argument 1"}
!550 = distinct !{!550, !547, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg14default_valuesNtNtB7_6os_str5OsStrAB1c_j1_ECsyoCoCcM3Qh_5xtask: argument 0"}
!551 = distinct !{!551, i1 true, !"_RINvYINtNtNtCscI6d9CVNmLh_4core5array4iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBN_NCINvMs_NtBR_3argNtB2F_3Arg14default_valuesBN_ABN_B1H_E0ECsyoCoCcM3Qh_5xtask"}
!552 = distinct !{!552, !551, !"_RINvYINtNtNtCscI6d9CVNmLh_4core5array4iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBN_NCINvMs_NtBR_3argNtB2F_3Arg14default_valuesBN_ABN_B1H_E0ECsyoCoCcM3Qh_5xtask: argument 1"}
!553 = distinct !{!553, !551, !"_RINvYINtNtNtCscI6d9CVNmLh_4core5array4iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBN_NCINvMs_NtBR_3argNtB2F_3Arg14default_valuesBN_ABN_B1H_E0ECsyoCoCcM3Qh_5xtask: argument 0"}
!554 = distinct !{!554, i1 true, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg10value_nameReECsyoCoCcM3Qh_5xtask"}
!555 = distinct !{!555, !554, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg10value_nameReECsyoCoCcM3Qh_5xtask: argument 0"}
!556 = distinct !{!556, !554, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg10value_nameReECsyoCoCcM3Qh_5xtask: argument 1"}
!557 = distinct !{!557, !554, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg10value_nameReECsyoCoCcM3Qh_5xtask: argument 2"}
!558 = distinct !{!558, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask"}
!559 = distinct !{!559, !558, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask: argument 0"}
!560 = distinct !{!560, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask"}
!561 = distinct !{!561, !560, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask: argument 0"}
!562 = distinct !{!562, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask"}
!563 = distinct !{!563, !562, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask: argument 0"}
!564 = distinct !{!564, i1 true, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg6actionNtNtB7_6action9ArgActionECsyoCoCcM3Qh_5xtask"}
!565 = distinct !{!565, !564, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg6actionNtNtB7_6action9ArgActionECsyoCoCcM3Qh_5xtask: argument 0"}
!566 = distinct !{!566, !564, !"_RINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB5_3Arg6actionNtNtB7_6action9ArgActionECsyoCoCcM3Qh_5xtask: argument 1"}
!567 = distinct !{!567, i1 true, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask"}
!568 = distinct !{!568, !567, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask: argument 0"}
!569 = distinct !{!569, !567, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask: argument 1"}
!570 = distinct !{!570, !567, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg4helpReECsyoCoCcM3Qh_5xtask: argument 2"}
!571 = distinct !{!571, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask"}
!572 = distinct !{!572, !571, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask: argument 0"}
!573 = distinct !{!573, i1 true, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg9long_helpINtNtCscI6d9CVNmLh_4core6option6OptionReEECsyoCoCcM3Qh_5xtask"}
!574 = distinct !{!574, !573, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg9long_helpINtNtCscI6d9CVNmLh_4core6option6OptionReEECsyoCoCcM3Qh_5xtask: argument 0"}
!575 = distinct !{!575, !573, !"_RINvMs0_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB6_3Arg9long_helpINtNtCscI6d9CVNmLh_4core6option6OptionReEECsyoCoCcM3Qh_5xtask: argument 1"}
!576 = distinct !{!576, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask"}
!577 = distinct !{!577, !576, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder10styled_str9StyledStrEECsyoCoCcM3Qh_5xtask: argument 0"}
!578 = distinct !{!578, i1 true, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask"}
!579 = distinct !{!579, !578, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask: argument 0"}
!580 = distinct !{!580, !578, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask: argument 1"}
!581 = distinct !{!581, !578, !"_RINvMNtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB3_3Arg4longReECsyoCoCcM3Qh_5xtask: argument 2"}
!582 = distinct !{!582, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrEECsyoCoCcM3Qh_5xtask"}
!583 = distinct !{!583, !582, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrEECsyoCoCcM3Qh_5xtask: argument 0"}
!584 = distinct !{!584, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask"}
!585 = distinct !{!585, !584, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECsyoCoCcM3Qh_5xtask: argument 0"}
!586 = distinct !{!586, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask"}
!587 = distinct !{!587, !586, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECsyoCoCcM3Qh_5xtask: argument 0"}
!588 = !{i64 2606785759073220772}
!589 = !{!491}
!590 = !{!493, !491, !492}
!591 = !{!499, !498, !496, !495}
!592 = !{!493, !491}
!593 = !{!501, !491}
!594 = !{!493, !492}
!595 = !{!502, !493, !492}
!596 = !{!493}
!597 = !{!504}
!598 = !{!505}
!599 = !{!504, !505, !506}
!600 = !{!504, !505}
!601 = !{!508}
!602 = !{!510}
!603 = !{!512}
!604 = !{!512, !510, !508}
!605 = !{!512, !510, !508, !504, !505}
!606 = !{!504, !506}
!607 = !{!514}
!608 = !{!515}
!609 = !{!514, !515}
!610 = !{!517}
!611 = !{!518}
!612 = !{!517, !518, !519}
!613 = !{!517, !518}
!614 = !{!521, !518}
!615 = !{!517, !519}
!616 = !{!523}
!617 = !{!524}
!618 = !{!523, !524}
!619 = !{!526, !524}
!620 = !{!528}
!621 = !{!529}
!622 = !{!528, !529, !530}
!623 = !{!528, !529}
!624 = !{!532}
!625 = !{!532, !529}
!626 = !{!534}
!627 = !{!536}
!628 = !{!536, !534, !532, !529}
!629 = !{!536, !534, !532, !528, !529}
!630 = !{!528, !530}
!631 = !{!538}
!632 = !{!539}
!633 = !{!538, !539, !540}
!634 = !{!538, !539}
!635 = !{!542}
!636 = !{!544}
!637 = !{!546}
!638 = !{!546, !544, !542}
!639 = !{!546, !544, !542, !538, !539}
!640 = !{!550, !549, !548, !538, !539, !540}
!641 = !{!538, !540}
!642 = !{!550}
!643 = !{!549}
!644 = !{!553, !552}
!645 = !{!550, !549, !548, !538, !539}
!646 = !{!550, !548, !538, !539}
!647 = !{!550, !548, !538, !539, !540}
!648 = !{!550, !549}
!649 = !{!539, !540}
!650 = !{!555}
!651 = !{!556}
!652 = !{!555, !556, !557}
!653 = !{!555, !556}
!654 = !{!559}
!655 = !{!561}
!656 = !{!563}
!657 = !{!563, !561, !559}
!658 = !{!563, !561, !559, !555, !556}
!659 = !{!555, !557}
!660 = !{!565}
!661 = !{!566}
!662 = !{!565, !566}
!663 = !{!568}
!664 = !{!569}
!665 = !{!568, !569, !570}
!666 = !{!568, !569}
!667 = !{!572, !569}
!668 = !{!568, !570}
!669 = !{!574}
!670 = !{!575}
!671 = !{!574, !575}
!672 = !{!577, !575}
!673 = !{!579}
!674 = !{!580}
!675 = !{!579, !580, !581}
!676 = !{!579, !580}
!677 = !{!583}
!678 = !{!583, !580}
!679 = !{!585}
!680 = !{!587}
!681 = !{!587, !585, !583, !580}
!682 = !{!587, !585, !583, !579, !580}
!683 = !{!579, !581}
!684 = !{i64 -1581346378648024820}
!685 = distinct !{!685, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push"}
!686 = distinct !{!686, !685, !"_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push: argument 0"}
!687 = !{i64 4343664076136249608}
!688 = !{!686}
!689 = distinct !{!689, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str"}
!690 = distinct !{!690, !689, !"_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str: argument 1"}
!691 = distinct !{!691, !689, !"_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str: argument 0"}
!692 = distinct !{!692, i1 true, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsyoCoCcM3Qh_5xtask"}
!693 = distinct !{!693, !692, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsyoCoCcM3Qh_5xtask: argument 0"}
!694 = !{i64 -1909336490998503092}
!695 = !{!690}
!696 = !{!693, !691}
!697 = !{i64 3410790950493885711}
!698 = distinct !{!698, i1 true, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!699 = distinct !{!699, !698, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!700 = distinct !{!700, i1 true, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!701 = distinct !{!701, !700, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!702 = distinct !{!702, i1 true, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!703 = distinct !{!703, !702, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!704 = distinct !{!704, !698, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!705 = distinct !{!705, i1 true, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsyoCoCcM3Qh_5xtask"}
!706 = distinct !{!706, !705, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsyoCoCcM3Qh_5xtask: argument 0"}
!707 = !{i64 -3934016233319909314}
!708 = !{!699}
!709 = !{!701}
!710 = !{!703}
!711 = !{!704, !701}
!712 = !{!706, !704, !701}
!713 = !{!704, !699}
!714 = !{!706, !704, !699}
!715 = distinct !{!715, i1 true, !"_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsyoCoCcM3Qh_5xtask"}
!716 = distinct !{!716, !715, !"_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsyoCoCcM3Qh_5xtask: argument 0"}
!717 = distinct !{!717, i1 true, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsyoCoCcM3Qh_5xtask"}
!718 = distinct !{!718, !717, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsyoCoCcM3Qh_5xtask: argument 0"}
!719 = !{i64 8736366381347736513}
!720 = !{!718, !716}
end_hunk_1
