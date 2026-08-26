Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/Geometric_Transforms_Demo?download=true
inline.NumInlined: 156
inline.NumDeleted: 63
begin_hunk_0_@main:.noexc.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 67
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.am)
          to label %.noexc172 unwind label %bb.q

.noexc172:                                        ; preds = %bb.h
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef signext i8 %i.at(ptr noundef nonnull align 8 dereferenceable(570) %i.am, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.q, !inline_history !46

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc172, %bb.g
  %.0.i.i.i = phi i8 [ %i.aq, %bb.g ], [ %i.au, %.noexc172 ]
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc174 unwind label %bb.q

.noexc174:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.q ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc174
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ay = load ptr, ptr %1, align 8, !tbaa !47    ; 3 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.az = load ptr, ptr @_ZSt4cout, align 8, !tbaa !22
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !48
  %i.bf = or i32 %i.be, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, i32 noundef %i.bf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.q

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #11
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.ay, i64 noundef %i.bg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %bb.i, %bb.j
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.bj = load ptr, ptr @_ZSt4cout, align 8, !tbaa !22
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 6 uses
  %.not.i.i.i176 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i176, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i177

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #13
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i177: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !40
  %.not.i1.i.i178 = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i178, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i177
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 67
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i177
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
          to label %.noexc182 unwind label %bb.q

.noexc182:                                        ; preds = %bb.l
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef signext i8 %i.bv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179 unwind label %bb.q, !inline_history !46

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179: ; preds = %.noexc182, %bb.k
  %.0.i.i.i180 = phi i8 [ %i.bs, %bb.k ], [ %i.bw, %.noexc182 ]
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i180)
          to label %.noexc184 unwind label %bb.q

.noexc184:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %_ZNSolsEPFRSoS_E.exit101 unwind label %bb.q ; 0 uses

bb.m:                                             ; preds = %.noexc.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.n:                                             ; preds = %.noexc
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.b
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.n
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.ca, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.bi

bb.o:                                             ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.p:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.p
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !17
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.o
  %.pn38 = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.cg, %bb.p ] ; 2 uses
  %i.cm = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.n
  br i1 %i.cn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.b
  %.sink = phi ptr [ %i.q, %bb.b ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  %.pn38.pn.ph = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  %i.co = load i64, ptr %i.n, align 8, !tbaa !17
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cp) #12
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.b
  %.pn38.pn = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn38.pn.ph, %.body.sink.split ]
  %i.cq = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.k
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %.body
  %i.cs = load i64, ptr %i.k, align 8, !tbaa !17
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.bh

bb.q:                                             ; preds = %.invoke, %.noexc184, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179, %.noexc182, %bb.l, %.noexc174, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc172, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, %bb.j, %bb.i, %_ZNSolsEPFRSoS_E.exit, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.cx, align 16
  %.sroa_idx202 = getelementptr inbounds nuw i8, ptr %15, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %.sroa_idx199 = getelementptr inbounds nuw i8, ptr %16, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.cy = load <2 x i32>, ptr %i.cw, align 8, !tbaa !49
  %36 = shufflevector <2 x i32> %i.cy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %37 = sitofp <4 x i32> %36 to <4 x float>       ; 3 uses
  %i.cz = extractelement <4 x float> %37, i64 0
  %38 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.da = fadd <2 x float> %38, splat (float -1.000000e+00) ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 1
  store float %i.db, ptr %i.cv, align 8
  %i.dc = extractelement <2 x float> %i.da, i64 0
  store float %i.dc, ptr %.sroa_idx202, align 4
  %i.dd = fmul nnan <4 x float> %37, <float 3.300000e-01, float 8.500000e-01, float 2.500000e-01, float 1.500000e-01>
  %i.de = fmul nnan float %i.cz, f0x3F333333
  store <4 x float> %i.dd, ptr %.sroa_idx199, align 4
  %.sroa_idx194 = getelementptr inbounds nuw i8, ptr %16, i64 20
  store float %i.de, ptr %.sroa_idx194, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  invoke void @_ZN2cv18getAffineTransformEPKNS_6Point_IfEES3_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull %15, ptr noundef nonnull %16)
          to label %bb.s unwind label %bb.aq

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  %i.dg = load i32, ptr %i.cw, align 8, !tbaa !50
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !57
  %i.di = load i32, ptr %11, align 8, !tbaa !58
  %i.dj = and i32 %i.di, 4095
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %19, i32 noundef %i.dg, i32 noundef %i.dh, i32 noundef %i.dj)
          to label %bb.t unwind label %bb.ar

