Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.12?download=true
inline.NumInlined: 2324
inline.NumDeleted: 894
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0B7_:bb.a

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit292, %bb.np, %bb.og, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit286, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit287, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit288, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit289, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit290, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit291, %bb.t, %bb.v
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %.body267

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit, %bb.z, %bb.aa, %bb.ae, %bb.ah, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit, %bb.aj, %bb.ak, %bb.an, %bb.ao, %bb.lj, %.loopexit, %bb.lp, %bb.lx, %bb.mf, %bb.mh, %bb.nq, %bb.lk, %bb.lq, %bb.ly
  %.sroa.048.3.ph.ph.ph = phi i8 [ 1, %bb.ah ], [ 0, %bb.lp ], [ 1, %bb.aa ], [ 0, %bb.lq ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit ], [ 1, %bb.nq ], [ 0, %bb.lx ], [ 1, %bb.an ], [ 0, %bb.ly ], [ 1, %bb.ak ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread ], [ 0, %bb.lj ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit ], [ 0, %bb.lk ], [ 1, %bb.ae ], [ 0, %.loopexit ], [ 0, %bb.mf ], [ 0, %bb.mh ], [ 1, %bb.aj ], [ 1, %bb.z ], [ 0, %bb.ao ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body267

bb.u:                                             ; preds = %bb.t
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0      ; 3 uses
  %i.du = extractvalue { ptr, ptr } %i.ds, 1      ; 9 uses
  %.not213 = icmp eq ptr %i.dt, null
  br i1 %.not213, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %i.dt, ptr %i.bz, align 8, !captures !38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.du) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.mu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.val, i64 56 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !range !17, !noundef !5
  %.not214 = icmp eq i64 %i.dw, -1
  br i1 %.not214, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !3828, !noundef !5 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  call void @llvm.assume(i1 %i.dz)
  %.not3.i = icmp eq i64 %i.dy, 0
  br i1 %.not3.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit.thread, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @_RINvMs_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB5_8RuleName3newRNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit
  %i.ea = load i64, ptr %i.am, align 8, !range !17, !noundef !5 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623, i64 24, i1 false)
  %i.ed = invoke noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCseAUhZXWg4yS_5regex5error5ErrorE4fromCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.825.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.825.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5161.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 %i.ea, ptr %i.al, align 8
  %.sroa.623.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.ef = load i8, ptr %i.ee, align 8, !range !15, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i8 %i.ef, ptr %i.eg, align 8
  %i.eh = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters8RuleNameECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.al)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit.thread

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit.thread: ; preds = %bb.x, %bb.w, %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !5 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 384307168202282326
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %bb.af, label %bb.ae

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.nr, %bb.mt, %bb.am, %bb.ac
  %.sroa.048.4 = phi i8 [ 1, %bb.nr ], [ 1, %bb.ac ], [ 1, %bb.am ], [ 0, %bb.mt ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.vn, %bb.nr ], [ %i.ed, %bb.ac ], [ %i.fb, %bb.am ], [ %i.ur, %bb.mt ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(3296) %i.cb)
          to label %bb.ns unwind label %bb.p

bb.ae:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.0.val)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s7_0EB1D_.exit.thread
  %i.em = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !range !17, !noundef !5
  %.not216 = icmp eq i64 %i.en, -1
  br i1 %.not216, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !3829, !noundef !5 ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  %.not3.i264 = icmp eq i64 %i.ep, 0
  br i1 %.not3.i264, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 -1, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr null, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.ev = load i8, ptr %i.eu, align 8, !range !15, !noundef !5
  store i8 %i.ev, ptr %i.et, align 8
  %i.ew = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters4TagsECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ak)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread: ; preds = %bb.ag, %bb.af, %bb.ah, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ex = invoke noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB6_4Tags10from_regexRNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.em)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit
  %i.ey = load i64, ptr %i.ai, align 8, !range !17, !noundef !5 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 24, i1 false)
  br i1 %i.ez, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, i64 24, i1 false)
  %i.fb = invoke noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCseAUhZXWg4yS_5regex5error5ErrorE4fromCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.834.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.834.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5166.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  store i64 %i.ey, ptr %i.ah, align 8
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, i64 24, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.fd = load i8, ptr %i.fc, align 8, !range !15, !noundef !5
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i8 %i.fd, ptr %i.fe, align 8
  %i.ff = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_linterNtNtB6_7linters4TagsECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ah)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  br label %bb.ad

