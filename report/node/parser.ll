inline.NumInlined: 10290
inline.NumDeleted: 2685
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_6ParserEE13ParsePropertyEPNS3_17ParsePropertyInfoE:bb.a
  %.not.i5.i.i = icmp eq i32 %i.jr, 0
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  %.pn.i.i.i = select i1 %.not.i5.i.i, ptr %i.ji, ptr %i.jt
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  %i.ju = load ptr, ptr %.in.i.i.i, align 8       ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8            ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1288
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = icmp eq ptr %i.ju, %i.ka
  br i1 %i.kb, label %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit, label %_ZNK2v88internal6Parser17IsEvalOrArgumentsEPKNS0_12AstRawStringE.exit.i.i

_ZNK2v88internal6Parser17IsEvalOrArgumentsEPKNS0_12AstRawStringE.exit.i.i: ; preds = %bb.ak
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 1120
  %i.kd = load ptr, ptr %i.kc, align 8
  %.not127 = icmp eq ptr %i.ju, %i.kd
  br i1 %.not127, label %bb.al, label %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit.thread

_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit: ; preds = %bb.ai, %bb.ak
  %.old = and i32 %i.jk, 63
  %.old125 = icmp eq i32 %.old, 48
  br i1 %.old125, label %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK2v88internal6Parser17IsEvalOrArgumentsEPKNS0_12AstRawStringE.exit.i.i, %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.kg = load ptr, ptr %i.c, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = load i32, ptr %i.kj, align 4
  store i32 %i.jg, ptr %3, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.kk, ptr %i.kl, align 4
  call void @_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_6ParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE(ptr noundef nonnull align 8 dereferenceable(19) %i.kf, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef 308)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.km = load ptr, ptr %i.ke, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.kn = load ptr, ptr %i.c, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kr = load i32, ptr %i.kq, align 4
  store i32 %i.jg, ptr %4, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.kr, ptr %i.ks, align 4
  call void @_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_6ParserEEEE18RecordPatternErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE(ptr noundef nonnull align 8 dereferenceable(19) %i.km, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 310)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit.thread

_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit.thread: ; preds = %_ZNK2v88internal6Parser17IsEvalOrArgumentsEPKNS0_12AstRawStringE.exit.i.i, %bb.aj, %bb.al, %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit
  %i.kt = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  %i.kx = load i8, ptr %i.kw, align 8
  %.not60 = icmp eq i8 %i.kx, 13
  br i1 %.not60, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit.thread
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  call void @_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_6ParserEEEE18RecordPatternErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE(ptr noundef nonnull align 8 dereferenceable(19) %i.kz, ptr noundef nonnull align 4 dereferenceable(8) %i.lb, i32 noundef 372)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN2v88internal10ParserBaseINS0_6ParserEE26IsValidReferenceExpressionEPNS0_10ExpressionE.exit.thread
  store i8 %i.jc, ptr %i.jb, align 4
  br label %bb.aw

bb.ao:                                            ; preds = %bb.ah, %.thread121
  %i.lc = tail call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.dw) #19 ; 2 uses
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr @_ZN2v88internal5Token11token_flagsE, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1
  %i.lg = and i8 %i.lf, 2
  %.not128 = icmp eq i8 %i.lg, 0
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br i1 %.not128, label %bb.aq, label %bb.ap, !prof !5

bb.ap:                                            ; preds = %bb.ao
  %i.li = load ptr, ptr %i.c, align 8
  %i.lj = load ptr, ptr %i.lh, align 8
  %i.lk = tail call noundef ptr @_ZNK2v88internal7Scanner13CurrentSymbolEPNS0_15AstValueFactoryE(ptr noundef nonnull align 8 dereferenceable(560) %i.li, ptr noundef %i.lj) #19
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyNameEv.exit

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZN2v88internal10ParserBaseINS0_6ParserEE21ReportUnexpectedTokenENS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(390) %0, i8 noundef zeroext %i.lc)
  %i.ll = load ptr, ptr %i.lh, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1280
  %i.lp = load ptr, ptr %i.lo, align 8
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyNameEv.exit

_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyNameEv.exit: ; preds = %bb.ap, %bb.aq
  %.0.i = phi ptr [ %i.lk, %bb.ap ], [ %i.lp, %bb.aq ]
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i, ptr %i.lq, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit77, %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyNameEv.exit, %bb.v, %bb.u, %bb.t, %bb.s
  %.058.shrunk = phi i1 [ false, %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyNameEv.exit ], [ false, %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit77 ], [ %i.fd, %bb.s ], [ true, %bb.t ], [ %i.fy, %bb.u ], [ %i.gc, %bb.v ]
  %i.lr = load i8, ptr %i.dv, align 8
  %i.ls = icmp eq i8 %i.lr, 10
  br i1 %i.ls, label %bb.as, label %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit88

