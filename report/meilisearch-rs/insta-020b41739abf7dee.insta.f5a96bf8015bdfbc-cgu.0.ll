Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17he600dd2395617165E":bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cs
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !4900, !noundef !17
  %i.dc = icmp sgt i8 %i.db, -65
  br i1 %i.dc, label %bb.ah, label %.invoke

bb.u:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4901
  br label %.invoke66

_ZN4pest8position8Position10match_char17hb1ccd515f1e5069cE.exit29: ; preds = %.split.i.i22, %bb.l, %bb.i
  %.sroa.02.0.i25 = phi i1 [ %i.cp, %bb.l ], [ false, %bb.i ], [ false, %.split.i.i22 ]
  %i.dd = icmp ugt i64 %i.i, %i.g
  br i1 %i.dd, label %bb.ac, label %bb.v, !prof !22

bb.v:                                             ; preds = %_ZN4pest8position8Position10match_char17hb1ccd515f1e5069cE.exit29
  %i.de = invoke noundef i64 @_ZN4pest8position8Position15find_line_start17h6037e4987dac65c8E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %.noexc41 unwind label %bb.an  ; 12 uses

.noexc41:                                         ; preds = %bb.v
  %i.df = invoke noundef i64 @_ZN4pest8position8Position13find_line_end17h5fc20b6611c71db6E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %.noexc42 unwind label %bb.an  ; 11 uses

.noexc42:                                         ; preds = %.noexc41
  %.not.i.i36 = icmp ugt i64 %i.de, %i.df
  br i1 %.not.i.i36, label %.invoke, label %bb.w

bb.w:                                             ; preds = %.noexc42
  %i.dg = icmp eq i64 %i.de, 0
  br i1 %i.dg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not5.i.i37 = icmp ult i64 %i.de, %i.g
  br i1 %.not5.i.i37, label %bb.z, label %.split.i.i38

bb.y:                                             ; preds = %bb.z, %.split.i.i38, %bb.w
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %bb.ad, label %bb.aa

.split.i.i38:                                     ; preds = %bb.x
  %i.di = icmp eq i64 %i.de, %i.g
  br i1 %i.di, label %bb.y, label %.invoke

bb.z:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.de
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !4902, !noundef !17
  %i.dl = icmp sgt i8 %i.dk, -65
  br i1 %i.dl, label %bb.y, label %.invoke

bb.aa:                                            ; preds = %bb.y
  %.not6.i.i39 = icmp ult i64 %i.df, %i.g
  br i1 %.not6.i.i39, label %bb.ab, label %.split7.i.i40

.split7.i.i40:                                    ; preds = %bb.aa
  %i.dm = icmp eq i64 %i.df, %i.g
  br i1 %i.dm, label %bb.ad, label %.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.df
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !4902, !noundef !17
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %bb.ad, label %.invoke

bb.ac:                                            ; preds = %_ZN4pest8position8Position10match_char17hb1ccd515f1e5069cE.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4903
  br label %.invoke66

.invoke66:                                        ; preds = %bb.u, %bb.ac
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.u ], [ %.sink.sroa.gep72, %bb.ac ]
  %.sink.sroa.phi73 = phi ptr [ %.sink.sroa.gep74, %bb.u ], [ %.sink.sroa.gep75, %bb.ac ]
  %.sink.sroa.phi76 = phi ptr [ %.sink.sroa.gep77, %bb.u ], [ %.sink.sroa.gep78, %bb.ac ]
  %.sink.sroa.phi79 = phi ptr [ %.sink.sroa.gep80, %bb.u ], [ %.sink.sroa.gep81, %bb.ac ]
  %.sink = phi ptr [ %i.b, %bb.u ], [ %i.a, %bb.ac ] ; 2 uses
  store ptr @149, ptr %.sink, align 8, !noalias !17
  store i64 1, ptr %.sink.sroa.phi, align 8, !noalias !17
  store ptr null, ptr %.sink.sroa.phi73, align 8, !noalias !17
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.sroa.phi76, align 8, !noalias !17
  store i64 0, ptr %.sink.sroa.phi79, align 8, !noalias !17
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #54
          to label %.cont67 unwind label %bb.an

.cont67:                                          ; preds = %.invoke66
  unreachable