bb.an:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6filterNCNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0s8_0EB1D_.exit.thread
  store ptr %i.ex, ptr %i.ag, align 8
  %i.fg = invoke noundef zeroext i1 @_RNvXNtCs8CCKhUbE3L4_9crossterm3ttyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_5IsTty6is_ttyCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cb, i64 2796
  %i.fi = zext i1 %i.fg to i8
  store i8 %i.fi, ptr %i.fh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false)
  invoke void @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_sourceNtB6_10SourceCodeECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.ae)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val262 = load i64, ptr %i.af, align 8, !range !3830, !noundef !5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val263 = load ptr, ptr %i.fj, align 8         ; 180 uses
  switch i64 %.val262, label %bb.aq [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit
    i64 0, label %.invoke.invoke.i.i
    i64 1, label %bb.bd
    i64 2, label %bb.be
    i64 3, label %bb.bl
    i64 4, label %bb.br
    i64 5, label %.invoke.invoke.i.i
    i64 6, label %bb.ca
    i64 7, label %bb.cg
    i64 8, label %bb.cn
    i64 9, label %bb.ct
    i64 10, label %.invoke.invoke.i.i
    i64 11, label %bb.da
    i64 12, label %.invoke.invoke.i.i
    i64 13, label %bb.dg
    i64 14, label %bb.dm
    i64 15, label %bb.ds
    i64 16, label %bb.dy
    i64 17, label %bb.ee
    i64 18, label %bb.ek
    i64 19, label %bb.et
    i64 20, label %bb.ez
    i64 21, label %bb.fn
    i64 22, label %bb.gb
    i64 23, label %bb.gh
    i64 24, label %bb.gr
    i64 25, label %bb.gx
    i64 26, label %bb.hd
    i64 27, label %.invoke.invoke.i.i
    i64 28, label %.invoke.invoke.i.i
    i64 29, label %bb.hm
    i64 30, label %bb.hv
    i64 31, label %bb.if
    i64 32, label %bb.ip
    i64 33, label %.invoke.invoke.i.i
    i64 34, label %bb.ir
    i64 35, label %bb.iy
    i64 36, label %bb.je
    i64 37, label %.invoke.invoke.i.i
    i64 38, label %.invoke.invoke.i.i
    i64 39, label %.invoke.invoke.i.i
    i64 40, label %bb.jh
    i64 41, label %bb.jn
    i64 42, label %bb.jx
    i64 43, label %bb.kd
    i64 44, label %bb.kj
    i64 45, label %bb.ku
    i64 46, label %bb.la
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.val263)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fl) #35
          to label %.body.i.i.i.i unwind label %bb.bc

bb.as:                                            ; preds = %bb.aq
  %i.fm = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %.body.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i unwind label %bb.av

.body.i.i.i.i:                                    ; preds = %bb.av, %bb.at, %bb.ar
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fk, %bb.ar ], [ %i.fq, %bb.av ], [ %i.fn, %bb.at ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fp) #35
          to label %.body6.i.i.i.i unwind label %bb.bc

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %.body6.i.i.i.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i unwind label %bb.ay

