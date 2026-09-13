Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/convert_test?download=true
inline.NumInlined: 11342
inline.NumDeleted: 2943
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEv:_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.ca:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.la = load ptr, ptr %i.ep, align 8, !tbaa !66 ; 4 uses
  %.not.i.i123.jt1.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i123.jt1.i, label %_ZSt10fpclassifyf.exit.jt1.i, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.lb = load ptr, ptr %i.kz, align 8, !tbaa !41 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt0.i

bb.cc:                                            ; preds = %bb.ca
  %i.le = load ptr, ptr %i.la, align 8, !tbaa !41 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt0.i: ; preds = %bb.cb
  %i.lh = load i64, ptr %i.lc, align 8, !tbaa !44
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.li) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt1.i: ; preds = %bb.cc
  %i.lj = load i64, ptr %i.lf, align 8, !tbaa !44
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lk) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt0.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit.jt0.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt1.i
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef 32) #38
  br label %_ZSt10fpclassifyf.exit.jt1.i

_ZN7testing15AssertionResultD2Ev.exit.jt0.i:      ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZSt10fpclassifyf.exit.jt0.i

_ZSt10fpclassifyf.exit.jt0.i:                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit.jt0.i, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ll = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.eg
  br i1 %i.lm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i125.jt0.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.jt0.i

_ZSt10fpclassifyf.exit.jt1.i:                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.ln = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.eg
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.jt1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.jt1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.jt0.i: ; preds = %_ZSt10fpclassifyf.exit.jt0.i
  %i.lp = load i64, ptr %i.eg, align 8, !tbaa !44
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lq) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i125.jt0.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.jt1.i: ; preds = %_ZSt10fpclassifyf.exit.jt1.i
  %i.lr = load i64, ptr %i.eg, align 8, !tbaa !44
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.ls) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.jt1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.jt1.i: ; preds = %_ZSt10fpclassifyf.exit.jt1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.jt1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %.loopexit317.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i125.jt0.i: ; preds = %_ZSt10fpclassifyf.exit.jt0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.jt0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.050.add.i = add nuw nsw i64 %.050.idx243.i, 1 ; 2 uses
  %.not56.i = icmp eq i64 %.050.add.i, 8
  br i1 %.not56.i, label %.thread.i, label %.split.i

.body.i:                                          ; preds = %_ZN7testing7MessageD2Ev.exit122.i, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit122.i ], [ %i.ic, %bb.bb ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cd

bb.cd:                                            ; preds = %.body.i, %bb.ba, %bb.az
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ia, %bb.az ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.ib, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.lt = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.eg
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i: ; preds = %bb.cd
  %i.lv = load i64, ptr %i.eg, align 8, !tbaa !44
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.ce

.loopexit317.i:                                   ; preds = %.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.jt1.i
  %i.lx = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.ec
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i: ; preds = %.loopexit317.i
  %i.lz = load i64, ptr %i.ec, align 8, !tbaa !44
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i: ; preds = %.loopexit317.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.mb = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ea
  br i1 %i.mc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i
  %i.md = load i64, ptr %i.ea, align 8, !tbaa !44
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, %bb.al
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i ], [ %i.ff, %bb.al ]
  %i.mf = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.ec
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i: ; preds = %bb.ce
  %i.mh = load i64, ptr %i.ec, align 8, !tbaa !44
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i, %bb.ak
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i ], [ %i.fe, %bb.ak ]
  %i.mj = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.ea
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i: ; preds = %bb.cf
  %i.ml = load i64, ptr %i.ea, align 8, !tbaa !44
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.097.0590, i64 4 ; 2 uses
  %.not178 = icmp eq ptr %i.mn, %.sroa.22.9
  br i1 %.not178, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ae

