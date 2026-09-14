Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_rep_btree_navigator_test?download=true
inline.NumInlined: 3288
inline.NumDeleted: 1198
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_Test8TestBodyEv:bb.a
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(128) %i.mm) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit186

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn69 = phi { ptr, i32 } [ %i.ms, %bb.bp ], [ %i.mr, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.mt = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i184, label %_ZN7testing7MessageD2Ev.exit186, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.bq
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !37
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(128) %i.mt) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit186

_ZN7testing7MessageD2Ev.exit186:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185, %bb.bq, %bb.bn
  %.pn69.pn = phi { ptr, i32 } [ %i.mq, %bb.bn ], [ %.pn69, %bb.bq ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.ei

bb.br:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit178, %_ZN7testing7MessageD2Ev.exit183
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !109 ; 4 uses
  %.not.i.i187 = icmp eq ptr %i.my, null
  br i1 %.not.i.i187, label %_ZN7testing15AssertionResultD2Ev.exit191, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !38 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188: ; preds = %bb.bs
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !42
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit191

_ZN7testing15AssertionResultD2Ev.exit191:         ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.ne = load ptr, ptr %i.fc, align 8, !tbaa !154
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 -8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !156
  store ptr %i.ng, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.nh = load ptr, ptr %i.q, align 8, !tbaa !97  ; 3 uses
  %i.ni = load i8, ptr %i.t, align 4, !tbaa !42   ; 3 uses
  %i.nj = zext i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !156
  store ptr %i.nm, ptr %i.f, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.nn = load i8, ptr %22, align 8, !tbaa !106, !range !107, !noundef !108
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.cc, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.np = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !109 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i192, label %_ZNK7testing15AssertionResult15failure_messageEv.exit193, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit193

_ZNK7testing15AssertionResult15failure_messageEv.exit193: ; preds = %bb.bv, %bb.bu
  %i.ns = phi ptr [ %i.nr, %bb.bv ], [ @.str.56, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 139, ptr noundef %i.ns)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.nt = load ptr, ptr %24, align 8, !tbaa !111  ; 3 uses
  %.not.i.i194 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i194, label %_ZN7testing7MessageD2Ev.exit196, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.bx
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !37
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(128) %i.nt) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit196

_ZN7testing7MessageD2Ev.exit196:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.cc

bb.by:                                            ; preds = %bb.bt
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit199

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn72 = phi { ptr, i32 } [ %i.nz, %bb.ca ], [ %i.ny, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.oa = load ptr, ptr %24, align 8, !tbaa !111  ; 3 uses
  %.not.i.i197 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i197, label %_ZN7testing7MessageD2Ev.exit199, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198: ; preds = %bb.cb
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !37
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(128) %i.oa) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit199

_ZN7testing7MessageD2Ev.exit199:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198, %bb.cb, %bb.by
  %.pn72.pn = phi { ptr, i32 } [ %i.nx, %bb.by ], [ %.pn72, %bb.cb ], [ %.pn72, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ei

bb.cc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit191, %_ZN7testing7MessageD2Ev.exit196
  %i.oe = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !109 ; 4 uses
  %.not.i.i200 = icmp eq ptr %i.of, null
  br i1 %.not.i.i200, label %_ZN7testing15AssertionResultD2Ev.exit204, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !38 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201: ; preds = %bb.cd
  %i.oj = load i64, ptr %i.oh, align 8, !tbaa !42
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.ok) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit204

_ZN7testing15AssertionResultD2Ev.exit204:         ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.ol = load ptr, ptr %i.fc, align 8, !tbaa !168
  %i.om = load ptr, ptr %i.at, align 8, !tbaa !152
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = ashr exact i64 %i.op, 3                 ; 2 uses
  %.055333 = add nsw i64 %i.oq, -1                ; 2 uses
  %.not75334 = icmp eq i64 %.055333, 0
  br i1 %.not75334, label %.critedge99, label %.lr.ph337

