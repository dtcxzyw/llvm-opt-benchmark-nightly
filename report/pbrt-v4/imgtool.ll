Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_Z8assembleSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
bb.be:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_iiEEES6_PKcDpOT_.exit.i
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.dq
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.be
  %i.km = load i64, ptr %i.dq, align 8, !tbaa !46
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.body208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i207: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %.loopexit449

.body208:                                         ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %eh.lpad-body209 = phi { ptr, i32 } [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202 ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.jz, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %.body

bb.bf:                                            ; preds = %_ZN4pstd8optionalIN4pbrt6Point2IiEEEdeEv.exit191
  %.sroa.04.0.copyload.i = load i64, ptr %i.cw, align 8, !tbaa !67 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %16, align 16 ; 2 uses
  %.sroa.07.0.extract.trunc.i.i211 = trunc i64 %.sroa.04.0.copyload.i to i32
  %.sroa.38.0.extract.shift.i.i212 = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.38.0.extract.trunc.i.i213 = trunc nuw i64 %.sroa.38.0.extract.shift.i.i212 to i32
  %.sroa.0.0.extract.trunc.i.i214 = trunc i64 %.sroa.03.0.copyload.i to i32
  %.sroa.3.0.extract.shift.i.i215 = lshr i64 %.sroa.03.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i216 = trunc nuw i64 %.sroa.3.0.extract.shift.i.i215 to i32
  %.not.i.i = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i214, %.sroa.07.0.extract.trunc.i.i211
  %i.ko = icmp sgt i32 %.sroa.3.0.extract.trunc.i.i216, %.sroa.38.0.extract.trunc.i.i213
  %i.kp = select i1 %.not.i.i, i1 true, i1 %i.ko
  br i1 %i.kp, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit.thread, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit

_ZNK4pbrt7Bounds2IiEneERKS1_.exit:                ; preds = %bb.bf
  %.sroa.01.0.copyload.i = load i64, ptr %i.db, align 8, !tbaa !67 ; 2 uses
  %.sroa.38.0.extract.shift.i10.i = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.38.0.extract.trunc.i11.i = trunc nuw i64 %.sroa.38.0.extract.shift.i10.i to i32
  %.sroa.0.0.copyload.i223 = load i64, ptr %i.ch, align 8 ; 2 uses
  %.sroa.3.0.extract.shift.i13.i = lshr i64 %.sroa.0.0.copyload.i223, 32
  %.sroa.3.0.extract.trunc.i14.i = trunc nuw i64 %.sroa.3.0.extract.shift.i13.i to i32
  %.sroa.07.0.extract.trunc.i9.i = trunc i64 %.sroa.01.0.copyload.i to i32
  %.sroa.0.0.extract.trunc.i12.i = trunc i64 %.sroa.0.0.copyload.i223 to i32
  %.not.i5.i = icmp slt i32 %.sroa.0.0.extract.trunc.i12.i, %.sroa.07.0.extract.trunc.i9.i
  %i.kq = icmp slt i32 %.sroa.3.0.extract.trunc.i14.i, %.sroa.38.0.extract.trunc.i11.i
  %i.kr = select i1 %.not.i5.i, i1 true, i1 %i.kq
  br i1 %i.kr, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit.thread, label %bb.bj

_ZNK4pbrt7Bounds2IiEneERKS1_.exit.thread:         ; preds = %bb.bf, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store ptr %i.dn, ptr %5, align 8, !tbaa !42, !alias.scope !504
  store i64 0, ptr %i.do, align 8, !tbaa !45, !alias.scope !504
  store i8 0, ptr %i.dn, align 8, !tbaa !46, !alias.scope !504
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRiSA_SA_SA_SA_SA_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.97, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0411.0704, ptr noundef nonnull align 4 dereferenceable(4) %i.cw, ptr noundef nonnull align 4 dereferenceable(4) %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.db, ptr noundef nonnull align 4 dereferenceable(4) %i.dm, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.dc)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_S9_S9_S9_EEES6_PKcDpOT_.exit.i unwind label %bb.bg

bb.bg:                                            ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit.thread
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !504 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.dn
  br i1 %i.ku, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i234: ; preds = %bb.bg
  %i.kv = load i64, ptr %i.dn, align 8, !tbaa !46, !alias.scope !504
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #38
  br label %.body

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_S9_S9_S9_EEES6_PKcDpOT_.exit.i: ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit.thread
  %i.kx = load ptr, ptr %5, align 8, !tbaa !48
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.kx)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_S9_S9_S9_EEES6_PKcDpOT_.exit.i
  %i.ky = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.dn
  br i1 %i.kz, label %_ZN4pbrt7WarningIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_S9_S9_S9_EEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238: ; preds = %bb.bh
  %i.la = load i64, ptr %i.dn, align 8, !tbaa !46
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #38
  br label %_ZN4pbrt7WarningIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_S9_S9_S9_EEEvPKcDpOT_.exit

bb.bi:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_S9_S9_S9_EEES6_PKcDpOT_.exit.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.dn
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.bi
  %i.lf = load i64, ptr %i.dn, align 8, !tbaa !46
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.body

_ZN4pbrt7WarningIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_S9_S9_S9_EEEvPKcDpOT_.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit449