.body:                                            ; preds = %bb.a, %.loopexit181, %.loopexit.split-lp182, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i, %bb.ai
  %.pn38169 = phi { ptr, i32 } [ %i.i, %bb.a ], [ %i.fa, %bb.ai ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ]
  %.sroa.0121.4168 = phi ptr [ %i.c, %bb.a ], [ %.sroa.0121.9, %bb.ai ], [ %.sroa.0121.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i ], [ %.sroa.0121.3587, %.loopexit.split-lp ], [ %.sroa.0121.3587, %.loopexit ], [ %.sroa.0121.2575.lcssa600, %.loopexit181 ], [ %.sroa.0121.2575.lcssa, %.loopexit.split-lp182 ] ; 2 uses
  %.sroa.45.4167 = phi ptr [ %i.j, %bb.a ], [ %.sroa.45.9, %bb.ai ], [ %.sroa.45.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i ], [ %.sroa.22.3586, %.loopexit.split-lp ], [ %.sroa.22.3586, %.loopexit ], [ %.sroa.45.2573.lcssa597, %.loopexit181 ], [ %.sroa.45.2573.lcssa, %.loopexit.split-lp182 ]
  %i.mo = ptrtoint ptr %.sroa.45.4167 to i64
  %i.mp = ptrtoint ptr %.sroa.0121.4168 to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.4168, i64 noundef %i.mq) #38
  resume { ptr, i32 } %.pn38169
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #24 {
bb.a:
  %.fr31 = freeze ptr %1                          ; 3 uses
  %.fr30 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr30 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr31 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr30, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph61

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph61, !llvm.loop !962

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.eu, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %.fr31, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i29.lcssa, 2           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i29.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %.09.us.i.i.i
  %i.t = load float, ptr %i.s, align 4, !tbaa !149 ; 3 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %i.y
  %i.aa = load float, ptr %i.x, align 4, !tbaa !149 ; 2 uses
  %i.ab = load float, ptr %i.z, align 4, !tbaa !149 ; 2 uses
  %i.ac = fcmp ord float %i.aa, 0.000000e+00
  %i.ad = fcmp uno float %i.ab, 0.000000e+00
  %i.ae = fcmp olt float %i.aa, %i.ab
  %spec.select.i.i.i.us.i.i.i = or i1 %i.ad, %i.ae
  %.0.i.i.i.us.i.i.i = and i1 %i.ac, %spec.select.i.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %.0.i.i.i.us.i.i.i, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %spec.select.i.us.i.i.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !149
  %i.ah = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %.034.i.us.i.i.i
  store float %i.ag, ptr %i.ah, align 4, !tbaa !149
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !963

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = fcmp uno float %i.t, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.0911.i.i.us.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !149 ; 3 uses
  %i.am = fcmp ord float %i.al, 0.000000e+00
  %i.an = fcmp olt float %i.al, %i.t
  %spec.select.i.i.i.i.us.i.i.i = or i1 %i.aj, %i.an
  %.0.i.i.i.i.us.i.i.i = and i1 %i.am, %spec.select.i.i.i.i.us.i.i.i
  br i1 %.0.i.i.i.i.us.i.i.i, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.010.i.i.us.i.i.i
  store float %i.al, ptr %i.ao, align 4, !tbaa !149
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !964

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.us.i.i.i
  store float %i.t, ptr %i.aq, align 4, !tbaa !149
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !965

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %.09.i.i.i
  %i.at = load float, ptr %i.as, align 4, !tbaa !149 ; 3 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %i.ay
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !149 ; 2 uses
  %i.bb = load float, ptr %i.az, align 4, !tbaa !149 ; 2 uses
  %i.bc = fcmp ord float %i.ba, 0.000000e+00
  %i.bd = fcmp uno float %i.bb, 0.000000e+00
  %i.be = fcmp olt float %i.ba, %i.bb
  %spec.select.i.i.i.i.i.i = or i1 %i.bd, %i.be
  %.0.i.i.i.i.i.i = and i1 %i.bc, %spec.select.i.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %spec.select.i.i.i.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !149
  %i.bh = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %.034.i.i.i.i
  store float %i.bg, ptr %i.bh, align 4, !tbaa !149
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !963

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load float, ptr %i.q, align 4, !tbaa !149
  store float %i.bk, ptr %i.r, align 4, !tbaa !149
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = fcmp uno float %i.at, 0.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.0911.i.i.i.i.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !149 ; 3 uses
  %i.bp = fcmp ord float %i.bo, 0.000000e+00
  %i.bq = fcmp olt float %i.bo, %i.at
  %spec.select.i.i.i.i.i.i.i = or i1 %i.bm, %i.bq
  %.0.i.i.i.i.i.i.i = and i1 %i.bp, %spec.select.i.i.i.i.i.i.i
  br i1 %.0.i.i.i.i.i.i.i, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.010.i.i.i.i.i
  store float %i.bo, ptr %i.br, align 4, !tbaa !149
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !964

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i.i
  store float %i.at, ptr %i.bt, align 4, !tbaa !149
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !965

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !149 ; 3 uses
  %i.bx = load float, ptr %.fr30, align 4, !tbaa !149
  store float %i.bx, ptr %i.bv, align 4, !tbaa !149
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 2                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %i.ch
  %i.cj = load float, ptr %i.cg, align 4, !tbaa !149 ; 2 uses
  %i.ck = load float, ptr %i.ci, align 4, !tbaa !149 ; 2 uses
  %i.cl = fcmp ord float %i.cj, 0.000000e+00
  %i.cm = fcmp uno float %i.ck, 0.000000e+00
  %i.cn = fcmp olt float %i.cj, %i.ck
  %spec.select.i.i.i.i.i21.i = or i1 %i.cm, %i.cn
  %.0.i.i.i.i.i22.i = and i1 %i.cl, %spec.select.i.i.i.i.i21.i
  %spec.select.i.i.i23.i = select i1 %.0.i.i.i.i.i22.i, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %spec.select.i.i.i23.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !149
  %i.cq = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %.034.i.i.i20.i
  store float %i.cp, ptr %i.cq, align 4, !tbaa !149
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !963

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 4
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !149
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i11.i
  store float %i.da, ptr %i.db, align 4, !tbaa !149
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = fcmp uno float %i.bw, 0.000000e+00
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i14.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %.0911.i.i78.i.i.i
  %i.de = load float, ptr %i.dd, align 4, !tbaa !149 ; 3 uses
  %i.df = fcmp ord float %i.de, 0.000000e+00
  %i.dg = fcmp olt float %i.de, %i.bw
  %spec.select.i.i.i.i.i.i16.i = or i1 %i.dc, %i.dg
  %.0.i.i.i.i.i.i17.i = and i1 %i.df, %spec.select.i.i.i.i.i.i16.i
  br i1 %.0.i.i.i.i.i.i17.i, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %.010.i.i.i.i14.i
  store float %i.de, ptr %i.dh, align 4, !tbaa !149
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %bb.k, !llvm.loop !964

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i14.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [4 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i18.i
  store float %i.bw, ptr %i.di, align 4, !tbaa !149
  %i.dj = icmp sgt i64 %i.bz, 4
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !966

.lr.ph61:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2760 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr31, %.lr.ph ] ; 3 uses
  %.02859 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.ev, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02859, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.fr30, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2760, i64 -4 ; 3 uses
  %i.dp = load float, ptr %i.f, align 4, !tbaa !149 ; 6 uses
  %i.dq = load float, ptr %i.dn, align 4, !tbaa !149 ; 8 uses
  %i.dr = fcmp ord float %i.dp, 0.000000e+00      ; 2 uses
  %i.ds = fcmp uno float %i.dq, 0.000000e+00
  %i.dt = fcmp olt float %i.dp, %i.dq
  %spec.select.i.i.i.i16 = or i1 %i.ds, %i.dt
  %.0.i.i.i.i = and i1 %i.dr, %spec.select.i.i.i.i16
  %i.du = load float, ptr %i.do, align 4, !tbaa !149 ; 8 uses
  br i1 %.0.i.i.i.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph61
  %i.dv = fcmp ord float %i.dq, 0.000000e+00
  %i.dw = fcmp uno float %i.du, 0.000000e+00      ; 2 uses
  %i.dx = fcmp olt float %i.dq, %i.du
  %spec.select.i.i26.i.i = or i1 %i.dw, %i.dx
  %.0.i.i27.i.i = and i1 %i.dv, %spec.select.i.i26.i.i
  br i1 %.0.i.i27.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dy = load float, ptr %.fr30, align 4, !tbaa !149
  store float %i.dq, ptr %.fr30, align 4, !tbaa !149
  store float %i.dy, ptr %i.dn, align 4, !tbaa !149
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dz = fcmp olt float %i.dp, %i.du
  %spec.select.i.i28.i.i = or i1 %i.dw, %i.dz
  %i.ea = load float, ptr %.fr30, align 4, !tbaa !149 ; 2 uses
  br i1 %spec.select.i.i28.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store float %i.du, ptr %.fr30, align 4, !tbaa !149
  store float %i.ea, ptr %i.do, align 4, !tbaa !149
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store float %i.dp, ptr %.fr30, align 4, !tbaa !149
  store float %i.ea, ptr %i.f, align 4, !tbaa !149
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph61
  %i.eb = fcmp uno float %i.du, 0.000000e+00      ; 2 uses
  %i.ec = fcmp olt float %i.dp, %i.du
  %spec.select.i.i30.i.i = or i1 %i.eb, %i.ec
  %.0.i.i31.i.i = and i1 %i.dr, %spec.select.i.i30.i.i
  br i1 %.0.i.i31.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = load float, ptr %.fr30, align 4, !tbaa !149
  store float %i.dp, ptr %.fr30, align 4, !tbaa !149
  store float %i.ed, ptr %i.f, align 4, !tbaa !149
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ee = fcmp ord float %i.dq, 0.000000e+00
  %i.ef = fcmp olt float %i.dq, %i.du
  %spec.select.i.i32.i.i = or i1 %i.eb, %i.ef
  %.0.i.i33.i.i = and i1 %i.ee, %spec.select.i.i32.i.i
  %i.eg = load float, ptr %.fr30, align 4, !tbaa !149 ; 2 uses
  br i1 %.0.i.i33.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.du, ptr %.fr30, align 4, !tbaa !149
  store float %i.eg, ptr %i.do, align 4, !tbaa !149
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store float %i.dq, ptr %.fr30, align 4, !tbaa !149
  store float %i.eg, ptr %i.dn, align 4, !tbaa !149
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.x
  %.sroa.012.0.i.i = phi ptr [ %i.em, %bb.x ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.us-phi.i.i, %bb.x ], [ %storemerge2760, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ] ; 2 uses
  %i.eh = load float, ptr %.fr30, align 4, !tbaa !149
  %.fr18.i.i = freeze float %i.eh                 ; 4 uses
  %i.ei = fcmp uno float %.fr18.i.i, 0.000000e+00
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.em, %bb.w ] ; 8 uses
  %i.ej = load float, ptr %.sroa.012.1.i.i, align 4, !tbaa !149 ; 3 uses
  %i.ek = fcmp ord float %i.ej, 0.000000e+00
  %i.el = fcmp olt float %i.ej, %.fr18.i.i
  %spec.select.i.i.i13.i = or i1 %i.ei, %i.el
  %.0.i.i.i14.i = and i1 %i.ek, %spec.select.i.i.i13.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %.0.i.i.i14.i, label %bb.w, label %.preheader.i.i, !llvm.loop !967

