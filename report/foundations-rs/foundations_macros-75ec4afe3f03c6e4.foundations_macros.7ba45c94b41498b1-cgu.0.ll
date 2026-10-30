Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.0?download=true
inline.NumInlined: 59
inline.NumDeleted: 50
begin_hunk_0_@_RNvNtCsaC8UfsfJL0H_18foundations_macros11info_metric6expand:bb.a
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn3lit6LitStrEBF_(ptr nonnull align 8 %i.v)
          to label %bb.ef unwind label %bb.av, !noalias !49

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.x)
          to label %bb.eg unwind label %bb.al, !noalias !49

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCse4VeaA6Ikg_11proc_macro211TokenStreamEECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.z)
          to label %bb.eh unwind label %bb.ae, !noalias !49

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn3lit6LitStrEBF_(ptr nonnull align 8 %i.ab)
          to label %bb.ei unwind label %bb.x, !noalias !49

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.ad)
          to label %bb.ej unwind label %bb.m, !noalias !49

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.af)
          to label %bb.ek unwind label %bb.j, !noalias !49

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtBG_5token5CommaEEB1q_(ptr nonnull align 8 %i.ag)
          to label %bb.en unwind label %bb.em, !noalias !49

bb.el:                                            ; preds = %bb.em, %bb.i
  %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.pn.pn.pn.pn.pn.pn.i, %bb.i ], [ %i.dp, %bb.em ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ah) #19
          to label %bb.eo unwind label %bb.fa, !noalias !49

bb.em:                                            ; preds = %bb.ek
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.en:                                            ; preds = %bb.ek
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ah)
          to label %bb.eq unwind label %bb.ep, !noalias !49

bb.eo:                                            ; preds = %bb.ep, %bb.el
  %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.el ], [ %i.dq, %bb.ep ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.aj) #19
          to label %bb.er unwind label %bb.fa, !noalias !49

bb.ep:                                            ; preds = %bb.en
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.eq:                                            ; preds = %bb.en
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.aj)
          to label %bb.et unwind label %bb.es, !noalias !49

bb.er:                                            ; preds = %bb.es, %bb.eo
  %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.eo ], [ %i.dr, %bb.es ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.ak) #19
          to label %bb.eu unwind label %bb.fa, !noalias !49

bb.es:                                            ; preds = %bb.eq
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.et:                                            ; preds = %bb.eq
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.ak)
          to label %bb.ew unwind label %bb.ev, !noalias !49

bb.eu:                                            ; preds = %bb.ev, %bb.er
  %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.er ], [ %i.ds, %bb.ev ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.al) #19
          to label %bb.ex unwind label %bb.fa, !noalias !49

bb.ev:                                            ; preds = %bb.et
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ew:                                            ; preds = %bb.et
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.al)
          to label %bb.ez unwind label %bb.ey, !noalias !49

bb.ex:                                            ; preds = %bb.ey, %bb.eu
  %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.eu ], [ %i.dt, %bb.ey ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.am) #19
          to label %.thread unwind label %bb.fa, !noalias !49

bb.ey:                                            ; preds = %bb.ew
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ez:                                            ; preds = %bb.ew
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtNtCs6bAnw1I7Lci_3syn5error5ErrorE14unwrap_or_elseNCNvNtCsaC8UfsfJL0H_18foundations_macros11info_metric6expand0EB2i_(ptr nonnull sret([32 x i8]) align 8 %i.ao, ptr nonnull align 8 %i.an, ptr nonnull align 8 @35)
  %i.du = call i32 @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ao, ptr nonnull align 8 @36)
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ex, %bb.eu, %bb.er, %bb.eo, %bb.el, %bb.dl, %bb.ct, %bb.cj, %bb.cf, %bb.bx, %bb.bt, %bb.bl, %.loopexit.split-lp.loopexit.split-lp.i, %bb.bb, %bb.ax, %bb.au, %bb.ao, %bb.ak, %bb.ah, %bb.ad, %bb.z, %bb.w, %bb.q, %bb.l, %bb.i
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !49
  unreachable