bb.bj:                                            ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit
  %i.lh = load i64, ptr %i.dd, align 8, !tbaa !138
  %i.li = trunc i64 %i.lh to i32                  ; 2 uses
  %i.lj = load i64, ptr %i.de, align 8, !tbaa !138
  %i.lk = trunc i64 %i.lj to i32                  ; 2 uses
  %.not = icmp eq i32 %i.li, %i.lk
  br i1 %.not, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 %i.lk, ptr %i.g, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  store i32 %i.li, ptr %i.h, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.df, ptr %4, align 8, !tbaa !42, !alias.scope !505
  store i64 0, ptr %i.dg, align 8, !tbaa !45, !alias.scope !505
  store i8 0, ptr %i.df, align 8, !tbaa !46, !alias.scope !505
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiiEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.98, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0411.0704, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEEES6_PKcDpOT_.exit.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %4, align 8, !tbaa !48, !alias.scope !505 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.df
  br i1 %i.ln, label %.body248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i242: ; preds = %bb.bl
  %i.lo = load i64, ptr %i.df, align 8, !tbaa !46, !alias.scope !505
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #38
  br label %.body248

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEEES6_PKcDpOT_.exit.i: ; preds = %bb.bk
  %i.lq = load ptr, ptr %4, align 8, !tbaa !48
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.lq)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEEES6_PKcDpOT_.exit.i
  %i.lr = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.df
  br i1 %i.ls, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246: ; preds = %bb.bm
  %i.lt = load i64, ptr %i.df, align 8, !tbaa !46
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i247

bb.bn:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEEES6_PKcDpOT_.exit.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  %i.lw = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.df
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.bn
  %i.ly = load i64, ptr %i.df, align 8, !tbaa !46
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i247: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %.loopexit449

.body248:                                         ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %eh.lpad-body249 = phi { ptr, i32 } [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i242 ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.ll, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %.body

bb.bo:                                            ; preds = %bb.bj
  %i.ma = invoke noundef ptr @_ZNK4pbrt13ImageMetadata13GetColorSpaceEv(ptr noundef nonnull align 8 dereferenceable(304) %i.cr)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.bp:                                            ; preds = %bb.bo
  %.sroa.03.0.copyload.i250 = load <2 x float>, ptr %.0705, align 8
  %i.mb = load <2 x float>, ptr %i.ma, align 4
  %i.mc = fcmp une <2 x float> %i.mb, %.sroa.03.0.copyload.i250 ; 2 uses
  %31 = extractelement <2 x i1> %i.mc, i64 0
  %32 = extractelement <2 x i1> %i.mc, i64 1
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %.0705, i64 8
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.me, align 8
  %i.mf = load <2 x float>, ptr %i.md, align 4
  %i.mg = fcmp une <2 x float> %i.mf, %.sroa.02.0.copyload.i ; 2 uses
  %34 = extractelement <2 x i1> %i.mg, i64 0
  %35 = extractelement <2 x i1> %i.mg, i64 1
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %.0705, i64 16
  %.sroa.01.0.copyload.i251 = load <2 x float>, ptr %i.mi, align 8
  %i.mj = load <2 x float>, ptr %i.mh, align 4
  %i.mk = fcmp une <2 x float> %i.mj, %.sroa.01.0.copyload.i251 ; 2 uses
  %37 = extractelement <2 x i1> %i.mk, i64 0
  %38 = extractelement <2 x i1> %i.mk, i64 1
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %.0705, i64 24
  %.sroa.0.0.copyload.i252 = load <2 x float>, ptr %i.mm, align 8
  %i.mn = load <2 x float>, ptr %i.ml, align 4
  %i.mo = fcmp une <2 x float> %i.mn, %.sroa.0.0.copyload.i252 ; 2 uses
  %40 = extractelement <2 x i1> %i.mo, i64 0
  %41 = extractelement <2 x i1> %i.mo, i64 1
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit:            ; preds = %bb.bs
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ma, i64 144
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !170
  %i.mr = getelementptr inbounds nuw i8, ptr %.0705, i64 144
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !170
  %.not446 = icmp eq ptr %i.mq, %i.ms
  br i1 %.not446, label %.critedge, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread:     ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  invoke void @_ZNK4pbrt13RGBColorSpace8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(152) %i.ma)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37
  invoke void @_ZNK4pbrt13RGBColorSpace8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(152) %.0705)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.dh, ptr %3, align 8, !tbaa !42, !alias.scope !506
  store i64 0, ptr %i.di, align 8, !tbaa !45, !alias.scope !506
  store i8 0, ptr %i.dh, align 8, !tbaa !46, !alias.scope !506
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_S7_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.99, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0411.0704, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EEES6_PKcDpOT_.exit.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mu = load ptr, ptr %3, align 8, !tbaa !48, !alias.scope !506 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.dh
  br i1 %i.mv, label %.body262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253: ; preds = %bb.bv
  %i.mw = load i64, ptr %i.dh, align 8, !tbaa !46, !alias.scope !506
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #38
  br label %.body262

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EEES6_PKcDpOT_.exit.i: ; preds = %bb.bu
  %i.my = load ptr, ptr %3, align 8, !tbaa !48
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.my)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EEES6_PKcDpOT_.exit.i
  %i.mz = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.dh
  br i1 %i.na, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260: ; preds = %bb.bw
  %i.nb = load i64, ptr %i.dh, align 8, !tbaa !46
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i261

bb.bx:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EEES6_PKcDpOT_.exit.i
  %i.nd = landingpad { ptr, i32 }
          cleanup
  %i.ne = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.dh
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i257: ; preds = %bb.bx
  %i.ng = load i64, ptr %i.dh, align 8, !tbaa !46
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i258: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i261: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ni = load ptr, ptr %28, align 8, !tbaa !48   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.dj
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i261
  %i.nk = load i64, ptr %i.dj, align 8, !tbaa !46
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  %i.nm = load ptr, ptr %27, align 8, !tbaa !48   ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.dk
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.no = load i64, ptr %i.dk, align 8, !tbaa !46
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  br label %.loopexit449

bb.by:                                            ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

bb.bz:                                            ; preds = %bb.bt
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