.preheader.i.i:                                   ; preds = %bb.w
  %i.en = fcmp ord float %.fr18.i.i, 0.000000e+00
  br i1 %i.en, label %.preheader.split.i.i, label %.preheader.split.us.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.i.i
  %.sroa.0.1.us.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 2 uses
  %i.eo = load float, ptr %.sroa.0.1.us.i.i, align 4, !tbaa !149
  br label %.split.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %.preheader.split.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.split.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 3 uses
  %i.ep = load float, ptr %.sroa.0.1.i.i, align 4, !tbaa !149 ; 3 uses
  %i.eq = fcmp uno float %i.ep, 0.000000e+00
  %i.er = fcmp olt float %.fr18.i.i, %i.ep
  %spec.select.i.i8.i.i = or i1 %i.eq, %i.er
  br i1 %spec.select.i.i8.i.i, label %.preheader.split.i.i, label %.split.i.i, !llvm.loop !968

.split.i.i:                                       ; preds = %.preheader.split.i.i, %.preheader.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.sroa.0.1.us.i.i, %.preheader.split.us.i.i ], [ %.sroa.0.1.i.i, %.preheader.split.i.i ] ; 3 uses
  %.us-phi17.i.i = phi float [ %i.eo, %.preheader.split.us.i.i ], [ %i.ep, %.preheader.split.i.i ]
  %i.es = icmp ult ptr %.sroa.012.1.i.i, %.us-phi.i.i
  br i1 %i.es, label %bb.x, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"