bb.fb:                                            ; preds = %bb.ez, %bb.fg, %.thread30
  %.sroa.0.0 = phi i32 [ %i.ea, %.thread30 ], [ %i.du, %bb.ez ], [ %i.dy, %bb.fg ]
  ret i32 %.sroa.0.0

bb.fc:                                            ; preds = %.thread16, %bb.fi, %bb.fh, %bb.fd
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.fd:                                            ; preds = %bb.fe, %bb.g
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.aq) #19
          to label %bb.fh unwind label %bb.fc

bb.fe:                                            ; preds = %bb.g
  %i.dy = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.ap)
          to label %bb.ff unwind label %bb.fd

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.aq)
          to label %bb.fg unwind label %bb.e

bb.fg:                                            ; preds = %bb.ff
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric9MacroArgsEBF_(ptr nonnull align 8 %i.av)
  br label %bb.fb

bb.fh:                                            ; preds = %bb.e, %bb.fd
  %.pn.ph = phi { ptr, i32 } [ %i.dx, %bb.fd ], [ %i.bb, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric9MacroArgsEBF_(ptr nonnull align 8 %i.av) #19
          to label %.thread unwind label %bb.fc

bb.fi:                                            ; preds = %bb.fj, %bb.c
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.at) #19
          to label %.thread16 unwind label %bb.fc

bb.fj:                                            ; preds = %bb.c
  %i.ea = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.as)
          to label %bb.fk unwind label %bb.fi

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.at)
          to label %.thread30 unwind label %.thread21

.thread30:                                        ; preds = %bb.fk
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.aw)
  br label %bb.fb

.thread:                                          ; preds = %bb.ex, %bb.fh, %.thread16
  %.pn715 = phi { ptr, i32 } [ %.pn9.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ex ], [ %.pn719, %.thread16 ], [ %.pn.ph, %bb.fh ]
  resume { ptr, i32 } %.pn715

.thread16:                                        ; preds = %bb.fi, %.thread21
  %.pn719 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread21 ], [ %i.dz, %bb.fi ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.aw) #19
          to label %.thread unwind label %bb.fc
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn14wrap_with_span(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr nonnull align 8 %1, ptr nonnull align 8 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 19 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i8, ptr %i.n, align 8
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.r = load i8, ptr %i.q, align 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.l)
          to label %bb.n unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.j)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.k)
          to label %bb.l unwind label %bb.g

bb.f:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.i, %bb.g
  %.pn7 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %.pn5, %bb.p ], [ %i.y, %bb.o ], [ %i.x, %bb.m ], [ %i.u, %bb.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %2) #19
          to label %bb.ba unwind label %bb.k

bb.g:                                             ; preds = %bb.ay, %bb.e, %bb.d, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @37, i64 5)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.j) #19
          to label %bb.f unwind label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.n, %bb.l
  %.sink = phi ptr [ %i.k, %bb.l ], [ %i.l, %bb.n ], [ %i.j, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RNvMNtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB2_8SpanName9as_tokens(ptr noalias align 8 %i.i, ptr nonnull align 8 %i.v)
          to label %bb.r unwind label %bb.q

bb.k:                                             ; preds = %bb.as, %bb.ai, %bb.y, %bb.v, %bb.s, %bb.p, %bb.o, %bb.m, %bb.i, %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.l:                                             ; preds = %bb.e
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @38, i64 13)
          to label %bb.j unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.k) #19
          to label %bb.f unwind label %bb.k

bb.n:                                             ; preds = %bb.c
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.l, ptr nonnull @39, i64 11)
          to label %bb.j unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.l) #19
          to label %bb.f unwind label %bb.k

bb.p:                                             ; preds = %bb.s, %bb.q
  %.pn5 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %.pn3, %bb.s ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.m) #19
          to label %bb.f unwind label %bb.k

bb.q:                                             ; preds = %bb.ax, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.j
  store ptr %1, ptr %i.h, align 8
  %i.aa = getelementptr i8, ptr %1, i64 50
  %.val = load i8, ptr %i.aa, align 2
  invoke fastcc void @_RNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn9span_ctor(ptr noalias align 8 %i.g, i8 %.val)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.v, %bb.t
  %.pn3 = phi { ptr, i32 } [ %i.ab, %bb.t ], [ %.pn.pn, %bb.v ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.i) #19
          to label %bb.p unwind label %bb.k