.body262:                                         ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i258
  %eh.lpad-body263 = phi { ptr, i32 } [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253 ], [ %i.nd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i258 ], [ %i.mt, %bb.bv ] ; 2 uses
  %i.ns = load ptr, ptr %28, align 8, !tbaa !48   ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.dj
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %.body262
  %i.nu = load i64, ptr %i.dj, align 8, !tbaa !46
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %.body262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.bz
  %.pn109 = phi { ptr, i32 } [ %i.nr, %bb.bz ], [ %eh.lpad-body263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ], [ %eh.lpad-body263, %.body262 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  %i.nw = load ptr, ptr %27, align 8, !tbaa !48   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.dk
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %i.ny = load i64, ptr %i.dk, align 8, !tbaa !46
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %bb.by
  %.pn109.pn = phi { ptr, i32 } [ %i.nq, %bb.by ], [ %.pn109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  br label %.body

.critedge:                                        ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit, %bb.aw
  %.1 = phi ptr [ %i.iz, %bb.aw ], [ %.0705, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit ] ; 2 uses
  %.sroa.0.0.copyload.i276699 = load i64, ptr %i.eb, align 4 ; 2 uses
  %.sroa.326.0.extract.shift700 = lshr i64 %.sroa.0.0.copyload.i276699, 32
  %.sroa.326.0.extract.trunc701 = trunc nuw i64 %.sroa.326.0.extract.shift700 to i32
  %i.oa = icmp sgt i32 %.sroa.326.0.extract.trunc701, 0
  br i1 %i.oa, label %.preheader448, label %.loopexit449

.preheader448:                                    ; preds = %.critedge, %._crit_edge698
  %.sroa.0.0.copyload.i276739 = phi i64 [ %.sroa.0.0.copyload.i276, %._crit_edge698 ], [ %.sroa.0.0.copyload.i276699, %.critedge ] ; 2 uses
  %.0103702 = phi i32 [ %i.od, %._crit_edge698 ], [ 0, %.critedge ] ; 5 uses
  %.sroa.019.0.extract.trunc696 = trunc i64 %.sroa.0.0.copyload.i276739 to i32
  %i.ob = icmp sgt i32 %.sroa.019.0.extract.trunc696, 0
  br i1 %i.ob, label %.lr.ph.preheader, label %._crit_edge698

.lr.ph.preheader:                                 ; preds = %.preheader448
  %i.oc = insertelement <2 x i32> poison, i32 %.0103702, i64 1
  br label %.lr.ph

._crit_edge698:                                   ; preds = %._crit_edge694, %.preheader448
  %.sroa.0.0.copyload.i276 = phi i64 [ %.sroa.0.0.copyload.i276739, %.preheader448 ], [ %.sroa.0.0.copyload.i277, %._crit_edge694 ] ; 2 uses
  %i.od = add nuw nsw i32 %.0103702, 1            ; 2 uses
  %.sroa.326.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i276, 32
  %.sroa.326.0.extract.trunc = trunc nuw i64 %.sroa.326.0.extract.shift to i32
  %i.oe = icmp slt i32 %i.od, %.sroa.326.0.extract.trunc
  br i1 %i.oe, label %.preheader448, label %.loopexit449, !llvm.loop !490

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge694
  %.0102697 = phi i32 [ %i.pm, %._crit_edge694 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.of = load i8, ptr %i.cx, align 8, !tbaa !107, !range !161, !noundef !162
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.248, i32 noundef 235, ptr noundef nonnull @.str.87, ptr noundef nonnull align 1 dereferenceable(4) @.str.249) #39
          to label %.noexc278 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc278:                                        ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %.lr.ph
  %i.oh = load <2 x i32>, ptr %i.cw, align 8, !tbaa !67
  %i.oi = insertelement <2 x i32> %i.oc, i32 %.0102697, i64 0
  %i.oj = add nsw <2 x i32> %i.oh, %i.oi          ; 4 uses
  %i.ok = shufflevector <2 x i32> %i.oj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %.sroa.0387.0.insert.insert390 = bitcast <2 x i32> %i.oj to i64
  %i.ol = load <4 x i32>, ptr %16, align 16       ; 2 uses
  %i.om = icmp sgt <4 x i32> %i.ol, %i.ok
  %i.on = icmp sle <4 x i32> %i.ol, %i.ok
  %i.oo = shufflevector <4 x i1> %i.on, <4 x i1> %i.om, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.op = freeze <4 x i1> %i.oo
  %i.oq = bitcast <4 x i1> %i.op to i4
  %i.or = icmp eq i4 %i.oq, -1
  br i1 %i.or, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN4pbrt8LogFatalIJRA35_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.86, i32 noundef 523, ptr noundef nonnull @.str.87, ptr noundef nonnull align 1 dereferenceable(35) @.str.100) #39
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZL23checkImageCompatibilityNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt5ImageEPKNS5_13RGBColorSpaceES4_S8_SB_:bb.a
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i58: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ea = load ptr, ptr %18, align 8, !tbaa !48   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !46
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ef = load ptr, ptr %19, align 8, !tbaa !163  ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !143 ; 2 uses
  %.not4.i.i.i62 = icmp eq ptr %i.ef, %i.eh
  br i1 %.not4.i.i.i62, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i70, label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i66
  %.05.i.i.i64 = phi ptr [ %i.en, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i66 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.ei = load ptr, ptr %.05.i.i.i64, align 8, !tbaa !48 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i64, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i65: ; preds = %.lr.ph.i.i.i63
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !46
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i66

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i66: ; preds = %.lr.ph.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i65
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i64, i64 32 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.en, %i.eh
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i68, label %.lr.ph.i.i.i63, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i68: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i66
  %.pr.i69 = load ptr, ptr %19, align 8, !tbaa !163
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i70

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i70: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eo = phi ptr [ %.pr.i69, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i68 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i71 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i1.i71, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i70
  %i.ep = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !144
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit73

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit73: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i70, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  %i.eu = load ptr, ptr %16, align 8, !tbaa !48   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit73
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !46
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.ez = load ptr, ptr %17, align 8, !tbaa !163  ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !143 ; 2 uses
  %.not4.i.i.i77 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not4.i.i.i77, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i85, label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i81
  %.05.i.i.i79 = phi ptr [ %i.fh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i81 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i79, align 8, !tbaa !48 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i79, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i80: ; preds = %.lr.ph.i.i.i78
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !46
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i81

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i81: ; preds = %.lr.ph.i.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i80
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i79, i64 32 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i83, label %.lr.ph.i.i.i78, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i83: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i81
  %.pr.i84 = load ptr, ptr %17, align 8, !tbaa !163
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i85

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i85: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fi = phi ptr [ %.pr.i84, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i83 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ] ; 3 uses
  %.not.i.i1.i86 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i1.i86, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i85
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !144
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit88

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit88: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i85, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %bb.al

bb.z:                                             ; preds = %bb.k
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %common.resume

bb.aa:                                            ; preds = %bb.q
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.ab:                                            ; preds = %bb.r
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.s
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

.body:                                            ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i58
  %eh.lpad-body = phi { ptr, i32 } [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53 ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i58 ], [ %i.dl, %bb.u ] ; 2 uses
  %i.fs = load ptr, ptr %18, align 8, !tbaa !48   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %.body
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !46
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ac
  %.pn25 = phi { ptr, i32 } [ %i.fr, %bb.ac ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %eh.lpad-body, %.body ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #37
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.ab
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.fq, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  %i.fx = load ptr, ptr %16, align 8, !tbaa !48   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ad
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !46
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.aa
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.aa ], [ %.pn25.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn25.pn, %bb.ad ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %common.resume

bb.ae:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit52
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %5, align 8
  %i.gc = load <2 x float>, ptr %2, align 4
  %i.gd = fcmp une <2 x float> %i.gc, %.sroa.03.0.copyload.i ; 2 uses
  %20 = extractelement <2 x i1> %i.gd, i64 0
  %21 = extractelement <2 x i1> %i.gd, i64 1
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.gf, align 8
  %i.gg = load <2 x float>, ptr %i.ge, align 4
  %i.gh = fcmp une <2 x float> %i.gg, %.sroa.02.0.copyload.i ; 2 uses
  %23 = extractelement <2 x i1> %i.gh, i64 0
  %24 = extractelement <2 x i1> %i.gh, i64 1
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.gj, align 8
  %i.gk = load <2 x float>, ptr %i.gi, align 4
  %i.gl = fcmp une <2 x float> %i.gk, %.sroa.01.0.copyload.i ; 2 uses
  %26 = extractelement <2 x i1> %i.gl, i64 0
  %27 = extractelement <2 x i1> %i.gl, i64 1
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.0.0.copyload.i95 = load <2 x float>, ptr %i.gn, align 8
  %i.go = load <2 x float>, ptr %i.gm, align 4
  %i.gp = fcmp une <2 x float> %i.go, %.sroa.0.0.copyload.i95 ; 2 uses
  %29 = extractelement <2 x i1> %i.gp, i64 0
  %30 = extractelement <2 x i1> %i.gp, i64 1
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit:            ; preds = %bb.ah
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !170
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !170
  %.not104 = icmp eq ptr %i.gr, %i.gt
  br i1 %.not104, label %bb.al, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread:     ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.gu, ptr %6, align 8, !tbaa !42, !alias.scope !554
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.gv, align 8, !tbaa !45, !alias.scope !554
  store i8 0, ptr %i.gu, align 8, !tbaa !46, !alias.scope !554
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.261, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !554 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gu
  br i1 %i.gy, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96: ; preds = %bb.ai
  %i.gz = load i64, ptr %i.gu, align 8, !tbaa !46, !alias.scope !554
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #38
  br label %common.resume

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i: ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  %i.hb = load ptr, ptr %6, align 8, !tbaa !48
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.hb)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i
  %i.hc = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gu
  br i1 %i.hd, label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.aj
  %i.he = load i64, ptr %i.gu, align 8, !tbaa !46
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #38
  br label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKcDpOT_.exit

bb.ak:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gu
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.ak
  %i.hj = load i64, ptr %i.gu, align 8, !tbaa !46
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %common.resume

_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKcDpOT_.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.al

bb.al:                                            ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit, %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKcDpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit88, %_ZN4pbrt5ErrorIJPKciS2_iEEEvS2_DpOT_.exit, %_ZN4pbrt5ErrorIJPKciiS2_iiEEEvS2_DpOT_.exit
  %.023 = phi i1 [ false, %_ZN4pbrt5ErrorIJPKciiS2_iiEEEvS2_DpOT_.exit ], [ false, %_ZN4pbrt5ErrorIJPKciS2_iEEEvS2_DpOT_.exit ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit88 ], [ false, %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKcDpOT_.exit ], [ true, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit ]
  ret i1 %.023
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA13_KcRA33_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 1 dereferenceable(33) %5, ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(33) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !42, !alias.scope !557
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !45, !alias.scope !557
  store i8 0, ptr %i.a, align 8, !tbaa !46, !alias.scope !557
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA13_KcJRA33_S2_S4_RmS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 1 dereferenceable(33) %5, ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(33) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA13_KcRA33_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !557 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !46, !alias.scope !557
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #38
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA13_KcRA33_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !48
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcRA33_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcRA33_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !48    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !46
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %common.resume
}

declare void @_ZNK4pbrt5Image14GetChannelDescEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind writable sret(%"struct.pbrt::ImageChannelDesc") align 8, ptr noundef nonnull align 8 dereferenceable(152), ptr, i64) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA15_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(15) %4) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !42, !alias.scope !560
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !45, !alias.scope !560
  store i8 0, ptr %i.a, align 8, !tbaa !46, !alias.scope !560
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA15_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(15) %4)
          to label %_ZN4pbrt12StringPrintfIJRA15_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !560 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !46, !alias.scope !560
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #38
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA15_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !48
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA15_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA15_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !46
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZ6splitnSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_1clEN4pbrt7Bounds2IiEEiNS9_3RGBERNS9_5ImageE"(i64 %0, i64 %1, <2 x float> %2, float %3, ptr noundef nonnull align 8 dereferenceable(152) %4) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 23 uses
  %6 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %i.a = alloca [3 x float], align 4              ; 15 uses
  %i.b = alloca [3 x float], align 4              ; 15 uses
  %i.c = alloca [3 x float], align 4              ; 15 uses
  %i.d = alloca [3 x float], align 4              ; 15 uses
  %.sroa.075.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %0, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 5 uses