.invoke:                                          ; preds = %.noexc42, %.split.i.i38, %bb.z, %.split7.i.i40, %bb.ab, %.noexc33, %.split.i.i31, %bb.r, %.split7.i.i, %bb.t, %.split.i.i22, %bb.h, %.split.i.i, %bb.c
  %i.dq = phi i64 [ %i.cr, %.noexc33 ], [ %i.i, %.split.i.i22 ], [ %i.i, %.split.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.h ], [ %i.cr, %bb.t ], [ %i.cr, %.split7.i.i ], [ %i.cr, %bb.r ], [ %i.cr, %.split.i.i31 ], [ %i.de, %bb.ab ], [ %i.de, %.split7.i.i40 ], [ %i.de, %bb.z ], [ %i.de, %.split.i.i38 ], [ %i.de, %.noexc42 ]
  %i.dr = phi i64 [ %i.cs, %.noexc33 ], [ %i.g, %.split.i.i22 ], [ %i.g, %.split.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.h ], [ %i.cs, %bb.t ], [ %i.cs, %.split7.i.i ], [ %i.cs, %bb.r ], [ %i.cs, %.split.i.i31 ], [ %i.df, %bb.ab ], [ %i.df, %.split7.i.i40 ], [ %i.df, %bb.z ], [ %i.df, %.split.i.i38 ], [ %i.df, %.noexc42 ]
  %i.ds = phi ptr [ @147, %.noexc33 ], [ @144, %.split.i.i22 ], [ @144, %.split.i.i ], [ @144, %bb.c ], [ @144, %bb.h ], [ @147, %bb.t ], [ @147, %.split7.i.i ], [ @147, %bb.r ], [ @147, %.split.i.i31 ], [ @147, %bb.ab ], [ @147, %.split7.i.i40 ], [ @147, %bb.z ], [ @147, %.split.i.i38 ], [ @147, %.noexc42 ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef %i.dq, i64 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds) #54
          to label %.cont unwind label %bb.an

.cont:                                            ; preds = %.invoke
  unreachable

bb.ad:                                            ; preds = %bb.ab, %.split7.i.i40, %bb.y
  %i.dt = sub nuw i64 %i.df, %i.de                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.de ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %.sroa.02.0.i25, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h25ea1702966dfb4dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.du, i64 noundef %i.dt, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) @140, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.ag unwind label %bb.an

bb.af:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.4.0 = phi i64 [ %i.dw, %bb.ah ], [ %i.dt, %bb.ad ]
  %.sroa.01.0 = phi ptr [ %i.dx, %bb.ah ], [ %i.du, %bb.ad ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0) ]
  invoke void @_ZN4pest5error20visualize_whitespace17hfdeba8708c55261eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.4.0)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dv = invoke fastcc { i64, i64 } @_ZN4pest8position8Position8line_col17h60e72f4e2f758a43E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.ai unwind label %bb.al     ; 2 uses

bb.ah:                                            ; preds = %bb.t, %.split7.i.i, %bb.q
  %i.dw = sub nuw i64 %i.cs, %i.cr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.af

.body:                                            ; preds = %bb.aj
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$pest..error..ErrorInner$LT$insta..redaction..Rule$GT$$GT$17h51be5a1fbaef357cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.c) #55
  call void @"_ZN4core3ptr76drop_in_place$LT$pest..error..ErrorVariant$LT$insta..redaction..Rule$GT$$GT$17h51310e331a6b391bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #55
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 -9223372036854775808, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 -9223372036854775808, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 -9223372036854775808, ptr %i.eb, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !4904
  %i.ec = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !4904 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.aj, label %bb.ak, !prof !18

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 160) #54
          to label %.noexc46 unwind label %.body

.noexc46:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ec, ptr noundef nonnull align 8 dereferenceable(160) %i.c, i64 160, i1 false)
  %i.ee = extractvalue { i64, i64 } %i.dv, 1
  %i.ef = extractvalue { i64, i64 } %i.dv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.47.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.eh, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ef, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ee, ptr %.sroa.510.0..sroa_idx, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ec, ptr %i.ei, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.al:                                            ; preds = %bb.ag
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @"_ZN4core3ptr76drop_in_place$LT$pest..error..ErrorVariant$LT$insta..redaction..Rule$GT$$GT$17h51310e331a6b391bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !4905)
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !4905 ; 2 uses
  %i.ek = icmp eq i64 %.val.i, 0
  br i1 %i.ek, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i = load ptr, ptr %i.el, align 8, !alias.scope !4905, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !4905
  br label %.thread