.body6.i.i.i.i:                                   ; preds = %bb.ay, %bb.aw, %.body.i.i.i.i
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.fv, %bb.ay ], [ %i.fs, %bb.aw ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.val263, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fu) #35
          to label %common.resume.i.i unwind label %bb.bc

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.val263, i64 216 ; 4 uses
  %i.fx = load i64, ptr %i.fw, align 8, !range !17, !alias.scope !3831, !noundef !5
  %i.fy = icmp eq i64 %i.fx, -1
  br i1 %i.fy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.az

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %common.resume.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i: ; preds = %bb.fw, %bb.az
  %i.gb = phi ptr [ %i.fw, %bb.az ], [ %i.lk, %bb.fw ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ga

bb.bc:                                            ; preds = %.body6.i.i.i.i, %.body.i.i.i.i, %bb.ar
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume.i.i:                                ; preds = %bb.lh, %bb.le, %bb.lb, %bb.kx, %bb.kv, %bb.kt, %bb.kq, %.body.i.i157.i.i, %bb.kg, %bb.ke, %bb.ka, %bb.jy, %bb.ju, %.body.i.i147.i.i, %bb.jk, %bb.ji, %bb.jg, %bb.jf, %bb.jb, %bb.iz, %bb.iv, %bb.is, %bb.iq, %bb.io, %bb.il, %.body.i.i135.i.i, %bb.ic, %.body.i.i129.i.i, %bb.hs, %.body.i.i123.i.i, %bb.hj, %.body.i.i117.i.i, %bb.ha, %bb.gy, %bb.gu, %bb.gs, %bb.go, %.body.i.i107.i.i, %bb.ge, %bb.gc, %bb.ga, %bb.fx, %.body6.i.i97.i.i, %bb.fm, %bb.fj, %.body6.i.i87.i.i, %bb.ew, %bb.eu, %bb.eq, %.body.i.i77.i.i, %bb.eh, %bb.ef, %bb.eb, %bb.dz, %bb.dv, %bb.dt, %bb.dp, %bb.dn, %bb.dj, %bb.dh, %bb.dd, %bb.db, %bb.cx, %bb.cu, %bb.cq, %bb.co, %bb.cm, %bb.cj, %bb.ch, %bb.cd, %bb.cb, %bb.bx, %.body.i.i52.i.i, %bb.bo, %bb.bm, %bb.bi, %bb.bf, %bb.ba, %.body6.i.i.i.i
  %.sink.i.i = phi i64 [ 208, %bb.kv ], [ 232, %.body.i.i157.i.i ], [ 208, %bb.ke ], [ 208, %bb.jy ], [ 232, %.body.i.i147.i.i ], [ 208, %bb.ji ], [ 208, %bb.gu ], [ 184, %bb.jg ], [ 208, %bb.jb ], [ 208, %bb.iz ], [ 192, %bb.jf ], [ 208, %bb.is ], [ 248, %bb.il ], [ 248, %.body.i.i135.i.i ], [ 200, %bb.iq ], [ 232, %.body.i.i129.i.i ], [ 248, %.body.i.i123.i.i ], [ 248, %bb.hs ], [ 232, %bb.hj ], [ 232, %.body.i.i117.i.i ], [ 208, %bb.gy ], [ 208, %bb.gs ], [ 232, %.body.i.i107.i.i ], [ 208, %bb.gc ], [ 256, %.body6.i.i97.i.i ], [ 272, %.body6.i.i87.i.i ], [ 208, %bb.eu ], [ 232, %.body.i.i77.i.i ], [ 208, %bb.ef ], [ 208, %bb.dz ], [ 208, %bb.dt ], [ 208, %bb.dn ], [ 208, %bb.dh ], [ 208, %bb.dd ], [ 208, %bb.db ], [ 208, %bb.cx ], [ 208, %bb.cu ], [ 208, %bb.co ], [ 224, %bb.ch ], [ 224, %bb.cb ], [ 232, %bb.bx ], [ 232, %.body.i.i52.i.i ], [ 208, %bb.bm ], [ 208, %bb.bf ], [ 256, %bb.ba ], [ 208, %bb.le ], [ 256, %.body6.i.i.i.i ], [ 208, %bb.lb ], [ 208, %bb.lh ], [ 208, %bb.bi ], [ 208, %bb.kx ], [ 208, %bb.bo ], [ 208, %bb.ha ], [ 232, %bb.kq ], [ 224, %bb.cd ], [ 224, %bb.cm ], [ 224, %bb.cj ], [ 232, %bb.kt ], [ 208, %bb.cq ], [ 208, %bb.kg ], [ 208, %bb.ge ], [ 208, %bb.ka ], [ 208, %bb.dj ], [ 248, %bb.io ], [ 208, %bb.dp ], [ 232, %bb.ju ], [ 208, %bb.dv ], [ 232, %bb.go ], [ 208, %bb.eb ], [ 208, %bb.jk ], [ 208, %bb.eh ], [ 232, %bb.ic ], [ 232, %bb.eq ], [ 208, %bb.iv ], [ 208, %bb.ew ], [ 272, %bb.fm ], [ 272, %bb.fj ], [ 256, %bb.ga ], [ 256, %bb.fx ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.rd, %bb.kv ], [ %.pn.i.i158.i.i, %.body.i.i157.i.i ], [ %i.qj, %bb.ke ], [ %i.qd, %bb.jy ], [ %.pn.i.i148.i.i, %.body.i.i147.i.i ], [ %i.pj, %bb.ji ], [ %i.mn, %bb.gu ], [ %i.pi, %bb.jg ], [ %i.pe, %bb.jb ], [ %i.pb, %bb.iz ], [ %i.ph, %bb.jf ], [ %i.ot, %bb.is ], [ %i.oo, %bb.il ], [ %.pn.i.i136.i.i, %.body.i.i135.i.i ], [ %i.os, %bb.iq ], [ %.pn.i.i130.i.i, %.body.i.i129.i.i ], [ %.pn.i.i124.i.i, %.body.i.i123.i.i ], [ %i.np, %bb.hs ], [ %i.ne, %bb.hj ], [ %.pn.i.i118.i.i, %.body.i.i117.i.i ], [ %i.mq, %bb.gy ], [ %i.mk, %bb.gs ], [ %.pn.i.i108.i.i, %.body.i.i107.i.i ], [ %i.lr, %bb.gc ], [ %.pn2.i.i98.i.i, %.body6.i.i97.i.i ], [ %.pn2.i.i88.i.i, %.body6.i.i87.i.i ], [ %i.jz, %bb.eu ], [ %.pn.i.i78.i.i, %.body.i.i77.i.i ], [ %i.ji, %bb.ef ], [ %i.jc, %bb.dz ], [ %i.iw, %bb.dt ], [ %i.iq, %bb.dn ], [ %i.ik, %bb.dh ], [ %i.ih, %bb.dd ], [ %i.ie, %bb.db ], [ %i.ib, %bb.cx ], [ %i.hw, %bb.cu ], [ %i.hq, %bb.co ], [ %i.hj, %bb.ch ], [ %i.hc, %bb.cb ], [ %i.gz, %bb.bx ], [ %.pn.i.i53.i.i, %.body.i.i52.i.i ], [ %i.gl, %bb.bm ], [ %i.gd, %bb.bf ], [ %i.fz, %bb.ba ], [ %i.rp, %bb.le ], [ %.pn2.i.i.i.i, %.body6.i.i.i.i ], [ %i.rk, %bb.lb ], [ %i.rs, %bb.lh ], [ %i.gi, %bb.bi ], [ %i.rg, %bb.kx ], [ %i.go, %bb.bo ], [ %i.mt, %bb.ha ], [ %i.qz, %bb.kq ], [ %i.hf, %bb.cd ], [ %i.hp, %bb.cm ], [ %i.hm, %bb.cj ], [ %i.rc, %bb.kt ], [ %i.ht, %bb.cq ], [ %i.qm, %bb.kg ], [ %i.lu, %bb.ge ], [ %i.qg, %bb.ka ], [ %i.in, %bb.dj ], [ %i.or, %bb.io ], [ %i.it, %bb.dp ], [ %i.pz, %bb.ju ], [ %i.iz, %bb.dv ], [ %i.mh, %bb.go ], [ %i.jf, %bb.eb ], [ %i.pm, %bb.jk ], [ %i.jl, %bb.eh ], [ %i.od, %bb.ic ], [ %i.jw, %bb.eq ], [ %i.oy, %bb.iv ], [ %i.kc, %bb.ew ], [ %i.kx, %bb.fm ], [ %i.ku, %bb.fj ], [ %i.lq, %bb.ga ], [ %i.ln, %bb.fx ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val263, i64 noundef %.sink.i.i, i64 noundef 8) #28
  br label %.body267

bb.bd:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.lh

bb.be:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ge) #35
          to label %common.resume.i.i unwind label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.gf = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 4 uses
  %i.gg = load i64, ptr %i.gf, align 8, !range !17, !alias.scope !3832, !noundef !5
  %i.gh = icmp eq i64 %i.gg, -1
  br i1 %i.gh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %common.resume.i.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bk:                                            ; preds = %bb.bf
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bl:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm) #35
          to label %common.resume.i.i unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  %i.gn = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %common.resume.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bq:                                            ; preds = %bb.bm
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.br:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val263)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gs) #35
          to label %.body.i.i52.i.i unwind label %bb.bz

