inline.NumInlined: 782
inline.NumDeleted: 315
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.fg = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #24
          to label %.noexc177 unwind label %bb.bs ; 9 uses

.noexc177:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fh, ptr noundef nonnull align 8 dereferenceable(80) %10, i64 80, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fg, ptr noundef nonnull align 8 dereferenceable(80) %i.eh, i64 80, i1 false), !tbaa.struct !45, !alias.scope !57
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 160 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 80) #23
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 110
  store i8 1, ptr %i.fj, align 2, !tbaa !31
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 112
  store <2 x float> <float 5.000000e+02, float 2.900000e+03>, ptr %i.fk, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  store ptr %i.fl, ptr %16, align 8, !tbaa !9
  store i32 1112493122, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 4, ptr %i.fm, align 8, !tbaa !13
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i8 0, ptr %i.fn, align 4, !tbaa !16
  %i.fo = load ptr, ptr %i.du, align 8, !tbaa !41 ; 7 uses
  %i.fp = load ptr, ptr %i.dw, align 8, !tbaa !44
  %.not.i.i183 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i183, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.noexc177
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 3 uses
  store ptr %i.fq, ptr %i.fo, align 8, !tbaa !9
  %i.fr = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fl
  br i1 %i.fs, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fq, ptr noundef nonnull align 8 dereferenceable(5) %i.fl, i64 5, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184: ; preds = %bb.ai
  store ptr %i.fr, ptr %i.fo, align 8, !tbaa !18
  %i.ft = load i64, ptr %i.fl, align 8, !tbaa !16
  store i64 %i.ft, ptr %i.fq, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187.thread: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 4, ptr %i.fu, align 8, !tbaa !13
  store ptr %i.fl, ptr %16, align 8, !tbaa !18
  store i64 0, ptr %i.fm, align 8, !tbaa !13
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fv, ptr %i.du, align 8, !tbaa !41
  br label %_ZNKSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE12_M_check_lenEmPKc.exit.i.i192

bb.ak:                                            ; preds = %.noexc177
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187 unwind label %bb.bv

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187: ; preds = %bb.ak
  %.pre545 = load ptr, ptr %16, align 8, !tbaa !18 ; 2 uses
  %i.fw = icmp eq ptr %.pre545, %i.fl
  br i1 %i.fw, label %_ZNKSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE12_M_check_lenEmPKc.exit.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187
  %i.fx = load i64, ptr %i.fl, align 8, !tbaa !16
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %.pre545, i64 noundef %i.fy) #23
  br label %_ZNKSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE12_M_check_lenEmPKc.exit.i.i192

_ZNKSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE12_M_check_lenEmPKc.exit.i.i192: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit187.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.fz = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #24
          to label %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit206 unwind label %bb.bs ; 15 uses

_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit206: ; preds = %_ZNKSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE12_M_check_lenEmPKc.exit.i.i192
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ga, ptr noundef nonnull align 8 dereferenceable(80) %10, i64 80, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.fz, ptr noundef nonnull align 8 dereferenceable(160) %i.fg, i64 160, i1 false), !alias.scope !61
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 160) #23
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 320 ; 3 uses
  %.sroa.19.2 = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 200
  store i8 1, ptr %i.gc, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.gd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.gd, ptr %17, align 8, !tbaa !9
  store i32 1112493122, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 4, ptr %i.ge, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i8 0, ptr %i.gf, align 4, !tbaa !16
  %i.gg = load ptr, ptr %i.du, align 8, !tbaa !41 ; 7 uses
  %i.gh = load ptr, ptr %i.dw, align 8, !tbaa !44
  %.not.i.i211 = icmp eq ptr %i.gg, %i.gh
  br i1 %.not.i.i211, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit206
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 3 uses
  store ptr %i.gi, ptr %i.gg, align 8, !tbaa !9
  %i.gj = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gd
  br i1 %i.gk, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i212

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.gi, ptr noundef nonnull align 8 dereferenceable(5) %i.gd, i64 5, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i212: ; preds = %bb.al
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !18
  %i.gl = load i64, ptr %i.gd, align 8, !tbaa !16
  store i64 %i.gl, ptr %i.gi, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215.thread: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i212
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 4, ptr %i.gm, align 8, !tbaa !13
  store ptr %i.gd, ptr %17, align 8, !tbaa !18
  store i64 0, ptr %i.ge, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %i.gn, ptr %i.du, align 8, !tbaa !41
  br label %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit234