.thread:                                          ; preds = %.body, %bb.an, %bb.am, %bb.al
  %.pn49 = phi { ptr, i32 } [ %i.em, %bb.an ], [ %i.dy, %.body ], [ %i.ej, %bb.al ], [ %i.ej, %bb.am ]
  resume { ptr, i32 } %.pn49

bb.an:                                            ; preds = %bb.ae, %.invoke66, %.invoke, %.noexc41, %bb.v, %.noexc32, %bb.n, %bb.af
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr76drop_in_place$LT$pest..error..ErrorVariant$LT$insta..redaction..Rule$GT$$GT$17h51310e331a6b391bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #55
  br label %.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4pest8position8Position8line_col17h60e72f4e2f758a43E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !17 ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !17, !align !31, !noundef !17 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !17 ; 3 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  br i1 %i.g, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %i.c, 0                      ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.f
  %or.cond = and i1 %i.h, %.not.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c ; 2 uses
  br i1 %or.cond, label %bb.c, label %.split.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !4919, !noundef !17
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %.split.i.thread, label %bb.e

.split.i.thread:                                  ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @149, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.p, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #54
  unreachable

.split.i:                                         ; preds = %bb.b
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.split.i.thread, %.split.i
  %i.q = phi ptr [ %i.l, %.split.i.thread ], [ %i.i, %.split.i ] ; 9 uses
  br label %.lr.ph

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f, i64 noundef 0, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #54
  unreachable

