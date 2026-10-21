Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-mca?download=true
inline.NumInlined: 4826
inline.NumDeleted: 2791
begin_hunk_0_@main:bb.a
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = icmp ult i64 %i.li, 11
  br i1 %i.lj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit162
  %i.lk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lb, ptr noundef nonnull @.str.140, i64 noundef 11) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit165

bb.bg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.lf, ptr noundef nonnull align 1 dereferenceable(11) @.str.140, i64 11, i1 false)
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 11
  store ptr %i.lm, ptr %i.le, align 8, !tbaa !72
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit165

_ZN4llvm11raw_ostreamlsEPKc.exit165:              ; preds = %bb.bf, %bb.bg
  %.0.i.i164 = phi ptr [ %i.lk, %bb.bf ], [ %i.lb, %bb.bg ]
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL4MCPUB5cxx11, i64 120), align 8, !tbaa !30
  %i.lo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL4MCPUB5cxx11, i64 128), align 8, !tbaa !64
  %i.lp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i164, ptr noundef %i.ln, i64 noundef %i.lo) #24 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !71
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 32 ; 3 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !72 ; 2 uses
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = icmp ult i64 %i.lw, 3
  br i1 %i.lx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit165
  %i.ly = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lp, ptr noundef nonnull @.str.141, i64 noundef 3) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit168

bb.bi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lt, ptr noundef nonnull align 1 dereferenceable(3) @.str.141, i64 3, i1 false)
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !72
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 3
  store ptr %i.ma, ptr %i.ls, align 8, !tbaa !72
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit168

_ZN4llvm11raw_ostreamlsEPKc.exit168:              ; preds = %bb.bh, %bb.bi
  %i.mb = load ptr, ptr %20, align 8, !tbaa !30   ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit168
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !31
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.mg = load ptr, ptr %19, align 8, !tbaa !85
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 208
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !457
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 64
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !460
  %.not121 = icmp eq ptr %i.mk, null
  br i1 %.not121, label %_ZN4llvm11raw_ostreamlsEPKc.exit152, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.ml = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor4noteEv() #24
  %i.mm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ml, ptr noundef nonnull @.str.142)
  %i.mn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL4MCPUB5cxx11, i64 120), align 8, !tbaa !30
  %i.mo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL4MCPUB5cxx11, i64 128), align 8, !tbaa !64
  %i.mp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mm, ptr noundef %i.mn, i64 noundef %i.mo) #24
  %i.mq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.mp, ptr noundef nonnull @.str.143)
  %i.mr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.mq, ptr noundef nonnull @.str.144) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit152

bb.bk:                                            ; preds = %bb.az
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !461
  %i.mu = icmp ugt i32 %i.mt, 1                   ; 3 uses
  %i.mv = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 8), align 8, !tbaa !462
  %.not.i172 = icmp eq i16 %i.mv, 0
  br i1 %.not.i172, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 8), align 8, !tbaa !462
  %.not5.i = icmp eq i16 %i.mw, 0
  br i1 %.not5.i, label %_ZL18processViewOptionsb.exit, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i

bb.bm:                                            ; preds = %bb.bk
  %_ZL14EnableAllViews.val21.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 12), align 4 ; 3 uses
  %i.mx = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintSummaryView, i64 8), align 8, !tbaa !462
  %.not.i.i173 = icmp eq i16 %i.mx, 0
  %i.my = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintSummaryView, i64 12), align 4
  %i.mz = icmp ult i16 %i.my, %_ZL14EnableAllViews.val21.i
  %or.cond.i.i = select i1 %.not.i.i173, i1 true, i1 %i.mz
  br i1 %or.cond.i.i, label %bb.bn, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit.i

bb.bn:                                            ; preds = %bb.bm
  %_ZL14EnableAllViews.val22.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 120), align 8
  store i8 %_ZL14EnableAllViews.val22.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintSummaryView, i64 120), align 8, !tbaa !103
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintSummaryView, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i.not.i.i.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i:         ; preds = %bb.bn
  %i.nb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintSummaryView, i64 176), align 8, !tbaa !464
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16PrintSummaryView, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL16PrintSummaryView, i64 120)) #24, !inline_history !355
  %_ZL14EnableAllViews.val17.pre63.pre.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 12), align 4
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i, %bb.bn, %bb.bm
  %_ZL14EnableAllViews.val17.pre63.i = phi i16 [ %_ZL14EnableAllViews.val21.i, %bb.bm ], [ %_ZL14EnableAllViews.val21.i, %bb.bn ], [ %_ZL14EnableAllViews.val17.pre63.pre.i, %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i ] ; 4 uses
  br i1 %i.mu, label %bb.bo, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i

bb.bo:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit.i
  %i.nc = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 8), align 8, !tbaa !462
  %.not.i23.i = icmp eq i16 %i.nc, 0
  %i.nd = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 12), align 4
  %i.ne = icmp ult i16 %i.nd, %_ZL14EnableAllViews.val17.pre63.i
  %or.cond.i24.i = select i1 %.not.i23.i, i1 true, i1 %i.ne
  br i1 %or.cond.i24.i, label %bb.bp, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i

bb.bp:                                            ; preds = %bb.bo
  %_ZL14EnableAllViews.val20.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 120), align 8
  store i8 %_ZL14EnableAllViews.val20.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 120), align 8, !tbaa !103
  %i.nf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i25.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.not.i.i25.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i26.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i26.i:       ; preds = %bb.bp
  %i.ng = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 176), align 8, !tbaa !464
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 120)) #24, !inline_history !355
  %_ZL14EnableAllViews.val17.pre.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 12), align 4
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i26.i, %bb.bp, %bb.bo, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit.i
  %_ZL14EnableAllViews.val17.i = phi i16 [ %_ZL14EnableAllViews.val17.pre.i, %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i26.i ], [ %_ZL14EnableAllViews.val17.pre63.i, %bb.bp ], [ %_ZL14EnableAllViews.val17.pre63.i, %bb.bo ], [ %_ZL14EnableAllViews.val17.pre63.i, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit.i ] ; 3 uses
  %i.nh = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL25PrintResourcePressureView, i64 8), align 8, !tbaa !462
  %.not.i28.i = icmp eq i16 %i.nh, 0
  %i.ni = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL25PrintResourcePressureView, i64 12), align 4
  %i.nj = icmp ult i16 %i.ni, %_ZL14EnableAllViews.val17.i
  %or.cond.i29.i = select i1 %.not.i28.i, i1 true, i1 %i.nj
  br i1 %or.cond.i29.i, label %bb.bq, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit32.i

