begin_hunk_0
inline.NumInlined: 4280
inline.NumDeleted: 1275
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
end_hunk_1
begin_hunk_2
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph291, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186
  %.091290 = phi i32 [ 1, %.lr.ph291 ], [ %i.kl, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186 ] ; 15 uses
  %.097289 = phi i1 [ false, %.lr.ph291 ], [ %.198, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186 ] ; 5 uses
  store i32 %.091290, ptr %i.cr, align 8, !tbaa !148
  store i32 -1, ptr %i.cs, align 4, !tbaa !131
end_hunk_2
begin_hunk_3
  %.not43.i148 = icmp eq ptr %i.ff, %i.em
  br i1 %.not43.i148, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151, label %bb.ac

_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151: ; preds = %bb.ab, %.thread.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store ptr %i.ek, ptr %15, align 8, !tbaa !17
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fg = load i64, ptr %i.cz, align 8, !tbaa !13
  store i64 %i.fg, ptr %16, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl13closest_matchB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull dead_on_return %15, i64 noundef 2)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fh = load i64, ptr %17, align 8, !tbaa !13
  %.not111 = icmp eq i64 %i.fh, 0
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.dl ; 2 uses
end_hunk_3
begin_hunk_4

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.critedge128 unwind label %bb.ap

bb.an:                                            ; preds = %bb.ay, %bb.ax, %bb.au
  %i.fk = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %18
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  %i.fp = load i64, ptr %18, align 8, !tbaa !16
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aq:                                            ; preds = %bb.al
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %.critedge128 unwind label %bb.ap

.critedge128:                                     ; preds = %bb.aq, %bb.am
  %19 = load ptr, ptr %14, align 8, !tbaa !22     ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.critedge128
  %22 = load i64, ptr %20, align 8, !tbaa !16
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %23) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %.critedge128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  %i.fr = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.cy
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.ft = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.ao ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fm, %bb.ap ]
end_hunk_5
begin_hunk_6
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.gt, ptr %10, align 8
  store i64 1, ptr %i.dg, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 336
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !152
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(32) %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %10)
end_hunk_6
begin_hunk_7
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 263, ptr %8, align 8
  store ptr %i.ha, ptr %9, align 8, !tbaa !17
  store i64 %i.hc, ptr %i.dh, align 8, !tbaa !19
  %i.hd = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %8) #40
  invoke void @_ZN11OpenImageIO4v3_114ParamValueList9attributeIKSt4byteEEvNS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiNS0_4spanIT_Lm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull dead_on_return %9, i64 263, i32 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.d, i64 %i.hd)
          to label %bb.ba unwind label %bb.bb
end_hunk_7
begin_hunk_8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.iv, ptr %5, align 8, !tbaa !17
  store i64 %i.ja, ptr %i.de, align 8, !tbaa !19
  %i.jb = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %5)
          to label %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i unwind label %bb.bt

end_hunk_8
begin_hunk_9
  %i.jc = phi ptr [ null, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i ], [ %i.jb, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.ix, ptr %6, align 8, !tbaa !17
  store i64 %i.iz, ptr %i.df, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_7ustringE(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull dead_on_return %6, ptr %i.jc)
          to label %bb.bs unwind label %bb.bt

end_hunk_9
begin_hunk_10
  %i.je = add nsw i32 %i.hg, %.091290
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bg, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit, %bb.ba, %bb.at
  %.394 = phi i32 [ %.091290, %bb.at ], [ %.091290, %bb.ba ], [ %.091290, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit ], [ %i.je, %bb.bu ], [ %.091290, %bb.bg ]
  %.289 = phi i1 [ true, %bb.at ], [ true, %bb.ba ], [ true, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit ], [ true, %bb.bu ], [ false, %bb.bg ]
  %i.jf = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.cy
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
end_hunk_10
begin_hunk_11
  %i.kn = icmp slt i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.r, label %.thread, !llvm.loop !156

.thread:                                          ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.cg
  %24 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ -1, %bb.cg ], [ 0, %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138 ], [ 0, %bb.r ], [ 0, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ]
  ret i32 %24

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %bb.q, %bb.i
  %.pn119.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %i.co, %bb.q ], [ %i.ax, %bb.i ]
end_hunk_11