._crit_edge:                                      ; preds = %bb.p, %bb.q, %.split.i
  %.sroa.12.0.lcssa = phi i64 [ 1, %.split.i ], [ 1, %bb.p ], [ %.sroa.12.2, %bb.q ]
  %.sroa.08.0.lcssa = phi i64 [ 1, %.split.i ], [ %i.cu, %bb.p ], [ %.sroa.08.2, %bb.q ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.08.0.lcssa, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.12.0.lcssa, 1
  ret { i64, i64 } %i.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.sroa.0.070 = phi i64 [ %.sroa.0.3, %bb.q ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %.sroa.08.069 = phi i64 [ %.sroa.08.2, %bb.q ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.sroa.12.068 = phi i64 [ %.sroa.12.2, %bb.q ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.04967 = phi ptr [ %.sroa.0.351, %bb.q ], [ %i.d, %.lr.ph.preheader ] ; 8 uses
  %.sroa.22.066 = phi i32 [ %.sroa.22.1, %bb.q ], [ 1114113, %.lr.ph.preheader ] ; 2 uses
  switch i32 %.sroa.22.066, label %bb.j [
    i32 1114113, label %bb.f
    i32 1114112, label %_ZN4core3str11validations15next_code_point17h1b992dbf167b7a47E.exit
  ], !prof !4920

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.04967) ]
  %i.t = icmp eq ptr %.sroa.0.04967, %i.q
  br i1 %i.t, label %_ZN4core3str11validations15next_code_point17h1b992dbf167b7a47E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.04967, i64 1 ; 3 uses
  %i.v = load i8, ptr %.sroa.0.04967, align 1, !noalias !4921, !noundef !17 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i": ; preds = %bb.g
  %i.x = and i8 %i.v, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = icmp ne ptr %i.u, %i.q
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.04967, i64 2 ; 3 uses
  %i.ab = load i8, ptr %i.u, align 1, !noalias !4921, !noundef !17
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ag, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i", label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = zext nneg i8 %i.v to i32
  br label %bb.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i"
  %i.ai = icmp ne ptr %i.aa, %i.q
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.04967, i64 3 ; 3 uses
  %i.ak = load i8, ptr %i.aa, align 1, !noalias !4921, !noundef !17
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.v, -17
  br i1 %i.ar, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i", label %bb.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i"
  %i.as = icmp ne ptr %i.aj, %i.q
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.04967, i64 4
  %i.au = load i8, ptr %i.aj, align 1, !noalias !4921, !noundef !17
  %i.av = shl nuw nsw i32 %i.y, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i"
  %.sroa.0.4.ph = phi ptr [ %i.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i" ], [ %i.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i" ], [ %i.at, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i" ], [ %i.u, %bb.h ]
  %.sroa.4.0.i.ph = phi i32 [ %i.af, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i" ], [ %i.aq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i" ], [ %i.bb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i" ], [ %i.ah, %bb.h ] ; 2 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  br label %bb.j

_ZN4core3str11validations15next_code_point17h1b992dbf167b7a47E.exit: ; preds = %bb.f, %.lr.ph
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #54
  unreachable

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.150 = phi ptr [ %.sroa.0.04967, %.lr.ph ], [ %.sroa.0.4.ph, %bb.i ] ; 9 uses
  %.sroa.015.0 = phi i32 [ %.sroa.22.066, %.lr.ph ], [ %.sroa.4.0.i.ph, %bb.i ] ; 5 uses
  switch i32 %.sroa.015.0, label %bb.k [
    i32 13, label %bb.l
    i32 10, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp samesign ult i32 %.sroa.015.0, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ult i32 %.sroa.015.0, 128
  br i1 %i.be, label %bb.t, label %bb.r

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.150) ]
  %.not.i.i.i = icmp eq ptr %.sroa.0.150, %i.q
  br i1 %.not.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.150, i64 1 ; 3 uses
  %i.bg = load i8, ptr %.sroa.0.150, align 1, !noalias !4922, !noundef !17 ; 5 uses
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i": ; preds = %bb.m
  %i.bi = and i8 %i.bg, 31
  %i.bj = zext nneg i8 %i.bi to i32               ; 3 uses
  %i.bk = icmp ne ptr %i.bf, %i.q
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.150, i64 2 ; 3 uses
  %i.bm = load i8, ptr %i.bf, align 1, !noalias !4922, !noundef !17
  %i.bn = shl nuw nsw i32 %i.bj, 6
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i32               ; 2 uses
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = icmp samesign ugt i8 %i.bg, -33
  br i1 %i.br, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i", label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit"

bb.n:                                             ; preds = %bb.m
  %i.bs = zext nneg i8 %i.bg to i32
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i"
  %i.bt = icmp ne ptr %i.bl, %i.q
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.150, i64 3 ; 3 uses
  %i.bv = load i8, ptr %i.bl, align 1, !noalias !4922, !noundef !17
  %i.bw = shl nuw nsw i32 %i.bp, 6
  %i.bx = and i8 %i.bv, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bw, %i.by            ; 2 uses
  %i.ca = shl nuw nsw i32 %i.bj, 12
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = icmp samesign ugt i8 %i.bg, -17
  br i1 %i.cc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i", label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i"
  %i.cd = icmp ne ptr %i.bu, %i.q
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.150, i64 4
  %i.cf = load i8, ptr %i.bu, align 1, !noalias !4922, !noundef !17
  %i.cg = shl nuw nsw i32 %i.bj, 18
  %i.ch = and i32 %i.cg, 1835008
  %i.ci = shl nuw nsw i32 %i.bz, 6
  %i.cj = and i8 %i.cf, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = or disjoint i32 %i.cl, %i.ch
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i", %bb.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i"
  %.sroa.0.5 = phi ptr [ %i.bl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i" ], [ %i.bf, %bb.n ], [ %i.ce, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i" ], [ %i.bu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i" ] ; 2 uses
  %spec.select.i.i.i = phi i32 [ %i.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i" ], [ %i.bs, %bb.n ], [ %i.cm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i" ], [ %i.cb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i" ] ; 3 uses
  %i.cn = icmp ne i32 %spec.select.i.i.i, 1114113
  tail call void @llvm.assume(i1 %i.cn)
  %cond = icmp eq i32 %spec.select.i.i.i, 10
  br i1 %cond, label %bb.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread"

bb.o:                                             ; preds = %bb.j
  %i.co = add i64 %.sroa.0.070, -1
  %i.cp = add i64 %.sroa.08.069, 1
  br label %bb.q

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread": ; preds = %bb.l, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit"
  %spec.select.i.i.i63 = phi i32 [ %spec.select.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit" ], [ 1114112, %bb.l ]
  %.sroa.0.562 = phi ptr [ %.sroa.0.5, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit" ], [ %i.q, %bb.l ]
  %i.cq = add i64 %.sroa.0.070, -1
  %i.cr = add i64 %.sroa.12.068, 1
  br label %bb.q

bb.p:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit"
  %i.cs = icmp eq i64 %.sroa.0.070, 1
  %i.ct = add i64 %.sroa.0.070, -2
  %i.cu = add i64 %.sroa.08.069, 1                ; 2 uses
  br i1 %i.cs, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread", %bb.t, %bb.o
  %.sroa.22.1 = phi i32 [ 1114113, %bb.t ], [ 1114113, %bb.p ], [ %spec.select.i.i.i63, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread" ], [ 1114113, %bb.o ]
  %.sroa.0.351 = phi ptr [ %.sroa.0.150, %bb.t ], [ %.sroa.0.5, %bb.p ], [ %.sroa.0.562, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread" ], [ %.sroa.0.150, %bb.o ]
  %.sroa.12.2 = phi i64 [ %i.cz, %bb.t ], [ 1, %bb.p ], [ %i.cr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread" ], [ 1, %bb.o ] ; 2 uses
  %.sroa.08.2 = phi i64 [ %.sroa.08.069, %bb.t ], [ %i.cu, %bb.p ], [ %.sroa.08.069, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread" ], [ %i.cp, %bb.o ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %i.cy, %bb.t ], [ %i.ct, %bb.p ], [ %i.cq, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hab76bc7ece9a3d8dE.exit.thread" ], [ %i.co, %bb.o ] ; 2 uses
  %i.cv = icmp eq i64 %.sroa.0.3, 0
  br i1 %i.cv, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9skip_line17h9ad926516d942e8eE":bb.a
  store i64 %i.ae, ptr %i.u, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !17
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.ai, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.k, %bb.l, %bb.i
  ret void

.thread:                                          ; preds = %bb.b, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15265)
  %i.aj = add i64 %i.e, 1                         ; 2 uses
  %.not.i32 = icmp ult i64 %i.aj, %i.f
  %i.ak = select i1 %.not.i32, i64 0, i64 %i.f
  %.sroa.01.0.i33 = sub nuw i64 %i.aj, %i.ak
  store i64 %.sroa.01.0.i33, ptr %i.d, align 8, !alias.scope !15265
  %i.al = add i64 %i.b, -1                        ; 2 uses
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !15265
  %i.am = icmp ult i64 %i.al, %i.f
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e
  %i.ao = load i32, ptr %i.an, align 4, !range !56, !noalias !15265, !noundef !17
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !17
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = icmp eq i32 %i.ao, 10
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !17
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.aw, align 8
  br label %bb.j

bb.l:                                             ; preds = %.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !17
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %3, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !15273
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 17) 1) #51, !noalias !15273 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !15274
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !15275
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %3, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta7content4yaml9parse_str17ha9b17ffb6bc0bd09E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 8               ; 7 uses
  %.sroa.512 = alloca [71 x i8], align 1          ; 5 uses
  %.sroa.58 = alloca [71 x i8], align 1           ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.55 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_ZN5insta7content4yaml8vendored4yaml10YamlLoader13load_from_str17h79de1e42ca6e037bE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.g = load i64, ptr %i.e, align 8, !range !30, !noundef !17 ; 5 uses
  %.not = icmp eq i64 %i.g, -9223372036854775808
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.550.0.copyload = load ptr, ptr %i.h, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15290
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.e unwind label %bb.c, !noalias !15290

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.550.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.550.0.copyload, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15291
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15290
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN5insta7content4yaml9parse_str28_$u7b$$u7b$closure$u7d$$u7d$17h1644e050989d0aecE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.550.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.550.0.copyload, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15292
  br label %"_ZN5insta7content4yaml9parse_str28_$u7b$$u7b$closure$u7d$$u7d$17h1644e050989d0aecE.exit"

common.resume:                                    ; preds = %bb.s, %.body.i, %bb.af, %bb.ae, %bb.ah, %.body.thread, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.bj, %bb.ae ], [ %i.bj, %bb.af ], [ %.pn, %bb.ah ], [ %.pn, %.body.thread ], [ %i.aj, %.body.i ], [ %i.aj, %bb.s ]
  resume { ptr, i32 } %common.resume.op

"_ZN5insta7content4yaml9parse_str28_$u7b$$u7b$closure$u7d$$u7d$17h1644e050989d0aecE.exit": ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i8 30, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h0b5ea30d53bbbe79E.exit"

bb.g:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !17 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i64 %i.n, -1                     ; 4 uses
  store i64 %i.p, ptr %i.m, align 8
  %i.q = load i64, ptr %i.f, align 8, !range !20, !noundef !17 ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.u = icmp ult i64 %i.n, 128102389400760777
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.p ; 2 uses
  %.sroa.017.0.copyload = load i8, ptr %i.v, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.58, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4.0..sroa_idx, i64 71, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  %i.w = icmp eq i64 %i.p, 0
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i64 %i.n, -2                     ; 4 uses
  store i64 %i.x, ptr %i.m, align 8
  %i.y = icmp samesign ult i64 %i.x, %i.q
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %.sroa.018.0.copyload = load i8, ptr %i.z, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.512, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.419.0..sroa_idx, i64 71, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i
  %.val5.i = phi i64 [ %i.x, %bb.i ], [ 0, %bb.h ], [ 0, %.thread ] ; 8 uses
  %.sroa.06.052 = phi i8 [ %.sroa.017.0.copyload, %bb.i ], [ %.sroa.017.0.copyload, %bb.h ], [ 8, %.thread ] ; 2 uses
  %.sroa.010.0 = phi i8 [ %.sroa.018.0.copyload, %bb.i ], [ 8, %bb.h ], [ 8, %.thread ] ; 4 uses
  store i8 %.sroa.06.052, ptr %i.d, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.58.0..sroa_idx9, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.58, i64 71, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 7 uses
  store i8 %.sroa.010.0, ptr %i.aa, align 8
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.512, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  %.not22 = icmp ne i8 %.sroa.06.052, 8           ; 3 uses
  %.not23 = icmp eq i8 %.sroa.010.0, 8
  %or.cond = select i1 %.not22, i1 %.not23, i1 false ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.w unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke fastcc void @_ZN5insta7content4yaml14from_yaml_blob17h0befec4f78996db1E(ptr noalias noundef align 16 captures(address) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.sroa.014.0 = xor i1 %or.cond, true
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #55
          to label %.body unwind label %bb.ag

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15293)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val4.i = load ptr, ptr %i.ac, align 8, !alias.scope !15293, !nonnull !17, !noundef !17 ; 4 uses
  %i.ad = icmp eq i64 %.val5.i, 0
  br i1 %i.ad, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i", label %.lr.ph74

bb.o:                                             ; preds = %.lr.ph74
  %i.ae = icmp eq i64 %i.ag, %.val5.i
  br i1 %i.ae, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i", label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i.i.i72 = phi i64 [ %i.ag, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.0.i.i.i72
  %i.ag = add i64 %.sroa.0.0.i.i.i72, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.af)
          to label %bb.o unwind label %bb.q, !noalias !15293, !inline_history !9

bb.p:                                             ; preds = %.lr.ph77
  %i.ah = add i64 %.sroa.0.1.i.i.i75, 1           ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %.val5.i
  br i1 %i.ai, label %.body.i, label %.lr.ph77

bb.q:                                             ; preds = %.lr.ph74
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = icmp eq i64 %i.ag, %.val5.i
  br i1 %i.ak, label %.body.i, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.q, %bb.p
  %.sroa.0.1.i.i.i75 = phi i64 [ %i.ah, %bb.p ], [ %i.ag, %bb.q ] ; 2 uses
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.1.i.i.i75
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.al) #55
          to label %bb.p unwind label %bb.r, !noalias !15293, !inline_history !9

bb.r:                                             ; preds = %.lr.ph77
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !15293, !inline_history !9
  unreachable

.body.i:                                          ; preds = %bb.p, %bb.q
  %.val2.i = load i64, ptr %i.f, align 8, !range !20, !alias.scope !15293, !noundef !17 ; 2 uses
  %i.an = icmp eq i64 %.val2.i, 0
  br i1 %i.an, label %common.resume, label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.ao = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !15293, !inline_history !64
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i": ; preds = %bb.o, %bb.n
  %.val.i = load i64, ptr %i.f, align 8, !range !20, !alias.scope !15293, !noundef !17 ; 2 uses
  %i.ap = icmp eq i64 %.val.i, 0
  br i1 %i.ap, label %.thread63, label %bb.t

bb.t:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i"
  %i.aq = mul nuw i64 %.val.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !15293, !inline_history !64
  br label %.thread63

.body:                                            ; preds = %.body.i35, %bb.ab, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.bb, %bb.ab ], [ %i.bb, %.body.i35 ] ; 2 uses
  %.sroa.014.1 = phi i1 [ %.sroa.014.0, %bb.m ], [ true, %bb.ab ], [ true, %.body.i35 ]
  %or.cond3 = and i1 %.not22, %.sroa.014.1
  br i1 %or.cond3, label %bb.ai, label %.body.thread

.thread63:                                        ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h0b5ea30d53bbbe79E.exit"

bb.u:                                             ; preds = %._crit_edge, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit42"
  %i.ar = phi i8 [ %.pre60, %._crit_edge ], [ %.sroa.010.0, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit42" ]
  %i.as = icmp eq i8 %i.ar, 8
  br i1 %i.as, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h0b5ea30d53bbbe79E.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h0b5ea30d53bbbe79E.exit"

bb.w:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 30, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !15294)
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val4.i31 = load ptr, ptr %i.au, align 8, !alias.scope !15294, !nonnull !17, !noundef !17 ; 4 uses
  %i.av = icmp eq i64 %.val5.i, 0
  br i1 %i.av, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i38", label %.lr.ph

bb.x:                                             ; preds = %.lr.ph
  %i.aw = icmp eq i64 %i.ay, %.val5.i
  br i1 %i.aw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i38", label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %.sroa.0.0.i.i.i3367 = phi i64 [ %i.ay, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %.val4.i31, i64 %.sroa.0.0.i.i.i3367
  %i.ay = add i64 %.sroa.0.0.i.i.i3367, 1         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.ax)
          to label %bb.x unwind label %bb.z, !noalias !15294, !inline_history !9

bb.y:                                             ; preds = %.lr.ph71
  %i.az = add i64 %.sroa.0.1.i.i.i3469, 1         ; 2 uses
  %i.ba = icmp eq i64 %i.az, %.val5.i
  br i1 %i.ba, label %.body.i35, label %.lr.ph71

bb.z:                                             ; preds = %.lr.ph
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %i.ay, %.val5.i
  br i1 %i.bc, label %.body.i35, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.z, %bb.y
  %.sroa.0.1.i.i.i3469 = phi i64 [ %i.az, %bb.y ], [ %i.ay, %bb.z ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %.val4.i31, i64 %.sroa.0.1.i.i.i3469
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.bd) #55
          to label %bb.y unwind label %bb.aa, !noalias !15294, !inline_history !9

bb.aa:                                            ; preds = %.lr.ph71
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !15294, !inline_history !9
  unreachable

.body.i35:                                        ; preds = %bb.y, %bb.z
  %.val2.i36 = load i64, ptr %i.f, align 8, !range !20, !alias.scope !15294, !noundef !17 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i36, 0
  br i1 %i.bf, label %.body, label %bb.ab

bb.ab:                                            ; preds = %.body.i35
  %i.bg = mul nuw i64 %.val2.i36, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i31, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !15294, !inline_history !64
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i38": ; preds = %bb.x, %bb.w
  %.val.i39 = load i64, ptr %i.f, align 8, !range !20, !alias.scope !15294, !noundef !17 ; 2 uses
  %i.bh = icmp eq i64 %.val.i39, 0
  br i1 %i.bh, label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit42", label %bb.ac

bb.ac:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i38"
  %i.bi = mul nuw i64 %.val.i39, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i31, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !15294, !inline_history !64
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit42"

"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit42": ; preds = %bb.ac, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i38"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not22, label %bb.ad, label %bb.u

bb.ad:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit42"
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.d)
          to label %._crit_edge unwind label %bb.ae

._crit_edge:                                      ; preds = %bb.ad
  %.pre60 = load i8, ptr %i.aa, align 8, !range !57
  br label %bb.u

bb.ae:                                            ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load i8, ptr %i.aa, align 8, !range !57, !noundef !17
  %i.bl = icmp eq i8 %i.bk, 8
  br i1 %i.bl, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af, %bb.ai, %bb.m
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h0b5ea30d53bbbe79E.exit": ; preds = %bb.v, %bb.u, %.thread63, %"_ZN5insta7content4yaml9parse_str28_$u7b$$u7b$closure$u7d$$u7d$17h1644e050989d0aecE.exit"
  ret void

.body.thread:                                     ; preds = %..body.thread_crit_edge, %.body
  %i.bn = phi i8 [ %.sroa.010.0, %.body ], [ %.pre, %..body.thread_crit_edge ]
  %i.bo = icmp eq i8 %i.bn, 8
  br i1 %i.bo, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %.body.thread
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %common.resume unwind label %bb.ag

bb.ai:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.d) #55
          to label %..body.thread_crit_edge unwind label %bb.ag