end_hunk_1
begin_hunk_2_@_Z4infoSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 336
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 384
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 416 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 408
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 424
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 376
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.sroa.023.0149 = phi ptr [ %i.g, %.lr.ph ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store ptr %i.j, ptr %8, align 8, !tbaa !42
  %i.bf = load ptr, ptr %.sroa.023.0149, align 8, !tbaa !48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.023.0149, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !47
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.bj, ptr %8, align 8, !tbaa !48
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !47
  store i64 %i.bk, ptr %i.j, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.bl = phi ptr [ %i.bj, %.noexc.i ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.bh, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.bm = load i8, ptr %i.bf, align 1, !tbaa !46
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !47  ; 2 uses
  store i64 %i.bn, ptr %i.k, align 8, !tbaa !45
  %i.bo = load ptr, ptr %8, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store ptr %i.l, ptr %10, align 8, !tbaa !42
  %i.bq = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.br = load i64, ptr %i.k, align 8, !tbaa !45  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i64 %i.br, ptr %i.e, align 8, !tbaa !47
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.bm    ; 2 uses

.noexc:                                           ; preds = %.noexc.i7
  store ptr %i.bt, ptr %10, align 8, !tbaa !48
  %i.bu = load i64, ptr %i.e, align 8, !tbaa !47
  store i64 %i.bu, ptr %i.l, align 8, !tbaa !46
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bv = phi ptr [ %i.bt, %.noexc ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.br, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !46
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !46
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bq, i64 %i.br, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i6, %bb.e, %bb.f
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  store i64 %i.bx, ptr %i.m, align 8, !tbaa !45
  %i.by = load ptr, ptr %10, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.ca = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  store i64 0, ptr %11, align 8, !tbaa !75
  invoke void @_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageAndMetadata") align 8 %9, ptr nofree noundef nonnull align 8 dereferenceable(32) %10, ptr %i.ca, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11)
          to label %bb.h unwind label %bb.bn

bb.h:                                             ; preds = %bb.g
  %i.cb = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.l
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.cd = load i64, ptr %i.l, align 8, !tbaa !46
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = load ptr, ptr %8, align 8, !tbaa !48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 4 ; 2 uses
  %.sroa.052.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.351.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.351.0.extract.trunc.i = trunc nuw i64 %.sroa.351.0.extract.shift.i to i32
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.268, ptr noundef %i.cf, i32 noundef %.sroa.052.0.extract.trunc.i, i32 noundef %.sroa.351.0.extract.trunc.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.ch = load i32, ptr %9, align 8, !tbaa !150
  store i32 %i.ch, ptr %i.d, align 4, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.p, ptr %1, align 8, !tbaa !42, !alias.scope !810
  store i64 0, ptr %i.q, align 8, !tbaa !45, !alias.scope !810
  store i8 0, ptr %i.p, align 8, !tbaa !46, !alias.scope !810
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINS_11PixelFormatEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.269, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN4pbrt12StringPrintfIJNS_11PixelFormatEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !48, !alias.scope !810 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.p
  br i1 %i.ck, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.p, align 8, !tbaa !46, !alias.scope !810
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #38
  br label %.body

_ZN4pbrt12StringPrintfIJNS_11PixelFormatEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load ptr, ptr %1, align 8, !tbaa !48
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !60
  %i.cp = call i32 @fputs(ptr noundef %i.cn, ptr noundef %i.co) ; 0 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.p
  br i1 %i.cr, label %_ZN4pbrt6PrintfIJNS_11PixelFormatEEEEvPKcDpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNS_11PixelFormatEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i.i
  %i.cs = load i64, ptr %i.p, align 8, !tbaa !46
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #38
  br label %_ZN4pbrt6PrintfIJNS_11PixelFormatEEEEvPKcDpOT_.exit.i

_ZN4pbrt6PrintfIJNS_11PixelFormatEEEEvPKcDpOT_.exit.i: ; preds = %_ZN4pbrt12StringPrintfIJNS_11PixelFormatEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270) ; 0 uses
  %i.cv = load i8, ptr %i.r, align 8, !tbaa !113, !range !161, !noundef !162
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit.i, label %bb.aa

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit.i: ; preds = %_ZN4pbrt6PrintfIJNS_11PixelFormatEEEEvPKcDpOT_.exit.i
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !84  ; 21 uses
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %bb.aa, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit115.i

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit115.i: ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit.i
  %i.cy = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8, !tbaa !84 ; 5 uses
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.cy, align 8 ; 2 uses
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !286 ; 5 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %i.da = fcmp oeq float %i.cz, %.sroa.0.0.vec.extract.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dc = load float, ptr %i.db, align 4          ; 5 uses
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %i.dd = fcmp oeq float %i.dc, %.sroa.0.4.vec.extract.i.i.i
  %i.de = select i1 %i.da, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.j, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i

bb.j:                                             ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit115.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.02.0.copyload.i.i = load <2 x float>, ptr %i.dg, align 8
  %i.dh = load <2 x float>, ptr %i.df, align 4
  %i.di = fcmp oeq <2 x float> %i.dh, %.sroa.02.0.copyload.i.i ; 2 uses
  %12 = extractelement <2 x i1> %i.di, i64 0
  %13 = extractelement <2 x i1> %i.di, i64 1
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %bb.k, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i

bb.k:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.dk, align 8
  %i.dl = load <2 x float>, ptr %i.dj, align 4
  %i.dm = fcmp oeq <2 x float> %i.dl, %.sroa.01.0.copyload.i.i ; 2 uses
  %15 = extractelement <2 x i1> %i.dm, i64 0
  %16 = extractelement <2 x i1> %i.dm, i64 1
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %bb.l, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i

bb.l:                                             ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.0.0.copyload.i116.i = load <2 x float>, ptr %i.do, align 8
  %i.dp = load <2 x float>, ptr %i.dn, align 4
  %i.dq = fcmp oeq <2 x float> %i.dp, %.sroa.0.0.copyload.i116.i ; 2 uses
  %18 = extractelement <2 x i1> %i.dq, i64 0
  %19 = extractelement <2 x i1> %i.dq, i64 1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit.i, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i

_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit.i:          ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !170
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !170
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.m, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i

bb.m:                                             ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit.i
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271) ; 0 uses
  br label %bb.z

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i: ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit115.i
  %i.dx = load ptr, ptr @_ZN4pbrt13RGBColorSpace6DCI_P3E, align 8, !tbaa !84 ; 5 uses
  %.sroa.03.0.copyload.i118.i = load <2 x float>, ptr %i.dx, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i.i119.i = extractelement <2 x float> %.sroa.03.0.copyload.i118.i, i64 0
  %i.dy = fcmp oeq float %i.cz, %.sroa.0.0.vec.extract.i.i119.i
  %.sroa.0.4.vec.extract.i.i120.i = extractelement <2 x float> %.sroa.03.0.copyload.i118.i, i64 1
  %i.dz = fcmp oeq float %i.dc, %.sroa.0.4.vec.extract.i.i120.i
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %bb.n, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i

bb.n:                                             ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.02.0.copyload.i121.i = load <2 x float>, ptr %i.ec, align 8
  %i.ed = load <2 x float>, ptr %i.eb, align 4
  %i.ee = fcmp oeq <2 x float> %i.ed, %.sroa.02.0.copyload.i121.i ; 2 uses
  %21 = extractelement <2 x i1> %i.ee, i64 0
  %22 = extractelement <2 x i1> %i.ee, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %bb.o, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i

bb.o:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.01.0.copyload.i124.i = load <2 x float>, ptr %i.eg, align 8
  %i.eh = load <2 x float>, ptr %i.ef, align 4
  %i.ei = fcmp oeq <2 x float> %i.eh, %.sroa.01.0.copyload.i124.i ; 2 uses
  %24 = extractelement <2 x i1> %i.ei, i64 0
  %25 = extractelement <2 x i1> %i.ei, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.p, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i

bb.p:                                             ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %.sroa.0.0.copyload.i127.i = load <2 x float>, ptr %i.ek, align 8
  %i.el = load <2 x float>, ptr %i.ej, align 4
  %i.em = fcmp oeq <2 x float> %i.el, %.sroa.0.0.copyload.i127.i ; 2 uses
  %27 = extractelement <2 x i1> %i.em, i64 0
  %28 = extractelement <2 x i1> %i.em, i64 1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit130.i, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i

_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit130.i:       ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !170
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !170
  %i.er = icmp eq ptr %i.eo, %i.eq
  br i1 %i.er, label %bb.q, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i

bb.q:                                             ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit130.i
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.272) ; 0 uses
  br label %bb.z

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i: ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit130.i, %bb.p, %bb.o, %bb.n, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit117.i
  %i.et = load ptr, ptr @_ZN4pbrt13RGBColorSpace7Rec2020E, align 8, !tbaa !84 ; 5 uses
  %.sroa.03.0.copyload.i132.i = load <2 x float>, ptr %i.et, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i.i133.i = extractelement <2 x float> %.sroa.03.0.copyload.i132.i, i64 0
  %i.eu = fcmp oeq float %i.cz, %.sroa.0.0.vec.extract.i.i133.i
  %.sroa.0.4.vec.extract.i.i134.i = extractelement <2 x float> %.sroa.03.0.copyload.i132.i, i64 1
  %i.ev = fcmp oeq float %i.dc, %.sroa.0.4.vec.extract.i.i134.i
  %i.ew = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %i.ew, label %bb.r, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i