bb.bt:                                            ; preds = %bb.br
  %i.gt = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %.body.i.i52.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i unwind label %bb.bw

.body.i.i52.i.i:                                  ; preds = %bb.bw, %bb.bu, %bb.bs
  %.pn.i.i53.i.i = phi { ptr, i32 } [ %i.gr, %bb.bs ], [ %i.gx, %bb.bw ], [ %i.gu, %bb.bu ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gw) #35
          to label %common.resume.i.i unwind label %bb.bz

bb.bw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i52.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %common.resume.i.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bz:                                            ; preds = %.body.i.i52.i.i, %bb.bs
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ca:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.val263)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd) #35
          to label %common.resume.i.i unwind label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %i.he = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %common.resume.i.i unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i: ; preds = %bb.ci, %bb.cc
  %i.hh = phi ptr [ %i.he, %bb.cc ], [ %i.hl, %bb.ci ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.cm

bb.cf:                                            ; preds = %bb.cb
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cg:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.val263)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hk) #35
          to label %common.resume.i.i unwind label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  %i.hl = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %common.resume.i.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cl:                                            ; preds = %bb.ch
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.cn:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr) #35
          to label %common.resume.i.i unwind label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.hs = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %common.resume.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cs:                                            ; preds = %bb.co
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ct:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hx) #35
          to label %common.resume.i.i unwind label %bb.cz

bb.cv:                                            ; preds = %bb.ct
  %i.hy = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 4 uses
  %i.hz = load i64, ptr %i.hy, align 8, !range !17, !alias.scope !3833, !noundef !5
  %i.ia = icmp eq i64 %i.hz, -1
  br i1 %i.ia, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %common.resume.i.i unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cz:                                            ; preds = %bb.cu
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.da:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.dc unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.if) #35
          to label %common.resume.i.i unwind label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.ig = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %common.resume.i.i unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.df:                                            ; preds = %bb.db
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.dg:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.di unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.il) #35
          to label %common.resume.i.i unwind label %bb.dl

bb.di:                                            ; preds = %bb.dg
  %i.im = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %common.resume.i.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.dl:                                            ; preds = %bb.dh
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.dm:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.iq = landingpad { ptr, i32 }
          cleanup
  %i.ir = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ir) #35
          to label %common.resume.i.i unwind label %bb.dr

bb.do:                                            ; preds = %bb.dm
  %i.is = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %common.resume.i.i unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.dr:                                            ; preds = %bb.dn
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ds:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.du unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ix) #35
          to label %common.resume.i.i unwind label %bb.dx

bb.du:                                            ; preds = %bb.ds
  %i.iy = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %common.resume.i.i unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.dx:                                            ; preds = %bb.dt
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.dy:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.ea unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jd) #35
          to label %common.resume.i.i unwind label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  %i.je = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.je)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.je)
          to label %common.resume.i.i unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ed:                                            ; preds = %bb.dz
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ee:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.eg unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jj) #35
          to label %common.resume.i.i unwind label %bb.ej

bb.eg:                                            ; preds = %bb.ee
  %i.jk = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jk)
          to label %common.resume.i.i unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ej:                                            ; preds = %bb.ef
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ek:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val263)
          to label %bb.em unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.jo = landingpad { ptr, i32 }
          cleanup
  %i.jp = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jp) #35
          to label %.body.i.i77.i.i unwind label %bb.es

bb.em:                                            ; preds = %bb.ek
  %i.jq = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %.body.i.i77.i.i unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i: ; preds = %bb.em
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i unwind label %bb.ep

.body.i.i77.i.i:                                  ; preds = %bb.ep, %bb.en, %bb.el
  %.pn.i.i78.i.i = phi { ptr, i32 } [ %i.jo, %bb.el ], [ %i.ju, %bb.ep ], [ %i.jr, %bb.en ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jt) #35
          to label %common.resume.i.i unwind label %bb.es

bb.ep:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i77.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %common.resume.i.i unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.es:                                            ; preds = %.body.i.i77.i.i, %bb.el
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.et:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jz = landingpad { ptr, i32 }
          cleanup
  %i.ka = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka) #35
          to label %common.resume.i.i unwind label %bb.ey

bb.ev:                                            ; preds = %bb.et
  %i.kb = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %common.resume.i.i unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ey:                                            ; preds = %bb.eu
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ez:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %.val263)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.kf = landingpad { ptr, i32 }
          cleanup
  %i.kg = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kg) #35
          to label %.body.i.i85.i.i unwind label %bb.fl

bb.fb:                                            ; preds = %bb.ez
  %i.kh = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kh)
          to label %.body.i.i85.i.i unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i: ; preds = %bb.fb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i unwind label %bb.fe

.body.i.i85.i.i:                                  ; preds = %bb.fe, %bb.fc, %bb.fa
  %.pn.i.i86.i.i = phi { ptr, i32 } [ %i.kf, %bb.fa ], [ %i.kl, %bb.fe ], [ %i.ki, %bb.fc ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kk) #35
          to label %.body6.i.i87.i.i unwind label %bb.fl

bb.fe:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i85.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.km)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i unwind label %bb.ff

bb.ff:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.km)
          to label %.body6.i.i87.i.i unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.km)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i unwind label %bb.fh

.body6.i.i87.i.i:                                 ; preds = %bb.fh, %bb.ff, %.body.i.i85.i.i
  %.pn2.i.i88.i.i = phi { ptr, i32 } [ %.pn.i.i86.i.i, %.body.i.i85.i.i ], [ %i.kq, %bb.fh ], [ %i.kn, %bb.ff ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.val263, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.kp) #35
          to label %common.resume.i.i unwind label %bb.fl

