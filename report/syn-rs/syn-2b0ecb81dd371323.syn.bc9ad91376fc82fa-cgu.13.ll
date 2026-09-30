Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.13?download=true
inline.NumInlined: 525
inline.NumDeleted: 159
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr:bb.a
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.515.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.542.0..sroa_idx.i.i, i64 136, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1414
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.i.i, i64 24, i1 false), !noalias !1414
  store i64 %i.di, ptr %i.ag, align 8, !noalias !1414
  %i.dm = icmp ne i64 %i.di, -9223372036854775777
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i64 %i.di, -9223372036854775783
  br i1 %i.dn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bv, ptr noundef nonnull align 8 dereferenceable(168) %i.ag, i64 168, i1 false)
  br label %bb.ak

.thread.i.i:                                      ; preds = %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 -9223372036854775783, ptr %i.ak, align 8, !noalias !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false), !noalias !1414
  %i.dp = load i64, ptr %i.ag, align 8, !range !19, !noalias !1414, !noundef !6 ; 2 uses
  %i.dq = icmp ne i64 %i.dp, -9223372036854775777
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %i.dp, -9223372036854775783
  br i1 %i.dr, label %.thread84.i.i, label %bb.ai

bb.aa:                                            ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.val58.i.i = load i64, ptr %i.ds, align 8, !noalias !1414, !noundef !6 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.val59.i.i = load ptr, ptr %i.dt, align 8, !noalias !1414, !align !5, !noundef !6
  %i.du = icmp ult i64 %.val58.i.i, 96076792050570582
  call void @llvm.assume(i1 %i.du)
  %.not.i65.i.i = icmp ne ptr %.val59.i.i, null
  %..i66.i.i = zext i1 %.not.i65.i.i to i64
  %i.dv = add nuw nsw i64 %.val58.i.i, %..i66.i.i
  %i.dw = icmp eq i64 %i.dv, %i.db
  br i1 %i.dw, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.414.0..sroa_idx.i.i, i64 104, i1 false), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.518.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.414.0..sroa_idx.i.i, i64 104, i1 false), !noalias !1414
  %i.dx = load i64, ptr %i.ak, align 8, !range !19, !noalias !1414, !noundef !6 ; 2 uses
  %i.dy = icmp ne i64 %i.dx, -9223372036854775777
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp eq i64 %i.dx, -9223372036854775783
  br i1 %i.dz, label %.thread105.i.i, label %bb.ad

.thread105.i.i:                                   ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.414.0..sroa_idx.i.i, i64 104, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ad
  %.pre.i.i = load i64, ptr %i.ag, align 8, !range !19, !noalias !1414 ; 2 uses
  store i64 -9223372036854775783, ptr %i.ak, align 8, !noalias !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.518.i.i, i64 104, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ea = icmp ne i64 %.pre.i.i, -9223372036854775777
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp eq i64 %.pre.i.i, -9223372036854775783
  br i1 %i.eb, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ak)
          to label %bb.ac unwind label %.thread.i.i, !noalias !1414

bb.ae:                                            ; preds = %bb.af, %bb.ac, %.thread105.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.ah unwind label %bb.ag, !noalias !1414

bb.af:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ag)
          to label %bb.ae unwind label %bb.o, !noalias !1414

bb.ag:                                            ; preds = %bb.ao, %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1414
  br label %bb.k

bb.ai:                                            ; preds = %.thread.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ag) #16
          to label %.thread84.i.i unwind label %bb.aj, !noalias !1414

bb.aj:                                            ; preds = %bb.bn, %bb.bm, %.body.i.i, %bb.bb, %bb.ba, %bb.ay, %.body63.thread.i.i, %bb.ai, %.thread84.i.i, %.critedge.i.i
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1414
  unreachable

bb.ak:                                            ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %.thread94.i.i unwind label %bb.an, !noalias !1414

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i: ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.val56.i.i = load i32, ptr %i.ee, align 8, !range !18, !noalias !1414, !noundef !6
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val57.i.i = load ptr, ptr %i.ef, align 8, !noalias !1414 ; 4 uses
  %i.eg = icmp eq i32 %.val56.i.i, 2
  br i1 %i.eg, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val57.i.i) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %.val57.i.i) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i.i unwind label %bb.am, !noalias !1416, !inline_history !0

bb.am:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i, i64 noundef 248, i64 noundef 8) #14, !noalias !1416, !inline_history !0
  br label %bb.ay

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i.i: ; preds = %bb.al
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i, i64 noundef 248, i64 noundef 8) #14, !noalias !1416, !inline_history !0
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.thread94.i.i:                                    ; preds = %bb.ao, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1414
  %i.ej = load i64, ptr %i.ak, align 8, !range !19, !noalias !1414, !noundef !6 ; 2 uses
  %i.ek = icmp ne i64 %i.ej, -9223372036854775777
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp eq i64 %i.ej, -9223372036854775783
  br i1 %i.el, label %bb.ap, label %bb.ax

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx)
          to label %.thread94.i.i unwind label %bb.ag, !noalias !1414

bb.ap:                                            ; preds = %bb.ax, %.thread94.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1414
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %bb.at unwind label %bb.aq, !noalias !1414

bb.aq:                                            ; preds = %bb.ap
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !1420, !noalias !1414, !noundef !6 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %common.resume, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eq = load i64, ptr %i.eo, align 8, !noalias !1421, !noundef !6
  %i.er = add i64 %i.eq, -1                       ; 2 uses
  store i64 %i.er, ptr %i.eo, align 8, !noalias !1421
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.as, label %common.resume

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.en) #18
          to label %common.resume unwind label %bb.aw, !noalias !1414

bb.at:                                            ; preds = %bb.ap
  %i.et = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !1425, !noalias !1414, !noundef !6 ; 3 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = load i64, ptr %i.eu, align 8, !noalias !1426, !noundef !6
  %i.ex = add i64 %i.ew, -1                       ; 2 uses
  store i64 %i.ex, ptr %i.eu, align 8, !noalias !1426
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.av, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i

bb.av:                                            ; preds = %bb.au
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.et) #18, !noalias !1414
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i

bb.aw:                                            ; preds = %bb.as
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1414
  unreachable

common.resume:                                    ; preds = %2, %.body289.thread, %.thread483, %bb.mm, %.thread469, %bb.lg, %bb.lp, %bb.mv, %bb.lj, %bb.li, %bb.lh, %bb.mp, %bb.mo, %bb.mn, %.body, %.body239, %.critedge.i.i, %bb.aq, %bb.ar, %bb.as, %bb.bd, %bb.be, %bb.bf, %bb.cs, %bb.ct, %bb.cu, %bb.db, %bb.dc, %bb.dd, %.thread.i17.i, %bb.ek
  %common.resume.op = phi { ptr, i32 } [ %.pn7.i, %bb.ek ], [ %.pn6689.i.i, %.thread.i17.i ], [ %.pn51.i.i, %.critedge.i.i ], [ %i.fe, %bb.bd ], [ %i.em, %bb.aq ], [ %i.em, %bb.as ], [ %i.em, %bb.ar ], [ %i.fe, %bb.bf ], [ %i.fe, %bb.be ], [ %i.hq, %bb.db ], [ %i.hc, %bb.cs ], [ %i.hc, %bb.cu ], [ %i.hc, %bb.ct ], [ %i.hq, %bb.dd ], [ %i.hq, %bb.dc ], [ %i.tk, %bb.mv ], [ %.pn223413, %.body289.thread ], [ %.pn208, %2 ], [ %.pn217, %.body239 ], [ %.pn213, %bb.lg ], [ %.pn215472, %.thread469 ], [ %.pn219, %bb.mm ], [ %.pn221486, %.thread483 ], [ %i.sy, %bb.mn ], [ %i.sy, %bb.mo ], [ %i.rx, %bb.lp ], [ %.pn210, %.body ], [ %i.sy, %bb.mp ], [ %i.rl, %bb.lh ], [ %i.rl, %bb.lj ], [ %i.rl, %bb.li ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %.thread94.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ak)
          to label %bb.ap unwind label %bb.f, !noalias !1414

.body63.thread.i.i:                               ; preds = %.body63.thread92.i.i, %bb.s
  %eh.lpad-body6491.i.i = phi { ptr, i32 } [ %i.df, %.body63.thread92.i.i ], [ %i.de, %bb.s ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.val54.i.i = load i32, ptr %i.fa, align 8, !range !18, !noalias !1414, !noundef !6
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val55.i.i = load ptr, ptr %i.fb, align 8, !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val54.i.i, ptr %.val55.i.i) #16
          to label %bb.ay unwind label %bb.aj, !noalias !1414

bb.ay:                                            ; preds = %.body63.thread.i.i, %bb.am
  %.pn47.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body6491.i.i, %.body63.thread.i.i ], [ %i.eh, %bb.am ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx) #16
          to label %bb.bk unwind label %bb.aj, !noalias !1414