bb.bq:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i
  %_ZL14EnableAllViews.val18.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 120), align 8
  store i8 %_ZL14EnableAllViews.val18.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL25PrintResourcePressureView, i64 120), align 8, !tbaa !103
  %i.nk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL25PrintResourcePressureView, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i30.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.not.i.i30.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit32.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i31.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i31.i:       ; preds = %bb.bq
  %i.nl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL25PrintResourcePressureView, i64 176), align 8, !tbaa !464
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL25PrintResourcePressureView, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL25PrintResourcePressureView, i64 120)) #24, !inline_history !355
  %_ZL14EnableAllViews.val15.pre.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 12), align 4
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit32.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit32.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i31.i, %bb.bq, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i
  %_ZL14EnableAllViews.val15.i = phi i16 [ %_ZL14EnableAllViews.val17.i, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit27.i ], [ %_ZL14EnableAllViews.val17.i, %bb.bq ], [ %_ZL14EnableAllViews.val15.pre.i, %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i31.i ] ; 3 uses
  %i.nm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintTimelineView, i64 8), align 8, !tbaa !462
  %.not.i33.i = icmp eq i16 %i.nm, 0
  %i.nn = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintTimelineView, i64 12), align 4
  %i.no = icmp ult i16 %i.nn, %_ZL14EnableAllViews.val15.i
  %or.cond.i34.i = select i1 %.not.i33.i, i1 true, i1 %i.no
  br i1 %or.cond.i34.i, label %bb.br, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit37.i

bb.br:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit32.i
  %_ZL14EnableAllViews.val16.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 120), align 8
  store i8 %_ZL14EnableAllViews.val16.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintTimelineView, i64 120), align 8, !tbaa !103
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintTimelineView, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i35.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i.not.i.i35.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit37.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i36.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i36.i:       ; preds = %bb.br
  %i.nq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintTimelineView, i64 176), align 8, !tbaa !464
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17PrintTimelineView, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL17PrintTimelineView, i64 120)) #24, !inline_history !355
  %_ZL14EnableAllViews.val.pre.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 12), align 4
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit37.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit37.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i36.i, %bb.br, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit32.i
  %_ZL14EnableAllViews.val.i = phi i16 [ %_ZL14EnableAllViews.val15.i, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit32.i ], [ %_ZL14EnableAllViews.val15.i, %bb.br ], [ %_ZL14EnableAllViews.val.pre.i, %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i36.i ]
  %i.nr = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 8), align 8, !tbaa !462
  %.not.i38.i = icmp eq i16 %i.nr, 0
  %i.ns = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 12), align 4
  %i.nt = icmp ult i16 %i.ns, %_ZL14EnableAllViews.val.i
  %or.cond.i39.i = select i1 %.not.i38.i, i1 true, i1 %i.nt
  br i1 %or.cond.i39.i, label %bb.bs, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i

bb.bs:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit37.i
  %_ZL14EnableAllViews.val14.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 120), align 8
  store i8 %_ZL14EnableAllViews.val14.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 120), align 8, !tbaa !103
  %i.nu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i40.i = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.not.i.i40.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i41.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i41.i:       ; preds = %bb.bs
  %i.nv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 176), align 8, !tbaa !464
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 120)) #24, !inline_history !355
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i41.i, %bb.bs, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit37.i, %bb.bl
  %i.nw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 12), align 4, !tbaa !104
  %i.nx = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 12), align 4, !tbaa !104
  %i.ny = icmp ult i16 %i.nw, %i.nx
  %i.nz = select i1 %i.ny, ptr @_ZL14EnableAllStats, ptr @_ZL14EnableAllViews ; 2 uses
  %101 = getelementptr i8, ptr %i.nz, i64 12      ; 4 uses
  %_ZL14EnableAllStats._ZL14EnableAllViews.val12.i = load i16, ptr %101, align 4 ; 3 uses
  %102 = getelementptr i8, ptr %i.nz, i64 120     ; 4 uses
  %i.oa = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PrintRegisterFileStats, i64 8), align 8, !tbaa !462
  %.not.i43.i = icmp eq i16 %i.oa, 0
  %i.ob = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PrintRegisterFileStats, i64 12), align 4
  %i.oc = icmp ult i16 %i.ob, %_ZL14EnableAllStats._ZL14EnableAllViews.val12.i
  %or.cond.i44.i = select i1 %.not.i43.i, i1 true, i1 %i.oc
  br i1 %or.cond.i44.i, label %bb.bt, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit47.i