bb.an:                                            ; preds = %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit206
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215 unwind label %bb.bw

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215: ; preds = %bb.an
  %.pre546 = load ptr, ptr %17, align 8, !tbaa !18 ; 2 uses
  %i.go = icmp eq ptr %.pre546, %i.gd
  br i1 %i.go, label %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215
  %i.gp = load i64, ptr %i.gd, align 8, !tbaa !16
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %.pre546, i64 noundef %i.gq) #23
  br label %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit234

_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit215.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.19.2, ptr noundef nonnull align 8 dereferenceable(80) %10, i64 80, i1 false), !tbaa.struct !45
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 292
  store i8 1, ptr %i.gr, align 4, !tbaa !33
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fz, i64 296
  store <2 x float> <float 0.000000e+00, float 2.000000e-01>, ptr %i.gs, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.gt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 10 uses
  store ptr %i.gt, ptr %18, align 8, !tbaa !9
  store i32 1112493122, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 4, ptr %i.gu, align 8, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i8 0, ptr %i.gv, align 4, !tbaa !16
  %i.gw = load ptr, ptr %i.du, align 8, !tbaa !41 ; 7 uses
  %i.gx = load ptr, ptr %i.dw, align 8, !tbaa !44
  %.not.i.i239 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not.i.i239, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit234
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 3 uses
  store ptr %i.gy, ptr %i.gw, align 8, !tbaa !9
  %i.gz = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gt
  br i1 %i.ha, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.gy, ptr noundef nonnull align 8 dereferenceable(5) %i.gt, i64 5, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240: ; preds = %bb.ao
  store ptr %i.gz, ptr %i.gw, align 8, !tbaa !18
  %i.hb = load i64, ptr %i.gt, align 8, !tbaa !16
  store i64 %i.hb, ptr %i.gy, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243.thread: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 4, ptr %i.hc, align 8, !tbaa !13
  store ptr %i.gt, ptr %18, align 8, !tbaa !18
  store i64 0, ptr %i.gu, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store ptr %i.hd, ptr %i.du, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.aq:                                            ; preds = %_ZNSt6vectorIN2cv18SimpleBlobDetector6ParamsESaIS2_EE9push_backERKS2_.exit234
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243 unwind label %bb.bx

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243: ; preds = %bb.aq
  %.pre547 = load ptr, ptr %18, align 8, !tbaa !18 ; 2 uses
  %i.he = icmp eq ptr %.pre547, %i.gt
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243
  %i.hf = load i64, ptr %i.gt, align 8, !tbaa !16
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %.pre547, i64 noundef %i.hg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit243.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.hh = invoke noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #24
          to label %.lr.ph.i.i.i.i.i252.preheader unwind label %bb.bs ; 14 uses