bb.r:                                             ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.02.0.copyload.i135.i = load <2 x float>, ptr %i.ey, align 8
  %i.ez = load <2 x float>, ptr %i.ex, align 4
  %i.fa = fcmp oeq <2 x float> %i.ez, %.sroa.02.0.copyload.i135.i ; 2 uses
  %30 = extractelement <2 x i1> %i.fa, i64 0
  %31 = extractelement <2 x i1> %i.fa, i64 1
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %bb.s, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i

bb.s:                                             ; preds = %bb.r
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %.sroa.01.0.copyload.i138.i = load <2 x float>, ptr %i.fc, align 8
  %i.fd = load <2 x float>, ptr %i.fb, align 4
  %i.fe = fcmp oeq <2 x float> %i.fd, %.sroa.01.0.copyload.i138.i ; 2 uses
  %33 = extractelement <2 x i1> %i.fe, i64 0
  %34 = extractelement <2 x i1> %i.fe, i64 1
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %bb.t, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i

bb.t:                                             ; preds = %bb.s
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %.sroa.0.0.copyload.i141.i = load <2 x float>, ptr %i.fg, align 8
  %i.fh = load <2 x float>, ptr %i.ff, align 4
  %i.fi = fcmp oeq <2 x float> %i.fh, %.sroa.0.0.copyload.i141.i ; 2 uses
  %36 = extractelement <2 x i1> %i.fi, i64 0
  %37 = extractelement <2 x i1> %i.fi, i64 1
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit144.i, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i