bb.az:                                            ; preds = %.thread84.i.i
  br i1 %.sroa.029.0.i.i, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %bb.az
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.val.i.i = load i32, ptr %i.fc, align 8, !range !18, !noalias !1414, !noundef !6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val53.i.i = load ptr, ptr %i.fd, align 8, !noalias !1414
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val.i.i, ptr %.val53.i.i) #16
          to label %bb.bb unwind label %bb.aj, !noalias !1414

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx) #16
          to label %bb.bk unwind label %bb.aj, !noalias !1414

.body.i.i:                                        ; preds = %bb.m
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #16
          to label %.critedge.i.i unwind label %bb.aj, !noalias !1414

bb.bc:                                            ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cs, ptr noundef nonnull align 8 dereferenceable(168) %i.aa, i64 168, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1414
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.423.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1414
  store i64 -9223372036854775794, ptr %i.bv, align 8, !alias.scope !1414
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.cs, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1414
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i32 %i.cr, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1414
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %bb.bg unwind label %bb.bd, !noalias !1414

bb.bd:                                            ; preds = %bb.bc
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !1430, !noalias !1414, !noundef !6 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %common.resume, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fi = load i64, ptr %i.fg, align 8, !noalias !1431, !noundef !6
  %i.fj = add i64 %i.fi, -1                       ; 2 uses
  store i64 %i.fj, ptr %i.fg, align 8, !noalias !1431
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.bf, label %common.resume

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ff) #18
          to label %common.resume unwind label %bb.bj, !noalias !1414

bb.bg:                                            ; preds = %bb.bc
  %i.fl = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !1435, !noalias !1414, !noundef !6 ; 3 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = load i64, ptr %i.fm, align 8, !noalias !1436, !noundef !6
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %i.fm, align 8, !noalias !1436
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.bi, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fl) #18, !noalias !1414
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i

bb.bj:                                            ; preds = %bb.bf
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1414
  unreachable

bb.bk:                                            ; preds = %bb.bb, %bb.az, %bb.ay, %bb.an, %bb.ag
  %.sroa.036.3.ph.i.i = phi i1 [ %.sroa.036.0.i.i, %bb.az ], [ %.not.not.i.i, %bb.ag ], [ %.sroa.036.0.i.i, %bb.bb ], [ false, %bb.an ], [ false, %bb.ay ]
  %.pn49.ph.i.i = phi { ptr, i32 } [ %.pn45.i.i, %bb.az ], [ %i.ec, %bb.ag ], [ %.pn45.i.i, %bb.bb ], [ %i.ei, %bb.an ], [ %.pn47.ph.i.i, %bb.ay ] ; 3 uses
  %i.fs = load i64, ptr %i.ak, align 8, !range !19, !noalias !1414, !noundef !6 ; 2 uses
  %i.ft = icmp ne i64 %i.fs, -9223372036854775777
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp eq i64 %i.fs, -9223372036854775783
  br i1 %i.fu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br i1 %.sroa.036.3.ph.i.i, label %bb.bn, label %.critedge.i.i

bb.bm:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ak) #16
          to label %.critedge.i.i unwind label %bb.aj, !noalias !1414

bb.bn:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr8ExprPathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i) #16
          to label %.critedge.i.i unwind label %bb.aj, !noalias !1414

_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.av, %bb.au, %bb.at, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1414
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exitthread-pre-split

bb.bo:                                            ; preds = %bb.b
  %i.fv = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ParenNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1), !noalias !1412
  br i1 %i.fv, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1412
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr7ExprLitEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.as, ptr noundef nonnull align 8 %1), !noalias !1412
  %i.fw = load i64, ptr %i.as, align 8, !range !10, !noalias !1412, !noundef !6
  %i.fx = icmp eq i64 %i.fw, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  br i1 %i.fx, label %bb.et, label %bb.eu

bb.bq:                                            ; preds = %bb.bo
  %i.fz = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_5ident5IdentEB8_(ptr noundef nonnull align 8 %1), !noalias !1412
  br i1 %i.fz, label %bb.dn, label %bb.dm

bb.br:                                            ; preds = %bb.bo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1438
  call void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.y, ptr noundef nonnull align 8 %1), !noalias !1438
  %i.ga = load i64, ptr %i.y, align 8, !range !17, !noalias !1438, !noundef !6
  %i.gb = trunc nuw i64 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.gb, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false)
  store i64 -1, ptr %i.bv, align 8, !alias.scope !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1438
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing14paren_or_tuple.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.ge = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.ge, i64 12, i1 false), !noalias !1438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.gc, i64 32, i1 false), !noalias !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1438
  %.val73.i.i = load ptr, ptr %i.z, align 8, !noalias !1438, !noundef !6
  %i.gf = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %.val74.i.i = load ptr, ptr %i.gf, align 8, !noalias !1438, !noundef !6
  %i.gg = icmp eq ptr %.val73.i.i, %.val74.i.i
  br i1 %i.gg, label %bb.dl, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.797.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.899.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1438
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.x, ptr noundef nonnull align 8 %i.z)
          to label %bb.bv unwind label %.thread90.i.i, !noalias !1438

.thread90.i.i:                                    ; preds = %bb.bu
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i17.i

bb.bv:                                            ; preds = %bb.bu
  %i.gi = load i64, ptr %i.x, align 8, !range !12, !noalias !1438, !noundef !6 ; 3 uses
  %i.gj = icmp eq i64 %i.gi, -1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !1438
  br i1 %i.gj, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1438
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i16.i, i64 24, i1 false)
  store i64 -1, ptr %i.bv, align 8, !alias.scope !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i16.i)
  br label %bb.dk

end_hunk_0
begin_hunk_1_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr:bb.a
          to label %bb.ee unwind label %.thread27.i, !noalias !1412

bb.ee:                                            ; preds = %bb.ed
  %i.iy = load i64, ptr %i.ao, align 8, !range !12, !noalias !1412, !noundef !6
  %.not.i = icmp eq i64 %i.iy, -1
  br i1 %.not.i, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ao)
          to label %bb.eh unwind label %.thread27.i, !noalias !1412

bb.eg:                                            ; preds = %bb.ee
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ao)
          to label %bb.ej unwind label %.thread27.i, !noalias !1412

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1412
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ej, %bb.eh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aq)
          to label %bb.em unwind label %bb.el, !noalias !1412

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1412
  %.val.i = load ptr, ptr %i.aq, align 8, !noalias !1412, !noundef !6
  %i.iz = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val9.i = load ptr, ptr %i.iz, align 8, !noalias !1412, !noundef !6
  %i.ja = icmp eq ptr %.val.i, %.val9.i
  br i1 %i.ja, label %bb.en, label %bb.ei

bb.ek:                                            ; preds = %.thread.i, %bb.el, %bb.ea
  %.pn7.i = phi { ptr, i32 } [ %i.jb, %bb.el ], [ %.pn26.i, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.ea ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ar) #16
          to label %common.resume unwind label %bb.es, !noalias !1412

bb.el:                                            ; preds = %bb.eq, %bb.ei
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.em:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1412
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ar), !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1412
  br label %bb.dy

bb.en:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1412
  %.val14.i = load ptr, ptr %1, align 8, !noalias !1412, !noundef !6
  %.val15.i = load ptr, ptr %i.ip, align 8, !noalias !1412, !noundef !6
  %.val12.i = load ptr, ptr %i.ar, align 8, !noalias !1412, !noundef !6
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val13.i = load ptr, ptr %i.jc, align 8, !noalias !1412, !noundef !6
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn8verbatim7between(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.an, ptr noundef %.val14.i, ptr noundef %.val15.i, ptr noundef %.val12.i, ptr noundef %.val13.i)
          to label %bb.eo unwind label %.thread27.i, !noalias !1412

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvXNtNtCsgbWeKYPjk8w_3syn5parse11discouragedNtB4_11ParseBufferNtB2_11Speculative10advance_to(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.ar)
          to label %bb.eq unwind label %bb.ep, !noalias !1412

bb.ep:                                            ; preds = %bb.eo
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro211TokenStreamECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an) #16
          to label %.thread.i unwind label %bb.es, !noalias !1412

bb.eq:                                            ; preds = %bb.eo
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  store i64 -9223372036854775771, ptr %i.bv, align 8, !alias.scope !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1412
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aq)
          to label %bb.er unwind label %bb.el, !noalias !1412

bb.er:                                            ; preds = %bb.eq, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1412
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ar), !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1412
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exitthread-pre-split

bb.es:                                            ; preds = %.thread.i, %bb.ep, %bb.ek
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1412
  unreachable

.thread.i:                                        ; preds = %bb.ep, %.thread27.i
  %.pn26.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread27.i ], [ %i.jd, %bb.ep ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aq) #16
          to label %bb.ek unwind label %bb.es, !noalias !1412