..body.thread_crit_edge:                          ; preds = %bb.ai
  %.pre = load i8, ptr %i.aa, align 8, !range !57
  br label %.body.thread
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN5insta7content4yaml9to_string17h0ad0e741aa783539E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN5insta7content4yaml13to_yaml_value17hc53fd79ff101fe7cE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @83, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15321)
  call void @llvm.experimental.noalias.scope.decl(metadata !15322)
  call void @llvm.experimental.noalias.scope.decl(metadata !15323)
  call void @llvm.experimental.noalias.scope.decl(metadata !15324)
  call void @llvm.experimental.noalias.scope.decl(metadata !15325)
  call void @llvm.experimental.noalias.scope.decl(metadata !15326)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.thread unwind label %bb.b, !inline_history !15307

.noexc3.thread:                                   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !15327, !noalias !15328 ; 3 uses
  %i.i = icmp sgt i64 %.pre.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15327, !noalias !15328, !nonnull !17, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pre.i.i.i.i.i.i
  store i32 170732845, ptr %i.k, align 1, !noalias !15329
  %i.l = add nuw i64 %.pre.i.i.i.i.i.i, 4
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !15327, !noalias !15328
  store i64 -1, ptr %i.h, align 8, !alias.scope !15330, !noalias !15331
  %i.m = invoke fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter9emit_node17hccd0f2a14f6a185aE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d)
          to label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e, %.noexc3.thread, %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit.thread
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15332)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !15332 ; 2 uses
  %i.o = icmp eq i64 %.val.i, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15332, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15332
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit: ; preds = %.noexc3.thread
  br i1 %i.m, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit.thread, label %bb.d, !prof !38