_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit144.i:       ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !170
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 144
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !170
  %i.fn = icmp eq ptr %i.fk, %i.fm
  br i1 %i.fn, label %bb.u, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i

bb.u:                                             ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit144.i
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.273) ; 0 uses
  br label %bb.z

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i: ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit144.i, %bb.t, %bb.s, %bb.r, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit131.i
  %i.fp = load ptr, ptr @_ZN4pbrt13RGBColorSpace10ACES2065_1E, align 8, !tbaa !84 ; 5 uses
  %.sroa.03.0.copyload.i146.i = load <2 x float>, ptr %i.fp, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i.i147.i = extractelement <2 x float> %.sroa.03.0.copyload.i146.i, i64 0
  %i.fq = fcmp oeq float %i.cz, %.sroa.0.0.vec.extract.i.i147.i
  %.sroa.0.4.vec.extract.i.i148.i = extractelement <2 x float> %.sroa.03.0.copyload.i146.i, i64 1
  %i.fr = fcmp oeq float %i.dc, %.sroa.0.4.vec.extract.i.i148.i
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  br i1 %i.fs, label %bb.v, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145._ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159_crit_edge.i

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145._ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159_crit_edge.i: ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i
  %i.fu = load <2 x float>, ptr %i.ft, align 8, !tbaa !66
  br label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159.i