bb.t:                                             ; preds = %bb.r, %bb.aw
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.y, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.ac, %bb.w ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.g) #19
          to label %bb.s unwind label %bb.k

bb.w:                                             ; preds = %bb.u
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtNtCs6bAnw1I7Lci_3syn4path4PathNtB2_8ToTokens9to_tokensCsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.f)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %bb.as, %bb.ai, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.z ], [ %i.af, %bb.as ], [ %i.ae, %bb.ai ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.f) #19
          to label %bb.v unwind label %bb.k

bb.z:                                             ; preds = %bb.av, %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.f)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.f, ptr nonnull @7, i64 9)
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.f)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.f, ptr nonnull @8, i64 7)
          to label %bb.ae unwind label %bb.z

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.f)
          to label %bb.af unwind label %bb.z

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXsu_NtCsk5uxfcyCLQt_5quote9to_tokensNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.ag unwind label %bb.z

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
          to label %bb.ah unwind label %bb.z

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvXsu_NtCsk5uxfcyCLQt_5quote9to_tokensNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.d)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.d) #19
          to label %bb.y unwind label %bb.k

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.f, i8 0, ptr nonnull align 8 %i.e)
          to label %bb.ak unwind label %bb.z

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private8push_dot(ptr nonnull align 8 %i.f)
end_hunk_0
begin_hunk_1_@_RNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn6expand:bb.a
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cr
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.ac)
          to label %bb.cx unwind label %bb.cw, !noalias !54

bb.cv:                                            ; preds = %bb.cw, %bb.cs
  %.pn4.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.i, %bb.cs ], [ %i.el, %bb.cw ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ad) #19
          to label %bb.cy unwind label %bb.dt, !noalias !54

bb.cw:                                            ; preds = %bb.cu
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ad)
          to label %bb.da unwind label %bb.cz, !noalias !54

bb.cy:                                            ; preds = %bb.cz, %bb.cv
  %.pn4.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.i, %bb.cv ], [ %i.em, %bb.cz ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty3AbiEEB11_(ptr nonnull align 8 %i.ae) #19
          to label %bb.db unwind label %bb.dt, !noalias !54

bb.cz:                                            ; preds = %bb.cx
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.cx
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty3AbiEEB11_(ptr nonnull align 8 %i.ae)
          to label %bb.dd unwind label %bb.dc, !noalias !54

bb.db:                                            ; preds = %bb.dc, %bb.cy
  %.pn4.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.pn.i, %bb.cy ], [ %i.en, %bb.dc ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.ai) #19
          to label %bb.de unwind label %bb.dt, !noalias !54

bb.dc:                                            ; preds = %bb.da
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dd:                                            ; preds = %bb.da
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.ai)
          to label %bb.dg unwind label %bb.df, !noalias !54

bb.de:                                            ; preds = %bb.df, %bb.db
  %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.pn.pn.i, %bb.db ], [ %i.eo, %bb.df ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn2ty10ReturnTypeEBF_(ptr nonnull align 8 %i.aj) #19
          to label %bb.dh unwind label %bb.dt, !noalias !54

bb.df:                                            ; preds = %bb.dd
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dg:                                            ; preds = %bb.dd
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn2ty10ReturnTypeEBF_(ptr nonnull align 8 %i.aj)
          to label %bb.dj unwind label %bb.di, !noalias !54

bb.dh:                                            ; preds = %bb.di, %bb.de
  %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.de ], [ %i.ep, %bb.di ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.ak) #19
          to label %bb.dk unwind label %bb.dt, !noalias !54

bb.di:                                            ; preds = %bb.dg
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %bb.dg
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.ak)
          to label %bb.dm unwind label %bb.dl, !noalias !54

bb.dk:                                            ; preds = %bb.dl, %bb.dh
  %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.dh ], [ %i.eq, %bb.dl ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.al) #19
          to label %bb.dn unwind label %bb.dt, !noalias !54

bb.dl:                                            ; preds = %bb.dj
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dm:                                            ; preds = %bb.dj
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.al)
          to label %bb.dp unwind label %bb.do, !noalias !54