bb.fh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i87.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.val263, i64 216 ; 4 uses
  %i.ks = load i64, ptr %i.kr, align 8, !range !17, !alias.scope !3834, !noundef !5
  %i.kt = icmp eq i64 %i.ks, -1
  br i1 %i.kt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.fi

bb.fi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %common.resume.i.i unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i: ; preds = %bb.fi
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.fm

bb.fl:                                            ; preds = %.body6.i.i87.i.i, %.body.i.i85.i.i, %bb.fa
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.fm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.fn:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.val263)
          to label %bb.fp unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kz) #35
          to label %.body.i.i95.i.i unwind label %bb.fz

bb.fp:                                            ; preds = %bb.fn
  %i.la = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.la)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.lb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.la)
          to label %.body.i.i95.i.i unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i: ; preds = %bb.fp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.la)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i unwind label %bb.fs

.body.i.i95.i.i:                                  ; preds = %bb.fs, %bb.fq, %bb.fo
  %.pn.i.i96.i.i = phi { ptr, i32 } [ %i.ky, %bb.fo ], [ %i.le, %bb.fs ], [ %i.lb, %bb.fq ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ld) #35
          to label %.body6.i.i97.i.i unwind label %bb.fz

bb.fs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i unwind label %bb.ft

bb.ft:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %.body6.i.i97.i.i unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i unwind label %bb.fv

.body6.i.i97.i.i:                                 ; preds = %bb.fv, %bb.ft, %.body.i.i95.i.i
  %.pn2.i.i98.i.i = phi { ptr, i32 } [ %.pn.i.i96.i.i, %.body.i.i95.i.i ], [ %i.lj, %bb.fv ], [ %i.lg, %bb.ft ]
  %i.li = getelementptr inbounds nuw i8, ptr %.val263, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.li) #35
          to label %common.resume.i.i unwind label %bb.fz

bb.fv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i97.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.val263, i64 216 ; 4 uses
  %i.ll = load i64, ptr %i.lk, align 8, !range !17, !alias.scope !3835, !noundef !5
  %i.lm = icmp eq i64 %i.ll, -1
  br i1 %i.lm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.fw

bb.fw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %common.resume.i.i unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.fz:                                            ; preds = %.body6.i.i97.i.i, %.body.i.i95.i.i, %bb.fo
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ga:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.gb:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ls) #35
          to label %common.resume.i.i unwind label %bb.gg

bb.gd:                                            ; preds = %bb.gb
  %i.lt = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.lu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %common.resume.i.i unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.gg:                                            ; preds = %bb.gc
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.gh:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val263)
          to label %bb.gj unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ly) #35
          to label %.body.i.i107.i.i unwind label %bb.gq

bb.gj:                                            ; preds = %bb.gh
  %i.lz = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lz)
          to label %.body.i.i107.i.i unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i: ; preds = %bb.gj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i unwind label %bb.gm

.body.i.i107.i.i:                                 ; preds = %bb.gm, %bb.gk, %bb.gi
  %.pn.i.i108.i.i = phi { ptr, i32 } [ %i.lx, %bb.gi ], [ %i.md, %bb.gm ], [ %i.ma, %bb.gk ]
  %i.mc = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.mc) #35
          to label %common.resume.i.i unwind label %bb.gq

bb.gm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i107.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 4 uses
  %i.mf = load i64, ptr %i.me, align 8, !range !17, !alias.scope !3836, !noundef !5
  %i.mg = icmp eq i64 %i.mf, -1
  br i1 %i.mg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.gn

bb.gn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %common.resume.i.i unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.gq:                                            ; preds = %.body.i.i107.i.i, %bb.gi
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.gr:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.gt unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.mk = landingpad { ptr, i32 }
          cleanup
  %i.ml = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ml) #35
          to label %common.resume.i.i unwind label %bb.gw

bb.gt:                                            ; preds = %bb.gr
  %i.mm = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mm)
          to label %common.resume.i.i unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.gw:                                            ; preds = %bb.gs
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.gx:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.gz unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.mq = landingpad { ptr, i32 }
          cleanup
  %i.mr = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mr) #35
          to label %common.resume.i.i unwind label %bb.hc

bb.gz:                                            ; preds = %bb.gx
  %i.ms = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %common.resume.i.i unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.hc:                                            ; preds = %bb.gy
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.hd:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val263)
          to label %bb.hf unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.mw = landingpad { ptr, i32 }
          cleanup
  %i.mx = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mx) #35
          to label %.body.i.i117.i.i unwind label %bb.hl

bb.hf:                                            ; preds = %bb.hd
  %i.my = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.my)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.my)
          to label %.body.i.i117.i.i unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i: ; preds = %bb.hf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.my)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i unwind label %bb.hi

.body.i.i117.i.i:                                 ; preds = %bb.hi, %bb.hg, %bb.he
  %.pn.i.i118.i.i = phi { ptr, i32 } [ %i.mw, %bb.he ], [ %i.nc, %bb.hi ], [ %i.mz, %bb.hg ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nb) #35
          to label %common.resume.i.i unwind label %bb.hl

bb.hi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i117.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.hj

bb.hj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %common.resume.i.i unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.hl:                                            ; preds = %.body.i.i117.i.i, %bb.he
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.hm:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.val263)
          to label %bb.ho unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.nh = landingpad { ptr, i32 }
          cleanup
  %i.ni = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ni) #35
          to label %.body.i.i123.i.i unwind label %bb.hu

bb.ho:                                            ; preds = %bb.hm
  %i.nj = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i unwind label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.nk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nj)
          to label %.body.i.i123.i.i unwind label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i: ; preds = %bb.ho
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i unwind label %bb.hr