bb.x:                                             ; preds = %.split.i.i
  store float %.us-phi17.i.i, ptr %.sroa.012.1.i.i, align 4, !tbaa !149
  store float %i.ej, ptr %.us-phi.i.i, align 4, !tbaa !149
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !969

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %.split.i.i
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2760, i64 noundef %i.dl)
  %i.et = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.eu = sub i64 %i.et, %i.a                     ; 2 uses
  %i.ev = ashr exact i64 %i.eu, 2                 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 16
  br i1 %i.ew, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !962

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_128FormatConvertTest_Float_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StrAppendVEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl12lts_2026052619str_format_internal10AppendPackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_18StrPrintB5cxx11EPKcz(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !44
  invoke fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StrAppendVEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.a, align 8, !tbaa !44
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.c
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc range(i32 0, 16843010) i32 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_130VerifyNativeImplementationImplEv() unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  call void (ptr, ptr, ...) @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_18StrPrintB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.227, double noundef 6.565700e+04)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = icmp ult i64 %i.b, 6
  %.pre290 = load ptr, ptr %0, align 8, !tbaa !41 ; 4 uses
  br i1 %i.c, label %.critedge74, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.a
  %i.d = load i32, ptr %.pre290, align 1
  %i.e = xor i32 %i.d, 774993968
  %i.f = getelementptr i8, ptr %.pre290, i64 4
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i32
  %i.i = xor i32 %i.h, 12336
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread, label %.critedge74

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  invoke void (ptr, ptr, ...) @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_18StrPrintB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.227, double noundef 6.591300e+04)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45
  %i.p = icmp ult i64 %i.o, 6
  %.pre288 = load ptr, ptr %1, align 8, !tbaa !41 ; 4 uses
  br i1 %i.p, label %.critedge72.thread263, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit82

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit82: ; preds = %bb.b
  %i.q = load i32, ptr %.pre288, align 1
  %i.r = xor i32 %i.q, 774993968
  %i.s = getelementptr i8, ptr %.pre288, i64 4
  %i.t = load i16, ptr %i.s, align 1
  %i.u = zext i16 %i.t to i32
  %i.v = xor i32 %i.u, 12592
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit82.thread, label %.critedge72.thread263

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit82.thread: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void (ptr, ptr, ...) @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_18StrPrintB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.227, double noundef 6.566400e+04)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit82.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ac = icmp ult i64 %i.ab, 6
  %.pre286 = load ptr, ptr %2, align 8, !tbaa !41 ; 4 uses
  br i1 %i.ac, label %.critedge70, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit88

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit88: ; preds = %bb.c
  %i.ad = load i32, ptr %.pre286, align 1
  %i.ae = xor i32 %i.ad, 774993968
  %i.af = getelementptr i8, ptr %.pre286, i64 4
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = xor i32 %i.ah, 12336
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit88.thread, label %.critedge70

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit88.thread: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void (ptr, ptr, ...) @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_18StrPrintB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.227, double noundef 6.592000e+04)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit88.thread
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45
  %i.ap = icmp ult i64 %i.ao, 6
  %.pre284 = load ptr, ptr %3, align 8, !tbaa !41 ; 4 uses
  br i1 %i.ap, label %.critedge68, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit94

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit94: ; preds = %bb.d
  %i.aq = load i32, ptr %.pre284, align 1
  %i.ar = xor i32 %i.aq, 774993968
  %i.as = getelementptr i8, ptr %.pre284, i64 4
  %i.at = load i16, ptr %i.as, align 1
  %i.au = zext i16 %i.at to i32
  %i.av = xor i32 %i.au, 12848
  %i.aw = or i32 %i.ar, %i.av
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit94.thread, label %.critedge68

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit94.thread: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void (ptr, ptr, ...) @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_18StrPrintB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.227, double noundef 6.566500e+04)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit94.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bc = icmp ult i64 %i.bb, 6
  %.pre282 = load ptr, ptr %4, align 8, !tbaa !41 ; 4 uses
  br i1 %i.bc, label %.critedge, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit100

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit100: ; preds = %bb.e
  %i.bd = load i32, ptr %.pre282, align 1
  %i.be = xor i32 %i.bd, 774993968
  %i.bf = getelementptr i8, ptr %.pre282, i64 4
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = zext i16 %i.bg to i32
  %i.bi = xor i32 %i.bh, 12592
  %i.bj = or i32 %i.be, %i.bi
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit100.thread, label %.critedge

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit100.thread: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit100
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEv:_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
bb.ca:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.lc = load ptr, ptr %i.eq, align 8, !tbaa !66 ; 4 uses
  %.not.i.i122.jt1.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i122.jt1.i, label %_ZSt10fpclassifyd.exit.jt1.i, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ld = load ptr, ptr %i.lb, align 8, !tbaa !41 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt0.i