bb.v:                                             ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.02.0.copyload.i149.i = load <2 x float>, ptr %i.fv, align 8 ; 2 uses
  %i.fw = load <2 x float>, ptr %i.ft, align 4    ; 6 uses
  %i.fx = fcmp oeq <2 x float> %i.fw, %.sroa.02.0.copyload.i149.i
  %i.fy = extractelement <2 x i1> %i.fx, i64 0
  %i.fz = fcmp oeq <2 x float> %i.fw, %.sroa.02.0.copyload.i149.i
  %i.ga = extractelement <2 x i1> %i.fz, i64 1
  %i.gb = select i1 %i.fy, i1 %i.ga, i1 false
  br i1 %i.gb, label %bb.w, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159.i

bb.w:                                             ; preds = %bb.v
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %.sroa.01.0.copyload.i152.i = load <2 x float>, ptr %i.gd, align 8
  %i.ge = load <2 x float>, ptr %i.gc, align 4
  %i.gf = fcmp oeq <2 x float> %i.ge, %.sroa.01.0.copyload.i152.i ; 2 uses
  %39 = extractelement <2 x i1> %i.gf, i64 0
  %40 = extractelement <2 x i1> %i.gf, i64 1
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %bb.x, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159.i

bb.x:                                             ; preds = %bb.w
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %.sroa.0.0.copyload.i155.i = load <2 x float>, ptr %i.gh, align 8
  %i.gi = load <2 x float>, ptr %i.gg, align 4
  %i.gj = fcmp oeq <2 x float> %i.gi, %.sroa.0.0.copyload.i155.i ; 2 uses
  %42 = extractelement <2 x i1> %i.gj, i64 0
  %43 = extractelement <2 x i1> %i.gj, i64 1
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit158.i, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159.i

_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit158.i:       ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !170
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 144
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !170
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.y, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159.i

bb.y:                                             ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit158.i
  %i.gp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.274) ; 0 uses
  br label %bb.z

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159.i: ; preds = %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit158.i, %bb.x, %bb.w, %bb.v, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145._ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159_crit_edge.i
  %i.gq = phi <2 x float> [ %i.fu, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit145._ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159_crit_edge.i ], [ %i.fw, %bb.v ], [ %i.fw, %bb.w ], [ %i.fw, %bb.x ], [ %i.fw, %_ZNK4pbrt13RGBColorSpaceeqERKS0_.exit158.i ]
  %i.gr = fpext float %i.cz to double
  %i.gs = fpext float %i.dc to double
  %i.gt = fpext <2 x float> %i.gq to <2 x double> ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.gv = load <2 x float>, ptr %i.gu, align 8, !tbaa !66
  %i.gw = fpext <2 x float> %i.gv to <2 x double> ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.gy = load <2 x float>, ptr %i.gx, align 8, !tbaa !66
  %i.gz = fpext <2 x float> %i.gy to <2 x double> ; 2 uses
  %i.ha = extractelement <2 x double> %i.gw, i64 0
  %i.hb = extractelement <2 x double> %i.gw, i64 1
  %i.hc = extractelement <2 x double> %i.gz, i64 0
  %i.hd = extractelement <2 x double> %i.gz, i64 1
  %i.he = extractelement <2 x double> %i.gt, i64 0
  %i.hf = extractelement <2 x double> %i.gt, i64 1
  %i.hg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.275, double noundef %i.gr, double noundef %i.gs, double noundef %i.he, double noundef %i.hf, double noundef %i.ha, double noundef %i.hb, double noundef %i.hc, double noundef %i.hd) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit159.i, %bb.y, %bb.u, %bb.q, %bb.m
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEEdeEv.exit.i, %_ZN4pbrt6PrintfIJNS_11PixelFormatEEEEvPKcDpOT_.exit.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hh = load i8, ptr %i.t, align 4, !tbaa !109, !range !161, !noundef !162
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZNK4pstd8optionalIN4pbrt6Point2IiEEEptEv.exit160.i, label %bb.ac

_ZNK4pstd8optionalIN4pbrt6Point2IiEEEptEv.exit160.i: ; preds = %bb.ab
  %i.hj = load i32, ptr %i.u, align 4, !tbaa !151
  %i.hk = load i32, ptr %i.v, align 8, !tbaa !152
  %i.hl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.277, i32 noundef %i.hj, i32 noundef %i.hk) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK4pstd8optionalIN4pbrt6Point2IiEEEptEv.exit160.i, %bb.ab
  %i.hm = load i8, ptr %i.w, align 8, !tbaa !107, !range !161, !noundef !162
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %_ZNK4pstd8optionalIN4pbrt7Bounds2IiEEEptEv.exit163.i, label %bb.ad