bb.et:                                            ; preds = %bb.bp
  %i.jf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i64 24, i1 false)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fy, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.sink.i = phi i64 [ -1, %bb.et ], [ -9223372036854775789, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1412
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exitthread-pre-split: ; preds = %bb.er, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing23path_or_macro_or_struct.exit.i, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing14paren_or_tuple.exit.i, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10expr_group.exit.i
  %.pr = load i64, ptr %i.bv, align 8
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit: ; preds = %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exitthread-pre-split, %bb.ev
  %i.jg = phi i64 [ %.pr, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exitthread-pre-split ], [ %.sink.i, %bb.ev ] ; 2 uses
  %i.jh = icmp eq i64 %i.jg, -1
  br i1 %i.jh, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit.thread, label %bb.ew

_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit.thread: ; preds = %bb.dy, %bb.dx, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.kk

bb.ew:                                            ; preds = %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4127.0..sroa_idx, i64 24, i1 false)
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5128.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.jg, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.4.0..sroa_idx.i.i244 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i245 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.518.sroa.0.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 36 ; 2 uses
  %.sroa.518.sroa.0.sroa.8.0..sroa.518.0..sroa_idx19.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 4 uses
  %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx19.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 56 ; 3 uses
  %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 5 uses
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.4392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.5393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.6394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 25
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.486.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 4 uses
  %.sroa.486.sroa.0.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 49
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  %.sroa.675.sroa.0.sroa.9.sroa.6.0..sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %.sroa.675.sroa.0.sroa.9.sroa.7.0..sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %.sroa.675.sroa.0.sroa.9.sroa.8.0..sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 137
  %.sroa.675.sroa.6.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %.sroa.675.sroa.7.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 152
  %.sroa.675.sroa.8.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 156
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ki = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 8 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.69.sroa.7.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 8 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.ew
  %i.kp = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ParenNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ex unwind label %.body289.thread422

2:                                                ; preds = %3, %.body249
  br i1 %.sroa.0119.3, label %.body289.thread, label %common.resume

.body289.thread422:                               ; preds = %bb.mg, %bb.la, %bb.fe, %bb.fl, %bb.fj, %bb.fh, %bb.ff, %bb.ey, %.backedge
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body289.thread

bb.ex:                                            ; preds = %.backedge
  br i1 %i.kp, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.kq = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3DotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.fd unwind label %.body289.thread422

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i64 0, ptr %i.bt, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.kk, align 8
  store i64 0, ptr %i.kl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.br, ptr noundef nonnull align 8 dereferenceable(168) %i.bw, i64 168, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1463
  %i.kr = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !1463 ; 10 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.fa, label %bb.lr, !prof !21

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc unwind label %bb.fb

.noexc:                                           ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.fa
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.br) #16
          to label %.body239 unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.fd:                                            ; preds = %bb.ey
  br i1 %i.kq, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fi, %bb.fg, %bb.fd
  %i.kv = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token7BracketNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ke unwind label %.body289.thread422

bb.ff:                                            ; preds = %bb.fd
  %i.kw = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token6DotDotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.fg unwind label %.body289.thread422

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.kw, label %bb.fe, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.kx = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token5AwaitNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.fi unwind label %.body289.thread422

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.kx, label %bb.fe, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3DotEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noundef nonnull align 8 %1)
          to label %bb.fk unwind label %.body289.thread422

bb.fk:                                            ; preds = %bb.fj
  %i.ky = load i64, ptr %i.bp, align 8, !range !10, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.ky, -1
  %.sroa.0131.0.copyload = load i32, ptr %i.jk, align 8 ; 3 uses
  br i1 %.not, label %bb.fl, label %.critedge

.critedge:                                        ; preds = %bb.fk
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5140.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5137.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ky, ptr %i.kz, align 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0131.0.copyload, ptr %.sroa.4139.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %.critedge230

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_3lit8LitFloatEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, ptr noundef nonnull align 8 %1)
          to label %bb.fm unwind label %.body289.thread422

bb.fm:                                            ; preds = %bb.fl
  %i.la = load i64, ptr %i.bo, align 8, !range !10, !noundef !6 ; 2 uses
  %.not184 = icmp eq i64 %i.la, -1
  %i.lb = load ptr, ptr %i.jl, align 8            ; 7 uses
  br i1 %.not184, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.5146.0.copyload = load i64, ptr %.sroa.5146.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.la, ptr %i.lc, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lb, ptr %.sroa.4148.0..sroa_idx, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5146.0.copyload, ptr %.sroa.5149.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %.critedge230

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %.not185 = icmp eq ptr %i.lb, null              ; 15 uses
  br i1 %.not185, label %bb.hg, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.lb, ptr %i.l, align 8, !noalias !1465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1465
  invoke void @_RNvMs5_NtCsgbWeKYPjk8w_3syn3litNtB5_8LitFloat5token(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.fr unwind label %bb.fq, !noalias !1466

.body97.i:                                        ; preds = %bb.he, %bb.gm, %.body90.i, %bb.fq
  %.pn86.i = phi { ptr, i32 } [ %.pn84.i, %.body90.i ], [ %i.mu, %bb.gm ], [ %i.ld, %bb.fq ], [ %i.ns, %bb.he ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn3lit8LitFloatEBF_(ptr nonnull align 8 %i.lb) #16
          to label %.body289.thread unwind label %bb.gz, !noalias !1467

bb.fq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i, %bb.fp
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body97.i

bb.fr:                                            ; preds = %bb.fp
  %i.le = load i64, ptr %i.k, align 8, !range !10, !noalias !1465, !noundef !6
  %.not.i243 = icmp eq i64 %i.le, -1
  %i.lf = load i32, ptr %i.jm, align 4, !range !1468, !noalias !1465
  %.sroa.047.0.i = select i1 %.not.i243, i32 %i.lf, i32 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1469
  store i64 0, ptr %i.c, align 8, !noalias !1469
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i244, align 8, !noalias !1469
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i245, align 8, !noalias !1469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1469
  store i64 1610612768, ptr %i.jn, align 8, !noalias !1469
  store ptr %i.c, ptr %i.b, align 8, !noalias !1469
  store ptr @18, ptr %i.jo, align 8, !noalias !1469
  %i.lg = invoke noundef zeroext i1 @_RNvXsJ_Cs6et67aoV1xO_11proc_macro2NtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ft unwind label %.loopexit, !noalias !1470

.loopexit:                                        ; preds = %bb.fr
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

.loopexit.split-lp:                               ; preds = %bb.fu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fs:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %.body90.i unwind label %bb.fv, !noalias !1470

bb.ft:                                            ; preds = %bb.fr
  br i1 %i.lg, label %bb.fu, label %bb.fx, !prof !21

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %.noexc.i.i247 unwind label %.loopexit.split-lp, !noalias !1470

.noexc.i.i247:                                    ; preds = %bb.fu
  unreachable

bb.fv:                                            ; preds = %bb.fs
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1470
  unreachable

.body90.i:                                        ; preds = %bb.hb, %bb.gj, %.loopexit.split-lp.i, %bb.fw, %bb.fs
  %.pn84.i = phi { ptr, i32 } [ %.pn.i, %.loopexit.split-lp.i ], [ %lpad.phi, %bb.fs ], [ %i.mq, %bb.gj ], [ %i.li, %bb.fw ], [ %i.no, %bb.hb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #16
          to label %.body97.i unwind label %bb.gz, !noalias !1467

bb.fw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i102.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i.i
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %bb.gw, %.body.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.nf, %.body.i ], [ %i.nh, %bb.gw ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit120.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit521, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #16
          to label %.body90.i unwind label %bb.gz, !noalias !1467

.loopexit.i:                                      ; preds = %bb.ge
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.gx, %bb.gq, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %lpad.loopexit120.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit:  ; preds = %bb.fx, %.split.i.i, %bb.gp
  %lpad.loopexit521 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %bb.gc
  %lpad.loopexit.split-lp522 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.fx:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1469
  %i.lj = load ptr, ptr %i.jp, align 8, !noalias !1465, !nonnull !6, !noundef !6
  %i.lk = load i64, ptr %i.jq, align 8, !noalias !1465, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1465
  store i32 46, ptr %i.f, align 4, !noalias !1465
  %i.ll = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lj, i64 noundef %i.lk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %bb.fy unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !1467 ; 2 uses

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1465
  %.pre199.i = load i64, ptr %i.jq, align 8, !noalias !1465 ; 4 uses
  br i1 %i.ll, label %bb.fz, label %.lr.ph.i

bb.fz:                                            ; preds = %bb.fy
  %i.lm = icmp sgt i64 %.pre199.i, -1
  call void @llvm.assume(i1 %i.lm)
  %i.ln = add nsw i64 %.pre199.i, -1              ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %.not.i.i246 = icmp eq i64 %.pre199.i, 0
  br i1 %.not.i.i246, label %.lr.ph.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %.not118.i = icmp eq i64 %i.ln, 0
  br i1 %.not118.i, label %.split.i.i, label %bb.gb

.split.i.i:                                       ; preds = %bb.gb, %bb.ga
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef range(i64 -1, 9223372036854775807) %i.ln)
          to label %.split.i._crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !1467

.split.i._crit_edge.i:                            ; preds = %.split.i.i
  %.pre.i = load i64, ptr %i.jq, align 8, !noalias !1465
  br label %.lr.ph.i

bb.gb:                                            ; preds = %bb.ga
  %i.lo = load ptr, ptr %i.jp, align 8, !alias.scope !1472, !noalias !1465, !nonnull !6, !noundef !6
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ln
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !1473, !noundef !6
  %i.lr = icmp sgt i8 %i.lq, -65
  br i1 %i.lr, label %.split.i.i, label %bb.gc, !prof !1474

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
          to label %.noexc92.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !1467

.noexc92.i:                                       ; preds = %bb.gc
  unreachable

.lr.ph.i:                                         ; preds = %.split.i._crit_edge.i, %bb.fz, %bb.fy
  %i.ls = phi i64 [ %.pre.i, %.split.i._crit_edge.i ], [ %.pre199.i, %bb.fy ], [ 0, %bb.fz ] ; 13 uses
  %i.lt = load ptr, ptr %i.jp, align 8, !noalias !1465, !nonnull !6, !noundef !6 ; 3 uses
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gy, %.lr.ph.i
  %.sroa.0.1 = phi i32 [ %.sroa.0131.0.copyload, %.lr.ph.i ], [ %.sroa.039.0.i, %bb.gy ] ; 4 uses
  %.lcssa137155.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa137153.i, %bb.gy ] ; 3 uses
  %.sroa.042.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ni, %bb.gy ] ; 2 uses
  %.lcssa124140148.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa124139.i, %bb.gy ] ; 7 uses
  %i.lu = icmp ult i64 %i.ls, %.lcssa137155.i
  br i1 %i.lu, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.gd, %bb.gg
  %i.lv = phi i64 [ %i.mj, %bb.gg ], [ %.lcssa137155.i, %bb.gd ] ; 5 uses
  %i.lw = sub nuw i64 %i.ls, %i.lv                ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lv ; 2 uses
  %i.ly = icmp samesign ult i64 %i.lw, 16
  br i1 %i.ly, label %.preheader.i.i.i.i, label %bb.ge

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ls, %i.lv
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i.i.i