bb.as:                                            ; preds = %bb.ar
  %i.lt = load ptr, ptr %i.c, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 56
  %i.lx = load i8, ptr %i.lw, align 8
  %switch.tableidx173 = add i8 %i.lx, -5          ; 3 uses
  %i.ly = icmp ult i8 %switch.tableidx173, 39
  br i1 %i.ly, label %switch.hole_check175, label %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit88

switch.hole_check175:                             ; preds = %bb.as
  %switch.maskindex177 = zext nneg i8 %switch.tableidx173 to i64
  %switch.shifted178 = lshr i64 275146346897, %switch.maskindex177
  %switch.lobit179 = trunc i64 %switch.shifted178 to i1
  br i1 %switch.lobit179, label %switch.lookup176, label %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit88

switch.lookup176:                                 ; preds = %switch.hole_check175
  %i.lz = zext nneg i8 %switch.tableidx173 to i64
  %switch.gep180 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal10ParserBaseINS0_6ParserEE13ParsePropertyEPNS3_17ParsePropertyInfoE.6, i64 %i.lz
  %switch.load181 = load i8, ptr %switch.gep180, align 1
  store i8 %switch.load181, ptr %i.dv, align 8
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit88

_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit88: ; preds = %switch.hole_check175, %bb.as, %switch.lookup176, %bb.ar
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN2v88internal16FuncNameInferrer15PushLiteralNameEPKNS0_12AstRawStringE(ptr noundef nonnull align 8 dereferenceable(128) %i.mc, ptr noundef %i.mb) #19
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br i1 %.058.shrunk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit88
  %i.me = load i32, ptr %i.b, align 4
  %i.mf = uitofp i32 %i.me to double
  %i.mg = call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.md, double noundef %i.mf, i32 noundef %i.dz) #19
  br label %bb.aw

bb.au:                                            ; preds = %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit88
  %i.mh = load ptr, ptr %i.ma, align 8
  %i.mi = load ptr, ptr %i.md, align 8            ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load i64, ptr %i.mj, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 3 uses
  %i.mm = load i64, ptr %i.ml, align 8            ; 2 uses
  %i.mn = sub i64 %i.mk, %i.mm
  %i.mo = icmp ult i64 %i.mn, 16
  br i1 %i.mo, label %bb.av, label %_ZN2v88internal14AstNodeFactory16NewStringLiteralEPKNS0_12AstRawStringEi.exit90, !prof !5

bb.av:                                            ; preds = %bb.au
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.mi, i64 noundef 16) #19
  %.pre.i.i.i89 = load i64, ptr %i.ml, align 8
  br label %_ZN2v88internal14AstNodeFactory16NewStringLiteralEPKNS0_12AstRawStringEi.exit90

_ZN2v88internal14AstNodeFactory16NewStringLiteralEPKNS0_12AstRawStringEi.exit90: ; preds = %bb.au, %bb.av
  %i.mp = phi i64 [ %.pre.i.i.i89, %bb.av ], [ %i.mm, %bb.au ] ; 2 uses
  %i.mq = inttoptr i64 %i.mp to ptr               ; 4 uses
  %i.mr = add i64 %i.mp, 16
  store i64 %i.mr, ptr %i.ml, align 8
  store i32 %i.dz, ptr %i.mq, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr %i.mh, ptr %i.mt, align 8
  store i32 429, ptr %i.ms, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %_ZN2v88internal14AstNodeFactory16NewStringLiteralEPKNS0_12AstRawStringEi.exit90, %bb.an, %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit84, %bb.r
  %.3 = phi ptr [ %i.ji, %bb.an ], [ %i.ew, %bb.r ], [ %i.hp, %_ZN2v88internal10ParserBaseINS0_6ParserEE17ParsePropertyInfo26ParsePropertyKindFromTokenENS0_5Token5ValueE.exit84 ], [ %i.mg, %bb.at ], [ %i.mq, %_ZN2v88internal14AstNodeFactory16NewStringLiteralEPKNS0_12AstRawStringEi.exit90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.o, %bb.g, %bb.aw
  %.4 = phi ptr [ %.3, %bb.aw ], [ %i.dr, %bb.o ], [ %i.bf, %bb.g ]
  ret ptr %.4
}

