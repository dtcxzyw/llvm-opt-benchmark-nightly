Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_testing_macros-c738a2e7046956b1.iceoryx2_bb_testing_macros.f9608fb1f18bcd4e-cgu.07?download=true
inline.NumInlined: 617
inline.NumDeleted: 207
begin_hunk_0_@_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros12requires_std10proc_macro:bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body43 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i: ; preds = %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbqH9stoieM8_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit unwind label %bb.w

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body45 unwind label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtBG_6string6StringEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit unwind label %bb.t

bb.ad:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtBG_6string6StringEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs2TChw36tfyQ_3syn10punctuated10PunctuatedNtNtBG_3lit6LitStrNtNtBG_5token5CommaEECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ao)
          to label %bb.ae unwind label %bb.j

bb.ae:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtBG_6string6StringEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %.sroa.03.4 = phi i8 [ 1, %bb.aj ], [ 0, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.cc = load ptr, ptr %i.bf, align 8, !noundef !14 ; 3 uses
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %.invoke, label %bb.ak

bb.ag:                                            ; preds = %bb.ed, %bb.dp, %bb.di, %bb.da, %bb.cw, %bb.cs, %bb.cj, %bb.cf, %bb.cb, %bb.bv, %bb.bm, %bb.bi, %bb.bf, %bb.bc, %bb.ay, %bb.au, %bb.al, %bb.y, %.body43, %.body45, %.body
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ah:                                            ; preds = %bb.m
  %i.ce = load i64, ptr %i.f, align 8, !range !27, !noundef !14
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !1243, !noundef !14 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.cf, label %bb.ai, label %bb.aj, !prof !1238

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i64, ptr %i.ci, align 8
  invoke void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.cj) #17
          to label %bb.ec unwind label %bb.j

bb.aj:                                            ; preds = %bb.ah
  %i.ck = load ptr, ptr %i.ci, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.cl = icmp samesign ugt i64 %i.ch, 24
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ck, ptr noundef nonnull align 1 dereferenceable(25) @7, i64 25, i1 false)
  store i64 %i.ch, ptr %i.ap, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ck, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 25, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.af

bb.ak:                                            ; preds = %bb.af
  %i.cm = load i64, ptr %i.cc, align 8, !range !26, !noundef !14 ; 2 uses
  %i.cn = icmp ne i64 %i.cm, 3
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp eq i64 %i.cm, 10
  br i1 %i.co, label %bb.ao, label %.invoke

bb.al:                                            ; preds = %bb.bc, %bb.au, %bb.am
  %.pn35 = phi { ptr, i32 } [ %i.cp, %bb.am ], [ %.pn33, %bb.bc ], [ %.pn17, %bb.au ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #14
          to label %.body unwind label %bb.ag

bb.am:                                            ; preds = %.invoke, %bb.dw, %bb.as, %bb.aq, %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %.invoke, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ac)
          to label %bb.be unwind label %bb.bd

bb.ao:                                            ; preds = %bb.ak
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cr = invoke noundef align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE5firstCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq)
          to label %bb.ap unwind label %bb.am     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %.not16 = icmp eq ptr %i.cr, null
  br i1 %.not16, label %.invoke, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @9, ptr %i.d, align 8, !captures !1244
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = invoke noundef zeroext i1 @_RNvXss_NtCslhcIeXEYQBj_11proc_macro23impNtB5_5IdentINtNtCs8Chj7Szqq0n_4core3cmp9PartialEqRReE2eqCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.ar unwind label %bb.am

.invoke:                                          ; preds = %bb.af, %bb.ar, %bb.ap, %bb.ak
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ai)
          to label %bb.an unwind label %bb.am

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ct, label %bb.as, label %.invoke

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.at unwind label %bb.am

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 2)
          to label %bb.aw unwind label %bb.av

bb.au:                                            ; preds = %bb.ay, %bb.av
  %.pn17 = phi { ptr, i32 } [ %i.cu, %bb.av ], [ %i.cv, %bb.ay ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah) #14
          to label %bb.al unwind label %bb.ag

bb.av:                                            ; preds = %bb.ba, %bb.aw, %bb.at
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.af)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.af) #14
          to label %bb.au unwind label %bb.ag

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.bb unwind label %bb.av

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.an