bb.ge:                                            ; preds = %.lr.ph.split.i.i.i
  %i.lz = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lx, i64 noundef range(i64 0, -9223372036854775808) %i.lw)
          to label %.noexc93.i unwind label %.loopexit.i, !noalias !1467 ; 2 uses

.noexc93.i:                                       ; preds = %bb.ge
  %i.ma = extractvalue { i64, i64 } %i.lz, 0
  %i.mb = extractvalue { i64, i64 } %i.lz, 1
  %i.mc = trunc nuw i64 %i.ma to i1
  br i1 %i.mc, label %.loopexit.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.gf
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.mg, %bb.gf ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.sroa.04.011.i.i.i.i
  %i.me = load i8, ptr %i.md, align 1, !alias.scope !1475, !noalias !1476, !noundef !6
  %i.mf = icmp eq i8 %i.me, 46
  br i1 %i.mf, label %.loopexit.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mg = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.mg, %i.lw
  br i1 %exitcond.not.i.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_1
begin_hunk_2_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr:bb.a
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i unwind label %bb.gm, !noalias !1467

bb.gm:                                            ; preds = %bb.gl
  %i.mu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body97.i unwind label %bb.gn, !noalias !1467

bb.gn:                                            ; preds = %bb.gm
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1467
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit112.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i
  %.sroa.7.sroa.7.sroa.0.1 = phi i24 [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.7.sroa.7.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i ], [ %.sroa.7.sroa.7.0.extract.trunc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i ]
  %.sroa.7.sroa.0.1 = phi i8 [ %i.mp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.7.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i ], [ %.sroa.7.sroa.0.0.extract.trunc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i ] ; 2 uses
  %.sroa.13.1 = phi i64 [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.13.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i ], [ %.sroa.667.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i ]
  %.sroa.12.1 = phi i32 [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.12.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i ], [ %.sroa.566.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i ]
  %.sroa.0337.1 = phi i64 [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.0337.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i ], [ %.sroa.064.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i ] ; 2 uses
  %.sroa.0.3 = phi i32 [ %.sroa.039.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i ], [ %.sroa.0.2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i ], [ %.sroa.0.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1465
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn3lit8LitFloatEBF_(ptr nonnull align 8 %i.lb)
          to label %bb.hi unwind label %bb.hh

bb.go:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %i.mw = load i64, ptr %i.i, align 8, !range !10, !noalias !1465, !noundef !6
  %.not82.i = icmp eq i64 %i.mw, -1
  br i1 %.not82.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1465
  invoke void @_RINvMNtCsgbWeKYPjk8w_3syn5errorNtB3_5Error3newBt_EB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i32 noundef %.sroa.047.0.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ha unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !1467

bb.gq:                                            ; preds = %bb.go
  %i.mx = load i32, ptr %i.jr, align 8, !noalias !1465, !noundef !6 ; 2 uses
  %i.my = add i64 %.sroa.4.1.i.ph.i, %.sroa.042.0151.i ; 3 uses
  %i.mz = invoke { i32, i32 } @_RINvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB6_7Literal7subspanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %.sroa.042.0151.i, i64 noundef %i.my)
          to label %bb.gr unwind label %.loopexit.split-lp.loopexit.i, !noalias !1467 ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  %i.na = extractvalue { i32, i32 } %i.mz, 0
  %i.nb = trunc i32 %i.na to i1
  %i.nc = extractvalue { i32, i32 } %i.mz, 1
  %.sroa.014.0.i = select i1 %i.nb, i32 %i.nc, i32 %.sroa.047.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.h, ptr noundef nonnull align 8 dereferenceable(168) %i.bw, i64 168, i1 false), !noalias !1478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bw, ptr noundef nonnull align 8 dereferenceable(168) @12, i64 168, i1 false), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.sroa.0.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1465
  store i64 0, ptr %i.g, align 8, !noalias !1465
  store ptr inttoptr (i64 8 to ptr), ptr %i.js, align 8, !noalias !1465
  store i64 0, ptr %i.jt, align 8, !noalias !1465
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1479
  %i.nd = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !1479 ; 4 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.gs, label %bb.gv, !prof !21

bb.gs:                                            ; preds = %bb.gr
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc100.i unwind label %bb.gt, !noalias !1467

.noexc100.i:                                      ; preds = %bb.gs
  unreachable

bb.gt:                                            ; preds = %bb.gs
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.h) #16
          to label %.body.i unwind label %bb.gu, !noalias !1467

bb.gu:                                            ; preds = %bb.gt
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1467
  unreachable

.body.i:                                          ; preds = %bb.gt
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #16
          to label %.loopexit.split-lp.i unwind label %bb.gz, !noalias !1467

bb.gv:                                            ; preds = %bb.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.nd, ptr noundef nonnull align 8 dereferenceable(168) %i.h, i64 168, i1 false), !noalias !1467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.sroa.0.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1465
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.bw)
          to label %bb.gx unwind label %bb.gw, !noalias !1467

bb.gw:                                            ; preds = %bb.gv
  %i.nh = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775796, ptr %i.bw, align 8, !alias.scope !1464, !noalias !1478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.sroa.0.sroa.0.i, i64 24, i1 false), !noalias !1478
  store i32 %i.mx, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1464, !noalias !1478
  store i32 %.sroa.014.0.i, ptr %.sroa.518.sroa.0.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 4, !alias.scope !1464, !noalias !1478
  store i8 -1, ptr %.sroa.518.sroa.0.sroa.8.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8, !alias.scope !1464, !noalias !1478
  store ptr %i.nd, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8, !alias.scope !1464, !noalias !1478
  store i32 %.sroa.0.1, ptr %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8, !alias.scope !1464, !noalias !1478
  br label %.loopexit.split-lp.i

bb.gx:                                            ; preds = %bb.gv
  store i64 -9223372036854775796, ptr %i.bw, align 8, !alias.scope !1464, !noalias !1478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.sroa.0.sroa.0.i, i64 24, i1 false), !noalias !1478
  store i32 %i.mx, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1464, !noalias !1478
  store i32 %.sroa.014.0.i, ptr %.sroa.518.sroa.0.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 4, !alias.scope !1464, !noalias !1478
  store i8 -1, ptr %.sroa.518.sroa.0.sroa.8.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8, !alias.scope !1464, !noalias !1478
  store ptr %i.nd, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8, !alias.scope !1464, !noalias !1478
  store i32 %.sroa.0.1, ptr %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8, !alias.scope !1464, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.sroa.0.sroa.0.i)
  %i.ni = add i64 %i.my, 1                        ; 2 uses
  %i.nj = invoke { i32, i32 } @_RINvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB6_7Literal7subspanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.my, i64 noundef %i.ni)
          to label %bb.gy unwind label %.loopexit.split-lp.loopexit.i, !noalias !1467 ; 2 uses