.lr.ph.i.i.i.i.i252.preheader:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hi, ptr noundef nonnull align 8 dereferenceable(80) %10, i64 80, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hh, ptr noundef nonnull align 8 dereferenceable(80) %i.fz, i64 80, i1 false), !tbaa.struct !45, !alias.scope !65
  %.012.i.i.i.i.i253.ptr.1 = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %.0911.i.i.i.i.i254.ptr.1 = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i.i.i253.ptr.1, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i.i.i254.ptr.1, i64 80, i1 false), !tbaa.struct !45, !alias.scope !65
  %.012.i.i.i.i.i253.ptr.2 = getelementptr inbounds nuw i8, ptr %i.hh, i64 160
  %.0911.i.i.i.i.i254.ptr.2 = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i.i.i253.ptr.2, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i.i.i254.ptr.2, i64 80, i1 false), !tbaa.struct !45, !alias.scope !65
  %.012.i.i.i.i.i253.ptr.3 = getelementptr inbounds nuw i8, ptr %i.hh, i64 240
  %.0911.i.i.i.i.i254.ptr.3 = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i.i.i253.ptr.3, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i.i.i254.ptr.3, i64 80, i1 false), !tbaa.struct !45, !alias.scope !65
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 320) #23
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 640 ; 2 uses
  %.sroa.19.4.ptr = getelementptr inbounds nuw i8, ptr %i.hh, i64 400
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 384
  store i8 1, ptr %i.hk, align 8, !tbaa !34
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 388
  store <2 x float> <float 0.000000e+00, float f0x3F666666>, ptr %i.hl, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.hm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 10 uses
  store ptr %i.hm, ptr %19, align 8, !tbaa !9
  store i32 1112493122, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 4, ptr %i.hn, align 8, !tbaa !13
  %i.ho = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i8 0, ptr %i.ho, align 4, !tbaa !16
  %i.hp = load ptr, ptr %i.du, align 8, !tbaa !41 ; 7 uses
  %i.hq = load ptr, ptr %i.dw, align 8, !tbaa !44
  %.not.i.i267 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not.i.i267, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i252.preheader
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 3 uses
  store ptr %i.hr, ptr %i.hp, align 8, !tbaa !9
  %i.hs = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hm
  br i1 %i.ht, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i268

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.hr, ptr noundef nonnull align 8 dereferenceable(5) %i.hm, i64 5, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i268: ; preds = %bb.ar
  store ptr %i.hs, ptr %i.hp, align 8, !tbaa !18
  %i.hu = load i64, ptr %i.hm, align 8, !tbaa !16
  store i64 %i.hu, ptr %i.hr, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271.thread: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i268
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i64 4, ptr %i.hv, align 8, !tbaa !13
  store ptr %i.hm, ptr %19, align 8, !tbaa !18
  store i64 0, ptr %i.hn, align 8, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  store ptr %i.hw, ptr %i.du, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i252.preheader
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.hp, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271 unwind label %bb.by

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271: ; preds = %bb.at
  %.pre548 = load ptr, ptr %19, align 8, !tbaa !18 ; 2 uses
  %i.hx = icmp eq ptr %.pre548, %i.hm
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271
  %i.hy = load i64, ptr %i.hm, align 8, !tbaa !16
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %.pre548, i64 noundef %i.hz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit271.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.19.4.ptr, ptr noundef nonnull align 8 dereferenceable(80) %10, i64 80, i1 false), !tbaa.struct !45
  %42 = getelementptr inbounds nuw i8, ptr %i.hh, i64 480 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %42, i64 -52
  store i8 1, ptr %i.ia, align 4, !tbaa !29
  %i.ib = getelementptr inbounds i8, ptr %42, i64 -51
  store i8 0, ptr %i.ib, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.ic = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  store ptr %i.ic, ptr %21, align 8, !tbaa !9
  %i.id = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  store i64 0, ptr %i.id, align 8, !tbaa !13
  store i8 0, ptr %i.ic, align 8, !tbaa !16
  %i.ie = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.if = load ptr, ptr %i.du, align 8, !tbaa !69
  %.not527 = icmp eq ptr %i.ie, %i.if
  br i1 %.not527, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, label %.lr.ph535