bb.cc:                                            ; preds = %bb.ca
  %i.lg = load ptr, ptr %i.lc, align 8, !tbaa !41 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt0.i: ; preds = %bb.cb
  %i.lj = load i64, ptr %i.le, align 8, !tbaa !44
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lk) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt1.i: ; preds = %bb.cc
  %i.ll = load i64, ptr %i.lh, align 8, !tbaa !44
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lm) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt0.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit.jt0.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.jt1.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef 32) #38
  br label %_ZSt10fpclassifyd.exit.jt1.i

_ZN7testing15AssertionResultD2Ev.exit.jt0.i:      ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt0.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZSt10fpclassifyd.exit.jt0.i

_ZSt10fpclassifyd.exit.jt0.i:                     ; preds = %bb.as, %_ZN7testing15AssertionResultD2Ev.exit.jt0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ln = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.eh
  br i1 %i.lo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124.jt0.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.jt0.i

_ZSt10fpclassifyd.exit.jt1.i:                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.jt1.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.lp = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.eh
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.jt1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.jt1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.jt0.i: ; preds = %_ZSt10fpclassifyd.exit.jt0.i
  %i.lr = load i64, ptr %i.eh, align 8, !tbaa !44
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.ls) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124.jt0.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.jt1.i: ; preds = %_ZSt10fpclassifyd.exit.jt1.i
  %i.lt = load i64, ptr %i.eh, align 8, !tbaa !44
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lu) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.jt1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.jt1.i: ; preds = %_ZSt10fpclassifyd.exit.jt1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.jt1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %.loopexit318.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124.jt0.i: ; preds = %_ZSt10fpclassifyd.exit.jt0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.jt0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.050.add.i = add nuw nsw i64 %.050.idx240.i, 1 ; 2 uses
  %.not56.i = icmp eq i64 %.050.add.i, 8
  br i1 %.not56.i, label %.thread.i, label %.split.i

.body.i:                                          ; preds = %_ZN7testing7MessageD2Ev.exit121.i, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit121.i ], [ %i.ie, %bb.bb ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cd

bb.cd:                                            ; preds = %.body.i, %bb.ba, %bb.az
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ic, %bb.az ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.id, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.lv = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.eh
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i: ; preds = %bb.cd
  %i.lx = load i64, ptr %i.eh, align 8, !tbaa !44
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ce

.loopexit318.i:                                   ; preds = %.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.jt1.i
  %i.lz = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.ed
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i: ; preds = %.loopexit318.i
  %i.mb = load i64, ptr %i.ed, align 8, !tbaa !44
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i: ; preds = %.loopexit318.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.md = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.eb
  br i1 %i.me, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i133.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i
  %i.mf = load i64, ptr %i.eb, align 8, !tbaa !44
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i133.i

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i, %bb.al
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i ], [ %i.fd, %bb.al ]
  %i.mh = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.ed
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i: ; preds = %bb.ce
  %i.mj = load i64, ptr %i.ed, align 8, !tbaa !44
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i, %bb.ak
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i ], [ %i.fc, %bb.ak ]
  %i.ml = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.eb
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i: ; preds = %bb.cf
  %i.mn = load i64, ptr %i.eb, align 8, !tbaa !44
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i133.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.097.0595, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.mp, %.sroa.22.9
  br i1 %.not178, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ae