bb.gy:                                            ; preds = %bb.gx
  %i.nk = extractvalue { i32, i32 } %i.nj, 0
  %i.nl = trunc i32 %i.nk to i1
  %i.nm = extractvalue { i32, i32 } %i.nj, 1
  %.sroa.039.0.i = select i1 %i.nl, i32 %i.nm, i32 %.sroa.047.0.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1465
  br i1 %i.mn, label %bb.gi, label %bb.gd

bb.gz:                                            ; preds = %.body.i, %.loopexit.split-lp.i, %.body90.i, %.body97.i
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1467
  unreachable

bb.ha:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1465
  %.sroa.064.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !1465 ; 2 uses
  %.sroa.465.0.copyload.i = load i32, ptr %i.jr, align 8, !noalias !1465 ; 2 uses
  %.sroa.566.0.copyload.i = load i32, ptr %.sroa.566.0..sroa_idx.i, align 4, !noalias !1465 ; 2 uses
  %.sroa.667.0.copyload.i = load i64, ptr %.sroa.667.0..sroa_idx.i, align 8, !noalias !1465 ; 2 uses
  %.sroa.7.sroa.0.0.extract.trunc = trunc i32 %.sroa.465.0.copyload.i to i8 ; 2 uses
  %.sroa.7.sroa.7.0.extract.shift = lshr i32 %.sroa.465.0.copyload.i, 8
  %.sroa.7.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.sroa.7.0.extract.shift to i24 ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i102.i unwind label %bb.hb, !noalias !1467

bb.hb:                                            ; preds = %bb.ha
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body90.i unwind label %bb.hc, !noalias !1467

bb.hc:                                            ; preds = %bb.hb
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1467
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i102.i: ; preds = %bb.ha
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i unwind label %bb.fw, !noalias !1467

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1465
  %i.nq = load i64, ptr %i.k, align 8, !range !10, !alias.scope !1480, !noalias !1465, !noundef !6
  %i.nr = icmp eq i64 %i.nq, -1
  br i1 %i.nr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit112.i, label %bb.hd

bb.hd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit106.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i unwind label %bb.he, !noalias !1467

bb.he:                                            ; preds = %bb.hd
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body97.i unwind label %bb.hf, !noalias !1467

bb.hf:                                            ; preds = %bb.he
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !1467
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i108.invoke.i: ; preds = %bb.hd, %bb.gl
  %.sroa.7.sroa.7.sroa.0.0 = phi i24 [ undef, %bb.gl ], [ %.sroa.7.sroa.7.0.extract.trunc, %bb.hd ]
  %.sroa.7.sroa.0.0 = phi i8 [ %i.mp, %bb.gl ], [ %.sroa.7.sroa.0.0.extract.trunc, %bb.hd ]
  %.sroa.13.0 = phi i64 [ undef, %bb.gl ], [ %.sroa.667.0.copyload.i, %bb.hd ]
  %.sroa.12.0 = phi i32 [ undef, %bb.gl ], [ %.sroa.566.0.copyload.i, %bb.hd ]
  %.sroa.0337.0 = phi i64 [ -1, %bb.gl ], [ %.sroa.064.0.copyload.i, %bb.hd ]
  %.sroa.0.2 = phi i32 [ %.sroa.039.0.i, %bb.gl ], [ %.sroa.0.1, %bb.hd ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit112.i unwind label %bb.fq, !noalias !1467

bb.hg:                                            ; preds = %bb.hk, %bb.fo
  %.sroa.0.0 = phi i32 [ %.sroa.0131.0.copyload, %bb.fo ], [ %.sroa.0.3, %bb.hk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr6MemberEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bn, ptr noundef nonnull align 8 %1)
          to label %bb.hl unwind label %bb.hh

.body249:                                         ; preds = %.thread458, %bb.jg, %.loopexit524, %.loopexit.split-lp525, %.thread464.thread, %bb.is, %bb.it, %bb.iu, %.thread464, %bb.kd, %bb.kc, %bb.hn, %bb.hh, %.thread426
  %.sroa.0119.3 = phi i1 [ true, %bb.hn ], [ true, %bb.hh ], [ %.sroa.0119.6432, %.thread426 ], [ %.sroa.0119.6432, %bb.kd ], [ %.sroa.0119.6432, %bb.kc ], [ false, %.thread464 ], [ false, %.thread464.thread ], [ true, %bb.is ], [ true, %bb.it ], [ true, %bb.iu ], [ true, %.loopexit524 ], [ false, %.loopexit.split-lp525 ], [ false, %bb.jg ], [ false, %.thread458 ]
  %.sroa.0119.3.a = phi i1 [ %.not185, %bb.hn ], [ %.sroa.0124.2, %bb.hh ], [ %.not185, %.thread426 ], [ %.not185, %bb.kd ], [ %.not185, %bb.kc ], [ %.not185, %.thread464 ], [ %.not185, %.thread464.thread ], [ %.not185, %bb.is ], [ %.not185, %bb.it ], [ %.not185, %bb.iu ], [ %.not185, %.loopexit524 ], [ %.not185, %.loopexit.split-lp525 ], [ %.not185, %bb.jg ], [ %.not185, %.thread458 ]
  %.pn208 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp436, %bb.hn ], [ %i.nu, %bb.hh ], [ %.pn206433, %.thread426 ], [ %.pn206433, %bb.kd ], [ %.pn206433, %bb.kc ], [ %.pn, %.thread464 ], [ %i.pr, %.thread464.thread ], [ %i.oy, %bb.is ], [ %i.oy, %bb.it ], [ %i.oy, %bb.iu ], [ %lpad.loopexit526, %.loopexit524 ], [ %lpad.loopexit.split-lp527, %.loopexit.split-lp525 ], [ %.pn198, %bb.jg ], [ %.pn200463, %.thread458 ] ; 2 uses
  %.not185.not = icmp ne ptr %i.lb, null
  %or.cond3 = and i1 %.not185.not, %.sroa.0119.3.a
  br i1 %or.cond3, label %3, label %2

bb.hh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit112.i, %bb.hg
  %.sroa.0124.2 = phi i1 [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit112.i ], [ %.not185, %bb.hg ]
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.hi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn.exit112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not186 = icmp eq i64 %.sroa.0337.1, -1
  br i1 %.not186, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0337.1, ptr %i.nv, align 8
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.7.sroa.0.1, ptr %.sroa.4157.0..sroa_idx, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i24 %.sroa.7.sroa.7.sroa.0.1, ptr %.sroa.5158.0..sroa_idx, align 1
  %.sroa.5158.sroa.4.0..sroa.5158.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.12.1, ptr %.sroa.5158.sroa.4.0..sroa.5158.0..sroa_idx.sroa_idx, align 4
  %.sroa.5158.sroa.5.0..sroa.5158.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.1, ptr %.sroa.5158.sroa.5.0..sroa.5158.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %.critedge230

bb.hk:                                            ; preds = %bb.hi
  %i.nw = trunc nuw i8 %.sroa.7.sroa.0.1 to i1
  br i1 %i.nw, label %.backedge.backedge, label %bb.hg

bb.hl:                                            ; preds = %bb.hg
  %i.nx = load i64, ptr %i.bn, align 8, !range !17, !noundef !6
  %i.ny = trunc nuw i64 %i.nx to i1
  %.sroa.0399.0.copyload = load ptr, ptr %i.ju, align 8 ; 19 uses
  %.sroa.4400.0.copyload = load i64, ptr %.sroa.4392.0..sroa_idx, align 8 ; 19 uses
  %.sroa.5401.0.copyload = load i8, ptr %.sroa.5393.0..sroa_idx, align 8 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.552.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6394.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br i1 %i.ny, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %.sroa.6406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6406.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.552.sroa.9, i64 7, i1 false)
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0399.0.copyload, ptr %i.nz, align 8
  %.sroa.4404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4400.0.copyload, ptr %.sroa.4404.0..sroa_idx, align 8
  %.sroa.5405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5401.0.copyload, ptr %.sroa.5405.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552.sroa.9)
  br label %.critedge230

.thread437:                                       ; preds = %bb.hu, %bb.hr, %bb.hp
  %lpad.thr_comm435 = landingpad { ptr, i32 }
          cleanup
  br label %.thread426

bb.hn:                                            ; preds = %bb.jx
  %lpad.thr_comm.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.ho:                                            ; preds = %bb.hl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.552.sroa.9, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.oa = icmp ne i8 %.sroa.5401.0.copyload, -1   ; 3 uses
  br i1 %i.oa, label %bb.hp, label %bb.hx

bb.hp:                                            ; preds = %bb.ho
  %i.ob = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token7PathSepNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.hq unwind label %.thread437

bb.hq:                                            ; preds = %bb.hp
  br i1 %i.ob, label %bb.hr, label %bb.hx

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token7PathSepEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noundef nonnull align 8 %1)
          to label %bb.hs unwind label %.thread437