bb.bt:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i
  %_ZL14EnableAllStats._ZL14EnableAllViews.val13.i = load i8, ptr %102, align 8
  store i8 %_ZL14EnableAllStats._ZL14EnableAllViews.val13.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PrintRegisterFileStats, i64 120), align 8, !tbaa !103
  %i.od = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PrintRegisterFileStats, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i45.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.not.i.i45.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit47.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i46.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i46.i:       ; preds = %bb.bt
  %i.oe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PrintRegisterFileStats, i64 176), align 8, !tbaa !464
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22PrintRegisterFileStats, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL22PrintRegisterFileStats, i64 120)) #24, !inline_history !355
  %_ZL14EnableAllStats._ZL14EnableAllViews.val10.pre.i = load i16, ptr %101, align 4
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit47.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit47.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i46.i, %bb.bt, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i
  %_ZL14EnableAllStats._ZL14EnableAllViews.val869.i = phi i16 [ %_ZL14EnableAllStats._ZL14EnableAllViews.val12.i, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit42.i ], [ %_ZL14EnableAllStats._ZL14EnableAllViews.val12.i, %bb.bt ], [ %_ZL14EnableAllStats._ZL14EnableAllViews.val10.pre.i, %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i46.i ] ; 3 uses
  %i.of = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18PrintDispatchStats, i64 8), align 8, !tbaa !462
  %.not.i48.i = icmp eq i16 %i.of, 0
  %i.og = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18PrintDispatchStats, i64 12), align 4
  %i.oh = icmp ult i16 %i.og, %_ZL14EnableAllStats._ZL14EnableAllViews.val869.i
  %or.cond.i49.i = select i1 %.not.i48.i, i1 true, i1 %i.oh
  br i1 %or.cond.i49.i, label %bb.bu, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit52.i

bb.bu:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit47.i
  %_ZL14EnableAllStats._ZL14EnableAllViews.val11.i = load i8, ptr %102, align 8
  store i8 %_ZL14EnableAllStats._ZL14EnableAllViews.val11.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL18PrintDispatchStats, i64 120), align 8, !tbaa !103
  %i.oi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18PrintDispatchStats, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i50.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.not.i.i50.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit52.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i51.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i51.i:       ; preds = %bb.bu
  %i.oj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18PrintDispatchStats, i64 176), align 8, !tbaa !464
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18PrintDispatchStats, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL18PrintDispatchStats, i64 120)) #24, !inline_history !355
  %_ZL14EnableAllStats._ZL14EnableAllViews.val8.pre.i = load i16, ptr %101, align 4
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit52.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit52.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i51.i, %bb.bu, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit47.i
  %_ZL14EnableAllStats._ZL14EnableAllViews.val8.i = phi i16 [ %_ZL14EnableAllStats._ZL14EnableAllViews.val869.i, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit47.i ], [ %_ZL14EnableAllStats._ZL14EnableAllViews.val869.i, %bb.bu ], [ %_ZL14EnableAllStats._ZL14EnableAllViews.val8.pre.i, %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i51.i ]
  %i.ok = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19PrintSchedulerStats, i64 8), align 8, !tbaa !462
  %.not.i53.i = icmp eq i16 %i.ok, 0
  %i.ol = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19PrintSchedulerStats, i64 12), align 4
  %i.om = icmp ult i16 %i.ol, %_ZL14EnableAllStats._ZL14EnableAllViews.val8.i
  %or.cond.i54.i = select i1 %.not.i53.i, i1 true, i1 %i.om
  br i1 %or.cond.i54.i, label %bb.bv, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit57.i

bb.bv:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit52.i
  %_ZL14EnableAllStats._ZL14EnableAllViews.val9.i = load i8, ptr %102, align 8
  store i8 %_ZL14EnableAllStats._ZL14EnableAllViews.val9.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL19PrintSchedulerStats, i64 120), align 8, !tbaa !103
  %i.on = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19PrintSchedulerStats, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i55.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i.not.i.i55.i, label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit57.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i56.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i56.i:       ; preds = %bb.bv
  %i.oo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL19PrintSchedulerStats, i64 176), align 8, !tbaa !464
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL19PrintSchedulerStats, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL19PrintSchedulerStats, i64 120)) #24, !inline_history !355
  br label %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit57.i

_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit57.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i56.i, %bb.bv, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit52.i
  br i1 %i.mu, label %bb.bw, label %_ZL18processViewOptionsb.exit

bb.bw:                                            ; preds = %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit57.i
  %_ZL14EnableAllStats._ZL14EnableAllViews.val.i = load i16, ptr %101, align 4
  %i.op = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintRetireStats, i64 8), align 8, !tbaa !462
  %.not.i58.i = icmp eq i16 %i.op, 0
  %i.oq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintRetireStats, i64 12), align 4
  %i.or = icmp ult i16 %i.oq, %_ZL14EnableAllStats._ZL14EnableAllViews.val.i
  %or.cond.i59.i = select i1 %.not.i58.i, i1 true, i1 %i.or
  br i1 %or.cond.i59.i, label %bb.bx, label %_ZL18processViewOptionsb.exit

bb.bx:                                            ; preds = %bb.bw
  %_ZL14EnableAllStats._ZL14EnableAllViews.val7.i = load i8, ptr %102, align 8
  store i8 %_ZL14EnableAllStats._ZL14EnableAllViews.val7.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintRetireStats, i64 120), align 8, !tbaa !103
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintRetireStats, i64 168), align 8, !tbaa !25
  %.not.i.i.not.i.i60.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.not.i.i60.i, label %_ZL18processViewOptionsb.exit, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i61.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i61.i:       ; preds = %bb.bx
  %i.ot = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16PrintRetireStats, i64 176), align 8, !tbaa !464
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16PrintRetireStats, i64 152), ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL16PrintRetireStats, i64 120)) #24, !inline_history !355
  br label %_ZL18processViewOptionsb.exit

_ZL18processViewOptionsb.exit:                    ; preds = %bb.bl, %_ZL17processOptionImplRN4llvm2cl3optIbLb0ENS0_6parserIbEEEERKS4_.exit57.i, %bb.bw, %bb.bx, %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i61.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !465 ; 2 uses
  %.not.i174 = icmp eq ptr %i.ov, null
  br i1 %.not.i174, label %_ZNK4llvm6Target15createMCRegInfoERKNS_6TripleE.exit, label %bb.by