.body:                                            ; preds = %bb.a, %.loopexit181, %.loopexit.split-lp182, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i, %bb.ai
  %.pn38169 = phi { ptr, i32 } [ %i.j, %bb.a ], [ %i.fb, %bb.ai ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ]
  %.sroa.0121.4168 = phi ptr [ %i.d, %bb.a ], [ %.sroa.0121.9, %bb.ai ], [ %.sroa.0121.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i ], [ %.sroa.0121.3592, %.loopexit.split-lp ], [ %.sroa.0121.3592, %.loopexit ], [ %.sroa.0121.2580.lcssa610, %.loopexit181 ], [ %.sroa.0121.2580.lcssa, %.loopexit.split-lp182 ] ; 2 uses
  %.sroa.45.4167 = phi ptr [ %i.k, %bb.a ], [ %.sroa.45.9, %bb.ai ], [ %.sroa.45.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i ], [ %.sroa.22.3591, %.loopexit.split-lp ], [ %.sroa.22.3591, %.loopexit ], [ %.sroa.45.2578.lcssa607, %.loopexit181 ], [ %.sroa.45.2578.lcssa, %.loopexit.split-lp182 ]
  %i.mq = ptrtoint ptr %.sroa.45.4167 to i64
  %i.mr = ptrtoint ptr %.sroa.0121.4168 to i64
  %i.ms = sub i64 %i.mq, %i.mr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.4168, i64 noundef %i.ms) #38
  resume { ptr, i32 } %.pn38169
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #24 {
bb.a:
  %.fr31 = freeze ptr %1                          ; 3 uses
  %.fr30 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr30 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr31 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr30, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph61

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph61, !llvm.loop !989

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.eu, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %.fr31, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i29.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i29.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.us.i.i.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !155 ; 3 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.y
  %i.aa = load double, ptr %i.x, align 8, !tbaa !155 ; 2 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !155 ; 2 uses
  %i.ac = fcmp ord double %i.aa, 0.000000e+00
  %i.ad = fcmp uno double %i.ab, 0.000000e+00
  %i.ae = fcmp olt double %i.aa, %i.ab
  %spec.select.i.i.i.us.i.i.i = or i1 %i.ad, %i.ae
  %.0.i.i.i.us.i.i.i = and i1 %i.ac, %spec.select.i.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %.0.i.i.i.us.i.i.i, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.us.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !155
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.034.i.us.i.i.i
  store double %i.ag, ptr %i.ah, align 8, !tbaa !155
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !990

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = fcmp uno double %i.t, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0911.i.i.us.i.i.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !155 ; 3 uses
  %i.am = fcmp ord double %i.al, 0.000000e+00
  %i.an = fcmp olt double %i.al, %i.t
  %spec.select.i.i.i.i.us.i.i.i = or i1 %i.aj, %i.an
  %.0.i.i.i.i.us.i.i.i = and i1 %i.am, %spec.select.i.i.i.i.us.i.i.i
  br i1 %.0.i.i.i.i.us.i.i.i, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.010.i.i.us.i.i.i
  store double %i.al, ptr %i.ao, align 8, !tbaa !155
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !991

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.us.i.i.i
  store double %i.t, ptr %i.aq, align 8, !tbaa !155
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !992

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !155 ; 3 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ay
  %i.ba = load double, ptr %i.ax, align 8, !tbaa !155 ; 2 uses
  %i.bb = load double, ptr %i.az, align 8, !tbaa !155 ; 2 uses
  %i.bc = fcmp ord double %i.ba, 0.000000e+00
  %i.bd = fcmp uno double %i.bb, 0.000000e+00
  %i.be = fcmp olt double %i.ba, %i.bb
  %spec.select.i.i.i.i.i.i = or i1 %i.bd, %i.be
  %.0.i.i.i.i.i.i = and i1 %i.bc, %spec.select.i.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !155
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.034.i.i.i.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !155
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !990

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load double, ptr %i.q, align 8, !tbaa !155
  store double %i.bk, ptr %i.r, align 8, !tbaa !155
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = fcmp uno double %i.at, 0.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0911.i.i.i.i.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !155 ; 3 uses
  %i.bp = fcmp ord double %i.bo, 0.000000e+00
  %i.bq = fcmp olt double %i.bo, %i.at
  %spec.select.i.i.i.i.i.i.i = or i1 %i.bm, %i.bq
  %.0.i.i.i.i.i.i.i = and i1 %i.bp, %spec.select.i.i.i.i.i.i.i
  br i1 %.0.i.i.i.i.i.i.i, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.010.i.i.i.i.i
  store double %i.bo, ptr %i.br, align 8, !tbaa !155
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !991

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i.i
  store double %i.at, ptr %i.bt, align 8, !tbaa !155
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !992

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !155 ; 3 uses
  %i.bx = load double, ptr %.fr30, align 8, !tbaa !155
  store double %i.bx, ptr %i.bv, align 8, !tbaa !155
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ch
  %i.cj = load double, ptr %i.cg, align 8, !tbaa !155 ; 2 uses
  %i.ck = load double, ptr %i.ci, align 8, !tbaa !155 ; 2 uses
  %i.cl = fcmp ord double %i.cj, 0.000000e+00
  %i.cm = fcmp uno double %i.ck, 0.000000e+00
  %i.cn = fcmp olt double %i.cj, %i.ck
  %spec.select.i.i.i.i.i21.i = or i1 %i.cm, %i.cn
  %.0.i.i.i.i.i22.i = and i1 %i.cl, %spec.select.i.i.i.i.i21.i
  %spec.select.i.i.i23.i = select i1 %.0.i.i.i.i.i22.i, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i23.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !155
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.034.i.i.i20.i
  store double %i.cp, ptr %i.cq, align 8, !tbaa !155
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !990

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !155
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i11.i
  store double %i.da, ptr %i.db, align 8, !tbaa !155
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = fcmp uno double %i.bw, 0.000000e+00
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i14.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0911.i.i78.i.i.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !155 ; 3 uses
  %i.df = fcmp ord double %i.de, 0.000000e+00
  %i.dg = fcmp olt double %i.de, %i.bw
  %spec.select.i.i.i.i.i.i16.i = or i1 %i.dc, %i.dg
  %.0.i.i.i.i.i.i17.i = and i1 %i.df, %spec.select.i.i.i.i.i.i16.i
  br i1 %.0.i.i.i.i.i.i17.i, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.010.i.i.i.i14.i
  store double %i.de, ptr %i.dh, align 8, !tbaa !155
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %bb.k, !llvm.loop !991

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i14.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i18.i
  store double %i.bw, ptr %i.di, align 8, !tbaa !155
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !993