_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit.thread: ; preds = %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @568) #54
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit.thread
  unreachable

bb.d:                                             ; preds = %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter4dump17h1df51fd9c2682da0E.exit
  %i.p = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !17 ; 7 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit": ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %rhsc = load i8, ptr %i.s, align 1
  %i.t = icmp eq i8 %rhsc, 10
  br i1 %i.t, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread": ; preds = %bb.d, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !15333)
  %i.u = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.c, align 8, !range !20, !alias.scope !15334, !noundef !17
  %i.w = icmp eq i64 %i.v, %i.q
  br i1 %i.w, label %bb.e, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, !prof !22

bb.e:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc6 unwind label %bb.b

.noexc6:                                          ; preds = %bb.e
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !15333
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15333
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread", %.noexc6
  %i.x = phi ptr [ %i.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread" ], [ %.pre, %.noexc6 ]
  %i.y = phi i64 [ %i.q, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread" ], [ %.pre.i, %.noexc6 ] ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store i8 10, ptr %i.aa, align 1, !noalias !15333
  %i.ab = add nuw i64 %i.q, 1
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !15333
  br label %bb.f

bb.f:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit": ; preds = %bb.c, %bb.b
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.d) #55
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"
  resume { ptr, i32 } %i.n
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 16 dereferenceable(64) ptr @_ZN5insta7content7Content13resolve_inner17he9e20ff69c8db45bE(ptr noalias noundef readonly align 16 captures(ret: address, read_provenance) dereferenceable(64) %0) unnamed_addr #28 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.c, %bb.d ]   ; 3 uses
  %i.a = load i8, ptr %.tr, align 16, !range !51, !noundef !17
  switch i8 %i.a, label %bb.e [
    i8 17, label %bb.d
    i8 21, label %bb.b
    i8 22, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse
  br label %bb.d

bb.c:                                             ; preds = %tailrecurse
  br label %bb.d

bb.d:                                             ; preds = %tailrecurse, %bb.c, %bb.b
end_hunk_1