bb.by:                                            ; preds = %_ZL18processViewOptionsb.exit
  %i.ow = call noundef ptr %i.ov(ptr noundef nonnull align 8 dereferenceable(56) %9) #24, !inline_history !356
  br label %_ZNK4llvm6Target15createMCRegInfoERKNS_6TripleE.exit

_ZNK4llvm6Target15createMCRegInfoERKNS_6TripleE.exit: ; preds = %_ZL18processViewOptionsb.exit, %bb.by
  %.0.i175 = phi ptr [ %i.ow, %bb.by ], [ null, %_ZL18processViewOptionsb.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @_ZN4llvm2mc28InitMCTargetOptionsFromFlagsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCTargetOptions") align 8 %21) #24
  %i.ox = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !466 ; 2 uses
  %.not.i176 = icmp eq ptr %i.oy, null
  br i1 %.not.i176, label %_ZNK4llvm6Target15createMCAsmInfoERKNS_14MCRegisterInfoERKNS_6TripleERKNS_15MCTargetOptionsE.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNK4llvm6Target15createMCRegInfoERKNS_6TripleE.exit
  %i.oz = call noundef ptr %i.oy(ptr noundef nonnull align 8 dereferenceable(240) %.0.i175, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(282) %21) #24, !inline_history !357
  br label %_ZNK4llvm6Target15createMCAsmInfoERKNS_14MCRegisterInfoERKNS_6TripleERKNS_15MCTargetOptionsE.exit

_ZNK4llvm6Target15createMCAsmInfoERKNS_14MCRegisterInfoERKNS_6TripleERKNS_15MCTargetOptionsE.exit: ; preds = %_ZNK4llvm6Target15createMCRegInfoERKNS_6TripleE.exit, %bb.bz
  %.0.i177 = phi ptr [ %i.oz, %bb.bz ], [ null, %_ZNK4llvm6Target15createMCRegInfoERKNS_6TripleE.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZN4llvm9SourceMgrC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.pa, align 8
  store ptr %.sroa.0561.1.ph856, ptr %4, align 8, !tbaa !435
  %i.pb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.pb, align 8, !tbaa !67
  %i.pc = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !107 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !108
  %.not.i.i.i178 = icmp eq ptr %i.pd, %i.pf
  br i1 %.not.i.i.i178, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNK4llvm6Target15createMCAsmInfoERKNS_14MCRegisterInfoERKNS_6TripleERKNS_15MCTargetOptionsE.exit
  call void @_ZN4llvm9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.pd, ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  %i.pg = load ptr, ptr %i.pc, align 8, !tbaa !107
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store ptr %i.ph, ptr %i.pc, align 8, !tbaa !107
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.cb:                                            ; preds = %_ZNK4llvm6Target15createMCAsmInfoERKNS_14MCRegisterInfoERKNS_6TripleERKNS_15MCTargetOptionsE.exit
  call void @_ZNSt6vectorIN4llvm9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr %i.pd, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cb, %bb.ca
  call void @_ZN4llvm9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.pi = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !467 ; 2 uses
  %.not.i181 = icmp eq ptr %i.pj, null
  br i1 %.not.i181, label %_ZNK4llvm6Target17createMCInstrInfoEv.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.pk = call noundef ptr %i.pj() #24, !inline_history !358
  br label %_ZNK4llvm6Target17createMCInstrInfoEv.exit

_ZNK4llvm6Target17createMCInstrInfoEv.exit:       ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.cc
  %.0.i182 = phi ptr [ %i.pk, %bb.cc ], [ null, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 17 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !468 ; 2 uses
  %.not.i183 = icmp eq ptr %i.pm, null
  br i1 %.not.i183, label %_ZNK4llvm6Target21createMCInstrAnalysisEPKNS_11MCInstrInfoE.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNK4llvm6Target17createMCInstrInfoEv.exit
  %i.pn = call noundef ptr %i.pm(ptr noundef %.0.i182) #24, !inline_history !359
  br label %_ZNK4llvm6Target21createMCInstrAnalysisEPKNS_11MCInstrInfoE.exit

_ZNK4llvm6Target21createMCInstrAnalysisEPKNS_11MCInstrInfoE.exit: ; preds = %_ZNK4llvm6Target17createMCInstrInfoEv.exit, %bb.cd
  %.0.i184 = phi ptr [ %i.pn, %bb.cd ], [ null, %_ZNK4llvm6Target17createMCInstrInfoEv.exit ] ; 4 uses
  %i.po = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16OutputAsmVariant, i64 120), align 8, !tbaa !113 ; 2 uses
  %i.pp = icmp eq i32 %i.po, -1
  %spec.select = select i1 %i.pp, i32 0, i32 %i.po ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.pq = getelementptr inbounds nuw i8, ptr %i.be, i64 136 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !469 ; 2 uses
  %.not.i185 = icmp eq ptr %i.pr, null
  br i1 %.not.i185, label %_ZNK4llvm6Target19createMCInstPrinterERKNS_6TripleEjRKNS_9MCAsmInfoERKNS_11MCInstrInfoERKNS_14MCRegisterInfoE.exit.thread, label %_ZNK4llvm6Target19createMCInstPrinterERKNS_6TripleEjRKNS_9MCAsmInfoERKNS_11MCInstrInfoERKNS_14MCRegisterInfoE.exit

_ZNK4llvm6Target19createMCInstPrinterERKNS_6TripleEjRKNS_9MCAsmInfoERKNS_11MCInstrInfoERKNS_14MCRegisterInfoE.exit.thread: ; preds = %_ZNK4llvm6Target21createMCInstrAnalysisEPKNS_11MCInstrInfoE.exit
  store ptr null, ptr %23, align 8, !tbaa !115
  br label %bb.ce

_ZNK4llvm6Target19createMCInstPrinterERKNS_6TripleEjRKNS_9MCAsmInfoERKNS_11MCInstrInfoERKNS_14MCRegisterInfoE.exit: ; preds = %_ZNK4llvm6Target21createMCInstrAnalysisEPKNS_11MCInstrInfoE.exit
  %i.ps = call noundef ptr %i.pr(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(448) %.0.i177, ptr noundef nonnull align 8 dereferenceable(58) %.0.i182, ptr noundef nonnull align 8 dereferenceable(240) %.0.i175) #24, !inline_history !360 ; 2 uses
  store ptr %i.ps, ptr %23, align 8, !tbaa !115
  %.not648 = icmp eq ptr %i.ps, null
  br i1 %.not648, label %bb.ce, label %_Z10shouldSkip8SkipType.exit

bb.ce:                                            ; preds = %_ZNK4llvm6Target19createMCInstPrinterERKNS_6TripleEjRKNS_9MCAsmInfoERKNS_11MCInstrInfoERKNS_14MCRegisterInfoE.exit.thread, %_ZNK4llvm6Target19createMCInstPrinterERKNS_6TripleEjRKNS_9MCAsmInfoERKNS_11MCInstrInfoERKNS_14MCRegisterInfoE.exit
  %i.pt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorEv() #24
  %i.pu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.pt, ptr noundef nonnull @.str.145)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.pv = load ptr, ptr %9, align 8, !tbaa !30, !noalias !470
  %i.pw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !64, !noalias !470
  call void @_ZN4llvm6Triple9normalizeB5cxx11ENS_9StringRefENS0_13CanonicalFormE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr %i.pv, i64 %i.px, i32 noundef 0) #24
  %i.py = load ptr, ptr %24, align 8, !tbaa !30
  %i.pz = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !64
  %i.qb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.pu, ptr noundef %i.py, i64 noundef %i.qa) #24
  %i.qc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.qb, ptr noundef nonnull @.str.146)
  %i.qd = zext i32 %spec.select to i64
  %i.qe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.qc, i64 noundef %i.qd) #24
  %i.qf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.qe, ptr noundef nonnull @.str.147) ; 0 uses
  %i.qg = load ptr, ptr %24, align 8, !tbaa !30   ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ce
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !31
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.fx