.lr.ph61:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2760 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr31, %.lr.ph ] ; 3 uses
  %.02859 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.ev, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02859, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2760, i64 -8 ; 3 uses
  %i.dp = load double, ptr %i.f, align 8, !tbaa !155 ; 6 uses
  %i.dq = load double, ptr %i.dn, align 8, !tbaa !155 ; 8 uses
  %i.dr = fcmp ord double %i.dp, 0.000000e+00     ; 2 uses
  %i.ds = fcmp uno double %i.dq, 0.000000e+00
  %i.dt = fcmp olt double %i.dp, %i.dq
  %spec.select.i.i.i.i16 = or i1 %i.ds, %i.dt
  %.0.i.i.i.i = and i1 %i.dr, %spec.select.i.i.i.i16
  %i.du = load double, ptr %i.do, align 8, !tbaa !155 ; 8 uses
  br i1 %.0.i.i.i.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph61
  %i.dv = fcmp ord double %i.dq, 0.000000e+00
  %i.dw = fcmp uno double %i.du, 0.000000e+00     ; 2 uses
  %i.dx = fcmp olt double %i.dq, %i.du
  %spec.select.i.i26.i.i = or i1 %i.dw, %i.dx
  %.0.i.i27.i.i = and i1 %i.dv, %spec.select.i.i26.i.i
  br i1 %.0.i.i27.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dy = load double, ptr %.fr30, align 8, !tbaa !155
  store double %i.dq, ptr %.fr30, align 8, !tbaa !155
  store double %i.dy, ptr %i.dn, align 8, !tbaa !155
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dz = fcmp olt double %i.dp, %i.du
  %spec.select.i.i28.i.i = or i1 %i.dw, %i.dz
  %i.ea = load double, ptr %.fr30, align 8, !tbaa !155 ; 2 uses
  br i1 %spec.select.i.i28.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.du, ptr %.fr30, align 8, !tbaa !155
  store double %i.ea, ptr %i.do, align 8, !tbaa !155
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store double %i.dp, ptr %.fr30, align 8, !tbaa !155
  store double %i.ea, ptr %i.f, align 8, !tbaa !155
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph61
  %i.eb = fcmp uno double %i.du, 0.000000e+00     ; 2 uses
  %i.ec = fcmp olt double %i.dp, %i.du
  %spec.select.i.i30.i.i = or i1 %i.eb, %i.ec
  %.0.i.i31.i.i = and i1 %i.dr, %spec.select.i.i30.i.i
  br i1 %.0.i.i31.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = load double, ptr %.fr30, align 8, !tbaa !155
  store double %i.dp, ptr %.fr30, align 8, !tbaa !155
  store double %i.ed, ptr %i.f, align 8, !tbaa !155
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ee = fcmp ord double %i.dq, 0.000000e+00
  %i.ef = fcmp olt double %i.dq, %i.du
  %spec.select.i.i32.i.i = or i1 %i.eb, %i.ef
  %.0.i.i33.i.i = and i1 %i.ee, %spec.select.i.i32.i.i
  %i.eg = load double, ptr %.fr30, align 8, !tbaa !155 ; 2 uses
  br i1 %.0.i.i33.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store double %i.du, ptr %.fr30, align 8, !tbaa !155
  store double %i.eg, ptr %i.do, align 8, !tbaa !155
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store double %i.dq, ptr %.fr30, align 8, !tbaa !155
  store double %i.eg, ptr %i.dn, align 8, !tbaa !155
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.x
  %.sroa.012.0.i.i = phi ptr [ %i.em, %bb.x ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.us-phi.i.i, %bb.x ], [ %storemerge2760, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ] ; 2 uses
  %i.eh = load double, ptr %.fr30, align 8, !tbaa !155
  %.fr18.i.i = freeze double %i.eh                ; 4 uses
  %i.ei = fcmp uno double %.fr18.i.i, 0.000000e+00
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.em, %bb.w ] ; 8 uses
  %i.ej = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !155 ; 3 uses
  %i.ek = fcmp ord double %i.ej, 0.000000e+00
  %i.el = fcmp olt double %i.ej, %.fr18.i.i
  %spec.select.i.i.i13.i = or i1 %i.ei, %i.el
  %.0.i.i.i14.i = and i1 %i.ek, %spec.select.i.i.i13.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %.0.i.i.i14.i, label %bb.w, label %.preheader.i.i, !llvm.loop !994