.body.i.i123.i.i:                                 ; preds = %bb.hr, %bb.hp, %bb.hn
  %.pn.i.i124.i.i = phi { ptr, i32 } [ %i.nh, %bb.hn ], [ %i.nn, %bb.hr ], [ %i.nk, %bb.hp ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nm) #35
          to label %common.resume.i.i unwind label %bb.hu

bb.hr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i unwind label %bb.hs

bb.hs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %common.resume.i.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i
  %i.nr = phi ptr [ %i.no, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i ], [ %i.on, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.io

bb.hu:                                            ; preds = %.body.i.i123.i.i, %bb.hn
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.hv:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val263)
          to label %bb.hx unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.nt = landingpad { ptr, i32 }
          cleanup
  %i.nu = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nu) #35
          to label %.body.i.i129.i.i unwind label %bb.ie

bb.hx:                                            ; preds = %bb.hv
  %i.nv = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.nw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nv)
          to label %.body.i.i129.i.i unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i: ; preds = %bb.hx
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i unwind label %bb.ia

.body.i.i129.i.i:                                 ; preds = %bb.ia, %bb.hy, %bb.hw
  %.pn.i.i130.i.i = phi { ptr, i32 } [ %i.nt, %bb.hw ], [ %i.nz, %bb.ia ], [ %i.nw, %bb.hy ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ny) #35
          to label %common.resume.i.i unwind label %bb.ie

bb.ia:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i129.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 4 uses
  %i.ob = load i64, ptr %i.oa, align 8, !range !17, !alias.scope !3837, !noundef !5
  %i.oc = icmp eq i64 %i.ob, -1
  br i1 %i.oc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.ib

bb.ib:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oa)
          to label %common.resume.i.i unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ie:                                            ; preds = %.body.i.i129.i.i, %bb.hw
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.if:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.val263)
          to label %bb.ih unwind label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.og = landingpad { ptr, i32 }
          cleanup
  %i.oh = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oh) #35
          to label %.body.i.i135.i.i unwind label %bb.in

bb.ih:                                            ; preds = %bb.if
  %i.oi = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.oj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oi)
          to label %.body.i.i135.i.i unwind label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i: ; preds = %bb.ih
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i unwind label %bb.ik

.body.i.i135.i.i:                                 ; preds = %bb.ik, %bb.ii, %bb.ig
  %.pn.i.i136.i.i = phi { ptr, i32 } [ %i.og, %bb.ig ], [ %i.om, %bb.ik ], [ %i.oj, %bb.ii ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ol) #35
          to label %common.resume.i.i unwind label %bb.in

bb.ik:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i135.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i unwind label %bb.il

bb.il:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i
  %i.oo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on)
          to label %common.resume.i.i unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.op = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.in:                                            ; preds = %.body.i.i135.i.i, %bb.ig
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.io:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.ip:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.val263)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.ir:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.it unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.ot = landingpad { ptr, i32 }
          cleanup
  %i.ou = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ou) #35
          to label %common.resume.i.i unwind label %bb.ix

bb.it:                                            ; preds = %bb.ir
  %i.ov = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 4 uses
  %i.ow = load i64, ptr %i.ov, align 8, !range !17, !alias.scope !3838, !noundef !5
  %i.ox = icmp eq i64 %i.ow, -1
  br i1 %i.ox, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.oy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %common.resume.i.i unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.oz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ix:                                            ; preds = %bb.is
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.iy:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.ja unwind label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.pb = landingpad { ptr, i32 }
          cleanup
  %i.pc = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pc) #35
          to label %common.resume.i.i unwind label %bb.jd

bb.ja:                                            ; preds = %bb.iy
  %i.pd = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pd)
          to label %common.resume.i.i unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.jd:                                            ; preds = %bb.iz
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.je:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %.val263)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

.invoke.invoke.i.i:                               ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %.val263)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.jg

bb.jg:                                            ; preds = %.invoke.invoke.i.i
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.jh:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.jj unwind label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.pj = landingpad { ptr, i32 }
          cleanup
  %i.pk = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pk) #35
          to label %common.resume.i.i unwind label %bb.jm

bb.jj:                                            ; preds = %bb.jh
  %i.pl = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.pm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pl)
          to label %common.resume.i.i unwind label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.jm:                                            ; preds = %bb.ji
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.jn:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val263)
          to label %bb.jp unwind label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.pp = landingpad { ptr, i32 }
          cleanup
  %i.pq = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pq) #35
          to label %.body.i.i147.i.i unwind label %bb.jw

bb.jp:                                            ; preds = %bb.jn
  %i.pr = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i unwind label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ps = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %.body.i.i147.i.i unwind label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i: ; preds = %bb.jp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i unwind label %bb.js

.body.i.i147.i.i:                                 ; preds = %bb.js, %bb.jq, %bb.jo
  %.pn.i.i148.i.i = phi { ptr, i32 } [ %i.pp, %bb.jo ], [ %i.pv, %bb.js ], [ %i.ps, %bb.jq ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pu) #35
          to label %common.resume.i.i unwind label %bb.jw

bb.js:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i147.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 4 uses
  %i.px = load i64, ptr %i.pw, align 8, !range !17, !alias.scope !3839, !noundef !5
  %i.py = icmp eq i64 %i.px, -1
  br i1 %i.py, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.jt

bb.jt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pw)
          to label %common.resume.i.i unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i: ; preds = %bb.kp, %bb.jt, %bb.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i, %bb.gn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i
  %i.qb = phi ptr [ %i.pw, %bb.jt ], [ %i.oa, %bb.ib ], [ %i.nd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i ], [ %i.me, %bb.gn ], [ %i.jv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i ], [ %i.gy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i ], [ %i.qw, %bb.kp ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.kt

bb.jw:                                            ; preds = %.body.i.i147.i.i, %bb.jo
  %i.qc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.jx:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.jz unwind label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.qd = landingpad { ptr, i32 }
          cleanup
  %i.qe = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qe) #35
          to label %common.resume.i.i unwind label %bb.kc