bb.dn:                                            ; preds = %bb.do, %bb.dk
  %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.dk ], [ %i.es, %bb.do ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4item8VariadicEEB11_(ptr nonnull align 8 %i.er) #19
          to label %bb.dq unwind label %bb.dt, !noalias !54

bb.do:                                            ; preds = %bb.dm
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dp:                                            ; preds = %bb.dm
  %i.et = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4item8VariadicEEB11_(ptr nonnull align 8 %i.et)
          to label %bb.ds unwind label %bb.dr, !noalias !54

bb.dq:                                            ; preds = %bb.dr, %bb.dn
  %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.dn ], [ %i.eu, %bb.dr ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn4ArgsEBF_(ptr nonnull align 8 %i.an) #19
          to label %.thread unwind label %bb.dt, !noalias !54

bb.dr:                                            ; preds = %bb.dp
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dp
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn4ArgsEBF_(ptr nonnull align 8 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ev = call i32 @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ao, ptr nonnull align 8 @55)
  br label %bb.du

bb.dt:                                            ; preds = %bb.dq, %bb.dn, %bb.dk, %bb.dh, %bb.de, %bb.db, %bb.cy, %bb.cv, %bb.cs, %bb.cp, %bb.cl, %bb.cf, %.loopexit.split-lp.i, %bb.bn, %bb.bk, %bb.bf, %.body.i
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !54
  unreachable

bb.du:                                            ; preds = %bb.ds, %bb.ed, %.thread26
  %.sroa.0.0 = phi i32 [ %i.fc, %.thread26 ], [ %i.ev, %bb.ds ], [ %i.fa, %bb.ed ]
  ret i32 %.sroa.0.0

bb.dv:                                            ; preds = %.thread12, %bb.ef, %bb.ee, %bb.ea
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.dw:                                            ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6bAnw1I7Lci_3syn4item6ItemFnNtNtB11_5error5ErrorEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ap)
          to label %bb.dx unwind label %bb.e

bb.dx:                                            ; preds = %bb.dw
  %i.ey = invoke i32 @_RNvMsi_Cse4VeaA6Ikg_11proc_macro2NtB5_4Span9call_site()
          to label %bb.dy unwind label %bb.e

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.aq, i32 %i.ey, ptr nonnull @56, i64 45)
          to label %bb.dz unwind label %bb.e

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.ar, ptr nonnull align 8 %i.aq)
          to label %bb.eb unwind label %bb.ea

bb.ea:                                            ; preds = %bb.eb, %bb.dz
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.aq) #19
          to label %bb.ee unwind label %bb.dv

bb.eb:                                            ; preds = %bb.dz
  %i.fa = invoke i32 @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ar, ptr nonnull align 8 @57)
          to label %bb.ec unwind label %bb.ea

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.aq)
          to label %bb.ed unwind label %bb.e

bb.ed:                                            ; preds = %bb.ec
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn4ArgsEBF_(ptr nonnull align 8 %i.av)
  br label %bb.du

bb.ee:                                            ; preds = %bb.e, %bb.ea
  %.pn.ph = phi { ptr, i32 } [ %i.bb, %bb.e ], [ %i.ez, %bb.ea ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn4ArgsEBF_(ptr nonnull align 8 %i.av) #19
          to label %.thread unwind label %bb.dv

bb.ef:                                            ; preds = %bb.eg, %bb.c
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.at) #19
          to label %.thread12 unwind label %bb.dv

bb.eg:                                            ; preds = %bb.c
  %i.fc = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.as)
          to label %bb.eh unwind label %bb.ef

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.at)
          to label %.thread26 unwind label %.thread17

.thread26:                                        ; preds = %bb.eh
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.aw)
  br label %bb.du

.thread:                                          ; preds = %bb.dq, %bb.ee, %.thread12
  %.pn711 = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.dq ], [ %.pn715, %.thread12 ], [ %.pn.ph, %bb.ee ]
  resume { ptr, i32 } %.pn711