.preheader.i.i:                                   ; preds = %bb.w
  %i.en = fcmp ord double %.fr18.i.i, 0.000000e+00
  br i1 %i.en, label %.preheader.split.i.i, label %.preheader.split.us.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.i.i
  %.sroa.0.1.us.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -8 ; 2 uses
  %i.eo = load double, ptr %.sroa.0.1.us.i.i, align 8, !tbaa !155
  br label %.split.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %.preheader.split.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.split.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 3 uses
  %i.ep = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !155 ; 3 uses
  %i.eq = fcmp uno double %i.ep, 0.000000e+00
  %i.er = fcmp olt double %.fr18.i.i, %i.ep
  %spec.select.i.i8.i.i = or i1 %i.eq, %i.er
  br i1 %spec.select.i.i8.i.i, label %.preheader.split.i.i, label %.split.i.i, !llvm.loop !995

.split.i.i:                                       ; preds = %.preheader.split.i.i, %.preheader.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.sroa.0.1.us.i.i, %.preheader.split.us.i.i ], [ %.sroa.0.1.i.i, %.preheader.split.i.i ] ; 3 uses
  %.us-phi17.i.i = phi double [ %i.eo, %.preheader.split.us.i.i ], [ %i.ep, %.preheader.split.i.i ]
  %i.es = icmp ult ptr %.sroa.012.1.i.i, %.us-phi.i.i
  br i1 %i.es, label %bb.x, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"

bb.x:                                             ; preds = %.split.i.i
  store double %.us-phi17.i.i, ptr %.sroa.012.1.i.i, align 8, !tbaa !155
  store double %i.ej, ptr %.us-phi.i.i, align 8, !tbaa !155
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !996

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %.split.i.i
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2760, i64 noundef %i.dl)
  %i.et = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.eu = sub i64 %i.et, %i.a                     ; 2 uses
  %i.ev = ashr exact i64 %i.eu, 3                 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 16
  br i1 %i.ew, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !989

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_129FormatConvertTest_Double_Test8TestBodyEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #25

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052619str_format_internal12_GLOBAL__N_134FormatConvertTest_DoubleRound_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052619str_format_internal12_GLOBAL__N_134FormatConvertTest_DoubleRound_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052619str_format_internal12_GLOBAL__N_134FormatConvertTest_DoubleRound_TestE, i64 16), ptr %i.a, align 8, !tbaa !55
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #38
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_134FormatConvertTest_DoubleRound_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_134FormatConvertTest_DoubleRound_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 104 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %45 = alloca %"class.testing::Message", align 8 ; 7 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %47 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %54 = alloca %"class.testing::Message", align 8 ; 7 uses
  %55 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %57 = alloca %"class.testing::Message", align 8 ; 7 uses
  %58 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %60 = alloca %"class.testing::Message", align 8 ; 7 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %63 = alloca %"class.testing::Message", align 8 ; 7 uses
  %64 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %65 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %66 = alloca %"class.testing::Message", align 8 ; 7 uses
  %67 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %68 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %69 = alloca %"class.testing::Message", align 8 ; 7 uses
  %70 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %71 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %72 = alloca %"class.testing::Message", align 8 ; 7 uses
  %73 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %74 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %75 = alloca %"class.testing::Message", align 8 ; 7 uses
  %76 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %77 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %78 = alloca %"class.testing::Message", align 8 ; 7 uses
  %79 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %80 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %81 = alloca %"class.testing::Message", align 8 ; 7 uses
  %82 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %83 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %84 = alloca %"class.testing::Message", align 8 ; 7 uses
  %85 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %86 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %87 = alloca %"class.testing::Message", align 8 ; 7 uses
  %88 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %89 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %90 = alloca %"class.testing::Message", align 8 ; 7 uses
  %91 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %92 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %93 = alloca %"class.testing::Message", align 8 ; 7 uses
  %94 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %95 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %96 = alloca %"class.testing::Message", align 8 ; 7 uses
  %97 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 33 uses
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.c = invoke fastcc noundef nonnull align 8 dereferenceable(32) ptr @"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_134FormatConvertTest_DoubleRound_Test8TestBodyEvENK3$_0clB5cxx11EPKcd"(ptr nonnull %1, ptr noundef nonnull @.str.241, double noundef f0x3D30000000000000)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !45, !noalias !1125
  %i.e = icmp eq i64 %i.d, 15
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !41, !noalias !1125 ; 2 uses
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 3472328296227679792
  %i.i = getelementptr i8, ptr %i.f, i64 7
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 %i.j, 3544385890265608240
  %i.l = or i64 %i.h, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA16_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.c

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.b
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA16_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(16) @.str.242)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA16_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.c

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA16_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i
  %i.p = load i8, ptr %2, align 8, !tbaa !65, !range !35, !noundef !36
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.m, label %bb.d

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA16_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

end_hunk_1