bb.bc:                                            ; preds = %bb.bf, %bb.bd
  %.pn33 = phi { ptr, i32 } [ %i.cw, %bb.bd ], [ %.pn31, %bb.bf ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #14
          to label %bb.al unwind label %bb.ag

bb.bd:                                            ; preds = %bb.dv, %bb.an
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.an
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_pound(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bg unwind label %.loopexit.split-lp

bb.bf:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cb, %bb.bv, %bb.bi
  %.pn31 = phi { ptr, i32 } [ %.pn19, %bb.bi ], [ %.pn29, %bb.cb ], [ %i.dh, %bb.bv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac) #14
          to label %bb.bc unwind label %bb.ag

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.be, %bb.bg, %bb.bo, %bb.bp, %.preheader._crit_edge, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bx, %bb.by, %bb.bz, %bb.du
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.bh unwind label %.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5)
          to label %bb.bk unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bm, %bb.bj
  %.pn19 = phi { ptr, i32 } [ %i.cx, %bb.bj ], [ %i.cy, %bb.bm ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #14
          to label %bb.bf unwind label %bb.ag

bb.bj:                                            ; preds = %bb.bn, %bb.bk, %bb.bh
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y)
          to label %bb.bl unwind label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 16)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #14
          to label %bb.bi unwind label %bb.ag

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.bo unwind label %bb.bj

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac, i8 noundef 2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.bp unwind label %.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.as, i64 296
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  %i.dc = load i64, ptr %i.db, align 8, !noundef !14 ; 2 uses
  %.idx = shl nuw nsw i64 %i.dc, 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx
  invoke void @_RNvXs0_NtCs2umgazJ8nt4_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCs8Chj7Szqq0n_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %.preheader.preheader unwind label %.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.bp
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.011.062, i64 256 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.dd
  br i1 %i.dg, label %.preheader._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.sroa.011.062 = phi ptr [ %i.df, %.preheader ], [ %i.da, %.preheader.preheader ] ; 2 uses
  invoke void @_RNvXNtNtCs2TChw36tfyQ_3syn4attr8printingNtB4_9AttributeNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.011.062, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.preheader unwind label %.loopexit

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  invoke void @_RNvXNtNtCs2TChw36tfyQ_3syn11restriction8printingNtB4_10VisibilityNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bq unwind label %.loopexit.split-lp

bb.bq:                                            ; preds = %.preheader._crit_edge
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 2)
          to label %bb.br unwind label %.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvXsq_NtCs2umgazJ8nt4_5quote9to_tokensNtCslhcIeXEYQBj_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bs unwind label %.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvXNtNtCs2TChw36tfyQ_3syn8generics8printingNtB4_8GenericsNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bt unwind label %.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs2TChw36tfyQ_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE5pairsCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #14
          to label %bb.bf unwind label %bb.ag

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RINvNvXNtCs2umgazJ8nt4_5quote3extNtCslhcIeXEYQBj_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCs2TChw36tfyQ_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.bx unwind label %bb.bv

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.by unwind label %.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsc_NtNtCs2TChw36tfyQ_3syn2ty8printingNtB7_10ReturnTypeNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bz unwind label %.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u)
          to label %bb.ca unwind label %.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_pound(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.cd unwind label %bb.cc

bb.cb:                                            ; preds = %bb.di, %bb.cs, %bb.cf, %bb.cc
  %.pn29 = phi { ptr, i32 } [ %i.di, %bb.cc ], [ %.pn27, %bb.di ], [ %.pn25, %bb.cs ], [ %.pn21, %bb.cf ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #14
          to label %bb.bf unwind label %bb.ag

bb.cc:                                            ; preds = %bb.dt, %bb.dg, %bb.df, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cd, %bb.ca
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cd:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s)
          to label %bb.ce unwind label %bb.cc

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 3)
          to label %bb.ch unwind label %bb.cg

bb.cf:                                            ; preds = %bb.cj, %bb.cg
  %.pn21 = phi { ptr, i32 } [ %i.dj, %bb.cg ], [ %i.dk, %bb.cj ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #14
          to label %bb.cb unwind label %bb.ag

bb.cg:                                            ; preds = %bb.cm, %bb.ch, %bb.ce
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.ci unwind label %bb.cg

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 7)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %bb.ck, %bb.ci
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #14
          to label %bb.cf unwind label %bb.ag

bb.ck:                                            ; preds = %bb.ci
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private7push_eq(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.cl unwind label %bb.cj

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private5parse(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 5)
          to label %bb.cm unwind label %bb.cj

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.cn unwind label %bb.cg

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, i8 noundef 2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.t)
          to label %bb.co unwind label %bb.cc

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !14, !noundef !14
  invoke void @_RNvXNtNtCs2TChw36tfyQ_3syn4stmt8printingNtB4_5BlockNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dm, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.cp unwind label %bb.cc

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_pound(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.cq unwind label %bb.cc

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.cr unwind label %bb.cc

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 3)
          to label %bb.cu unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cw, %bb.ct
  %.pn25 = phi { ptr, i32 } [ %i.dn, %bb.ct ], [ %.pn23, %bb.cw ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #14
          to label %bb.cb unwind label %bb.ag

bb.ct:                                            ; preds = %bb.de, %bb.cu, %bb.cr
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.cv unwind label %bb.ct

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 3)
          to label %bb.cy unwind label %bb.cx

bb.cw:                                            ; preds = %bb.da, %bb.cx
  %.pn23 = phi { ptr, i32 } [ %i.do, %bb.cx ], [ %i.dp, %bb.da ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #14
          to label %bb.cs unwind label %bb.ag

bb.cx:                                            ; preds = %bb.dd, %bb.cy, %bb.cv
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.cz unwind label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 7)
          to label %bb.db unwind label %bb.da

bb.da:                                            ; preds = %bb.dc, %bb.db, %bb.cz
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #14
          to label %bb.cw unwind label %bb.ag

bb.db:                                            ; preds = %bb.cz
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private7push_eq(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.dc unwind label %bb.da

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNtCs2umgazJ8nt4_5quote9___private5parse(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 5)
end_hunk_0