.thread12:                                        ; preds = %bb.ef, %.thread17
  %.pn715 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread17 ], [ %i.fb, %bb.ef ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.aw) #19
          to label %.thread unwind label %bb.dv
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn9span_ctor(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, i8 %.50.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = trunc nuw i8 %.50.val to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @58, i64 4)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.b, ptr nonnull @59, i64 9)
          to label %bb.e unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.a) #19
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.b, %bb.c ], [ %i.a, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  ret void

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.h ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.b) #19
          to label %bb.g unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load ptr, ptr %0, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 480
  store ptr %i.k, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 736
  store ptr %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  store ptr %i.m, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 792
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.i, ptr %i.c, align 8
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtB2_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.a) #19
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtB2_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityNtB2_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtCse4VeaA6Ikg_11proc_macro25IdentNtB2_8ToTokens9to_tokensCsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.a)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtNtCs6bAnw1I7Lci_3syn5token5ColonNtB2_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.a)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtNtCs6bAnw1I7Lci_3syn2ty4TypeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCsaC8UfsfJL0H_18foundations_macros11info_metricNtB5_5FieldNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens.exit unwind label %bb.b

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.o

_RNvXs0_NtCsaC8UfsfJL0H_18foundations_macros11info_metricNtB5_5FieldNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @_RINvXs4_Cse4VeaA6Ikg_11proc_macro2NtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendBw_ECs6bAnw1I7Lci_3syn(ptr align 8 %1, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric7parsingNtB4_9MacroArgsNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([72 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 10 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [56 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [80 x i8], align 8               ; 2 uses
  %i.ah = alloca [80 x i8], align 8               ; 4 uses
  %i.ai = alloca [80 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 2 uses
  %i.ak = alloca [32 x i8], align 8               ; 3 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 2 uses
  %i.am = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.am, align 8
  %i.an = tail call zeroext i1 @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer8is_empty(ptr align 8 %1)
  br i1 %i.an, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsaC8UfsfJL0H_18foundations_macros6common15parse_meta_list(ptr nonnull sret([32 x i8]) align 8 %i.aj, ptr nonnull align 8 %i.am)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1p_(ptr nonnull sret([32 x i8]) align 8 %i.ak, ptr nonnull align 8 %i.aj) #18
  %i.ao = load i64, ptr %i.ak, align 8
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !65
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ad), !noalias !66
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.ad)
          to label %bb.e unwind label %bb.d, !noalias !66

end_hunk_1
begin_hunk_2_@_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsaC8UfsfJL0H_18foundations_macros:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtCs6bAnw1I7Lci_3syn5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB4_8SpanNameNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_3lit6LitStrEB8_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1)
  call void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs6bAnw1I7Lci_3syn3lit6LitStrNtNtBM_5error5ErrorE3mapNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn8SpanNameNcNtB1D_3Str0EB1H_(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #18
  call void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn8SpanNameNtNtCs6bAnw1I7Lci_3syn5error5ErrorE7or_elseB1B_NCNvXs_BK_BI_NtNtB1F_5parse5Parse5parse0EBM_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr align 8 %1) #18
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsaC8UfsfJL0H_18foundations_macros11info_metric7parsingNtB6_6StructNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([144 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [800 x i8], align 8               ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.07 = alloca [136 x i8], align 8          ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [800 x i8], align 8               ; 2 uses
  %i.m = alloca [800 x i8], align 8               ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 3 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 3 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 2 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 2 uses
  %i.z = alloca [32 x i8], align 8                ; 3 uses
  %i.aa = alloca [48 x i8], align 8               ; 2 uses
  %i.ab = alloca [48 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer4callINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr nonnull sret([32 x i8]) align 8 %i.y, ptr align 8 %1, ptr nonnull @_RNvMNtCs6bAnw1I7Lci_3syn4attrNtB2_9Attribute11parse_outer)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.z, ptr nonnull align 8 %i.y) #18
  %i.ad = load i64, ptr %i.z, align 8
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric6StructNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1G_EE13from_residualBO_(ptr sret([144 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @85) #18
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @_RNvNvXs_NtNtCsaC8UfsfJL0H_18foundations_macros11info_metric7parsingNtB8_6StructNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse11parse_attrs(ptr nonnull sret([48 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.i)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric11StructAttrsNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.aa) #18
  %i.ag = load i64, ptr %i.ab, align 8
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric6StructNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1G_EE13from_residualBO_(ptr sret([144 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @84) #18
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_11restriction10VisibilityEB8_(ptr nonnull sret([32 x i8]) align 8 %i.v, ptr align 8 %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.ap, %bb.i, %bb.g, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([32 x i8]) align 8 %i.w, ptr nonnull align 8 %i.v)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.w, align 8
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric6StructNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1G_EE13from_residualBO_(ptr sret([144 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @83)
          to label %bb.aq unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token6StructEB8_(ptr nonnull sret([24 x i8]) align 8 %i.t, ptr align 8 %1)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %.invoke, %bb.an, %bb.p, %bb.o, %bb.l, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn5token6StructNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.u, ptr nonnull align 8 %i.t)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr %i.u, align 8
  %.not = icmp eq i64 %i.ao, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %.invoke

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtCse4VeaA6Ikg_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr align 8 %1)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCse4VeaA6Ikg_11proc_macro25IdentNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q)
          to label %bb.q unwind label %bb.k

bb.q:                                             ; preds = %bb.p
  %i.ar = load i64, ptr %i.r, align 8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %bb.r
  %i.au = phi ptr [ %i.e, %bb.r ], [ %i.d, %bb.n ]
  %i.av = phi ptr [ @81, %bb.r ], [ @82, %bb.n ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric6StructNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1G_EE13from_residualBO_(ptr sret([144 x i8]) align 8 %0, ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.av)
          to label %bb.ap unwind label %bb.k

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5group12parse_braces(ptr nonnull sret([56 x i8]) align 8 %i.o, ptr align 8 %1)
          to label %bb.t unwind label %.thread47

.thread38:                                        ; preds = %bb.ak, %bb.u
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread33

bb.t:                                             ; preds = %bb.s
  %i.aw = load i64, ptr %i.o, align 8
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.ax, label %.thread41, label %bb.u

.thread41:                                        ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB4_5token5CommaE3newBU_(ptr nonnull sret([32 x i8]) align 8 %i.n)
          to label %.preheader unwind label %.thread38

.preheader:                                       ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.aj
  %i.bb = invoke zeroext i1 @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.p)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.z, %bb.x, %bb.v, %.invoke50
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtBG_5token5CommaEEB1q_(ptr nonnull align 8 %i.n) #19
          to label %.thread33 unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEBY_(ptr nonnull sret([800 x i8]) align 8 %i.l, ptr nonnull align 8 %i.p)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.ae, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  %.sroa.07.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  %.sroa.07.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.07.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.07, i64 136, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.p)
  br label %bb.al

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([800 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.bc = load i64, ptr %i.m, align 8
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  br label %.invoke50

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.h, ptr noundef nonnull align 8 dereferenceable(800) %i.m, i64 800, i1 false)
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB4_5token5CommaE10push_valueBU_(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.h)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.bf = invoke zeroext i1 @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.p)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bf, label %bb.y, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.p)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.bg = load i64, ptr %i.k, align 8
  %.not16 = icmp eq i64 %i.bg, -1
  br i1 %.not16, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %.invoke50

.invoke50:                                        ; preds = %bb.ab, %bb.ai
  %i.bh = phi ptr [ %i.g, %bb.ai ], [ %i.f, %bb.ab ]
  %i.bi = phi ptr [ @79, %bb.ai ], [ @80, %bb.ab ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric6StructNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1G_EE13from_residualBO_(ptr sret([144 x i8]) align 8 %0, ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bi)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ah
  %.sroa.05.0.copyload = load i32, ptr %i.ba, align 8
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB4_5token5CommaE10push_punctBU_(ptr nonnull align 8 %i.n, i32 %.sroa.05.0.copyload)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %.invoke50
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtBG_5token5CommaEEB1q_(ptr nonnull align 8 %i.n)
          to label %bb.ao unwind label %.thread38

bb.al:                                            ; preds = %bb.y, %bb.b, %bb.d, %bb.aq
  ret void

bb.am:                                            ; preds = %bb.at, %bb.ar, %.thread43, %.thread33, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.an:                                            ; preds = %.thread41, %bb.ao
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.s)
          to label %bb.ap unwind label %bb.k

bb.ao:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.p)
          to label %bb.an unwind label %.thread47

.thread47:                                        ; preds = %bb.s, %bb.ao
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.thread43

.thread33:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread38
  %.pn36 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread38 ], [ %lpad.loopexit.split-lp51, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.p) #19
          to label %.thread43 unwind label %bb.am

.thread43:                                        ; preds = %.thread33, %.thread47
  %.pn1846 = phi { ptr, i32 } [ %i.bk, %.thread47 ], [ %.pn36, %.thread33 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.s) #19
          to label %bb.ar unwind label %bb.am

bb.ap:                                            ; preds = %.invoke, %bb.an
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.x)
          to label %bb.aq unwind label %bb.f

bb.aq:                                            ; preds = %bb.i, %bb.ap
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric11StructAttrsEBF_(ptr nonnull align 8 %i.ac)
  br label %bb.al

bb.ar:                                            ; preds = %bb.k, %.thread43
  %.pn20.ph = phi { ptr, i32 } [ %.pn1846, %.thread43 ], [ %i.an, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.x) #19
          to label %bb.at unwind label %bb.am

bb.as:                                            ; preds = %bb.at
  resume { ptr, i32 } %.pn22.ph

bb.at:                                            ; preds = %bb.f, %bb.ar
  %.pn22.ph = phi { ptr, i32 } [ %.pn20.ph, %bb.ar ], [ %i.aj, %bb.f ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric11StructAttrsEBF_(ptr nonnull align 8 %i.ac) #19
          to label %bb.as unwind label %bb.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn4expr4ExprNtNtBK_5token5CommaEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSTNtNtCs6bAnw1I7Lci_3syn4expr4ExprNtNtB13_5token5CommaEE5indexCsaC8UfsfJL0H_18foundations_macros(i64 %1, ptr align 8 %i.b, i64 %i.d, ptr align 8 %2) #18
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtBK_5token5CommaEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtB13_5token5CommaEE5indexCsaC8UfsfJL0H_18foundations_macros(i64 %1, ptr align 8 %i.b, i64 %i.d, ptr align 8 %2) #18
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSTNtNtCs6bAnw1I7Lci_3syn8generics14TypeParamBoundNtNtB13_5token4PlusEE5indexCsaC8UfsfJL0H_18foundations_macros(i64 %1, ptr align 8 %i.b, i64 %i.d, ptr align 8 %2) #18
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSTdNtCse4VeaA6Ikg_11proc_macro24SpanEE5indexCsaC8UfsfJL0H_18foundations_macros(i64 %1, ptr align 8 %i.b, i64 %i.d, ptr align 8 %2) #18
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsaC8UfsfJL0H_18foundations_macros7metrics6ItemFnENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsaC8UfsfJL0H_18foundations_macros7metrics6ItemFnEBG_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEEBH_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtCs6bAnw1I7Lci_3syn5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtCs6bAnw1I7Lci_3syn5token5CommaEEBH_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsq_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs3oUPovFnLWP_4core7default7Default7defaultCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #9 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2) unnamed_addr #2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn26try_async_trait_fn_rewrite0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Z_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn26try_async_trait_fn_rewrite0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3U_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedB3_E0EB1U_(ptr, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtB1i_4data5FieldENCNvNtCsaC8UfsfJL0H_18foundations_macros8settings24impl_serde_aware_default0EINtNtB6_6result6ResultzNtNtB1i_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2h_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtB1i_4data5FieldENCNvNtCsaC8UfsfJL0H_18foundations_macros8settings24impl_serde_aware_default0EINtNtB6_6result6ResultzNtNtB1i_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2h_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr align 8) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtB1y_4data5FieldENCNvNtCsaC8UfsfJL0H_18foundations_macros8settings24impl_serde_aware_default0EINtNtB4_6result6ResultzNtNtB1y_5error5ErrorEEEB2x_(ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENCNvB1C_9metric_fn0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENCNvB1C_9metric_fn0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENCNvB1P_9metric_fn0EEB1R_(ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterReENCINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB1y_17ErrorUnknownValue9with_altsB1m_RAB1m_j2_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsje5z0uo7eGy_12darling_core(ptr align 8, i64) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_2