_ZNK4pstd8optionalIN4pbrt7Bounds2IiEEEptEv.exit163.i: ; preds = %bb.ac
  %i.ho = load i32, ptr %i.x, align 8, !tbaa !151
  %i.hp = load i32, ptr %i.y, align 4, !tbaa !152
  %i.hq = load i32, ptr %i.z, align 8, !tbaa !151
  %i.hr = load i32, ptr %i.aa, align 4, !tbaa !152
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.278, i32 noundef %i.ho, i32 noundef %i.hp, i32 noundef %i.hq, i32 noundef %i.hr) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK4pstd8optionalIN4pbrt7Bounds2IiEEEptEv.exit163.i, %bb.ac
  %i.ht = load i8, ptr %i.ab, align 4, !tbaa !103, !range !161, !noundef !162
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZNK4pstd8optionalIfEdeEv.exit164.i, label %bb.ae

_ZNK4pstd8optionalIfEdeEv.exit164.i:              ; preds = %bb.ad
  %i.hv = load float, ptr %i.n, align 8, !tbaa !66 ; 3 uses
  %i.hw = fptosi float %i.hv to i32
  %i.hx = sdiv i32 %i.hw, 3600                    ; 2 uses
  %i.hy = mul nsw i32 %i.hx, 3600
  %i.hz = sitofp i32 %i.hy to float
  %i.ia = fsub float %i.hv, %i.hz                 ; 2 uses
  %i.ib = fptosi float %i.ia to i32
  %i.ic = sdiv i32 %i.ib, 60                      ; 2 uses
  %i.id = mul nsw i32 %i.ic, 60
  %i.ie = sitofp i32 %i.id to float
  %i.if = fsub float %i.ia, %i.ie
  %i.ig = fpext float %i.if to double
  %i.ih = fpext float %i.hv to double
  %i.ii = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.279, i32 noundef %i.hx, i32 noundef %i.ic, double noundef %i.ig, double noundef %i.ih) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK4pstd8optionalIfEdeEv.exit164.i, %bb.ad
  %i.ij = load i8, ptr %i.ac, align 8, !tbaa !105, !range !161, !noundef !162
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %_ZNK4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEptEv.exit.i, label %bb.af

_ZNK4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEptEv.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNK4pbrt12SquareMatrixILi4EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(64) %i.ad)
          to label %.noexc10 unwind label %bb.bo

.noexc10:                                         ; preds = %_ZNK4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEptEv.exit.i
  %i.il = load ptr, ptr %2, align 8, !tbaa !48
  %i.im = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.280, ptr noundef %i.il) ; 0 uses
  %i.in = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ae
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc10
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.noexc10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ae
  %i.ir = load i8, ptr %i.af, align 4, !tbaa !105, !range !161, !noundef !162
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %_ZNK4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEptEv.exit165.i, label %bb.ag

_ZNK4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEptEv.exit165.i: ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZNK4pbrt12SquareMatrixILi4EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(64) %i.ag)
          to label %.noexc11 unwind label %bb.bo

.noexc11:                                         ; preds = %_ZNK4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEptEv.exit165.i
  %i.it = load ptr, ptr %3, align 8, !tbaa !48
  %i.iu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.281, ptr noundef %i.it) ; 0 uses
  %i.iv = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.ah
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i: ; preds = %.noexc11
  %i.ix = load i64, ptr %i.ah, align 8, !tbaa !46
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i: ; preds = %.noexc11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, %bb.af
  %i.iz = load i8, ptr %i.ai, align 4, !tbaa !111, !range !161, !noundef !162
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %_ZNK4pstd8optionalIiEdeEv.exit.i, label %bb.ah

_ZNK4pstd8optionalIiEdeEv.exit.i:                 ; preds = %bb.ag
  %i.jb = load i32, ptr %i.aj, align 8, !tbaa !67
  %i.jc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.282, i32 noundef %i.jb) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK4pstd8optionalIiEdeEv.exit.i, %bb.ag
  %i.jd = load i8, ptr %i.ak, align 4, !tbaa !103, !range !161, !noundef !162
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %_ZNK4pstd8optionalIfEdeEv.exit169.i, label %bb.ai

_ZNK4pstd8optionalIfEdeEv.exit169.i:              ; preds = %bb.ah
  %i.jf = load float, ptr %i.al, align 8, !tbaa !66
  %i.jg = fpext float %i.jf to double
  %i.jh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.283, double noundef %i.jg) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK4pstd8optionalIfEdeEv.exit169.i, %bb.ah
  %i.ji = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not229270.i = icmp eq ptr %i.ji, %i.an
  br i1 %.not229270.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ai
  %i.jj = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %.not230277.i = icmp eq ptr %i.jj, %i.ap
  br i1 %.not230277.i, label %._crit_edge281.i, label %.lr.ph280.i

.lr.ph.i:                                         ; preds = %bb.ai, %.lr.ph.i
  %.sroa.0223.0271.i = phi ptr [ %i.jp, %.lr.ph.i ], [ %i.ji, %bb.ai ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0223.0271.i, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !48
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0223.0271.i, i64 64
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !48
  %i.jo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.284, ptr noundef %i.jl, ptr noundef %i.jn) ; 0 uses
  %i.jp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0223.0271.i) #43 ; 2 uses
  %.not229.i = icmp eq ptr %i.jp, %i.an
  br i1 %.not229.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge281.i:                                 ; preds = %._crit_edge276.i, %._crit_edge.i
  %puts108.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNK4pbrt5Image12ChannelNamesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %9)
          to label %.noexc12 unwind label %bb.bo

.noexc12:                                         ; preds = %._crit_edge281.i
  %i.jq = load ptr, ptr %4, align 8, !tbaa !62    ; 3 uses
  %i.jr = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 2 uses
  %.not231315.i = icmp eq ptr %i.jq, %i.jr
  br i1 %.not231315.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph318.i

.lr.ph280.i:                                      ; preds = %._crit_edge.i, %._crit_edge276.i
  %.sroa.0219.0278.i = phi ptr [ %i.jz, %._crit_edge276.i ], [ %i.jj, %._crit_edge.i ] ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0219.0278.i, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !48
end_hunk_2