bb.hs:                                            ; preds = %bb.hr
  %i.oc = load i64, ptr %i.bl, align 8, !range !10, !noundef !6 ; 2 uses
  %.not187 = icmp eq i64 %i.oc, -1
  %.sroa.0159.0.copyload = load i64, ptr %i.jx, align 8 ; 2 uses
  br i1 %.not187, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.5165.0.copyload = load i64, ptr %.sroa.5165.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.oc, ptr %i.od, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0159.0.copyload, ptr %.sroa.4167.0..sroa_idx, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5165.0.copyload, ptr %.sroa.5168.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ka

bb.hu:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store i64 %.sroa.0159.0.copyload, ptr %i.jy, align 4
  store i32 1, ptr %i.bj, align 4
  invoke void @_RNvMs0_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_30AngleBracketedGenericArguments8do_parse(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bk, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bj, ptr noundef nonnull align 8 %1)
          to label %bb.hv unwind label %.thread437

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.oe = load i64, ptr %i.bk, align 8, !range !10, !noundef !6 ; 2 uses
  %i.of = icmp eq i64 %i.oe, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4170.0..sroa_idx, i64 24, i1 false)
  br i1 %i.of, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.og, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  br label %bb.ka

bb.hx:                                            ; preds = %bb.hq, %bb.ho
  store i64 -1, ptr %i.bm, align 8
  %i.oh = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ParenNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ia unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5171.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.273.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  store i64 %i.oe, ptr %i.bm, align 8
  br label %bb.if

bb.hz:                                            ; preds = %bb.hx
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.ia:                                            ; preds = %bb.hx
  %or.cond228.not = and i1 %i.oa, %i.oh
  br i1 %or.cond228.not, label %bb.if, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.jv, align 8
  store i64 0, ptr %i.jw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bb, ptr noundef nonnull align 8 dereferenceable(168) %i.bw, i64 168, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1481
  %i.oj = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !1481 ; 3 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.ic, label %bb.jx, !prof !21

bb.ic:                                            ; preds = %bb.ib
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc251 unwind label %bb.id

.noexc251:                                        ; preds = %bb.ic
  unreachable

bb.id:                                            ; preds = %bb.ic
  %i.ol = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.bb) #16
          to label %.body236 unwind label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.if:                                            ; preds = %bb.hy, %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 0, ptr %i.bh, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.jz, align 8
  store i64 0, ptr %i.ka, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bf, ptr noundef nonnull align 8 dereferenceable(168) %i.bw, i64 168, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1482
  %i.on = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !1482 ; 4 uses
  %i.oo = icmp eq ptr %i.on, null                 ; 2 uses
  br i1 %i.oo, label %bb.ig, label %bb.ij, !prof !21

bb.ig:                                            ; preds = %bb.if
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc253 unwind label %bb.ih

.noexc253:                                        ; preds = %bb.ig
  unreachable

bb.ih:                                            ; preds = %bb.ig
  %i.op = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bm, i64 56, i1 false)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.au, ptr noundef nonnull align 8 %1)
          to label %bb.il unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.be) #16
          to label %bb.jt unwind label %bb.ji

bb.il:                                            ; preds = %bb.ij
  %i.os = load i64, ptr %i.au, align 8, !range !17, !noundef !6
  %i.ot = trunc nuw i64 %i.os to i1               ; 2 uses
  br i1 %i.ot, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ou, ptr noundef nonnull align 8 dereferenceable(24) %i.kb, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.be)
          to label %bb.jm unwind label %bb.jl

bb.in:                                            ; preds = %bb.il
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.kb, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer16parse_terminatedNtNtB8_4expr4ExprINvNtB8_5token5CommaNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bd, ptr noundef nonnull align 8 %i.bi, ptr noundef nonnull @_RNvXNtNtCsgbWeKYPjk8w_3syn4expr7parsingNtB4_4ExprNtNtB6_5parse5Parse5parse)
          to label %bb.ip unwind label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.be) #16
          to label %bb.jj unwind label %bb.ji

bb.ip:                                            ; preds = %bb.in
  %i.ow = load i64, ptr %i.bd, align 8, !range !10, !noundef !6 ; 2 uses
  %.not821 = icmp eq i64 %i.ow, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.681, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4173.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br i1 %.not821, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ox, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.681, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.be)
          to label %bb.jb unwind label %bb.iz

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.486.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.681, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.675.sroa.0.sroa.9.sroa.8.0..sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.be, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.sroa.8.0..sroa.675.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.kc, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  store i64 -9223372036854775785, ptr %i.bw, align 8
  store i64 %i.ow, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.0399.0.copyload, ptr %.sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.4400.0.copyload, ptr %.sroa.675.sroa.0.sroa.9.sroa.6.0..sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store i8 %.sroa.5401.0.copyload, ptr %.sroa.675.sroa.0.sroa.9.sroa.7.0..sroa.675.sroa.0.sroa.9.0..sroa.675.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store ptr %i.on, ptr %.sroa.675.sroa.6.0..sroa.675.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.0.0, ptr %.sroa.675.sroa.7.0..sroa.675.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %bb.iv unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.oy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.oz = load ptr, ptr %i.kd, align 8, !alias.scope !1486, !noundef !6 ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %.body249, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.pb = load i64, ptr %i.oz, align 8, !noalias !1487, !noundef !6
  %i.pc = add i64 %i.pb, -1                       ; 2 uses
  store i64 %i.pc, ptr %i.oz, align 8, !noalias !1487
  %i.pd = icmp eq i64 %i.pc, 0
  br i1 %i.pd, label %bb.iu, label %.body249

bb.iu:                                            ; preds = %bb.it
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kd) #18
          to label %.body249 unwind label %bb.iy

bb.iv:                                            ; preds = %bb.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.pe = load ptr, ptr %i.kd, align 8, !alias.scope !1491, !noundef !6 ; 3 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.pg = load i64, ptr %i.pe, align 8, !noalias !1492, !noundef !6
  %i.ph = add i64 %i.pg, -1                       ; 2 uses
  store i64 %i.ph, ptr %i.pe, align 8, !noalias !1492
  %i.pi = icmp eq i64 %i.ph, 0
  br i1 %i.pi, label %bb.ix, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.ix:                                            ; preds = %bb.iw
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kd) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit unwind label %.loopexit524

bb.iy:                                            ; preds = %bb.iu
  %i.pj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.thread464:                                       ; preds = %.body233
  br i1 %i.oo, label %bb.jv, label %.body249

.loopexit524:                                     ; preds = %bb.ix
  %lpad.loopexit526 = landingpad { ptr, i32 }
          cleanup
  br label %.body249

.loopexit.split-lp525:                            ; preds = %bb.jh
  %lpad.loopexit.split-lp527 = landingpad { ptr, i32 }
          cleanup
  br label %.body249

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit: ; preds = %bb.iw, %bb.iv, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %.backedge.backedge

bb.iz:                                            ; preds = %bb.iq
  %i.pk = landingpad { ptr, i32 }
          cleanup
  %i.pl = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.pm = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond511 = select i1 %i.pl, i1 true, i1 %i.pm
  br i1 %or.cond511, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1493
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.jb:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.pn = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.po = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond512 = select i1 %i.pn, i1 true, i1 %i.po
  br i1 %or.cond512, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit261, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1494
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit261

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.ja, %bb.iz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bg) #16
          to label %bb.jd unwind label %bb.ji

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit261: ; preds = %bb.jc, %bb.jb
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bg)
          to label %bb.jf unwind label %bb.je

bb.jd:                                            ; preds = %bb.je, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  %.pn192 = phi { ptr, i32 } [ %i.pp, %bb.je ], [ %i.pk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #16
          to label %.thread458 unwind label %bb.ji

bb.je:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit261
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

bb.jf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh)
          to label %bb.jh unwind label %.split.thread

.split.thread:                                    ; preds = %bb.jf
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %.thread458

bb.jg:                                            ; preds = %bb.jo
  br i1 %.sroa.0114.6, label %.thread458, label %.body249

.thread464.thread:                                ; preds = %bb.jq
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.jh:                                            ; preds = %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bi)
          to label %bb.js unwind label %.loopexit.split-lp525

bb.ji:                                            ; preds = %3, %.body289.thread, %.thread483, %.body306, %.body309, %bb.lx, %bb.ls, %.body239, %.thread469, %.body282, %.body284, %bb.kr, %bb.km, %.body, %bb.jz, %.body236, %.thread458, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit270, %bb.jo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit264, %bb.jd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, %bb.io, %bb.ik, %.body233
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.jj:                                            ; preds = %bb.jl, %bb.io
  %.pn194 = phi { ptr, i32 } [ %i.pv, %bb.jl ], [ %i.ov, %bb.io ]
  %.sroa.0114.4 = xor i1 %i.ot, true
  %i.pt = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.pu = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond513 = select i1 %i.pt, i1 true, i1 %i.pu
  br i1 %or.cond513, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit264, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1495
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit264