.lr.ph337:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit204
  %i.or = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph337, %_ZN7testing15AssertionResultD2Ev.exit250
  %i.ot = phi i8 [ %i.ni, %.lr.ph337 ], [ %i.si, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %i.ou = phi ptr [ %i.nh, %.lr.ph337 ], [ %i.sh, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %.055336 = phi i64 [ %.055333, %.lr.ph337 ], [ %.055, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %.055.in335 = phi i64 [ %i.oq, %.lr.ph337 ], [ %.055336, %_ZN7testing15AssertionResultD2Ev.exit250 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.ov = add i64 %.055.in335, -2                 ; 2 uses
  %i.ow = load ptr, ptr %i.at, align 8, !tbaa !152
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ov
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !156
  store ptr %i.oy, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 14
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !42
  %i.pb = icmp eq i8 %i.pa, %i.ot
  br i1 %i.pb, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.pc = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i208 = call i32 @llvm.smax.i32(i32 %i.pc, i32 0)
  %wide.trip.count.i.i209 = zext nneg i32 %smax.i.i208 to i64
  %exitcond.not.i.i212541 = icmp slt i32 %i.pc, 1
  br i1 %exitcond.not.i.i212541, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219, label %.lr.ph544

bb.cg:                                            ; preds = %.lr.ph544
  %indvars.iv.next38.i.i214 = add nuw i32 %indvars.iv37.i.i210542, 1
  %exitcond.not.i.i212 = icmp eq i64 %indvars.iv.next.i.i213, %wide.trip.count.i.i209
  br i1 %exitcond.not.i.i212, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219, label %.lr.ph544, !llvm.loop !9

.lr.ph544:                                        ; preds = %bb.cf, %bb.cg
  %indvars.iv.i.i211543 = phi i64 [ %indvars.iv.next.i.i213, %bb.cg ], [ 0, %bb.cf ] ; 2 uses
  %indvars.iv37.i.i210542 = phi i32 [ %indvars.iv.next38.i.i214, %bb.cg ], [ 1, %bb.cf ] ; 3 uses
  %indvars.iv.next.i.i213 = add nuw nsw i64 %indvars.iv.i.i211543, 1 ; 5 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i213
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !97 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i213
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !42  ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 14
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !42
  %i.pj = icmp eq i8 %i.pi, %i.pg
  br i1 %i.pj, label %bb.cg, label %bb.ch, !llvm.loop !9

bb.ch:                                            ; preds = %.lr.ph544
  %i.pk = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i213
  %i.pl = zext i8 %i.pg to i64
  %i.pm = add nsw i64 %i.pl, -1                   ; 3 uses
  %i.pn = trunc i64 %i.pm to i8
  store i8 %i.pn, ptr %i.pk, align 1, !tbaa !42
  %i.po = sext i32 %indvars.iv37.i.i210542 to i64 ; 2 uses
  %i.pp = and i32 %indvars.iv37.i.i210542, 1
  %lcmp.mod628.not = icmp eq i32 %i.pp, 0
  br i1 %lcmp.mod628.not, label %.prol.loopexit624, label %.prol.loopexit624.unr-lcssa

.prol.loopexit624.unr-lcssa:                      ; preds = %bb.ch
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pm
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i218.prol = add nsw i64 %i.po, -1 ; 3 uses
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i218.prol
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !97
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 15
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !42
  %i.pw = zext i8 %i.pv to i64
  %i.px = add nsw i64 %i.pw, -1                   ; 3 uses
  %i.py = trunc i64 %i.px to i8
  %i.pz = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i218.prol
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !42
  br label %.prol.loopexit624

.prol.loopexit624:                                ; preds = %.prol.loopexit624.unr-lcssa, %bb.ch
  %indvars.iv40.i.i215.unr = phi i64 [ %i.po, %bb.ch ], [ %indvars.iv.next41.i.i218.prol, %.prol.loopexit624.unr-lcssa ]
  %.017.i.i216.unr = phi ptr [ %i.pe, %bb.ch ], [ %i.ps, %.prol.loopexit624.unr-lcssa ]
  %.016.i.i217.unr = phi i64 [ %i.pm, %bb.ch ], [ %i.px, %.prol.loopexit624.unr-lcssa ]
  %.lcssa563.unr.a = phi ptr [ poison, %bb.ch ], [ %i.ps, %.prol.loopexit624.unr-lcssa ]
  %.lcssa562.unr = phi i64 [ poison, %bb.ch ], [ %i.px, %.prol.loopexit624.unr-lcssa ]
  %i.qa = icmp eq i64 %indvars.iv.i.i211543, 0
  br i1 %i.qa, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205, label %.new625

.new625:                                          ; preds = %.prol.loopexit624, %.new625
  %indvars.iv40.i.i215 = phi i64 [ %indvars.iv.next41.i.i218.1, %.new625 ], [ %indvars.iv40.i.i215.unr, %.prol.loopexit624 ] ; 4 uses
  %.017.i.i216 = phi ptr [ %i.qn, %.new625 ], [ %.017.i.i216.unr, %.prol.loopexit624 ]
  %.016.i.i217 = phi i64 [ %i.qs, %.new625 ], [ %.016.i.i217.unr, %.prol.loopexit624 ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.017.i.i216, i64 16
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %.016.i.i217
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i218 = add nsw i64 %indvars.iv40.i.i215, -1 ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i218
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !97
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 15
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !42
  %i.qh = zext i8 %i.qg to i64
  %i.qi = add nsw i64 %i.qh, -1                   ; 2 uses
  %i.qj = trunc i64 %i.qi to i8
  %i.qk = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i218
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !42
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qi
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i218.1 = add nsw i64 %indvars.iv40.i.i215, -2 ; 2 uses
  %i.qo = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i215
  store ptr %i.qn, ptr %i.qo, align 8, !tbaa !97
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 15
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !42
  %i.qr = zext i8 %i.qq to i64
  %i.qs = add nsw i64 %i.qr, -1                   ; 3 uses
  %i.qt = trunc i64 %i.qs to i8
  %i.qu = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i218.1
  store i8 %i.qt, ptr %i.qu, align 1, !tbaa !42
  %i.qv = icmp sgt i64 %indvars.iv40.i.i215, 2
  br i1 %i.qv, label %.new625, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205, !llvm.loop !10

bb.ci:                                            ; preds = %bb.ce
  %i.qw = add i8 %i.ot, -1                        ; 2 uses
  store i8 %i.qw, ptr %i.t, align 4, !tbaa !42
  %i.qx = zext i8 %i.qw to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205: ; preds = %.prol.loopexit624, %.new625, %bb.ci
  %.lcssa13.sink.i206 = phi ptr [ %i.ou, %bb.ci ], [ %.lcssa563.unr.a, %.prol.loopexit624 ], [ %i.qn, %.new625 ]
  %.lcssa.sink.i207 = phi i64 [ %i.qx, %bb.ci ], [ %.lcssa562.unr, %.prol.loopexit624 ], [ %i.qs, %.new625 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i206, i64 16
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %.lcssa.sink.i207
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219: ; preds = %bb.cg, %bb.cf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205
  %i.rb = phi ptr [ %i.ra, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205 ], [ null, %bb.cf ], [ null, %bb.cg ]
  store ptr %i.rb, ptr %i.g, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.rc = load i8, ptr %26, align 8, !tbaa !106, !range !107, !noundef !108
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %.critedge97, label %bb.cj

bb.cj:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.re = load ptr, ptr %i.or, align 8, !tbaa !109 ; 2 uses
  %.not.i.i220 = icmp eq ptr %i.re, null
  br i1 %.not.i.i220, label %_ZNK7testing15AssertionResult15failure_messageEv.exit221, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit221

_ZNK7testing15AssertionResult15failure_messageEv.exit221: ; preds = %bb.cl, %bb.ck
  %i.rg = phi ptr [ %i.rf, %bb.cl ], [ @.str.56, %bb.ck ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef %i.rg)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.rh = load ptr, ptr %28, align 8, !tbaa !111  ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %bb.cn
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !37
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(128) %i.rh) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %bb.cn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  %i.rl = load ptr, ptr %i.or, align 8, !tbaa !109 ; 4 uses
  %.not.i.i225 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i225, label %bb.dg, label %bb.co

bb.co:                                            ; preds = %_ZN7testing7MessageD2Ev.exit224
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !38 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 2 uses
  %i.ro = icmp eq ptr %i.rm, %i.rn
  br i1 %i.ro, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226: ; preds = %bb.co
  %i.rp = load i64, ptr %i.rn, align 8, !tbaa !42
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rq) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef 32) #34
  br label %bb.dg

bb.cp:                                            ; preds = %bb.cj
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit232

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cm
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn76 = phi { ptr, i32 } [ %i.rt, %bb.cr ], [ %i.rs, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.ru = load ptr, ptr %28, align 8, !tbaa !111  ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.cs
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !37
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(128) %i.ru) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %bb.cs, %bb.cp
  %.pn76.pn = phi { ptr, i32 } [ %i.rr, %bb.cp ], [ %.pn76, %bb.cs ], [ %.pn76, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.ei

.critedge97:                                      ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219
  %i.ry = load ptr, ptr %i.or, align 8, !tbaa !109 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i233, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.critedge97
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !38 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234: ; preds = %bb.ct
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !42
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef 32) #34
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, %.critedge97
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.se = load ptr, ptr %i.at, align 8, !tbaa !152
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.ov
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !156
  store ptr %i.sg, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.sh = load ptr, ptr %i.q, align 8, !tbaa !97  ; 3 uses
  %i.si = load i8, ptr %i.t, align 4, !tbaa !42   ; 3 uses
  %i.sj = zext i8 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sj
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !156
  store ptr %i.sm, ptr %i.h, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  %i.sn = load i8, ptr %30, align 8, !tbaa !106, !range !107, !noundef !108
  %i.so = trunc nuw i8 %i.sn to i1
  br i1 %i.so, label %bb.de, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  %i.sp = load ptr, ptr %i.os, align 8, !tbaa !109 ; 2 uses
  %.not.i.i238 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i238, label %_ZNK7testing15AssertionResult15failure_messageEv.exit239, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit239

_ZNK7testing15AssertionResult15failure_messageEv.exit239: ; preds = %bb.cx, %bb.cw
  %i.sr = phi ptr [ %i.sq, %bb.cx ], [ @.str.56, %bb.cw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef %i.sr)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit239
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.ss = load ptr, ptr %32, align 8, !tbaa !111  ; 3 uses
  %.not.i.i240 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i240, label %_ZN7testing7MessageD2Ev.exit242, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241: ; preds = %bb.cz
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !37
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(128) %i.ss) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit242

_ZN7testing7MessageD2Ev.exit242:                  ; preds = %bb.cz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %bb.de

bb.da:                                            ; preds = %bb.cv
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit245

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit239
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.sy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #32
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn85 = phi { ptr, i32 } [ %i.sy, %bb.dc ], [ %i.sx, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.sz = load ptr, ptr %32, align 8, !tbaa !111  ; 3 uses
  %.not.i.i243 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i243, label %_ZN7testing7MessageD2Ev.exit245, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244: ; preds = %bb.dd
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !37
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(128) %i.sz) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit245

_ZN7testing7MessageD2Ev.exit245:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244, %bb.dd, %bb.da
  %.pn85.pn = phi { ptr, i32 } [ %i.sw, %bb.da ], [ %.pn85, %bb.dd ], [ %.pn85, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.ei

bb.de:                                            ; preds = %bb.cu, %_ZN7testing7MessageD2Ev.exit242
  %i.td = load ptr, ptr %i.os, align 8, !tbaa !109 ; 4 uses
  %.not.i.i246 = icmp eq ptr %i.td, null
  br i1 %.not.i.i246, label %_ZN7testing15AssertionResultD2Ev.exit250, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !38 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %i.tg = icmp eq ptr %i.te, %i.tf
  br i1 %i.tg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247: ; preds = %bb.df
  %i.th = load i64, ptr %i.tf, align 8, !tbaa !42
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.ti) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit250

_ZN7testing15AssertionResultD2Ev.exit250:         ; preds = %bb.de, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %.055 = add i64 %.055336, -1                    ; 2 uses
  %.not75 = icmp eq i64 %.055, 0
  br i1 %.not75, label %.critedge99, label %bb.ce, !llvm.loop !429

bb.dg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %_ZN7testing7MessageD2Ev.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.eh

.critedge99:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit250, %_ZN7testing15AssertionResultD2Ev.exit204
  %i.tj = phi i8 [ %i.ni, %_ZN7testing15AssertionResultD2Ev.exit204 ], [ %i.si, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %i.tk = phi ptr [ %i.nh, %_ZN7testing15AssertionResultD2Ev.exit204 ], [ %i.sh, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  store i64 0, ptr %35, align 8, !alias.scope !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 14
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !42
  %i.tn = icmp eq i8 %i.tm, %i.tj
  br i1 %i.tn, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %.critedge99
  %i.to = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i254 = call i32 @llvm.smax.i32(i32 %i.to, i32 0)
  %wide.trip.count.i.i255 = zext nneg i32 %smax.i.i254 to i64
  %exitcond.not.i.i258545 = icmp slt i32 %i.to, 1
  br i1 %exitcond.not.i.i258545, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265, label %.lr.ph548

bb.di:                                            ; preds = %.lr.ph548
  %indvars.iv.next38.i.i260 = add nuw i32 %indvars.iv37.i.i256546, 1
  %exitcond.not.i.i258 = icmp eq i64 %indvars.iv.next.i.i259, %wide.trip.count.i.i255
  br i1 %exitcond.not.i.i258, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265, label %.lr.ph548, !llvm.loop !9

.lr.ph548:                                        ; preds = %bb.dh, %bb.di
  %indvars.iv.i.i257547 = phi i64 [ %indvars.iv.next.i.i259, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %indvars.iv37.i.i256546 = phi i32 [ %indvars.iv.next38.i.i260, %bb.di ], [ 1, %bb.dh ] ; 3 uses
  %indvars.iv.next.i.i259 = add nuw nsw i64 %indvars.iv.i.i257547, 1 ; 5 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i259
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !97 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i259
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !42  ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 14
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !42
  %i.tv = icmp eq i8 %i.tu, %i.ts
  br i1 %i.tv, label %bb.di, label %bb.dj, !llvm.loop !9

bb.dj:                                            ; preds = %.lr.ph548
  %i.tw = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i259
  %i.tx = zext i8 %i.ts to i64
  %i.ty = add nsw i64 %i.tx, -1                   ; 3 uses
  %i.tz = trunc i64 %i.ty to i8
  store i8 %i.tz, ptr %i.tw, align 1, !tbaa !42
  %i.ua = sext i32 %indvars.iv37.i.i256546 to i64 ; 2 uses
  %i.ub = and i32 %indvars.iv37.i.i256546, 1
  %lcmp.mod634.not = icmp eq i32 %i.ub, 0
  br i1 %lcmp.mod634.not, label %.prol.loopexit630, label %.prol.loopexit630.unr-lcssa

.prol.loopexit630.unr-lcssa:                      ; preds = %bb.dj
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.ty
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i264.prol = add nsw i64 %i.ua, -1 ; 3 uses
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i264.prol
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !97
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 15
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !42
  %i.ui = zext i8 %i.uh to i64
  %i.uj = add nsw i64 %i.ui, -1                   ; 3 uses
  %i.uk = trunc i64 %i.uj to i8
  %i.ul = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i264.prol
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !42
  br label %.prol.loopexit630

.prol.loopexit630:                                ; preds = %.prol.loopexit630.unr-lcssa, %bb.dj
  %indvars.iv40.i.i261.unr = phi i64 [ %i.ua, %bb.dj ], [ %indvars.iv.next41.i.i264.prol, %.prol.loopexit630.unr-lcssa ]
  %.017.i.i262.unr = phi ptr [ %i.tq, %bb.dj ], [ %i.ue, %.prol.loopexit630.unr-lcssa ]
  %.016.i.i263.unr = phi i64 [ %i.ty, %bb.dj ], [ %i.uj, %.prol.loopexit630.unr-lcssa ]
  %.lcssa549.unr = phi ptr [ poison, %bb.dj ], [ %i.ue, %.prol.loopexit630.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.dj ], [ %i.uj, %.prol.loopexit630.unr-lcssa ]
  %i.um = icmp eq i64 %indvars.iv.i.i257547, 0
  br i1 %i.um, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251, label %.new631

.new631:                                          ; preds = %.prol.loopexit630, %.new631
  %indvars.iv40.i.i261 = phi i64 [ %indvars.iv.next41.i.i264.1, %.new631 ], [ %indvars.iv40.i.i261.unr, %.prol.loopexit630 ] ; 4 uses
  %.017.i.i262 = phi ptr [ %i.uz, %.new631 ], [ %.017.i.i262.unr, %.prol.loopexit630 ]
  %.016.i.i263 = phi i64 [ %i.ve, %.new631 ], [ %.016.i.i263.unr, %.prol.loopexit630 ]
  %i.un = getelementptr inbounds nuw i8, ptr %.017.i.i262, i64 16
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %.016.i.i263
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i264 = add nsw i64 %indvars.iv40.i.i261, -1 ; 2 uses
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i264
  store ptr %i.up, ptr %i.uq, align 8, !tbaa !97
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 15
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !42
  %i.ut = zext i8 %i.us to i64
  %i.uu = add nsw i64 %i.ut, -1                   ; 2 uses
  %i.uv = trunc i64 %i.uu to i8
  %i.uw = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i264
  store i8 %i.uv, ptr %i.uw, align 1, !tbaa !42
  %i.ux = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uu
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i264.1 = add nsw i64 %indvars.iv40.i.i261, -2 ; 2 uses
  %i.va = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i261
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !97
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 15
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !42
  %i.vd = zext i8 %i.vc to i64
  %i.ve = add nsw i64 %i.vd, -1                   ; 3 uses
  %i.vf = trunc i64 %i.ve to i8
  %i.vg = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i264.1
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !42
  %i.vh = icmp sgt i64 %indvars.iv40.i.i261, 2
  br i1 %i.vh, label %.new631, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251, !llvm.loop !10

bb.dk:                                            ; preds = %.critedge99
  %i.vi = add i8 %i.tj, -1                        ; 2 uses
  store i8 %i.vi, ptr %i.t, align 4, !tbaa !42
  %i.vj = zext i8 %i.vi to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251: ; preds = %.prol.loopexit630, %.new631, %bb.dk
  %.lcssa13.sink.i252 = phi ptr [ %i.tk, %bb.dk ], [ %.lcssa549.unr, %.prol.loopexit630 ], [ %i.uz, %.new631 ]
  %.lcssa.sink.i253 = phi i64 [ %i.vj, %bb.dk ], [ %.lcssa.unr, %.prol.loopexit630 ], [ %i.ve, %.new631 ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i252, i64 16
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.lcssa.sink.i253
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265: ; preds = %bb.di, %bb.dh, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251
  %i.vn = phi ptr [ %i.vm, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251 ], [ null, %bb.dh ], [ null, %bb.di ]
  store ptr %i.vn, ptr %i.i, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  %i.vo = load i8, ptr %34, align 8, !tbaa !106, !range !107, !noundef !108
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %bb.du, label %bb.dl

bb.dl:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #32
  %i.vq = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !109 ; 2 uses
  %.not.i.i266 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i266, label %_ZNK7testing15AssertionResult15failure_messageEv.exit267, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit267

_ZNK7testing15AssertionResult15failure_messageEv.exit267: ; preds = %bb.dn, %bb.dm
  %i.vt = phi ptr [ %i.vs, %bb.dn ], [ @.str.56, %bb.dm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef %i.vt)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit267
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.vu = load ptr, ptr %36, align 8, !tbaa !111  ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i268, label %_ZN7testing7MessageD2Ev.exit270, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.dp
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !37
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(128) %i.vu) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit270

_ZN7testing7MessageD2Ev.exit270:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  br label %bb.du

bb.dq:                                            ; preds = %bb.dl
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit273

bb.dr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit267
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #32
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn79 = phi { ptr, i32 } [ %i.wa, %bb.ds ], [ %i.vz, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.wb = load ptr, ptr %36, align 8, !tbaa !111  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_Test8TestBodyEv:bb.a
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.do) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit106

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.du, %bb.m ], [ %i.dt, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.dv = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.n
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.k ], [ %.pn, %bb.n ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ei

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !109 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i107, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !42
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !154
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !156
  store ptr %i.ej, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !97  ; 3 uses
  %i.el = load i8, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !156
  store ptr %i.ep, ptr %i.b, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.eq = load i8, ptr %6, align 8, !tbaa !106, !range !107, !noundef !108
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !109 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.et, null
  br i1 %.not.i.i108, label %_ZNK7testing15AssertionResult15failure_messageEv.exit109, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit109

_ZNK7testing15AssertionResult15failure_messageEv.exit109: ; preds = %bb.s, %bb.r
  %i.ev = phi ptr [ %i.eu, %bb.s ], [ @.str.56, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 154, ptr noundef %i.ev)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit109
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ew = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i110 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i110, label %_ZN7testing7MessageD2Ev.exit112, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111: ; preds = %bb.u
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit112

_ZN7testing7MessageD2Ev.exit112:                  ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit115

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit109
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn63 = phi { ptr, i32 } [ %i.fc, %bb.x ], [ %i.fb, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.fd = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i113 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i113, label %_ZN7testing7MessageD2Ev.exit115, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114: ; preds = %bb.y
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(128) %i.fd) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit115

_ZN7testing7MessageD2Ev.exit115:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114, %bb.y, %bb.v
  %.pn63.pn = phi { ptr, i32 } [ %i.fa, %bb.v ], [ %.pn63, %bb.y ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ei

bb.z:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit112
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !109 ; 4 uses
  %.not.i.i116 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i116, label %_ZN7testing15AssertionResultD2Ev.exit120, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.aa
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !42
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit120

_ZN7testing15AssertionResultD2Ev.exit120:         ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.fo = load ptr, ptr %i.eg, align 8, !tbaa !168
  %i.fp = load ptr, ptr %i.bf, align 8, !tbaa !152
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3                 ; 2 uses
  %.056326 = add nsw i64 %i.ft, -1                ; 2 uses
  %.not327 = icmp eq i64 %.056326, 0
  br i1 %.not327, label %.critedge95, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit120
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_ZN7testing15AssertionResultD2Ev.exit163
  %i.fw = phi i8 [ %i.el, %.lr.ph ], [ %i.jl, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %i.fx = phi ptr [ %i.ek, %.lr.ph ], [ %i.jk, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %.056329 = phi i64 [ %.056326, %.lr.ph ], [ %.056, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %.056.in328 = phi i64 [ %i.ft, %.lr.ph ], [ %.056329, %_ZN7testing15AssertionResultD2Ev.exit163 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.fy = add i64 %.056.in328, -2                 ; 2 uses
  %i.fz = load ptr, ptr %i.bf, align 8, !tbaa !152
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !156
  store ptr %i.gb, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 14
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !42
  %i.ge = icmp eq i8 %i.gd, %i.fw
  br i1 %i.ge, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gf = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i122 = call i32 @llvm.smax.i32(i32 %i.gf, i32 0)
  %wide.trip.count.i.i123 = zext nneg i32 %smax.i.i122 to i64
  %exitcond.not.i.i126527 = icmp slt i32 %i.gf, 1
  br i1 %exitcond.not.i.i126527, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph530

bb.ad:                                            ; preds = %.lr.ph530
  %indvars.iv.next38.i.i128 = add nuw i32 %indvars.iv37.i.i124528, 1
  %exitcond.not.i.i126 = icmp eq i64 %indvars.iv.next.i.i127, %wide.trip.count.i.i123
  br i1 %exitcond.not.i.i126, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph530, !llvm.loop !9

.lr.ph530:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv.i.i125529 = phi i64 [ %indvars.iv.next.i.i127, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %indvars.iv37.i.i124528 = phi i32 [ %indvars.iv.next38.i.i128, %bb.ad ], [ 1, %bb.ac ] ; 3 uses
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i125529, 1 ; 5 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i127
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !97 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i127
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !42  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 14
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !42
  %i.gm = icmp eq i8 %i.gl, %i.gj
  br i1 %i.gm, label %bb.ad, label %bb.ae, !llvm.loop !9

bb.ae:                                            ; preds = %.lr.ph530
  %i.gn = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i127
  %i.go = zext i8 %i.gj to i64
  %i.gp = add nsw i64 %i.go, -1                   ; 3 uses
  %i.gq = trunc i64 %i.gp to i8
  store i8 %i.gq, ptr %i.gn, align 1, !tbaa !42
  %i.gr = sext i32 %indvars.iv37.i.i124528 to i64 ; 2 uses
  %i.gs = and i32 %indvars.iv37.i.i124528, 1
  %lcmp.mod610.not = icmp eq i32 %i.gs, 0
  br i1 %lcmp.mod610.not, label %.prol.loopexit606, label %.prol.loopexit606.unr-lcssa

.prol.loopexit606.unr-lcssa:                      ; preds = %bb.ae
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gp
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i132.prol = add nsw i64 %i.gr, -1 ; 3 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i132.prol
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 15
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !42
  %i.gz = zext i8 %i.gy to i64
  %i.ha = add nsw i64 %i.gz, -1                   ; 3 uses
  %i.hb = trunc i64 %i.ha to i8
  %i.hc = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i132.prol
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !42
  br label %.prol.loopexit606

.prol.loopexit606:                                ; preds = %.prol.loopexit606.unr-lcssa, %bb.ae
  %indvars.iv40.i.i129.unr = phi i64 [ %i.gr, %bb.ae ], [ %indvars.iv.next41.i.i132.prol, %.prol.loopexit606.unr-lcssa ]
  %.017.i.i130.unr = phi ptr [ %i.gh, %bb.ae ], [ %i.gv, %.prol.loopexit606.unr-lcssa ]
  %.016.i.i131.unr = phi i64 [ %i.gp, %bb.ae ], [ %i.ha, %.prol.loopexit606.unr-lcssa ]
  %.lcssa585.unr.a = phi ptr [ poison, %bb.ae ], [ %i.gv, %.prol.loopexit606.unr-lcssa ]
  %.lcssa584.unr = phi i64 [ poison, %bb.ae ], [ %i.ha, %.prol.loopexit606.unr-lcssa ]
  %i.hd = icmp eq i64 %indvars.iv.i.i125529, 0
  br i1 %i.hd, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, label %.new607

.new607:                                          ; preds = %.prol.loopexit606, %.new607
  %indvars.iv40.i.i129 = phi i64 [ %indvars.iv.next41.i.i132.1, %.new607 ], [ %indvars.iv40.i.i129.unr, %.prol.loopexit606 ] ; 4 uses
  %.017.i.i130 = phi ptr [ %i.hq, %.new607 ], [ %.017.i.i130.unr, %.prol.loopexit606 ]
  %.016.i.i131 = phi i64 [ %i.hv, %.new607 ], [ %.016.i.i131.unr, %.prol.loopexit606 ]
  %i.he = getelementptr inbounds nuw i8, ptr %.017.i.i130, i64 16
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.016.i.i131
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i132 = add nsw i64 %indvars.iv40.i.i129, -1 ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i132
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !97
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 15
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !42
  %i.hk = zext i8 %i.hj to i64
  %i.hl = add nsw i64 %i.hk, -1                   ; 2 uses
  %i.hm = trunc i64 %i.hl to i8
  %i.hn = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i132
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i132.1 = add nsw i64 %indvars.iv40.i.i129, -2 ; 2 uses
  %i.hr = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i129
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !97
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !42
  %i.hu = zext i8 %i.ht to i64
  %i.hv = add nsw i64 %i.hu, -1                   ; 3 uses
  %i.hw = trunc i64 %i.hv to i8
  %i.hx = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i132.1
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !42
  %i.hy = icmp sgt i64 %indvars.iv40.i.i129, 2
  br i1 %i.hy, label %.new607, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, !llvm.loop !10

bb.af:                                            ; preds = %bb.ab
  %i.hz = add i8 %i.fw, -1                        ; 2 uses
  store i8 %i.hz, ptr %i.w, align 4, !tbaa !42
  %i.ia = zext i8 %i.hz to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i: ; preds = %.prol.loopexit606, %.new607, %bb.af
  %.lcssa13.sink.i = phi ptr [ %i.fx, %bb.af ], [ %.lcssa585.unr.a, %.prol.loopexit606 ], [ %i.hq, %.new607 ]
  %.lcssa.sink.i121 = phi i64 [ %i.ia, %bb.af ], [ %.lcssa584.unr, %.prol.loopexit606 ], [ %i.hv, %.new607 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i, i64 16
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.lcssa.sink.i121
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit: ; preds = %bb.ad, %bb.ac, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i
  %i.ie = phi ptr [ %i.id, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i ], [ null, %bb.ac ], [ null, %bb.ad ]
  store ptr %i.ie, ptr %i.c, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.if = load i8, ptr %10, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.ih = load ptr, ptr %i.fu, align 8, !tbaa !109 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i133, label %_ZNK7testing15AssertionResult15failure_messageEv.exit134, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit134

_ZNK7testing15AssertionResult15failure_messageEv.exit134: ; preds = %bb.ai, %bb.ah
  %i.ij = phi ptr [ %i.ii, %bb.ai ], [ @.str.56, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef %i.ij)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ik = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ak
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !37
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(128) %i.ik) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.io = load ptr, ptr %i.fu, align 8, !tbaa !109 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.io, null
  br i1 %.not.i.i138, label %bb.bd, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !38 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.al
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !42
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 32) #34
  br label %bb.bd

bb.am:                                            ; preds = %bb.ag
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit145

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn66 = phi { ptr, i32 } [ %i.iw, %bb.ao ], [ %i.iv, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ix = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i143, label %_ZN7testing7MessageD2Ev.exit145, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.ap
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !37
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(128) %i.ix) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit145

_ZN7testing7MessageD2Ev.exit145:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %bb.ap, %bb.am
  %.pn66.pn = phi { ptr, i32 } [ %i.iu, %bb.am ], [ %.pn66, %bb.ap ], [ %.pn66, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ei

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit
  %i.jb = load ptr, ptr %i.fu, align 8, !tbaa !109 ; 4 uses
  %.not.i.i146 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i146, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !38 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.aq
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !42
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #34
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.jh = load ptr, ptr %i.bf, align 8, !tbaa !152
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.fy
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !156
  store ptr %i.jj, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.jk = load ptr, ptr %i.s, align 8, !tbaa !97  ; 3 uses
  %i.jl = load i8, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !156
  store ptr %i.jp, ptr %i.d, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.jq = load i8, ptr %14, align 8, !tbaa !106, !range !107, !noundef !108
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bb, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.js = load ptr, ptr %i.fv, align 8, !tbaa !109 ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.js, null
  br i1 %.not.i.i151, label %_ZNK7testing15AssertionResult15failure_messageEv.exit152, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit152

_ZNK7testing15AssertionResult15failure_messageEv.exit152: ; preds = %bb.au, %bb.at
  %i.ju = phi ptr [ %i.jt, %bb.au ], [ @.str.56, %bb.at ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 157, ptr noundef %i.ju)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.jv = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i153, label %_ZN7testing7MessageD2Ev.exit155, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154: ; preds = %bb.aw
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !37
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(128) %i.jv) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit155

_ZN7testing7MessageD2Ev.exit155:                  ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bb

bb.ax:                                            ; preds = %bb.as
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn89 = phi { ptr, i32 } [ %i.kb, %bb.az ], [ %i.ka, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.kc = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ba
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !37
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %bb.ba, %bb.ax
  %.pn89.pn = phi { ptr, i32 } [ %i.jz, %bb.ax ], [ %.pn89, %bb.ba ], [ %.pn89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ei

bb.bb:                                            ; preds = %bb.ar, %_ZN7testing7MessageD2Ev.exit155
  %i.kg = load ptr, ptr %i.fv, align 8, !tbaa !109 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !38 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.bc
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !42
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %.056 = add i64 %.056329, -1                    ; 2 uses
  %.not = icmp eq i64 %.056, 0
  br i1 %.not, label %.critedge95, label %bb.ab, !llvm.loop !469

bb.bd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %_ZN7testing7MessageD2Ev.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.eh

.critedge95:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit163, %_ZN7testing15AssertionResultD2Ev.exit120
  %i.km = phi i8 [ %i.el, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %i.jl, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %i.kn = phi ptr [ %i.ek, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %i.jk, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i64 0, ptr %19, align 8, !alias.scope !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 14
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !42
  %i.kq = icmp eq i8 %i.kp, %i.km
  br i1 %i.kq, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %.critedge95
  %i.kr = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i167 = call i32 @llvm.smax.i32(i32 %i.kr, i32 0)
  %wide.trip.count.i.i168 = zext nneg i32 %smax.i.i167 to i64
  %exitcond.not.i.i171531 = icmp slt i32 %i.kr, 1
  br i1 %exitcond.not.i.i171531, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178, label %.lr.ph534

bb.bf:                                            ; preds = %.lr.ph534
  %indvars.iv.next38.i.i173 = add nuw i32 %indvars.iv37.i.i169532, 1
  %exitcond.not.i.i171 = icmp eq i64 %indvars.iv.next.i.i172, %wide.trip.count.i.i168
  br i1 %exitcond.not.i.i171, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178, label %.lr.ph534, !llvm.loop !9

.lr.ph534:                                        ; preds = %bb.be, %bb.bf
  %indvars.iv.i.i170533 = phi i64 [ %indvars.iv.next.i.i172, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %indvars.iv37.i.i169532 = phi i32 [ %indvars.iv.next38.i.i173, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i172 = add nuw nsw i64 %indvars.iv.i.i170533, 1 ; 5 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i172
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !97 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i172
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !42  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 14
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !42
  %i.ky = icmp eq i8 %i.kx, %i.kv
  br i1 %i.ky, label %bb.bf, label %bb.bg, !llvm.loop !9

bb.bg:                                            ; preds = %.lr.ph534
  %i.kz = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i172
  %i.la = zext i8 %i.kv to i64
  %i.lb = add nsw i64 %i.la, -1                   ; 3 uses
  %i.lc = trunc i64 %i.lb to i8
  store i8 %i.lc, ptr %i.kz, align 1, !tbaa !42
  %i.ld = sext i32 %indvars.iv37.i.i169532 to i64 ; 2 uses
  %i.le = and i32 %indvars.iv37.i.i169532, 1
  %lcmp.mod616.not = icmp eq i32 %i.le, 0
  br i1 %lcmp.mod616.not, label %.prol.loopexit612, label %.prol.loopexit612.unr-lcssa

.prol.loopexit612.unr-lcssa:                      ; preds = %bb.bg
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lb
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i177.prol = add nsw i64 %i.ld, -1 ; 3 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i177.prol
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !97
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 15
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !42
  %i.ll = zext i8 %i.lk to i64
  %i.lm = add nsw i64 %i.ll, -1                   ; 3 uses
  %i.ln = trunc i64 %i.lm to i8
  %i.lo = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i177.prol
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !42
  br label %.prol.loopexit612

.prol.loopexit612:                                ; preds = %.prol.loopexit612.unr-lcssa, %bb.bg
  %indvars.iv40.i.i174.unr = phi i64 [ %i.ld, %bb.bg ], [ %indvars.iv.next41.i.i177.prol, %.prol.loopexit612.unr-lcssa ]
  %.017.i.i175.unr = phi ptr [ %i.kt, %bb.bg ], [ %i.lh, %.prol.loopexit612.unr-lcssa ]
  %.016.i.i176.unr = phi i64 [ %i.lb, %bb.bg ], [ %i.lm, %.prol.loopexit612.unr-lcssa ]
  %.lcssa571.unr.a = phi ptr [ poison, %bb.bg ], [ %i.lh, %.prol.loopexit612.unr-lcssa ]
  %.lcssa570.unr = phi i64 [ poison, %bb.bg ], [ %i.lm, %.prol.loopexit612.unr-lcssa ]
  %i.lp = icmp eq i64 %indvars.iv.i.i170533, 0
  br i1 %i.lp, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164, label %.new613

.new613:                                          ; preds = %.prol.loopexit612, %.new613
  %indvars.iv40.i.i174 = phi i64 [ %indvars.iv.next41.i.i177.1, %.new613 ], [ %indvars.iv40.i.i174.unr, %.prol.loopexit612 ] ; 4 uses
  %.017.i.i175 = phi ptr [ %i.mc, %.new613 ], [ %.017.i.i175.unr, %.prol.loopexit612 ]
  %.016.i.i176 = phi i64 [ %i.mh, %.new613 ], [ %.016.i.i176.unr, %.prol.loopexit612 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.017.i.i175, i64 16
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.016.i.i176
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i177 = add nsw i64 %indvars.iv40.i.i174, -1 ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i177
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !97
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 15
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !42
  %i.lw = zext i8 %i.lv to i64
  %i.lx = add nsw i64 %i.lw, -1                   ; 2 uses
  %i.ly = trunc i64 %i.lx to i8
  %i.lz = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i177
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !42
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.lx
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i177.1 = add nsw i64 %indvars.iv40.i.i174, -2 ; 2 uses
  %i.md = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i174
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !97
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 15
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !42
  %i.mg = zext i8 %i.mf to i64
  %i.mh = add nsw i64 %i.mg, -1                   ; 3 uses
  %i.mi = trunc i64 %i.mh to i8
  %i.mj = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i177.1
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !42
  %i.mk = icmp sgt i64 %indvars.iv40.i.i174, 2
  br i1 %i.mk, label %.new613, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164, !llvm.loop !10

bb.bh:                                            ; preds = %.critedge95
  %i.ml = add i8 %i.km, -1                        ; 2 uses
  store i8 %i.ml, ptr %i.w, align 4, !tbaa !42
  %i.mm = zext i8 %i.ml to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164: ; preds = %.prol.loopexit612, %.new613, %bb.bh
  %.lcssa13.sink.i165 = phi ptr [ %i.kn, %bb.bh ], [ %.lcssa571.unr.a, %.prol.loopexit612 ], [ %i.mc, %.new613 ]
  %.lcssa.sink.i166 = phi i64 [ %i.mm, %bb.bh ], [ %.lcssa570.unr, %.prol.loopexit612 ], [ %i.mh, %.new613 ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i165, i64 16
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %.lcssa.sink.i166
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178: ; preds = %bb.bf, %bb.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164
  %i.mq = phi ptr [ %i.mp, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164 ], [ null, %bb.be ], [ null, %bb.bf ]
  store ptr %i.mq, ptr %i.e, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.mr = load i8, ptr %18, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %bb.br, label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !109 ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i179, label %_ZNK7testing15AssertionResult15failure_messageEv.exit180, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit180

_ZNK7testing15AssertionResult15failure_messageEv.exit180: ; preds = %bb.bk, %bb.bj
  %i.mw = phi ptr [ %i.mv, %bb.bk ], [ @.str.56, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 159, ptr noundef %i.mw)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.mx = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.bm
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !37
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(128) %i.mx) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit186

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn69 = phi { ptr, i32 } [ %i.nd, %bb.bp ], [ %i.nc, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.ne = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
end_hunk_1