.lr.ph535:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.ig = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.in = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.iq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %32, i64 20
  %i.it = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  %i.je = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %39, i64 20
  %i.jj = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %41, i64 20
  %i.jo = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %40, i64 24
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph535, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit392
  %.sroa.0459.0534 = phi ptr [ %i.hh, %.lr.ph535 ], [ %.sroa.0459.1, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit392 ] ; 5 uses
  %.sroa.0442.0528 = phi ptr [ %i.ie, %.lr.ph535 ], [ %i.uq, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit392 ] ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0442.0528, i64 8 ; 4 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !13
  %i.jv = icmp eq i64 %i.ju, 4
  br i1 %i.jv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread507

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.au
  %i.jw = load ptr, ptr %.sroa.0442.0528, align 8, !tbaa !18
  %i.jx = load i32, ptr %i.jw, align 1
  %i.jy = icmp ne i32 %i.jx, 1112493122
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread507

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN2cv18SimpleBlobDetector6createERKNS0_6ParamsE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.24") align 8 %22, ptr noundef nonnull align 8 dereferenceable(77) %.sroa.0459.0534)
          to label %bb.av unwind label %bb.bz

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.kb = load ptr, ptr %22, align 8, !tbaa !70
  store ptr %i.kb, ptr %20, align 8, !tbaa !75
  %i.kc = load ptr, ptr %i.ig, align 8, !tbaa !78 ; 5 uses
  %i.kd = load ptr, ptr %i.ih, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kc, %i.kd
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_9Feature2DEEaSINS_18SimpleBlobDetectorEEERS2_RKNS0_IT_EE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not7.i.i.i.i = icmp eq ptr %i.kc, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 3 uses
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i291 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i.i.i291, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !79
  %i.kh = add nsw i32 %i.kg, 1
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !79
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ki = atomicrmw volatile add ptr %i.ke, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ih, align 8, !tbaa !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.aw
  %i.kj = phi ptr [ %i.kd, %bb.aw ], [ %i.kd, %bb.ay ], [ %.pr.pre.i.i.i.i, %bb.az ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.kj, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 4 uses
  %i.kl = load atomic i64, ptr %i.kk acquire, align 8 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 4294967297
  %i.kn = trunc i64 %i.kl to i32                  ; 2 uses
  br i1 %i.km, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.kk, align 8, !tbaa !80
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  store i32 0, ptr %i.ko, align 4, !tbaa !82
  %i.kp = load ptr, ptr %i.kj, align 8, !tbaa !83
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #22, !inline_history !85
  %i.ks = load ptr, ptr %i.kj, align 8, !tbaa !83
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #22, !inline_history !85
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.kv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i9.i.i.i.i = icmp eq i8 %i.kv, 0
  br i1 %.not.i9.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kw = add nsw i32 %i.kn, -1
  store i32 %i.kw, ptr %i.kk, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.kx = atomicrmw volatile add ptr %i.kk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i = phi i32 [ %i.kn, %bb.bd ], [ %i.kx, %bb.be ]
  %i.ky = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ky, label %bb.bf, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !86

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bb, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.kc, ptr %i.ih, align 8, !tbaa !78
  %.pr = load ptr, ptr %i.ig, align 8, !tbaa !78
  br label %_ZN2cv3PtrINS_9Feature2DEEaSINS_18SimpleBlobDetectorEEERS2_RKNS0_IT_EE.exit

_ZN2cv3PtrINS_9Feature2DEEaSINS_18SimpleBlobDetectorEEERS2_RKNS0_IT_EE.exit: ; preds = %bb.av, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.kz = phi ptr [ %i.kc, %bb.av ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ] ; 8 uses
  %.not.i.i292 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i292, label %_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN2cv3PtrINS_9Feature2DEEaSINS_18SimpleBlobDetectorEEERS2_RKNS0_IT_EE.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 4 uses
  %i.lb = load atomic i64, ptr %i.la acquire, align 8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 4294967297
  %i.ld = trunc i64 %i.lb to i32                  ; 2 uses
  br i1 %i.lc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.la, align 8, !tbaa !80
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 0, ptr %i.le, align 4, !tbaa !82
  %i.lf = load ptr, ptr %i.kz, align 8, !tbaa !83
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #22, !inline_history !87
  %i.li = load ptr, ptr %i.kz, align 8, !tbaa !83
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #22, !inline_history !87
  br label %_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.ll = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i293 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i293, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lm = add nsw i32 %i.ld, -1
  store i32 %i.lm, ptr %i.la, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ln = atomicrmw volatile add ptr %i.la, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

end_hunk_0