bb.jz:                                            ; preds = %bb.jx
  %i.qf = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.qg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qf)
          to label %common.resume.i.i unwind label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.qh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.kc:                                            ; preds = %bb.jy
  %i.qi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.kd:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.kf unwind label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.qj = landingpad { ptr, i32 }
          cleanup
  %i.qk = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qk) #35
          to label %common.resume.i.i unwind label %bb.ki

bb.kf:                                            ; preds = %bb.kd
  %i.ql = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ql)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ql)
          to label %common.resume.i.i unwind label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ki:                                            ; preds = %bb.ke
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.kj:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val263)
          to label %bb.kl unwind label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.qp = landingpad { ptr, i32 }
          cleanup
  %i.qq = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qq) #35
          to label %.body.i.i157.i.i unwind label %bb.ks

bb.kl:                                            ; preds = %bb.kj
  %i.qr = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i unwind label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.qs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qr)
          to label %.body.i.i157.i.i unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i: ; preds = %bb.kl
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i unwind label %bb.ko

.body.i.i157.i.i:                                 ; preds = %bb.ko, %bb.km, %bb.kk
  %.pn.i.i158.i.i = phi { ptr, i32 } [ %i.qp, %bb.kk ], [ %i.qv, %bb.ko ], [ %i.qs, %bb.km ]
  %i.qu = getelementptr inbounds nuw i8, ptr %.val263, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qu) #35
          to label %common.resume.i.i unwind label %bb.ks

bb.ko:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i157.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.val263, i64 192 ; 4 uses
  %i.qx = load i64, ptr %i.qw, align 8, !range !17, !alias.scope !3840, !noundef !5
  %i.qy = icmp eq i64 %i.qx, -1
  br i1 %i.qy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.kp

bb.kp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qw)
          to label %common.resume.i.i unwind label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ks:                                            ; preds = %.body.i.i157.i.i, %bb.kk
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.kt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.ku:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.kw unwind label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.rd = landingpad { ptr, i32 }
          cleanup
  %i.re = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.re) #35
          to label %common.resume.i.i unwind label %bb.kz

bb.kw:                                            ; preds = %bb.ku
  %i.rf = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rf)
          to label %common.resume.i.i unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i: ; preds = %bb.ld, %bb.kw, %bb.kf, %bb.jz, %bb.jj, %bb.ja, %bb.iu, %bb.gz, %bb.gt, %bb.gd, %bb.ev, %bb.eg, %bb.ea, %bb.du, %bb.do, %bb.di, %bb.dc, %bb.cw, %bb.cp, %bb.bn, %bb.bh
  %i.ri = phi ptr [ %i.rf, %bb.kw ], [ %i.ql, %bb.kf ], [ %i.qf, %bb.jz ], [ %i.pl, %bb.jj ], [ %i.pd, %bb.ja ], [ %i.ov, %bb.iu ], [ %i.ms, %bb.gz ], [ %i.mm, %bb.gt ], [ %i.lt, %bb.gd ], [ %i.kb, %bb.ev ], [ %i.jk, %bb.eg ], [ %i.je, %bb.ea ], [ %i.iy, %bb.du ], [ %i.is, %bb.do ], [ %i.im, %bb.di ], [ %i.ig, %bb.dc ], [ %i.hy, %bb.cw ], [ %i.hs, %bb.cp ], [ %i.gn, %bb.bn ], [ %i.gf, %bb.bh ], [ %i.rm, %bb.ld ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ri)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.lh

bb.kz:                                            ; preds = %bb.kv
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.la:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val263) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val263)
          to label %bb.lc unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.rk = landingpad { ptr, i32 }
          cleanup
  %i.rl = getelementptr inbounds nuw i8, ptr %.val263, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.rl) #35
          to label %common.resume.i.i unwind label %bb.lg

bb.lc:                                            ; preds = %bb.la
  %i.rm = getelementptr inbounds nuw i8, ptr %.val263, i64 168 ; 4 uses
  %i.rn = load i64, ptr %i.rm, align 8, !range !17, !alias.scope !3841, !noundef !5
  %i.ro = icmp eq i64 %i.rn, -1
  br i1 %i.ro, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rm)
          to label %common.resume.i.i unwind label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.lg:                                            ; preds = %bb.lb
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.lh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i, %bb.bd
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.lc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i, %.invoke.invoke.i.i, %bb.je, %bb.it, %bb.ip, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i, %bb.cv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i, %bb.bg, %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i
  %.sink1.i.i = phi i64 [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i ], [ 208, %bb.bg ], [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i ], [ 184, %.invoke.invoke.i.i ], [ 192, %bb.je ], [ 208, %bb.bd ], [ 208, %bb.cv ], [ 208, %bb.it ], [ 200, %bb.ip ], [ 208, %bb.lc ], [ 208, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i ], [ 248, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i ], [ 224, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val263, i64 noundef %.sink1.i.i, i64 noundef 8) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.cb, i64 2712 ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !noundef !5 ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 0                    ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.cb, i64 2008 ; 3 uses
  %i.rx = load i64, ptr %i.rw, align 8            ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 0
  %or.cond = select i1 %i.rv, i1 %i.ry, i1 false
  br i1 %or.cond, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit
  br i1 %i.rv, label %bb.lo, label %bb.lp