bb.jl:                                            ; preds = %bb.im
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.jm:                                            ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.pw = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.px = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond514 = select i1 %i.pw, i1 true, i1 %i.px
  br i1 %or.cond514, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit267, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1496
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit267

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit264: ; preds = %bb.jk, %bb.jj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bg) #16
          to label %bb.jo unwind label %bb.ji

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit267: ; preds = %bb.jn, %bb.jm
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bg)
          to label %bb.jq unwind label %bb.jp

bb.jo:                                            ; preds = %bb.jp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit264
  %.sroa.0114.6 = phi i1 [ false, %bb.jp ], [ %.sroa.0114.4, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit264 ]
  %.pn198 = phi { ptr, i32 } [ %i.py, %bb.jp ], [ %.pn194, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit264 ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #16
          to label %bb.jg unwind label %bb.ji

bb.jp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit267
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.jq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh)
          to label %bb.jr unwind label %.thread464.thread

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.kk

bb.jt:                                            ; preds = %bb.ik
  %i.pz = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.qa = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond515 = select i1 %i.pz, i1 true, i1 %i.qa
  br i1 %or.cond515, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit270, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1497
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit270

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit270: ; preds = %bb.ju, %bb.jt
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bg) #16
          to label %.body233 unwind label %bb.ji

.thread458:                                       ; preds = %bb.jd, %.split.thread, %bb.jg
  %.pn200463 = phi { ptr, i32 } [ %i.pq, %.split.thread ], [ %.pn198, %bb.jg ], [ %.pn192, %bb.jd ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bi) #16
          to label %.body249 unwind label %bb.ji

bb.jv:                                            ; preds = %.thread464
  %i.qb = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.qc = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond516 = select i1 %i.qb, i1 true, i1 %i.qc
  br i1 %or.cond516, label %bb.jz, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1498
  br label %bb.jz

.body236:                                         ; preds = %bb.id
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #16
          to label %bb.jz unwind label %bb.ji

bb.jx:                                            ; preds = %bb.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.oj, ptr noundef nonnull align 8 dereferenceable(168) %i.bb, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.486.sroa.0.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  store i64 -9223372036854775796, ptr %i.bw, align 8
  store ptr %.sroa.0399.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %.sroa.4400.0.copyload, ptr %.sroa.486.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.5401.0.copyload, ptr %.sroa.518.sroa.0.sroa.8.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8
  store ptr %i.oj, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8
  store i32 %.sroa.0.0, ptr %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bm)
          to label %bb.jy unwind label %bb.hn

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %.backedge.backedge

bb.jz:                                            ; preds = %.body236, %bb.hz, %bb.jv, %bb.jw
  %.sroa.0116.2.ph = phi i1 [ true, %bb.hz ], [ true, %.body236 ], [ false, %bb.jv ], [ false, %bb.jw ]
  %.sroa.0119.8.ph = phi i1 [ true, %bb.hz ], [ false, %.body236 ], [ false, %bb.jv ], [ false, %bb.jw ]
  %.pn204.ph = phi { ptr, i32 } [ %i.oi, %bb.hz ], [ %i.ol, %.body236 ], [ %.pn, %bb.jv ], [ %.pn, %bb.jw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bm) #16
          to label %.thread426 unwind label %bb.ji

bb.ka:                                            ; preds = %bb.ht, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.qd = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.qe = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond517 = select i1 %i.qd, i1 true, i1 %i.qe
  br i1 %or.cond517, label %.critedge230, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1499
  br label %.critedge230

.thread426:                                       ; preds = %bb.jz, %.thread437
  %i.qf = phi i1 [ true, %.thread437 ], [ %i.oa, %bb.jz ]
  %.pn206433 = phi { ptr, i32 } [ %lpad.thr_comm435, %.thread437 ], [ %.pn204.ph, %bb.jz ] ; 3 uses
  %.sroa.0119.6432 = phi i1 [ true, %.thread437 ], [ %.sroa.0119.8.ph, %bb.jz ] ; 3 uses
  %.sroa.0116.0431 = phi i1 [ true, %.thread437 ], [ %.sroa.0116.2.ph, %bb.jz ]
  %or.cond = and i1 %i.qf, %.sroa.0116.0431
  br i1 %or.cond, label %bb.kc, label %.body249

bb.kc:                                            ; preds = %.thread426
  %i.qg = icmp eq i8 %.sroa.5401.0.copyload, 2
  %i.qh = icmp eq i64 %.sroa.4400.0.copyload, 0
  %or.cond518 = select i1 %i.qg, i1 true, i1 %i.qh
  br i1 %or.cond518, label %.body249, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0399.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0399.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4400.0.copyload, i64 noundef 1) #14, !noalias !1500
  br label %.body249

3:                                                ; preds = %.body249
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn3lit8LitFloatEBF_(ptr nonnull %i.lb) #16
          to label %2 unwind label %bb.ji

.critedge230:                                     ; preds = %bb.hm, %bb.ka, %bb.kb, %bb.fn, %bb.hj, %.critedge
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.bw)
  br label %bb.kk

bb.ke:                                            ; preds = %bb.fe
  br i1 %i.kv, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.bw, i64 168, i1 false)
  br label %bb.kk

bb.kg:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 0, ptr %i.az, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ke, align 8
  store i64 0, ptr %i.kf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ax, ptr noundef nonnull align 8 dereferenceable(168) %i.bw, i64 168, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1501
  %i.qi = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !1501 ; 10 uses
  %i.qj = icmp eq ptr %i.qi, null
  br i1 %i.qj, label %bb.kh, label %bb.kl, !prof !21

bb.kh:                                            ; preds = %bb.kg
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc280 unwind label %bb.ki

.noexc280:                                        ; preds = %bb.kh
  unreachable

bb.ki:                                            ; preds = %bb.kh
  %i.qk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ax) #16
          to label %.body unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.kk:                                            ; preds = %_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing9atom_expr.exit.thread, %.critedge230, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit300, %bb.js, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  ret void

.body:                                            ; preds = %bb.ki, %bb.km
  %.pn210 = phi { ptr, i32 } [ %i.qm, %bb.km ], [ %i.qk, %bb.ki ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #16
          to label %common.resume unwind label %bb.ji

bb.kl:                                            ; preds = %bb.kg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qi, ptr noundef nonnull align 8 dereferenceable(168) %i.ax, i64 168, i1 false)
  store ptr %i.qi, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn5group14parse_brackets(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.at, ptr noundef nonnull align 8 %1)
          to label %bb.kn unwind label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ay) #16
          to label %.body unwind label %bb.ji

bb.kn:                                            ; preds = %bb.kl
  %i.qn = load i64, ptr %i.at, align 8, !range !17, !noundef !6
  %i.qo = trunc nuw i64 %i.qn to i1               ; 2 uses
  br i1 %i.qo, label %bb.ko, label %bb.kq

bb.ko:                                            ; preds = %bb.kn
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qp, ptr noundef nonnull align 8 dereferenceable(24) %i.kg, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.qi) #17
          to label %bb.lo unwind label %bb.kp, !noalias !1502, !inline_history !7

bb.kp:                                            ; preds = %bb.ko
  %i.qq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef 168, i64 noundef 8) #14, !noalias !1502, !inline_history !7
  br label %.body282

bb.kq:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.kg, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtB8_4expr4ExprEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noundef nonnull align 8 %i.ba)
          to label %bb.ks unwind label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ay) #16
          to label %.body282 unwind label %bb.ji

bb.ks:                                            ; preds = %bb.kq
  %i.qs = load i64, ptr %i.aw, align 8, !range !10, !noundef !6 ; 2 uses
  %.not212 = icmp eq i64 %i.qs, -1
  %i.qt = load ptr, ptr %i.ki, align 8            ; 2 uses
  br i1 %.not212, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5179.0.copyload = load i64, ptr %.sroa.5179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.qs, ptr %i.qu, align 8
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qt, ptr %.sroa.4181.0..sroa_idx, align 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.5182.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.qi) #17
          to label %bb.lc unwind label %.body284, !noalias !1503, !inline_history !7

.body284:                                         ; preds = %bb.kt
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef 168, i64 noundef 8) #14, !noalias !1503, !inline_history !7
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #16
          to label %.thread469 unwind label %bb.ji

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.518.sroa.0.sroa.8.0..sroa.518.0..sroa_idx19.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %i.kh, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 -9223372036854775792, ptr %i.bw, align 8
  store ptr %i.qi, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.qt, ptr %.sroa.486.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %bb.ky unwind label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.qw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.qx = load ptr, ptr %i.kj, align 8, !alias.scope !1507, !noundef !6 ; 3 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %.body289.thread, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.qz = load i64, ptr %i.qx, align 8, !noalias !1508, !noundef !6
  %i.ra = add i64 %i.qz, -1                       ; 2 uses
  store i64 %i.ra, ptr %i.qx, align 8, !noalias !1508
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %bb.kx, label %.body289.thread

bb.kx:                                            ; preds = %bb.kw
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kj) #18
          to label %.body289.thread unwind label %bb.lb