_Z10shouldSkip8SkipType.exit:                     ; preds = %_ZNK4llvm6Target19createMCInstPrinterERKNS_6TripleEjRKNS_9MCAsmInfoERKNS_11MCInstrInfoERKNS_14MCRegisterInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.ql = load ptr, ptr %19, align 8, !tbaa !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9MCContextC1ERKNS_6TripleERKNS_9MCAsmInfoERKNS_14MCRegisterInfoERKNS_15MCSubtargetInfoEPKNS_9SourceMgrEbNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(2208) %25, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(448) %.0.i177, ptr noundef nonnull align 8 dereferenceable(240) %.0.i175, ptr noundef nonnull align 8 dereferenceable(320) %i.ql, ptr noundef nonnull %22, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %26) #24
  %i.qm = call noundef ptr @_ZNK4llvm6Target22createMCObjectFileInfoERNS_9MCContextEbb(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef nonnull align 8 dereferenceable(2208) %25, i1 noundef zeroext false, i1 noundef zeroext false) ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %25, i64 168
  store ptr %i.qm, ptr %i.qn, align 8, !tbaa !599
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.qo = load ptr, ptr %19, align 8, !tbaa !85
  call void @_ZN4llvm3mca26AsmAnalysisRegionGeneratorC1ERKNS_6TargetERNS_9SourceMgrERNS_9MCContextERKNS_9MCAsmInfoERKNS_15MCSubtargetInfoERKNS_11MCInstrInfoE(ptr noundef nonnull align 8 dereferenceable(472) %27, ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(2208) %25, ptr noundef nonnull align 8 dereferenceable(448) %.0.i177, ptr noundef nonnull align 8 dereferenceable(320) %i.qo, ptr noundef nonnull align 8 dereferenceable(58) %.0.i182)
  %i.qp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL27SkipUnsupportedInstructions, i64 120), align 8, !tbaa !60
  %i.qq = and i32 %i.qp, -2
  %switch = icmp eq i32 %i.qq, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !600
  %i.qr = getelementptr inbounds nuw i8, ptr %27, i64 80
  call void @_ZN4llvm3mca22AsmCodeRegionGenerator16parseCodeRegionsERKSt10unique_ptrINS_13MCInstPrinterESt14default_deleteIS3_EEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.739") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.qr, ptr noundef nonnull align 8 dereferenceable(8) %23, i1 noundef zeroext %switch) #24, !noalias !600
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qt = load i8, ptr %i.qs, align 8, !noalias !600
  %i.qu = trunc i8 %i.qt to i1
  br i1 %i.qu, label %_ZN4llvm8ExpectedIRKNS_3mca15AnalysisRegionsEE9takeErrorEv.exit, label %bb.cl

_ZN4llvm8ExpectedIRKNS_3mca15AnalysisRegionsEE9takeErrorEv.exit: ; preds = %_Z10shouldSkip8SkipType.exit
  %i.qv = load i64, ptr %3, align 8, !tbaa !129, !noalias !601
  %i.qw = inttoptr i64 %i.qv to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  store ptr %i.qw, ptr %29, align 8, !tbaa !131, !alias.scope !602
  call fastcc void @"_ZN4llvm12handleErrorsIJZ4mainE3$_0EEENS_5ErrorES2_DpOT_"(ptr dead_on_unwind noalias writable align 8 %28, ptr nofree noundef align 8 dereferenceable(8) %29)
  %i.qx = load ptr, ptr %29, align 8, !tbaa !131  ; 3 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm8ExpectedIRKNS_3mca15AnalysisRegionsEE9takeErrorEv.exit
  %i.qz = load ptr, ptr %i.qx, align 8, !tbaa !22
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(8) %i.qx) #24, !inline_history !2
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm8ExpectedIRKNS_3mca15AnalysisRegionsEE9takeErrorEv.exit, %bb.cf
  %i.rc = load ptr, ptr %28, align 8, !tbaa !131  ; 2 uses
  %.not661 = icmp eq ptr %i.rc, null
  br i1 %.not661, label %.thread, label %bb.cg

