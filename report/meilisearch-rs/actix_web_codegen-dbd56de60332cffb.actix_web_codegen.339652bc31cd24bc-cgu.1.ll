Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web_codegen-dbd56de60332cffb.actix_web_codegen.339652bc31cd24bc-cgu.1?download=true
inline.NumInlined: 192
inline.NumDeleted: 85
begin_hunk_0_@"_ZN4core3ptr55drop_in_place$LT$$u5b$syn..attr..MetaNameValue$u5d$$GT$17h9eb5eb009181b89dE":bb.a
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @"_ZN4core3ptr45drop_in_place$LT$syn..attr..MetaNameValue$GT$17hf40d7697433340a5E"(ptr align 8 %i.i) #23
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN4core3ptr55drop_in_place$LT$proc_macro..bridge..buffer..Buffer$GT$17h7d558739deb5b57bE"(ptr nofree align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr @"_ZN107_$LT$proc_macro..bridge..buffer..Buffer$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from7reserve17hf09eead57ce6e195E", ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @"_ZN107_$LT$proc_macro..bridge..buffer..Buffer$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from4drop17h309bfd0623db58e7E", ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr nonnull byval([40 x i8]) align 8 %i.a) #25, !inline_history !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17h013df1ef1720dbb2E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hfc9747c0f96ba7b0E"(ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17hcf59cebc68bf9f17E"(ptr align 8 %0) #23
          to label %bb.d unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17hcf59cebc68bf9f17E"(ptr align 8 %0)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..PatternType$GT$17hbf1a76157a55294fE"(ptr nonnull align 8 %i.c) #23
          to label %bb.g unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..PatternType$GT$17hbf1a76157a55294fE"(ptr nonnull align 8 %i.e)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.g, %bb.h ], [ %.pn, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$actix_router..resource..PatternSegment$GT$$GT$17h103c36f68b4f9402E"(ptr nonnull align 8 %i.f) #23
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$actix_router..resource..PatternSegment$GT$$GT$17h103c36f68b4f9402E"(ptr nonnull align 8 %i.h)
  ret void

bb.j:                                             ; preds = %bb.g, %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.k:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr56drop_in_place$LT$actix_web_codegen..route..RouteArgs$GT$17he5d50a9cca384565E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h5dc21e859b754e8eE"(ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr100drop_in_place$LT$syn..punctuated..Punctuated$LT$syn..attr..MetaNameValue$C$syn..token..Comma$GT$$GT$17h2ccac4f0b2ff856bE"(ptr align 8 %0) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr100drop_in_place$LT$syn..punctuated..Punctuated$LT$syn..attr..MetaNameValue$C$syn..token..Comma$GT$$GT$17h2ccac4f0b2ff856bE"(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr571drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..result..Result$LT$$LP$actix_web_codegen..route..MethodType$C$syn..attr..Attribute$RP$$C$syn..attr..Attribute$GT$$GT$$C$core..result..Result$LT$$LP$actix_web_codegen..route..MethodType$C$syn..attr..Attribute$RP$$C$syn..attr..Attribute$GT$..unwrap$GT$$C$actix_web_codegen..route..with_methods..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$syn..error..Error$GT$$GT$$GT$17hd57a8911991baf84E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36819b64fb774e15E"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr59drop_in_place$LT$alloc..vec..Vec$LT$syn..expr..Expr$GT$$GT$17h060ddcad4c1c94f8E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5a40077e4151946aE"(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc354fb3910ae49afE"(ptr align 8 %0)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..raw_vec..RawVec$LT$syn..expr..Expr$GT$$GT$17ha98ebd94518188c7E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc354fb3910ae49afE"(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

"_ZN4core3ptr66drop_in_place$LT$alloc..raw_vec..RawVec$LT$syn..expr..Expr$GT$$GT$17ha98ebd94518188c7E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr59drop_in_place$LT$alloc..vec..Vec$LT$syn..path..Path$GT$$GT$17h33474d5f2d5ef58fE"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64cc399f51626a90E"(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdae821be8a84ee04E"(ptr align 8 %0)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..raw_vec..RawVec$LT$syn..path..Path$GT$$GT$17h6b38c415b991b11eE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdae821be8a84ee04E"(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

"_ZN4core3ptr66drop_in_place$LT$alloc..raw_vec..RawVec$LT$syn..path..Path$GT$$GT$17h6b38c415b991b11eE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr601drop_in_place$LT$core..iter..adapters..map..map_fold$LT$$RF$syn..attr..Attribute$C$syn..attr..Attribute$C$$LP$$RP$$C$actix_web_codegen..scope..with_scope_inner..$u7b$$u7b$closure$u7d$$u7d$$C$core..iter..traits..iterator..Iterator..for_each..call$LT$syn..attr..Attribute$C$alloc..vec..Vec$LT$syn..attr..Attribute$GT$..extend_trusted$LT$core..iter..adapters..map..Map$LT$core..slice..iter..Iter$LT$syn..attr..Attribute$GT$$C$actix_web_codegen..scope..with_scope_inner..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd7665da44ca5434eE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h9c5c02ca5538d028E"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr60drop_in_place$LT$actix_web_codegen..route..MethodTypeExt$GT$17he113f3ae43ee2cc6E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %1 = and i8 %i.a, 1
  %i.b = icmp eq i8 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h5dc21e859b754e8eE"(ptr nonnull align 8 %i.c)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr61drop_in_place$LT$$u5b$actix_web_codegen..route..Args$u5d$$GT$17h9278ba7cbffa17e1E"(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add i64 %.sroa.0.07, 1                   ; 4 uses
  invoke void @"_ZN4core3ptr51drop_in_place$LT$actix_web_codegen..route..Args$GT$17h91284d5c6c0a492eE"(ptr align 8 %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @"_ZN4core3ptr51drop_in_place$LT$actix_web_codegen..route..Args$GT$17h91284d5c6c0a492eE"(ptr align 8 %i.i) #23
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17hc5aa2d220a2381e3E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb961bae8473b9690E"(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h547fab49c5a64109E"(ptr align 8 %0)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$proc_macro2..TokenStream$GT$$GT$17h302c90ce9ce092d6E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h547fab49c5a64109E"(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$proc_macro2..TokenStream$GT$$GT$17h302c90ce9ce092d6E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$syn..attr..MetaNameValue$GT$$GT$17hb2d99b8e546bc681E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9045354f90a71a38E"(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc6643f1d53780a7bE"(ptr align 8 %0)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$syn..attr..MetaNameValue$GT$$GT$17h6aa4ca1bc0d34a9fE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc6643f1d53780a7bE"(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$syn..attr..MetaNameValue$GT$$GT$17h6aa4ca1bc0d34a9fE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr70drop_in_place$LT$alloc..boxed..Box$LT$syn..attr..MetaNameValue$GT$$GT$17h7bb287e9bf2cc72fE"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  invoke void @"_ZN4core3ptr45drop_in_place$LT$syn..attr..MetaNameValue$GT$17hf40d7697433340a5E"(ptr align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h13cf932d4cad313aE"(ptr nonnull align 8 %0) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h13cf932d4cad313aE"(ptr nonnull align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN4core3ptr45drop_in_place$LT$syn..attr..MetaNameValue$GT$17hf40d7697433340a5E"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$actix_web_codegen..route..Args$GT$$GT$17h1289c35890c1f2bdE"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05c7ea5a0fc7cd75E"(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde3f0e75b0057f6E"(ptr align 8 %0)
          to label %"_ZN4core3ptr81drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web_codegen..route..Args$GT$$GT$17h22b600974ded538fE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde3f0e75b0057f6E"(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

"_ZN4core3ptr81drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web_codegen..route..Args$GT$$GT$17h22b600974ded538fE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$proc_macro2..TokenStream$GT$$GT$17h302c90ce9ce092d6E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h547fab49c5a64109E"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$syn..attr..MetaNameValue$GT$$GT$17h6aa4ca1bc0d34a9fE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc6643f1d53780a7bE"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr78drop_in_place$LT$syn..punctuated..IntoIter$LT$syn..attr..MetaNameValue$GT$$GT$17h9b5a0e7fe50c8b76E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bd5547ba5a2047bE"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr79drop_in_place$LT$$LP$actix_web_codegen..route..MethodTypeExt$C$$LP$$RP$$RP$$GT$17hc8285664ae997a8dE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %1 = and i8 %i.a, 1
  %i.b = icmp eq i8 %1, 0
  br i1 %i.b, label %"_ZN4core3ptr60drop_in_place$LT$actix_web_codegen..route..MethodTypeExt$GT$17he113f3ae43ee2cc6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h5dc21e859b754e8eE"(ptr nonnull align 8 %i.c)
  br label %"_ZN4core3ptr60drop_in_place$LT$actix_web_codegen..route..MethodTypeExt$GT$17he113f3ae43ee2cc6E.exit"

"_ZN4core3ptr60drop_in_place$LT$actix_web_codegen..route..MethodTypeExt$GT$17he113f3ae43ee2cc6E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN4core3ptr82drop_in_place$LT$core..cell..RefCell$LT$proc_macro..bridge..client..Bridge$GT$$GT$17h8744e366fe6b5e41E"(ptr nofree align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false)
  store ptr @"_ZN107_$LT$proc_macro..bridge..buffer..Buffer$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from7reserve17hf09eead57ce6e195E", ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @"_ZN107_$LT$proc_macro..bridge..buffer..Buffer$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from4drop17h309bfd0623db58e7E", ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr nonnull byval([40 x i8]) align 8 %i.a) #25, !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr83drop_in_place$LT$$u5b$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$u5d$$GT$17h3707ce6b9c85b266E"(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit._crit_edge", label %.lr.ph

"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit": ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit"
  %.sroa.0.08 = phi i64 [ %i.d, %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit" ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.0.08
  %i.d = add i64 %.sroa.0.08, 1                   ; 4 uses
  invoke void @"_ZN4core3ptr45drop_in_place$LT$syn..attr..MetaNameValue$GT$17hf40d7697433340a5E"(ptr align 8 %i.c)
          to label %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit" unwind label %bb.b

"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit._crit_edge": ; preds = %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit", %bb.a
  ret void

"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7": ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.19, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7._crit_edge", label %.lr.ph10

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7._crit_edge", label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.b, %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7"
  %.sroa.0.19 = phi i64 [ %i.e, %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7" ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.0.19
  invoke void @"_ZN4core3ptr45drop_in_place$LT$syn..attr..MetaNameValue$GT$17hf40d7697433340a5E"(ptr align 8 %i.i)
          to label %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7" unwind label %bb.c

"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7._crit_edge": ; preds = %"_ZN4core3ptr73drop_in_place$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$17ha7cfba4c477c4f7cE.exit7", %bb.b
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$proc_macro2..TokenStream$GT$$GT$17h2a569e9766b27a44E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0812a4029c24724E"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr87drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$syn..attr..Attribute$GT$$GT$17h1358d35cf6fd3700E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 8
  tail call void @"_ZN4core3ptr51drop_in_place$LT$$u5b$syn..attr..Attribute$u5d$$GT$17h903f3cbe532ac7d9E"(ptr align 8 %.val, i64 %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr88drop_in_place$LT$$LP$actix_web_codegen..route..MethodType$C$syn..attr..Attribute$RP$$GT$17h09fe78511acdfd16E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN4core3ptr41drop_in_place$LT$syn..attr..Attribute$GT$17he30360c6b95bae68E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$syn..error..Error$GT$$GT$17h57bb4eac3e62a454E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN4core3ptr38drop_in_place$LT$syn..error..Error$GT$17h529de0cc941e7110E"(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$$GT$17hb4674c4237589104E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha19a78d37af150b9E"(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf42b3de2393754c5E"(ptr align 8 %0)
          to label %"_ZN4core3ptr103drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$$GT$17h789024d91910de2dE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf42b3de2393754c5E"(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

"_ZN4core3ptr103drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$syn..attr..MetaNameValue$C$syn..token..Comma$RP$$GT$$GT$17h789024d91910de2dE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$actix_web_codegen..route..Args$GT$$GT$17h50528de3f2bcf268E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 112                 ; 3 uses
  %i.f = icmp eq ptr %.val1, %.val
  br i1 %i.f, label %"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h47d76b3651383a70E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h47d76b3651383a70E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [112 x i8], ptr %.val, i64 %.sroa.0.0.i.i2
  %i.i = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  invoke void @"_ZN4core3ptr51drop_in_place$LT$actix_web_codegen..route..Args$GT$17h91284d5c6c0a492eE"(ptr align 8 %i.h)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i3 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %.val, i64 %.sroa.0.1.i.i3
  invoke void @"_ZN4core3ptr51drop_in_place$LT$actix_web_codegen..route..Args$GT$17h91284d5c6c0a492eE"(ptr align 8 %i.n) #23
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h47d76b3651383a70E.exit": ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$syn..attr..MetaNameValue$GT$$GT$$GT$17hc5e52ef85971c7a2E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
end_hunk_0