bb.ky:                                            ; preds = %bb.ku
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.rc = load ptr, ptr %i.kj, align 8, !alias.scope !1512, !noundef !6 ; 3 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit291, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.re = load i64, ptr %i.rc, align 8, !noalias !1513, !noundef !6
  %i.rf = add i64 %i.re, -1                       ; 2 uses
  store i64 %i.rf, ptr %i.rc, align 8, !noalias !1513
  %i.rg = icmp eq i64 %i.rf, 0
  br i1 %i.rg, label %bb.la, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit291

bb.la:                                            ; preds = %bb.kz
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kj) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit291 unwind label %.body289.thread422

bb.lb:                                            ; preds = %bb.kx
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit291: ; preds = %bb.kz, %bb.ky, %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %.backedge.backedge

bb.lc:                                            ; preds = %bb.kt
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef 168, i64 noundef 8) #14, !noalias !1503, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.le unwind label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.thread469 unwind label %bb.lf

bb.le:                                            ; preds = %bb.lc
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %.body293.thread481
end_hunk_3
begin_hunk_4_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr:bb.a

bb.lz:                                            ; preds = %bb.ly
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.kr) #17
          to label %bb.mi unwind label %.body309, !noalias !1525, !inline_history !7

.body309:                                         ; preds = %bb.lz
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef 168, i64 noundef 8) #14, !noalias !1525, !inline_history !7
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #16
          to label %.thread483 unwind label %bb.ji

bb.ma:                                            ; preds = %bb.ly
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.486.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.69.sroa.7.0..sroa.69.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.kn, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  store i64 -9223372036854775801, ptr %i.bw, align 8
  store i64 %i.sf, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.kr, ptr %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx19.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %bb.me unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.sj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  %i.sk = load ptr, ptr %i.ko, align 8, !alias.scope !1529, !noundef !6 ; 3 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %.body289.thread, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.sm = load i64, ptr %i.sk, align 8, !noalias !1530, !noundef !6
  %i.sn = add i64 %i.sm, -1                       ; 2 uses
  store i64 %i.sn, ptr %i.sk, align 8, !noalias !1530
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %bb.md, label %.body289.thread

bb.md:                                            ; preds = %bb.mc
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko) #18
          to label %.body289.thread unwind label %bb.mh

bb.me:                                            ; preds = %bb.ma
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.sp = load ptr, ptr %i.ko, align 8, !alias.scope !1534, !noundef !6 ; 3 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit317, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.sr = load i64, ptr %i.sp, align 8, !noalias !1535, !noundef !6
  %i.ss = add i64 %i.sr, -1                       ; 2 uses
  store i64 %i.ss, ptr %i.sp, align 8, !noalias !1535
  %i.st = icmp eq i64 %i.ss, 0
  br i1 %i.st, label %bb.mg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit317

bb.mg:                                            ; preds = %bb.mf
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit317 unwind label %.body289.thread422

bb.mh:                                            ; preds = %bb.md
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit317: ; preds = %bb.mf, %bb.me, %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit317, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit291, %bb.jy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, %bb.hk
  br label %.backedge

bb.mi:                                            ; preds = %bb.lz
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef 168, i64 noundef 8) #14, !noalias !1525, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.mk unwind label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.thread483 unwind label %bb.ml

bb.mk:                                            ; preds = %bb.mi
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit322 unwind label %.body320.thread495

.body320.thread495:                               ; preds = %bb.mk
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.thread483

bb.ml:                                            ; preds = %bb.mj
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.mm:                                            ; preds = %.body306
  br i1 %i.sb, label %common.resume, label %.thread483

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit322: ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %bb.mq unwind label %bb.mn

bb.mn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit322
  %i.sy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.sz = load ptr, ptr %i.ko, align 8, !alias.scope !1539, !noundef !6 ; 3 uses
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %common.resume, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.tb = load i64, ptr %i.sz, align 8, !noalias !1540, !noundef !6
  %i.tc = add i64 %i.tb, -1                       ; 2 uses
  store i64 %i.tc, ptr %i.sz, align 8, !noalias !1540
  %i.td = icmp eq i64 %i.tc, 0
  br i1 %i.td, label %bb.mp, label %common.resume

bb.mp:                                            ; preds = %bb.mo
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko) #18
          to label %common.resume unwind label %bb.mt

bb.mq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit322
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %i.te = load ptr, ptr %i.ko, align 8, !alias.scope !1544, !noundef !6 ; 3 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.tg = load i64, ptr %i.te, align 8, !noalias !1545, !noundef !6
  %i.th = add i64 %i.tg, -1                       ; 2 uses
  store i64 %i.th, ptr %i.te, align 8, !noalias !1545
  %i.ti = icmp eq i64 %i.th, 0
  br i1 %i.ti, label %bb.ms, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328

bb.ms:                                            ; preds = %bb.mr
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328

bb.mt:                                            ; preds = %bb.mp
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body306:                                         ; preds = %bb.lv, %bb.lx
  %.pn219 = phi { ptr, i32 } [ %i.se, %bb.lx ], [ %i.sd, %bb.lv ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #16
          to label %bb.mm unwind label %bb.ji

bb.mu:                                            ; preds = %bb.lu
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef 168, i64 noundef 8) #14, !noalias !1524, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit333 unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.tk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %common.resume unwind label %bb.mw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit333: ; preds = %bb.mu
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328

bb.mw:                                            ; preds = %bb.mv
  %i.tl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit328: ; preds = %bb.ms, %bb.mr, %bb.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.kk

.thread483:                                       ; preds = %bb.mj, %.body309, %.body320.thread495, %bb.mm
  %.pn221486 = phi { ptr, i32 } [ %i.si, %.body309 ], [ %.pn219, %bb.mm ], [ %i.sw, %.body320.thread495 ], [ %i.sv, %bb.mj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bu) #16
          to label %common.resume unwind label %bb.ji

.body289.thread:                                  ; preds = %.body97.i, %bb.mb, %bb.mc, %bb.md, %bb.kv, %bb.kw, %bb.kx, %.body289.thread422, %2
  %.pn223413 = phi { ptr, i32 } [ %lpad.thr_comm, %.body289.thread422 ], [ %.pn208, %2 ], [ %i.qw, %bb.kv ], [ %i.qw, %bb.kx ], [ %i.qw, %bb.kw ], [ %i.sj, %bb.md ], [ %i.sj, %bb.mc ], [ %i.sj, %bb.mb ], [ %.pn86.i, %.body97.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.bw) #16
          to label %common.resume unwind label %bb.ji
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing14ambiguous_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10unary_expr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.b, align 8, !range !12, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10parse_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, i8 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing18expr_struct_helper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [224 x i8], align 8               ; 4 uses
  %i.d = alloca [224 x i8], align 8               ; 7 uses
  %.sroa.621 = alloca [24 x i8], align 8          ; 6 uses
  %i.e = alloca [168 x i8], align 8               ; 5 uses
  %i.f = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.0.sroa.0 = alloca [104 x i8], align 8    ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 12 uses
  %i.l = alloca [56 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_braces(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %.thread153

.thread153:                                       ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.l, align 8, !range !17, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8, !alias.scope !1596
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1596
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1596
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.823.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.bh
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.r, %bb.d
  %.val108 = load ptr, ptr %i.m, align 8, !noundef !6
  %.val109 = load ptr, ptr %i.t, align 8, !noundef !6
  %i.v = icmp eq ptr %.val108, %.val109
  br i1 %i.v, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token6DotDotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %bb.bo

bb.h:                                             ; preds = %bb.g
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr10FieldValueEB8_(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.d, ptr noundef nonnull align 8 %i.m)
          to label %bb.k unwind label %bb.bo

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.y, align 8
  %i.z = load <2 x i32>, ptr %2, align 8
  %.sroa.0125.0.copyload = load i32, ptr %2, align 8 ; 3 uses
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8129.0.copyload = load ptr, ptr %.sroa.8129.0..sroa_idx, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token6DotDotEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.m)
          to label %bb.ak unwind label %bb.aj

bb.k:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.d, align 8, !range !10, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.468.0..sroa_idx, i64 24, i1 false)
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  br label %bb.ai

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.823.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.569.0..sroa_idx, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.aa, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr10FieldValueNtNtB4_5token5CommaE4pushB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(224) %i.c)
          to label %bb.n unwind label %bb.bo

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  %.val106 = load ptr, ptr %i.m, align 8, !noundef !6
  %.val107 = load ptr, ptr %i.t, align 8, !noundef !6
  %i.ad = icmp eq ptr %.val106, %.val107
  br i1 %i.ad, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.m)
          to label %bb.p unwind label %bb.bo

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %i.b, align 8, !range !10, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.ae, -1
  %.sroa.070.0.copyload = load i32, ptr %i.u, align 8 ; 2 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.579.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.576.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.070.0.copyload, ptr %.sroa.478.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
end_hunk_4