bb.t:                                             ; preds = %bb.s
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #11
  %i.dk = load ptr, ptr %19, align 8, !tbaa !59, !noalias !66 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef -1)
          to label %bb.u unwind label %.body114

.body114:                                         ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #11
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #11
  br label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dp) #11
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dq) #11
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.ds, align 8, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.dt, align 4, !tbaa !71
  store i32 16842752, ptr %20, align 8, !tbaa !72
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %11, ptr %i.du, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.dw, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !72
  store ptr %18, ptr %i.dv, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  %i.dx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.dx, align 8, !tbaa !69
  %i.dy = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.dy, align 4, !tbaa !71
  store i32 16842752, ptr %22, align 8, !tbaa !72
  %i.dz = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %17, ptr %i.dz, align 8, !tbaa !74
  %i.ea = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !75 ; 6 uses
  %i.ec = icmp slt i32 %i.eb, 3
  br i1 %i.ec, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc120 unwind label %bb.at

.noexc120:                                        ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.9, i32 noundef 109) #13
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc120
  unreachable

bb.x:                                             ; preds = %.noexc120
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116: ; preds = %bb.x
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !17
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.body121

bb.y:                                             ; preds = %bb.u
  %i.ej = icmp sgt i32 %i.eb, 0
  br i1 %i.ej, label %bb.z, label %.thread.i

.thread.i:                                        ; preds = %bb.y
  %i.ek = icmp eq i32 %i.eb, 0
  %i.el = zext i1 %i.ek to i32
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 84
  %i.en = icmp eq i32 %i.eb, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %18, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = select i1 %i.en, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i119 = icmp eq i32 %i.eb, 1
  br i1 %.not.i119, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %.thread.i
  %i.ep = phi i32 [ %i.el, %.thread.i ], [ %i.eo, %bb.z ]
  %i.eq = icmp sgt i32 %i.eb, -1
  %i.er = zext i1 %i.eq to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.es = phi i32 [ %i.ep, %bb.aa ], [ %i.eo, %bb.z ]
  %i.et = phi i32 [ %i.er, %bb.aa ], [ %.val, %bb.z ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.et to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.es to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 %.sroa.0.0.insert.insert.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 0)
          to label %bb.ac unwind label %bb.au

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  %i.ev = load <2 x i32>, ptr %i.eu, align 8, !tbaa !49
  %i.ew = sdiv <2 x i32> %i.ev, splat (i32 2)
  %i.ex = sitofp <2 x i32> %i.ew to <2 x float>
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !76
  invoke void @_ZN2cv20getRotationMatrix2D_ENS_6Point_IfEEdd(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.1") align 8 %6, <2 x float> %i.ey, double noundef -5.000000e+01, double noundef 6.000000e-01)
          to label %.noexc123 unwind label %bb.av

.noexc123:                                        ; preds = %bb.ac
  store <4 x i32> <i32 1124024326, i32 2, i32 2, i32 3>, ptr %24, align 16, !tbaa !49, !alias.scope !76
  %i.ez = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 153, ptr %i.ez, align 16, !tbaa !79, !alias.scope !76
  %i.fa = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %24, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, i8 0, i64 48, i1 false), !alias.scope !76
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.fb, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc124 unwind label %bb.av

.noexc124:                                        ; preds = %.noexc123
  %i.fc = getelementptr inbounds nuw i8, ptr %24, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.fc, i8 0, i64 80, i1 false), !alias.scope !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !76
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 2, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef 0)
          to label %.noexc125 unwind label %bb.av

.noexc125:                                        ; preds = %.noexc124
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !76
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.fe, align 8, !noalias !76
  store i32 33619968, ptr %5, align 8, !tbaa !72, !noalias !76
  store ptr %24, ptr %i.fd, align 8, !tbaa !74, !noalias !76
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %.noexc125
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !76
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !76
  br label %.body126

bb.ae:                                            ; preds = %.noexc125
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !76
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !76
end_hunk_0