bb.cg:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.rd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorEv() #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store ptr %i.rc, ptr %31, align 8, !tbaa !131
  store ptr null, ptr %28, align 8, !tbaa !131
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr nofree noundef nonnull align 8 dereferenceable(8) %31) #24
  %i.re = load ptr, ptr %30, align 8, !tbaa !30
  %i.rf = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !64
  %i.rh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.rd, ptr noundef %i.re, i64 noundef %i.rg) #24 ; 3 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_llvm_mca.cpp:bb.a
  store i64 0, ptr %.sroa.16.0..sroa_idx.i11, align 8
  %.sroa.17.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %.sroa.17.0..sroa_idx.i12, align 8
  %.sroa.19.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str.2, ptr %.sroa.19.0..sroa_idx.i13, align 8
  %.sroa.20.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.sroa.20.0..sroa_idx.i14, align 8
  %.sroa.21.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @.str.106, ptr %.sroa.21.0..sroa_idx.i15, align 8
  %.sroa.22.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 4, ptr %.sroa.22.0..sroa_idx.i16, align 8
  %.sroa.23.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 2, ptr %.sroa.23.0..sroa_idx.i17, align 8
  %.sroa.2552.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @.str.107, ptr %.sroa.2552.0..sroa_idx.i18, align 8
  %.sroa.26.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 97, ptr %.sroa.26.0..sroa_idx.i19, align 8
  store i32 4, ptr %i.az, align 8, !tbaa !155, !alias.scope !1072
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL23InstructionTablesOption, i32 noundef 0, i32 noundef 0) #24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 120), align 8, !tbaa !174
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueI21InstructionTablesTypeEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optI21InstructionTablesTypeLb0ENS0_6parserIS2_EEEE, i64 16), ptr @_ZL23InstructionTablesOption, align 8, !tbaa !22
  store ptr @_ZL23InstructionTablesOption, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 152), align 8, !tbaa !1071
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserI21InstructionTablesTypeEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 144), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 160), align 8, !tbaa !40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 168), align 8, !tbaa !155
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 172), align 4, !tbaa !156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 560), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(592) @_ZL23InstructionTablesOption, ptr nonnull align 1 dereferenceable(19) @.str.102, i64 18) #24
  store ptr @.str.103, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 32), align 8, !tbaa !67
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 40), align 8, !tbaa !66
  call void @_ZNK4llvm2cl11ValuesClass5applyINS0_3optI21InstructionTablesTypeLb0ENS0_6parserIS4_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(592) @_ZL23InstructionTablesOption)
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(592) @_ZL23InstructionTablesOption, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ToolOptions) #24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 120), align 8, !tbaa !174
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 140), align 4, !tbaa !275
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 136), align 8, !tbaa !276
  %i.bb = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 10), align 2
  %i.bc = and i16 %i.bb, -25
  %i.bd = or disjoint i16 %i.bc, 8
  store i16 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZL23InstructionTablesOption, i64 10), align 2
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(592) @_ZL23InstructionTablesOption) #24
  %i.be = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %__cxx_global_var_init.101.exit, label %bb.c

bb.c:                                             ; preds = %__cxx_global_var_init.54.exit
  call void @free(ptr noundef %i.be) #24
  br label %__cxx_global_var_init.101.exit

__cxx_global_var_init.101.exit:                   ; preds = %__cxx_global_var_init.54.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  %i.bg = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optI21InstructionTablesTypeLb0ENS0_6parserIS2_EEED2Ev, ptr nonnull @_ZL23InstructionTablesOption, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL24PrintInstructionInfoView, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL24PrintInstructionInfoView, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24PrintInstructionInfoView, ptr nonnull align 1 dereferenceable(17) @.str.109, i64 16) #24
  store ptr @.str.110, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 32), align 8, !tbaa !67
  store i64 52, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24PrintInstructionInfoView, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 137), align 1, !tbaa !329
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL24PrintInstructionInfoView, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24PrintInstructionInfoView) #24
  %i.bh = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL24PrintInstructionInfoView, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL14EnableAllStats, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL14EnableAllStats, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14EnableAllStats, ptr nonnull align 1 dereferenceable(10) @.str.112, i64 9) #24
  store ptr @.str.113, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 32), align 8, !tbaa !67
  store i64 29, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14EnableAllStats, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 137), align 1, !tbaa !329
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllStats, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14EnableAllStats) #24
  %i.bi = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL14EnableAllStats, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL14EnableAllViews, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL14EnableAllViews, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14EnableAllViews, ptr nonnull align 1 dereferenceable(10) @.str.115, i64 9) #24
  store ptr @.str.116, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 32), align 8, !tbaa !67
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14EnableAllViews, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 137), align 1, !tbaa !329
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14EnableAllViews, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14EnableAllViews) #24
  %i.bj = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL14EnableAllViews, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL24EnableBottleneckAnalysis, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL24EnableBottleneckAnalysis, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24EnableBottleneckAnalysis, ptr nonnull align 1 dereferenceable(20) @.str.118, i64 19) #24
  store ptr @.str.119, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 32), align 8, !tbaa !67
  store i64 48, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24EnableBottleneckAnalysis, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 137), align 1, !tbaa !329
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableBottleneckAnalysis, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24EnableBottleneckAnalysis) #24
  %i.bk = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL24EnableBottleneckAnalysis, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12ShowEncoding, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL12ShowEncoding, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ShowEncoding, ptr nonnull align 1 dereferenceable(14) @.str.121, i64 13) #24
  store ptr @.str.122, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 32), align 8, !tbaa !67
  store i64 55, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ShowEncoding, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 137), align 1, !tbaa !329
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowEncoding, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ShowEncoding) #24
  %i.bl = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL12ShowEncoding, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12ShowBarriers, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL12ShowBarriers, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ShowBarriers, ptr nonnull align 1 dereferenceable(14) @.str.124, i64 13) #24
  store ptr @.str.125, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 32), align 8, !tbaa !67
  store i64 61, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ShowBarriers, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 137), align 1, !tbaa !329
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ShowBarriers, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ShowBarriers) #24
  %i.bm = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL12ShowBarriers, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22DisableCustomBehaviour, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL22DisableCustomBehaviour, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22DisableCustomBehaviour, ptr nonnull align 1 dereferenceable(11) @.str.127, i64 10) #24
  store ptr @.str.128, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 32), align 8, !tbaa !67
  store i64 68, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22DisableCustomBehaviour, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 137), align 1, !tbaa !329
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableCustomBehaviour, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22DisableCustomBehaviour) #24
  %i.bn = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL22DisableCustomBehaviour, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL24DisableInstrumentManager, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 120), align 8, !tbaa !141
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL24DisableInstrumentManager, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 144), align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24DisableInstrumentManager, ptr nonnull align 1 dereferenceable(11) @.str.130, i64 10) #24
  store ptr @.str.131, ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 32), align 8, !tbaa !67
  store i64 83, ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 40), align 8, !tbaa !66
  call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24DisableInstrumentManager, ptr noundef nonnull align 8 dereferenceable(32) @_ZL11ViewOptions) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 120), align 8, !tbaa !141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 137), align 1, !tbaa !329
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24DisableInstrumentManager, i64 136), align 8, !tbaa !1067
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24DisableInstrumentManager) #24
  %i.bo = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL24DisableInstrumentManager, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null}
