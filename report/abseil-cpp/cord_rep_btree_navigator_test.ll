inline.NumInlined: 3288
inline.NumDeleted: 1198
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_Test8TestBodyEv:bb.a

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.r
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #32, !inline_history !120
  br label %_ZN7testing7MessageD2Ev.exit154

_ZN7testing7MessageD2Ev.exit154:                  ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.w

bb.s:                                             ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit157

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn117 = phi { ptr, i32 } [ %i.cr, %bb.u ], [ %i.cq, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.cs = load ptr, ptr %9, align 8, !tbaa !118   ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i155, label %_ZN7testing7MessageD2Ev.exit157, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #32, !inline_history !120
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, %bb.v, %bb.s
  %.pn117.pn = phi { ptr, i32 } [ %i.cp, %bb.s ], [ %.pn117, %bb.v ], [ %.pn117, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.aj

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit154
  %i.cw = load ptr, ptr %i.an, align 8, !tbaa !117 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.x
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !28
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store i64 %.0296, ptr %12, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherImEEEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.dc = load i8, ptr %11, align 8, !tbaa !106, !range !115, !noundef !116
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.de = load ptr, ptr %i.ao, align 8, !tbaa !117 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.de, null
  br i1 %.not.i.i163, label %_ZNK7testing15AssertionResult15failure_messageEv.exit164, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !24
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit164

_ZNK7testing15AssertionResult15failure_messageEv.exit164: ; preds = %bb.aa, %bb.z
  %i.dg = phi ptr [ %i.df, %bb.aa ], [ @.str.56, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 192, ptr noundef %i.dg)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.dh = load ptr, ptr %13, align 8, !tbaa !118  ; 3 uses
  %.not.i.i165 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166: ; preds = %bb.ac
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #32, !inline_history !120
  br label %_ZN7testing7MessageD2Ev.exit167

_ZN7testing7MessageD2Ev.exit167:                  ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit170

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn120 = phi { ptr, i32 } [ %i.dn, %bb.af ], [ %i.dm, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.do = load ptr, ptr %13, align 8, !tbaa !118  ; 3 uses
  %.not.i.i168 = icmp eq ptr %i.do, null
  br i1 %.not.i.i168, label %_ZN7testing7MessageD2Ev.exit170, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.ag
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.do) #32, !inline_history !120
  br label %_ZN7testing7MessageD2Ev.exit170

_ZN7testing7MessageD2Ev.exit170:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %bb.ag, %bb.ad
  %.pn120.pn = phi { ptr, i32 } [ %i.dl, %bb.ad ], [ %.pn120, %bb.ag ], [ %.pn120, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN7testing7MessageD2Ev.exit167
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !117 ; 4 uses
  %.not.i.i171 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i171, label %_ZN7testing15AssertionResultD2Ev.exit175, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172: ; preds = %bb.ai
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !28
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit175

_ZN7testing15AssertionResultD2Ev.exit175:         ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.dy = add nuw nsw i64 %.0296, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, 3
  br i1 %exitcond.not, label %.preheader295, label %bb.b, !llvm.loop !426

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit170, %_ZN7testing7MessageD2Ev.exit157, %_ZN7testing7MessageD2Ev.exit148
  %.pn120.pn.pn = phi { ptr, i32 } [ %.pn120.pn, %_ZN7testing7MessageD2Ev.exit170 ], [ %.pn117.pn, %_ZN7testing7MessageD2Ev.exit157 ], [ %.pn114.pn, %_ZN7testing7MessageD2Ev.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.dh

.preheader294:                                    ; preds = %.preheader294.lr.ph, %.critedge138
  %.080299 = phi i64 [ 0, %.preheader294.lr.ph ], [ %i.mv, %.critedge138 ] ; 5 uses
  %i.dz = mul i64 %.080299, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader294, %.critedge136
  %.082298 = phi i64 [ %.080299, %.preheader294 ], [ %i.mu, %.critedge136 ] ; 3 uses
  %i.ea = sub i64 %.082298, %.080299
  %i.eb = mul i64 %i.ea, 3
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %bb.de
  %.081297 = phi i64 [ 0, %.preheader ], [ %i.mt, %bb.de ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !249 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val, i64 13
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !28  ; 4 uses
  %i.ee = zext i8 %i.ed to i32
  store i32 %i.ee, ptr %15, align 8, !tbaa !265
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 14
  %i.eg = load i8, ptr %i.ef, align 1             ; 3 uses
  %i.eh = zext i8 %i.ed to i64                    ; 5 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.eh
  store ptr %.val, ptr %i.ei, align 8, !tbaa !104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.eh
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !28
  %.not.i.i177 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i177, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.ak
  %xtraiter380 = and i64 %i.eh, 1
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.lr.ph.i.i178.prol.loopexit, label %.lr.ph.i.i178.prol

.lr.ph.i.i178.prol:                               ; preds = %.lr.ph.i.i178.preheader
  %.021.i.i180.prol = zext i8 %i.eg to i64
  %indvars.iv.next.i.i182.prol = add nsw i64 %i.eh, -1 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.021.i.i180.prol
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !232 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i182.prol
  store ptr %i.em, ptr %i.en, align 8, !tbaa !104
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.ep = load i8, ptr %i.eo, align 1             ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next.i.i182.prol
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !28
  br label %.lr.ph.i.i178.prol.loopexit

.lr.ph.i.i178.prol.loopexit:                      ; preds = %.lr.ph.i.i178.prol, %.lr.ph.i.i178.preheader
  %indvars.iv.i.i179.unr = phi i64 [ %i.eh, %.lr.ph.i.i178.preheader ], [ %indvars.iv.next.i.i182.prol, %.lr.ph.i.i178.prol ]
  %.021.i.i180.in.unr = phi i8 [ %i.eg, %.lr.ph.i.i178.preheader ], [ %i.ep, %.lr.ph.i.i178.prol ]
  %.01619.i.i181.unr = phi ptr [ %.val, %.lr.ph.i.i178.preheader ], [ %i.em, %.lr.ph.i.i178.prol ]
  %i.er = icmp eq i8 %i.ed, 1
  br i1 %i.er, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185, label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.prol.loopexit, %.lr.ph.i.i178
  %indvars.iv.i.i179 = phi i64 [ %indvars.iv.next.i.i182.1, %.lr.ph.i.i178 ], [ %indvars.iv.i.i179.unr, %.lr.ph.i.i178.prol.loopexit ] ; 4 uses
  %.021.i.i180.in = phi i8 [ %i.fe, %.lr.ph.i.i178 ], [ %.021.i.i180.in.unr, %.lr.ph.i.i178.prol.loopexit ]
  %.01619.i.i181 = phi ptr [ %i.fb, %.lr.ph.i.i178 ], [ %.01619.i.i181.unr, %.lr.ph.i.i178.prol.loopexit ]
  %.021.i.i180 = zext i8 %.021.i.i180.in to i64
  %indvars.iv.next.i.i182 = add nsw i64 %indvars.iv.i.i179, -1 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.01619.i.i181, i64 16
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.021.i.i180
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !232 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i182
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !104
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 14
  %i.ex = load i8, ptr %i.ew, align 1             ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next.i.i182
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !28
  %.021.i.i180.1 = zext i8 %i.ex to i64
  %indvars.iv.next.i.i182.1 = add nsw i64 %indvars.iv.i.i179, -2 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.021.i.i180.1
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !232 ; 3 uses
  %i.fc = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.i.i179
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !104
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 14
  %i.fe = load i8, ptr %i.fd, align 1             ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next.i.i182.1
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !28
  %i.fg = icmp sgt i64 %indvars.iv.i.i179, 2
  br i1 %i.fg, label %.lr.ph.i.i178, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185, !llvm.loop !267

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185: ; preds = %.lr.ph.i.i178.prol.loopexit, %.lr.ph.i.i178, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.fh = add i64 %.081297, %i.dz
  %i.fi = call { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SkipEm(ptr noundef nonnull align 8 dereferenceable(112) %15, i64 noundef %i.fh) ; 2 uses
  %i.fj = extractvalue { ptr, i64 } %i.fi, 0
  store ptr %i.fj, ptr %16, align 8
  %i.fk = extractvalue { ptr, i64 } %i.fi, 1
  store i64 %i.fk, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.080299
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !232
  store ptr %i.fn, ptr %18, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fo = load i8, ptr %17, align 8, !tbaa !106, !range !115, !noundef !116
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %.critedge, label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.fq = load ptr, ptr %i.as, align 8, !tbaa !117 ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i186, label %_ZNK7testing15AssertionResult15failure_messageEv.exit187, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !24
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit187

_ZNK7testing15AssertionResult15failure_messageEv.exit187: ; preds = %bb.an, %bb.am
  %i.fs = phi ptr [ %i.fr, %bb.an ], [ @.str.56, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef %i.fs)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit187
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.ft = load ptr, ptr %19, align 8, !tbaa !118  ; 3 uses
  %.not.i.i188 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i188, label %_ZN7testing7MessageD2Ev.exit190, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.ap
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(128) %i.ft) #32, !inline_history !120
  br label %_ZN7testing7MessageD2Ev.exit190

_ZN7testing7MessageD2Ev.exit190:                  ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.fx = load ptr, ptr %i.as, align 8, !tbaa !117 ; 4 uses
  %.not.i.i191 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i191, label %_ZN7testing15AssertionResultD2Ev.exit195, label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit190
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !24 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192: ; preds = %bb.aq
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !28
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit195

_ZN7testing15AssertionResultD2Ev.exit195:         ; preds = %_ZN7testing7MessageD2Ev.exit190, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %.loopexit.sink.split

bb.ar:                                            ; preds = %bb.al
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit198

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit187
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.at ], [ %i.ge, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.gg = load ptr, ptr %19, align 8, !tbaa !118  ; 3 uses
  %.not.i.i196 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i196, label %_ZN7testing7MessageD2Ev.exit198, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197: ; preds = %bb.au
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #32, !inline_history !120
  br label %_ZN7testing7MessageD2Ev.exit198

_ZN7testing7MessageD2Ev.exit198:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197, %bb.au, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.ar ], [ %.pn, %bb.au ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.dg

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185
  %i.gk = load ptr, ptr %i.as, align 8, !tbaa !117 ; 4 uses
  %.not.i.i199 = icmp eq ptr %i.gk, null
end_hunk_0