declare noundef zeroext i1 @_ZNK2v88internal12AstRawString12AsArrayIndexEPj(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare { i64, ptr } @_ZN2v88internal18DoubleToStringViewEdNS_4base6VectorIcEE(double noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal21ObjectLiteralPropertyC1EPNS0_10ExpressionES3_NS1_4KindEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN2v88internal13ObjectLiteral18CalculateEmitStoreEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal16FuncNameInferrer4NameELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal16FuncNameInferrer4NameES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %2 = ptrtoaddr ptr %i.b to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %i.r = sub i64 %2, %3
  %i.s = add i64 %i.r, -8                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 72
  %i.v = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.o, i64 %i.w
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ab, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal16FuncNameInferrer4NameES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ad, ptr %.08.i.i.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ag = icmp eq ptr %i.ae, %i.b
  br i1 %i.ag, label %_ZSt18uninitialized_moveIPN2v88internal16FuncNameInferrer4NameES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !128

_ZSt18uninitialized_moveIPN2v88internal16FuncNameInferrer4NameES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ah = shl nuw i64 1, %i.k
  %i.ai = ptrtoint ptr %i.b to i64
  %i.aj = sub i64 %i.ai, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal16FuncNameInferrer4NameELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aj
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ah
  store ptr %i.al, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal16FuncNameInferrer4NameELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal16FuncNameInferrer4NameElET_S5_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal16FuncNameInferrer4NameElET_S5_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal16FuncNameInferrer4NameElET_S5_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal10ParserBaseINS0_6ParserEE21ParseClassStaticBlockEPNS3_9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(390) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.v8::internal::ParserBase<v8::internal::Parser>::FunctionState", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.d) #19 ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add nsw i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ParserBaseINS0_6ParserEE9ClassInfo25EnsureStaticElementsScopeEPS3_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ult i64 %i.v, 216
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal10ParserBaseINS0_6ParserEE16NewFunctionScopeENS0_12FunctionKindEPNS0_4ZoneE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef 216) #19
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8
  br label %_ZNK2v88internal10ParserBaseINS0_6ParserEE16NewFunctionScopeENS0_12FunctionKindEPNS0_4ZoneE.exit.i

_ZNK2v88internal10ParserBaseINS0_6ParserEE16NewFunctionScopeENS0_12FunctionKindEPNS0_4ZoneE.exit.i: ; preds = %bb.c, %bb.b
  %i.x = phi i64 [ %.pre.i.i.i.i, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = add i64 %i.x, 216
  store i64 %i.z, ptr %i.t, align 8
  tail call void @_ZN2v88internal16DeclarationScopeC1EPNS0_4ZoneEPNS0_5ScopeENS0_9ScopeTypeENS0_12FunctionKindE(ptr noundef nonnull align 8 dereferenceable(216) %i.y, ptr noundef nonnull %i.p, ptr noundef %i.q, i8 noundef zeroext 4, i8 noundef zeroext 25) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  store i8 1, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @_ZN2v88internal16DeclarationScope31DeclareDefaultFunctionVariablesEPNS0_15AstValueFactoryE(ptr noundef nonnull align 8 dereferenceable(216) %i.y, ptr noundef %i.ae) #19
  store ptr %i.y, ptr %i.m, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 121 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = or i16 %i.ag, 1
  store i16 %i.ah, ptr %i.af, align 1
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store i32 %i.i, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.l, ptr %i.ak, align 4
  %i.al = load i32, ptr %i.j, align 8
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.j, align 8
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEE9ClassInfo25EnsureStaticElementsScopeEPS3_ii.exit

_ZN2v88internal10ParserBaseINS0_6ParserEE9ClassInfo25EnsureStaticElementsScopeEPS3_ii.exit: ; preds = %bb.a, %_ZNK2v88internal10ParserBaseINS0_6ParserEE16NewFunctionScopeENS0_12FunctionKindEPNS0_4ZoneE.exit.i
  %i.an = phi ptr [ %.pre.i, %_ZNK2v88internal10ParserBaseINS0_6ParserEE16NewFunctionScopeENS0_12FunctionKindEPNS0_4ZoneE.exit.i ], [ %i.n, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %0, ptr %2, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8
  store ptr %i.aq, ptr %i.ap, align 8
  store ptr %i.an, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.ao, align 8            ; 4 uses
  store ptr %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.an, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, i8 0, i64 12, i1 false)
  store ptr %2, ptr %i.ao, align 8
  %.not.i7 = icmp eq ptr %i.aw, null
  br i1 %.not.i7, label %_ZN2v88internal10ParserBaseINS0_6ParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_6ParserEE9ClassInfo25EnsureStaticElementsScopeEPS3_ii.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 65 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !range !6, !noundef !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 66
  store i8 %i.ba, ptr %i.bb, align 2
  store i8 0, ptr %i.az, align 1
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit

_ZN2v88internal10ParserBaseINS0_6ParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit: ; preds = %_ZN2v88internal10ParserBaseINS0_6ParserEE9ClassInfo25EnsureStaticElementsScopeEPS3_ii.exit, %bb.d
  %i.bc = phi ptr [ %i.an, %_ZN2v88internal10ParserBaseINS0_6ParserEE9ClassInfo25EnsureStaticElementsScopeEPS3_ii.exit ], [ %.pre, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr null, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 4, !range !6, !noundef !7
  store i8 1, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
end_hunk_0