!1 = distinct !{!1, !47}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null, null}
!5 = distinct !{!5, !47}
!6 = distinct !{!6, !47}
!7 = distinct !{!7, !47}
!8 = distinct !{!8, !47}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{!11, !47}
!12 = distinct !{!12, !47}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"vtable pointer", !16, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"any pointer", !17, i64 0}
!24 = !{!"_ZTSSt14_Function_base", !17, i64 0, !23, i64 16}
!25 = !{!24, !23, i64 16}
!26 = !{!"p1 omnipotent char", !23, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"long", !17, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !17, i64 16}
!30 = !{!29, !26, i64 0}
!31 = !{!17, !17, i64 0}
!32 = !{!"any p2 pointer", !23, i64 0}
!33 = !{!"bool", !17, i64 0}
!34 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !32, i64 0, !18, i64 8, !18, i64 12, !33, i64 16}
!35 = !{!34, !33, i64 16}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{!34, !32, i64 0}
!39 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !23, i64 0, !18, i64 8, !18, i64 12}
!40 = !{!39, !23, i64 0}
!41 = !{!"p1 int", !23, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!42, !41, i64 0}
!44 = !{!42, !41, i64 16}
!45 = !{!"p1 _ZTSN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !23, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 0}
!51 = !{!49, !48, i64 8}
!52 = !{!49, !48, i64 16}
!53 = !{ptr @_ZN4llvm2cl6parserI8SkipTypeED2Ev}
!54 = !{!"_ZTS8SkipType", !17, i64 0}
!55 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!56 = !{!"_ZTSN4llvm2cl15OptionValueCopyI8SkipTypeEE", !55, i64 0, !54, i64 8, !33, i64 12}
!57 = !{!"_ZTSN4llvm2cl15OptionValueBaseI8SkipTypeLb0EEE", !56, i64 0}
!58 = !{!"_ZTSN4llvm2cl11OptionValueI8SkipTypeEE", !57, i64 0}
!59 = !{!"_ZTSN4llvm2cl11opt_storageI8SkipTypeLb0ELb0EEE", !54, i64 0, !58, i64 8}
!60 = !{!59, !54, i64 0}
!61 = !{ptr @_ZN4llvm2cl6parserI21InstructionTablesTypeED2Ev}
!62 = !{!18, !18, i64 0}
!63 = !{!23, !23, i64 0}
!64 = !{!29, !28, i64 8}
!65 = !{!27, !26, i64 0}
!66 = !{!28, !28, i64 0}
!67 = !{!26, !26, i64 0}
!68 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !17, i64 0}
!69 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !17, i64 0}
!70 = !{!"_ZTSN4llvm11raw_ostreamE", !68, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !33, i64 40, !69, i64 44}
!71 = !{!70, !26, i64 24}
!72 = !{!70, !26, i64 32}
!73 = !{!"_ZTSN4llvm5Twine8NodeKindE", !17, i64 0}
!74 = !{!"_ZTSN4llvm5TwineE", !17, i64 0, !17, i64 16, !73, i64 32, !73, i64 33}
!75 = !{!74, !73, i64 32}
!76 = !{!74, !73, i64 33}
!77 = !{!"p1 _ZTSNSt3_V214error_categoryE", !23, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"_ZTSSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !24, i64 0, !23, i64 24}
!80 = !{!79, !23, i64 24}
!81 = !{!48, !48, i64 0}
!82 = !{!"p1 _ZTSN4llvm6TargetE", !23, i64 0}
!83 = !{!"_ZTSN4llvm6TargetE", !82, i64 0, !23, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !33, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !23, i64 128, !23, i64 136, !23, i64 144, !23, i64 152, !23, i64 160, !23, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !23, i64 224, !23, i64 232, !23, i64 240, !23, i64 248, !23, i64 256}
!84 = !{!"p1 _ZTSN4llvm15MCSubtargetInfoE", !23, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!"_ZTSN4llvm9StringRefE", !26, i64 0, !28, i64 8}
!87 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !23, i64 0}
!88 = !{!"p1 _ZTSN4llvm18MCProcResourceDescE", !23, i64 0}
!89 = !{!"p1 _ZTSN4llvm16MCSchedClassDescE", !23, i64 0}
!90 = !{!"p1 _ZTSN4llvm11StringTableE", !23, i64 0}
!91 = !{!"p1 _ZTSN4llvm14InstrItineraryE", !23, i64 0}
!92 = !{!"p1 _ZTSN4llvm20MCExtraProcessorInfoE", !23, i64 0}
!93 = !{!"_ZTSN4llvm12MCSchedModelE", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !33, i64 24, !33, i64 25, !33, i64 26, !18, i64 28, !88, i64 32, !89, i64 40, !18, i64 48, !18, i64 52, !90, i64 56, !91, i64 64, !92, i64 72}
!94 = !{!"short", !17, i64 0}
!95 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_2cl14OptionCategoryEvEE", !39, i64 0}
!96 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_2cl14OptionCategoryELb1EEE", !95, i64 0}
!97 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_2cl14OptionCategoryEEE", !96, i64 0}
!98 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_2cl14OptionCategoryELj1EEE", !17, i64 0}
!99 = !{!"_ZTSN4llvm11SmallVectorIPNS_2cl14OptionCategoryELj1EEE", !97, i64 0, !98, i64 16}
!100 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_2cl10SubCommandEEE", !34, i64 0}
!101 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_2cl10SubCommandELj1EEE", !100, i64 0, !17, i64 24}
!102 = !{!"_ZTSN4llvm2cl6OptionE", !94, i64 8, !94, i64 10, !94, i64 10, !94, i64 10, !94, i64 10, !94, i64 11, !94, i64 11, !94, i64 12, !94, i64 14, !86, i64 16, !86, i64 32, !86, i64 48, !99, i64 64, !101, i64 88}
!103 = !{!33, !33, i64 0}
!104 = !{!102, !94, i64 12}
!105 = !{!"p1 _ZTSN4llvm9SourceMgr9SrcBufferE", !23, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIN4llvm9SourceMgr9SrcBufferESaIS2_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!107 = !{!106, !105, i64 8}
!108 = !{!106, !105, i64 16}
!109 = !{!"_ZTSN4llvm2cl15OptionValueCopyIiEE", !55, i64 0, !18, i64 8, !33, i64 12}
!110 = !{!"_ZTSN4llvm2cl15OptionValueBaseIiLb0EEE", !109, i64 0}
!111 = !{!"_ZTSN4llvm2cl11OptionValueIiEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm2cl11opt_storageIiLb0ELb0EEE", !18, i64 0, !111, i64 8}
!113 = !{!112, !18, i64 0}
!114 = !{!"p1 _ZTSN4llvm13MCInstPrinterE", !23, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"p1 _ZTSN4llvm9SourceMgrE", !23, i64 0}
!117 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !23, i64 0}
!118 = !{!"p1 _ZTSN4llvm14MCRegisterInfoE", !23, i64 0}
!119 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !32, i64 0}
!120 = !{!"_ZTSN4llvm13StringMapImplE", !119, i64 0, !18, i64 8, !18, i64 12, !18, i64 16}
!121 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !23, i64 0, !28, i64 8, !28, i64 16}
!122 = !{!"_ZTSSt4lessIjE"}
!123 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !122, i64 0}
!124 = !{!"_ZTSSt14_Rb_tree_color", !17, i64 0}
!125 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !23, i64 0}
!126 = !{!"_ZTSSt18_Rb_tree_node_base", !124, i64 0, !125, i64 8, !125, i64 16, !125, i64 24}
!127 = !{!"_ZTSSt15_Rb_tree_header", !126, i64 0, !28, i64 32}
!128 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !23, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"_ZTSN4llvm5ErrorE", !128, i64 0}
!131 = !{!130, !128, i64 0}
!132 = !{!"p1 _ZTSN4llvm3mca11CodeRegionsE", !23, i64 0}
!133 = !{!"_ZTSSt17reference_wrapperIKN4llvm3mca11CodeRegionsEE", !132, i64 0}
!134 = !{!133, !132, i64 0}
!135 = !{!"p1 _ZTSSt10unique_ptrIN4llvm3mca10CodeRegionESt14default_deleteIS2_EE", !23, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm3mca10CodeRegionESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!137 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !55, i64 0, !33, i64 8, !33, i64 9}
!138 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !138, i64 0}
!140 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !33, i64 0, !139, i64 8}
!141 = !{!140, !33, i64 0}
!142 = !{!"p1 _ZTSN4llvm11MCInstrInfoE", !23, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!"p1 _ZTSN4llvm9MCContextE", !23, i64 0}
!145 = !{!"_ZTSN4llvm3mca22AsmCodeRegionGeneratorE", !82, i64 8, !117, i64 16, !84, i64 24, !142, i64 32, !18, i64 40, !144, i64 48}
!146 = !{!145, !18, i64 40}
!147 = !{!"p1 _ZTSN4llvm15MCInstrAnalysisE", !23, i64 0}
!148 = !{!"p1 _ZTSN4llvm14ToolOutputFileE", !23, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !55, i64 0, !18, i64 8, !33, i64 12}
!151 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !150, i64 0}
!152 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !151, i64 0}
!153 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !18, i64 0, !152, i64 8}
!154 = !{!153, !18, i64 0}
!155 = !{!39, !18, i64 8}
!156 = !{!39, !18, i64 12}
!157 = !{!135, !135, i64 0}
!158 = !{!"p1 _ZTSN4llvm3mca10CodeRegionE", !23, i64 0}
!159 = !{!158, !158, i64 0}
!160 = !{!34, !18, i64 8}
!161 = !{!34, !18, i64 12}
!162 = !{!"p1 _ZTSN4llvm6MCInstE", !23, i64 0}
!163 = !{!"_ZTSN4llvm8ArrayRefINS_6MCInstEEE", !162, i64 0, !28, i64 8}
end_hunk_1
