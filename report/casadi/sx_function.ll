Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_function?download=true
inline.NumInlined: 11328
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK6casadi10SXFunction4evalEPPKdPPdPxS4_Pv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %i.da = load ptr, ptr %16, align 8, !tbaa !161  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !162
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804, %bb.ag
  %.pn747.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.ag ], [ %.pn747.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804 ], [ %.pn747.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803 ] ; 2 uses
  %.3693 = phi i1 [ true, %bb.ag ], [ %.2692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804 ], [ %.2692, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803 ] ; 2 uses
  %i.df = load ptr, ptr %17, align 8, !tbaa !161  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !162
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807, %bb.af
  %.pn747.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.af ], [ %.pn747.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807 ], [ %.pn747.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806 ] ; 2 uses
  %.4694 = phi i1 [ true, %bb.af ], [ %.3693, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807 ], [ %.3693, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806 ] ; 2 uses
  %i.dk = load ptr, ptr %21, align 8, !tbaa !161  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !162
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810, %bb.ae
  %.pn747.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.ae ], [ %.pn747.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810 ], [ %.pn747.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ] ; 2 uses
  %.5695 = phi i1 [ true, %bb.ae ], [ %.4694, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810 ], [ %.4694, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %i.dp = load ptr, ptr %18, align 8, !tbaa !161  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !162
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813, %bb.ad
  %.pn747.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.ad ], [ %.pn747.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813 ], [ %.pn747.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812 ] ; 2 uses
  %.6696 = phi i1 [ true, %bb.ad ], [ %.5695, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813 ], [ %.5695, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812 ] ; 2 uses
  %i.du = load ptr, ptr %19, align 8, !tbaa !161  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !162
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816, %bb.ac
  %.pn747.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.ac ], [ %.pn747.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816 ], [ %.pn747.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815 ] ; 2 uses
  %.7697 = phi i1 [ true, %bb.ac ], [ %.6696, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816 ], [ %.6696, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815 ] ; 2 uses
  %i.dz = load ptr, ptr %20, align 8, !tbaa !161  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !162
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819, %bb.ab
  %.pn747.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ab ], [ %.pn747.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819 ], [ %.pn747.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.ab ], [ %.7697, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819 ], [ %.7697, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ee = load ptr, ptr %11, align 8, !tbaa !161  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !162
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822, %bb.aa
  %.pn747.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.aa ], [ %.pn747.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822 ], [ %.pn747.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821 ] ; 4 uses
  %.9 = phi i1 [ true, %bb.aa ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821 ] ; 2 uses
  %i.ej = load ptr, ptr %12, align 8, !tbaa !161  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !162
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825
  %i.eo = load ptr, ptr %13, align 8, !tbaa !161  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827.thread: ; preds = %bb.n
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %13, align 8, !tbaa !161  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827.thread
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !162
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827
  %i.ex = load i64, ptr %i.ep, align 8, !tbaa !162
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.ey) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.9, label %bb.ak, label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.9, label %bb.ak, label %bb.al

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828.thread
  %.pn747.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn903.ph = phi { ptr, i32 } [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828.thread ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830.thread ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830
  %.pn747.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn903 = phi { ptr, i32 } [ %.pn747.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828 ], [ %.pn747.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830 ], [ %.pn747.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn903.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.cd) #28
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830, %bb.ak, %bb.z
  %.pn747.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn747.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn903, %bb.ak ], [ %.pn747.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830 ], [ %i.ce, %bb.z ], [ %.pn747.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %common.resume

bb.am:                                            ; preds = %bb.k
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !157, !range !174, !noundef !175
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !180 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !180 ; 3 uses
  %.not946952 = icmp eq ptr %i.fd, %i.ff          ; 2 uses
  br i1 %i.fb, label %bb.an, label %bb.dx

bb.an:                                            ; preds = %bb.am
  br i1 %.not946952, label %.loopexit, label %.lr.ph955

.lr.ph955:                                        ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1576
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph955, %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph955 ], [ %indvars.iv.next, %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit ] ; 3 uses
  %.sroa.0897.0953 = phi ptr [ %i.fd, %.lr.ph955 ], [ %i.anc, %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit ] ; 137 uses
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  call void @_ZNK6casadi10SXFunction9print_argERSoxRKNS_12ScalarAtomicEPKd(ptr noundef nonnull align 8 dereferenceable(1611) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.fm, i64 noundef %indvars.iv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0897.0953, ptr noundef %4)
  %i.fn = load i32, ptr %.sroa.0897.0953, align 8, !tbaa !182
  switch i32 %i.fn, label %bb.dg [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.av
    i32 7, label %bb.aw
    i32 8, label %bb.ax
    i32 9, label %bb.ay
    i32 10, label %bb.az
    i32 11, label %bb.ba
    i32 12, label %bb.bb
    i32 13, label %bb.bc
    i32 14, label %bb.bd
    i32 15, label %bb.be
    i32 16, label %bb.bf
    i32 17, label %bb.bg
    i32 18, label %bb.bh
    i32 19, label %bb.bi
    i32 20, label %bb.bj
    i32 21, label %bb.bk
    i32 22, label %bb.bl
    i32 23, label %bb.bm
    i32 24, label %bb.bn
    i32 25, label %bb.bo
    i32 32, label %bb.bp
    i32 26, label %bb.bq
    i32 27, label %bb.br
    i32 28, label %bb.bs
    i32 97, label %bb.bt
    i32 29, label %bb.bu
    i32 30, label %bb.bv
    i32 31, label %bb.bw
    i32 33, label %bb.bx
    i32 34, label %bb.by
    i32 35, label %bb.bz
    i32 36, label %bb.ca
    i32 37, label %bb.cb
    i32 38, label %bb.cc
    i32 39, label %bb.cd
    i32 40, label %bb.ce
    i32 41, label %bb.cf
    i32 42, label %bb.cg
    i32 43, label %bb.ch
    i32 86, label %bb.ci
    i32 88, label %bb.cj
    i32 87, label %bb.ck
    i32 93, label %bb.cl
    i32 94, label %bb.cm
    i32 95, label %bb.cn
    i32 44, label %bb.co
    i32 45, label %bb.cp
    i32 46, label %bb.cs
    i32 48, label %bb.cu
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !162
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !183
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fu
  %i.fw = load double, ptr %i.fr, align 8, !tbaa !184
  store double %i.fw, ptr %i.fv, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !162
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !162
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !183
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gh
  %i.gj = load double, ptr %i.ga, align 8, !tbaa !184
  %i.gk = load double, ptr %i.ge, align 8, !tbaa !184
  %i.gl = fadd double %i.gj, %i.gk
  store double %i.gl, ptr %i.gi, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.ar:                                            ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !162
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %4, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !162
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !183
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gw
  %i.gy = load double, ptr %i.gp, align 8, !tbaa !184
  %i.gz = load double, ptr %i.gt, align 8, !tbaa !184
  %i.ha = fsub double %i.gy, %i.gz
  store double %i.ha, ptr %i.gx, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.as:                                            ; preds = %bb.ao
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !162
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !162
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !183
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hl
  %i.hn = load double, ptr %i.he, align 8, !tbaa !184
  %i.ho = load double, ptr %i.hi, align 8, !tbaa !184
  %i.hp = fmul double %i.hn, %i.ho
  store double %i.hp, ptr %i.hm, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.at:                                            ; preds = %bb.ao
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !162
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !162
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !183
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ia
  %i.ic = load double, ptr %i.ht, align 8, !tbaa !184
  %i.id = load double, ptr %i.hx, align 8, !tbaa !184
  %i.ie = fdiv double %i.ic, %i.id
  store double %i.ie, ptr %i.ib, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.au:                                            ; preds = %bb.ao
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !162
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !183
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %4, i64 %i.il
  %i.in = load double, ptr %i.ii, align 8, !tbaa !184
  %i.io = fneg double %i.in
  store double %i.io, ptr %i.im, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.av:                                            ; preds = %bb.ao
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !162
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !183
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iv
  %i.ix = load double, ptr %i.is, align 8, !tbaa !184
  %i.iy = call double @exp(double noundef %i.ix) #28
  store double %i.iy, ptr %i.iw, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !162
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !183
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jf
  %i.jh = load double, ptr %i.jc, align 8, !tbaa !184
  %i.ji = call double @log(double noundef %i.jh) #28
  store double %i.ji, ptr %i.jg, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.ax:                                            ; preds = %bb.ao
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !162
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !162
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 4
end_hunk_0
begin_hunk_1_@_ZNK6casadi10SXFunction4evalEPPKdPPdPxS4_Pv:bb.a
bb.do:                                            ; preds = %bb.dn
  invoke void @__cxa_throw(ptr nonnull %i.akx, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #30
          to label %bb.hh unwind label %bb.du

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852.thread: ; preds = %bb.dg
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1056.a

bb.dp:                                            ; preds = %bb.di
  %i.akz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846

bb.dq:                                            ; preds = %bb.dj
  %i.ala = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843

bb.dr:                                            ; preds = %bb.dk
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840

bb.ds:                                            ; preds = %bb.dl
  %i.alc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837

bb.dt:                                            ; preds = %bb.dm
  %i.ald = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834

bb.du:                                            ; preds = %bb.do, %bb.dn
  %.0681 = phi i1 [ false, %bb.do ], [ true, %bb.dn ] ; 2 uses
  %i.ale = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alf = load ptr, ptr %23, align 8, !tbaa !161 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.alh = icmp eq ptr %i.alf, %i.alg
  br i1 %i.alh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832: ; preds = %bb.du
  %i.ali = load i64, ptr %i.alg, align 8, !tbaa !162
  %i.alj = add i64 %i.ali, 1
  call void @_ZdlPvm(ptr noundef %i.alf, i64 noundef %i.alj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832, %bb.dt
  %.pn769 = phi { ptr, i32 } [ %i.ald, %bb.dt ], [ %i.ale, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832 ], [ %i.ale, %bb.du ] ; 2 uses
  %.1682 = phi i1 [ true, %bb.dt ], [ %.0681, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832 ], [ %.0681, %bb.du ] ; 2 uses
  %i.alk = load ptr, ptr %28, align 8, !tbaa !161 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.alm = icmp eq ptr %i.alk, %i.all
  br i1 %i.alm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i835

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i835: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834
  %i.aln = load i64, ptr %i.all, align 8, !tbaa !162
  %i.alo = add i64 %i.aln, 1
  call void @_ZdlPvm(ptr noundef %i.alk, i64 noundef %i.alo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i835, %bb.ds
  %.pn769.pn = phi { ptr, i32 } [ %i.alc, %bb.ds ], [ %.pn769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i835 ], [ %.pn769, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834 ] ; 2 uses
  %.2683 = phi i1 [ true, %bb.ds ], [ %.1682, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i835 ], [ %.1682, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.alp = load ptr, ptr %29, align 8, !tbaa !161 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.alr = icmp eq ptr %i.alp, %i.alq
  br i1 %i.alr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837
  %i.als = load i64, ptr %i.alq, align 8, !tbaa !162
  %i.alt = add i64 %i.als, 1
  call void @_ZdlPvm(ptr noundef %i.alp, i64 noundef %i.alt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838, %bb.dr
  %.pn769.pn.pn = phi { ptr, i32 } [ %i.alb, %bb.dr ], [ %.pn769.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838 ], [ %.pn769.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837 ] ; 2 uses
  %.3684 = phi i1 [ true, %bb.dr ], [ %.2683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838 ], [ %.2683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837 ] ; 2 uses
  %i.alu = load ptr, ptr %30, align 8, !tbaa !161 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.alw = icmp eq ptr %i.alu, %i.alv
  br i1 %i.alw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840
  %i.alx = load i64, ptr %i.alv, align 8, !tbaa !162
  %i.aly = add i64 %i.alx, 1
  call void @_ZdlPvm(ptr noundef %i.alu, i64 noundef %i.aly) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841, %bb.dq
  %.pn769.pn.pn.pn = phi { ptr, i32 } [ %i.ala, %bb.dq ], [ %.pn769.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841 ], [ %.pn769.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ] ; 2 uses
  %.4685 = phi i1 [ true, %bb.dq ], [ %.3684, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841 ], [ %.3684, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.alz = load ptr, ptr %24, align 8, !tbaa !161 ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.amb = icmp eq ptr %i.alz, %i.ama
  br i1 %i.amb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843
  %i.amc = load i64, ptr %i.ama, align 8, !tbaa !162
  %i.amd = add i64 %i.amc, 1
  call void @_ZdlPvm(ptr noundef %i.alz, i64 noundef %i.amd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844, %bb.dp
  %.pn769.pn.pn.pn.pn = phi { ptr, i32 } [ %i.akz, %bb.dp ], [ %.pn769.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844 ], [ %.pn769.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843 ] ; 4 uses
  %.5686 = phi i1 [ true, %bb.dp ], [ %.4685, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844 ], [ %.4685, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843 ] ; 2 uses
  %i.ame = load ptr, ptr %25, align 8, !tbaa !161 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.amg = icmp eq ptr %i.ame, %i.amf
  br i1 %i.amg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i847

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i847: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846
  %i.amh = load i64, ptr %i.amf, align 8, !tbaa !162
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.ame, i64 noundef %i.ami) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i847
  %i.amj = load ptr, ptr %26, align 8, !tbaa !161 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.aml = icmp eq ptr %i.amj, %i.amk
  br i1 %i.aml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849.thread: ; preds = %bb.dh
  %i.amm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amn = load ptr, ptr %26, align 8, !tbaa !161 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.amp = icmp eq ptr %i.amn, %i.amo
  br i1 %i.amp, label %.sink.split1056.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849.thread
  %i.amq = load i64, ptr %i.amo, align 8, !tbaa !162
  %i.amr = add i64 %i.amq, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amr) #29
  br label %.sink.split1056.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849
  %i.ams = load i64, ptr %i.amk, align 8, !tbaa !162
  %i.amt = add i64 %i.ams, 1
  call void @_ZdlPvm(ptr noundef %i.amj, i64 noundef %i.amt) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.5686, label %bb.dv, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.5686, label %bb.dv, label %common.resume

.sink.split1056.a:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850.thread
  %.pn769.pn.pn.pn.pn.pn.pn916.ph = phi { ptr, i32 } [ %i.amm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850.thread ], [ %i.aky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852.thread ], [ %i.amm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split1056.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852
  %.pn769.pn.pn.pn.pn.pn.pn916 = phi { ptr, i32 } [ %.pn769.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850 ], [ %.pn769.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852 ], [ %.pn769.pn.pn.pn.pn.pn.pn916.ph, %.sink.split1056.a ]
  call void @__cxa_free_exception(ptr %i.akx) #28
  br label %common.resume

_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit.loopexit.unr-lcssa: ; preds = %bb.df
  %lcmp.mod1110.not = icmp eq i64 %xtraiter1108, 0
  br i1 %lcmp.mod1110.not, label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit, label %.epil.preheader1107

.epil.preheader1107:                              ; preds = %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit.loopexit.unr-lcssa, %.lr.ph40.i
  %.038.i.epil.init = phi i64 [ 0, %.lr.ph40.i ], [ %i.akw, %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1111 = trunc i64 %i.aja to i1
  call void @llvm.assume(i1 %lcmp.mod1111)
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %.038.i.epil.init
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !61 ; 2 uses
  %i.amw = icmp sgt i32 %i.amv, -1
  br i1 %i.amw, label %bb.dw, label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

bb.dw:                                            ; preds = %.epil.preheader1107
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %.038.i.epil.init
  %i.amy = load double, ptr %i.amx, align 8, !tbaa !184
  %i.amz = zext nneg i32 %i.amv to i64
  %i.ana = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.amz
  store double %i.amy, ptr %i.ana, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit

_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit: ; preds = %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit.loopexit.unr-lcssa, %bb.dw, %.epil.preheader1107, %._crit_edge.i, %bb.cs, %bb.ct, %bb.cr, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.anb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  call void @_ZNK6casadi10SXFunction9print_resERSoxRKNS_12ScalarAtomicEPKd(ptr noundef nonnull align 8 dereferenceable(1611) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.anb, i64 noundef %indvars.iv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0897.0953, ptr noundef %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.0897.0953, i64 16 ; 2 uses
  %.not946 = icmp eq ptr %i.anc, %i.ff
  br i1 %.not946, label %.loopexit, label %bb.ao

bb.dx:                                            ; preds = %bb.am
  br i1 %.not946952, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dx
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 1576
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph, %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870
  %.sroa.0893.0951 = phi ptr [ %i.fd, %.lr.ph ], [ %i.bux, %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870 ] ; 135 uses
  %i.anj = load i32, ptr %.sroa.0893.0951, align 8, !tbaa !182
  switch i32 %i.anj, label %bb.gq [
    i32 0, label %bb.dz
    i32 1, label %bb.ea
    i32 2, label %bb.eb
    i32 3, label %bb.ec
    i32 4, label %bb.ed
    i32 5, label %bb.ee
    i32 6, label %bb.ef
    i32 7, label %bb.eg
    i32 8, label %bb.eh
    i32 9, label %bb.ei
    i32 10, label %bb.ej
    i32 11, label %bb.ek
    i32 12, label %bb.el
    i32 13, label %bb.em
    i32 14, label %bb.en
    i32 15, label %bb.eo
    i32 16, label %bb.ep
    i32 17, label %bb.eq
    i32 18, label %bb.er
    i32 19, label %bb.es
    i32 20, label %bb.et
    i32 21, label %bb.eu
    i32 22, label %bb.ev
    i32 23, label %bb.ew
    i32 24, label %bb.ex
    i32 25, label %bb.ey
    i32 32, label %bb.ez
    i32 26, label %bb.fa
    i32 27, label %bb.fb
    i32 28, label %bb.fc
    i32 97, label %bb.fd
    i32 29, label %bb.fe
    i32 30, label %bb.ff
    i32 31, label %bb.fg
    i32 33, label %bb.fh
    i32 34, label %bb.fi
    i32 35, label %bb.fj
    i32 36, label %bb.fk
    i32 37, label %bb.fl
    i32 38, label %bb.fm
    i32 39, label %bb.fn
    i32 40, label %bb.fo
    i32 41, label %bb.fp
    i32 42, label %bb.fq
    i32 43, label %bb.fr
    i32 86, label %bb.fs
    i32 88, label %bb.ft
    i32 87, label %bb.fu
    i32 93, label %bb.fv
    i32 94, label %bb.fw
    i32 95, label %bb.fx
    i32 44, label %bb.fy
    i32 45, label %bb.fz
    i32 46, label %bb.gc
    i32 48, label %bb.ge
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.anl = load i32, ptr %i.ank, align 8, !tbaa !162
  %i.anm = sext i32 %i.anl to i64
  %i.ann = getelementptr inbounds [8 x i8], ptr %4, i64 %i.anm
  %i.ano = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !183
  %i.anq = sext i32 %i.anp to i64
  %i.anr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.anq
  %i.ans = load double, ptr %i.ann, align 8, !tbaa !184
  store double %i.ans, ptr %i.anr, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870

bb.ea:                                            ; preds = %bb.dy
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.anu = load i32, ptr %i.ant, align 8, !tbaa !162
  %i.anv = sext i32 %i.anu to i64
  %i.anw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.anv
  %i.anx = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 12
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !162
  %i.anz = sext i32 %i.any to i64
  %i.aoa = getelementptr inbounds [8 x i8], ptr %4, i64 %i.anz
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !183
  %i.aod = sext i32 %i.aoc to i64
  %i.aoe = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aod
  %i.aof = load double, ptr %i.anw, align 8, !tbaa !184
  %i.aog = load double, ptr %i.aoa, align 8, !tbaa !184
  %i.aoh = fadd double %i.aof, %i.aog
  store double %i.aoh, ptr %i.aoe, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870

bb.eb:                                            ; preds = %bb.dy
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.aoj = load i32, ptr %i.aoi, align 8, !tbaa !162
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aok
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 12
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !162
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aoo
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !183
  %i.aos = sext i32 %i.aor to i64
  %i.aot = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aos
  %i.aou = load double, ptr %i.aol, align 8, !tbaa !184
  %i.aov = load double, ptr %i.aop, align 8, !tbaa !184
  %i.aow = fsub double %i.aou, %i.aov
  store double %i.aow, ptr %i.aot, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870

bb.ec:                                            ; preds = %bb.dy
  %i.aox = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.aoy = load i32, ptr %i.aox, align 8, !tbaa !162
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aoz
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 12
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !162
  %i.apd = sext i32 %i.apc to i64
  %i.ape = getelementptr inbounds [8 x i8], ptr %4, i64 %i.apd
  %i.apf = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !183
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aph
  %i.apj = load double, ptr %i.apa, align 8, !tbaa !184
  %i.apk = load double, ptr %i.ape, align 8, !tbaa !184
  %i.apl = fmul double %i.apj, %i.apk
  store double %i.apl, ptr %i.api, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870

bb.ed:                                            ; preds = %bb.dy
  %i.apm = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.apn = load i32, ptr %i.apm, align 8, !tbaa !162
  %i.apo = sext i32 %i.apn to i64
  %i.app = getelementptr inbounds [8 x i8], ptr %4, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 12
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !162
  %i.aps = sext i32 %i.apr to i64
  %i.apt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !183
  %i.apw = sext i32 %i.apv to i64
  %i.apx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.apw
  %i.apy = load double, ptr %i.app, align 8, !tbaa !184
  %i.apz = load double, ptr %i.apt, align 8, !tbaa !184
  %i.aqa = fdiv double %i.apy, %i.apz
  store double %i.aqa, ptr %i.apx, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870

bb.ee:                                            ; preds = %bb.dy
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.aqc = load i32, ptr %i.aqb, align 8, !tbaa !162
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aqd
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !183
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aqh
  %i.aqj = load double, ptr %i.aqe, align 8, !tbaa !184
  %i.aqk = fneg double %i.aqj
  store double %i.aqk, ptr %i.aqi, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870

bb.ef:                                            ; preds = %bb.dy
  %i.aql = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !162
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aqn
  %i.aqp = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !183
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aqr
  %i.aqt = load double, ptr %i.aqo, align 8, !tbaa !184
  %i.aqu = call double @exp(double noundef %i.aqt) #28
  store double %i.aqu, ptr %i.aqs, align 8, !tbaa !184
  br label %_ZNK6casadi10SXFunction8call_fwdIdEEvRKNS_12ScalarAtomicEPPKT_PPS5_PxS9_.exit870

bb.eg:                                            ; preds = %bb.dy
  %i.aqv = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 8
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !162
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aqx
  %i.aqz = getelementptr inbounds nuw i8, ptr %.sroa.0893.0951, i64 4
end_hunk_1