bb.lj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit
  %i.rz = atomicrmw add ptr %0, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs0_NtCs1jzQjjwemIA_5yansi5colorNtNtB7_5style5StyleINtNtCskKLDkoKarTP_4core7convert4FromNtB5_5ColorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i32 5)
          to label %bb.lk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lk:                                            ; preds = %bb.lj
  %.sroa.5.sroa.0.0.copyload129 = load ptr, ptr %i.f, align 8
  %.sroa.5.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.5.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5.sroa.10.0.copyload143 = load i32, ptr %.sroa.5.sroa.10.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.sa = load <2 x i16>, ptr %.sroa.5.sroa.6.0..sroa_idx, align 8
  %i.sb = or <2 x i16> %i.sa, <i16 1, i16 0>
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.sc = load <2 x i32>, ptr %.sroa.5.sroa.8.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr @123, ptr %i.ac, align 8, !alias.scope !3842
  store i64 4, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3842
  store ptr %.sroa.5.sroa.0.0.copyload129, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3842
  store <2 x i16> %i.sb, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !3842
  store <2 x i32> %i.sc, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4, !alias.scope !3842
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  store i32 %.sroa.5.sroa.10.0.copyload143, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 4, !alias.scope !3842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.sd = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5
  %i.se = load i64, ptr %i.cz, align 8, !noundef !5
  store ptr %i.sd, ptr %i.ab, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.se, ptr %i.sf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs4_NtCs1jzQjjwemIA_5yansi5paintINtB5_7PaintedReENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCskIqAKC4t9Ft_2yr, ptr %.sroa.4170.0..sroa_idx, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.sg, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1b_NtCsG258MDvU3F_3std4pathNtB6_7DisplayNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4174.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @124, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.sh = load i64, ptr %i.di, align 8, !alias.scope !3843, !noundef !5 ; 3 uses
  %i.si = load i64, ptr %i.cc, align 8, !range !16, !alias.scope !3843, !noundef !5
  %i.sj = icmp eq i64 %i.sh, %i.si
  br i1 %i.sj, label %bb.ll, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCskIqAKC4t9Ft_2yr.exit

bb.ll:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCskIqAKC4t9Ft_2yr.exit unwind label %bb.lm, !noalias !3844

bb.lm:                                            ; preds = %bb.ll
  %i.sk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #35
          to label %.body267 unwind label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit, %bb.ll
  %i.sm = load ptr, ptr %i.dh, align 8, !alias.scope !3843, !nonnull !5, !noundef !5
  %i.sn = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %i.sh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sn, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.so = add i64 %i.sh, 1
  store i64 %i.so, ptr %i.di, align 8, !alias.scope !3843
  br label %.loopexit

.loopexit:                                        ; preds = %bb.me, %bb.mc, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCskIqAKC4t9Ft_2yr.exit, %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.sp = load ptr, ptr %i.dh, align 8, !nonnull !5, !noundef !5
  %i.sq = load i64, ptr %i.di, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.sp, i64 noundef %i.sq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 1)
          to label %bb.mf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

thread-pre-split:                                 ; preds = %bb.lw, %bb.lu
  %.pr = load i64, ptr %i.rw, align 8
  br label %bb.lo

bb.lo:                                            ; preds = %thread-pre-split, %bb.li
  %i.sr = phi i64 [ %.pr, %thread-pre-split ], [ %i.rx, %bb.li ] ; 2 uses
  %i.ss = icmp eq i64 %i.sr, 0
  br i1 %i.ss, label %.loopexit, label %bb.lx

bb.lp:                                            ; preds = %bb.li
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.su = atomicrmw add ptr %i.st, i64 %i.ru monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs0_NtCs1jzQjjwemIA_5yansi5colorNtNtB7_5style5StyleINtNtCskKLDkoKarTP_4core7convert4FromNtB5_5ColorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i32 4)
          to label %bb.lq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lq:                                            ; preds = %bb.lp
  %.sroa.524.sroa.0.0.copyload94 = load ptr, ptr %i.e, align 8
  %.sroa.524.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.524.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.524.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.524.sroa.10.0.copyload108 = load i32, ptr %.sroa.524.sroa.10.0..sroa_idx, align 4
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.524.sroa.6.0..sroa.524.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.sv = load <2 x i16>, ptr %.sroa.524.sroa.6.0..sroa_idx, align 8
  %i.sw = or <2 x i16> %i.sv, <i16 1, i16 0>
  %.sroa.524.sroa.8.0..sroa.524.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.sx = load <2 x i32>, ptr %.sroa.524.sroa.8.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr @125, ptr %i.y, align 8, !alias.scope !3845
  store i64 4, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !3845
  store ptr %.sroa.524.sroa.0.0.copyload94, ptr %.sroa.524.0..sroa_idx, align 8, !alias.scope !3845
  store <2 x i16> %i.sw, ptr %.sroa.524.sroa.6.0..sroa.524.0..sroa_idx.sroa_idx, align 8, !alias.scope !3845
  store <2 x i32> %i.sx, ptr %.sroa.524.sroa.8.0..sroa.524.0..sroa_idx.sroa_idx, align 4, !alias.scope !3845
  %.sroa.524.sroa.10.0..sroa.524.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  store i32 %.sroa.524.sroa.10.0.copyload108, ptr %.sroa.524.sroa.10.0..sroa.524.0..sroa_idx.sroa_idx, align 4, !alias.scope !3845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.sy = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5
  %i.sz = load i64, ptr %i.cz, align 8, !noundef !5
  store ptr %i.sy, ptr %i.x, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.sz, ptr %i.ta, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.y, ptr %i.w, align 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs4_NtCs1jzQjjwemIA_5yansi5paintINtB5_7PaintedReENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCskIqAKC4t9Ft_2yr, ptr %.sroa.4180.0..sroa_idx, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.tb, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
end_hunk_0
