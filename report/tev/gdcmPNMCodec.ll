Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmPNMCodec?download=true
inline.NumInlined: 662
inline.NumDeleted: 344
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4gdcm8PNMCodec13GetHeaderInfoERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS_14TransferSyntaxE:bb.a
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !27  ; 4 uses
  %i.da = load i32, ptr %i.cc, align 4, !tbaa !27 ; 3 uses
  %i.db = mul i32 %i.da, %i.cz
  %i.dc = zext i32 %i.db to i64
  %i.dd = udiv i64 %i.cy, %i.dc                   ; 2 uses
  %i.de = load i8, ptr %10, align 8               ; 2 uses
  %i.df = trunc i8 %i.de to i1                    ; 2 uses
  %i.dg = load i64, ptr %i.t, align 8
  %i.dh = lshr i8 %i.de, 1
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = select i1 %i.df, i64 %i.dg, i64 %i.di
  %.not.i.i89 = icmp eq i64 %i.dj, 2
  br i1 %.not.i.i89, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93: ; preds = %bb.s
  %i.dk = load ptr, ptr %i.y, align 8
  %i.dl = select i1 %i.df, ptr %i.dk, ptr %i.aa
  %i.dm = load i16, ptr %i.dl, align 1
  %i.dn = icmp ne i16 %i.dm, 13392
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.split, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93.thread

.split:                                           ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93
  %i.dq = lshr i32 %i.cz, 3
  %i.dr = and i32 %i.cz, 7
  %.not = icmp ne i32 %i.dr, 0
  %i.ds = zext i1 %.not to i32
  %i.dt = add nuw nsw i32 %i.dq, %i.ds
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = zext i32 %i.da to i64
  %i.dw = mul nuw nsw i64 %i.du, %i.dv
  %.not206 = icmp eq i64 %i.dw, %i.cy
  br i1 %.not206, label %bb.ad, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.u:                                             ; preds = %.noexc155, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i151, %bb.aa, %.noexc139, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i135, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95, %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit101, %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit97, %bb.v, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit103
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body137

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93.thread: ; preds = %bb.s, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93
  %i.dz = zext i32 %i.cz to i64
  %i.ea = mul i64 %i.dd, %i.dz
  %i.eb = zext i32 %i.da to i64
  %i.ec = mul i64 %i.ea, %i.eb
  %.not205 = icmp eq i64 %i.ec, %i.cy
  br i1 %.not205, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %.split, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93.thread
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.13, i64 noundef 24)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95 unwind label %bb.u ; 4 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95: ; preds = %bb.v
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !11
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %6, ptr noundef nonnull align 8 dereferenceable(148) %i.eh)
          to label %.noexc136 unwind label %bb.u

.noexc136:                                        ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95
  %i.ei = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i134 unwind label %bb.w ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i134: ; preds = %.noexc136
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef signext i8 %i.el(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, i8 noundef signext 10)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i135 unwind label %bb.w, !inline_history !0

bb.w:                                             ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i134, %.noexc136
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body137

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i135: ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i134
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, i8 noundef signext %i.em)
          to label %.noexc139 unwind label %bb.u  ; 0 uses

.noexc139:                                        ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i135
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit97 unwind label %bb.u ; 0 uses

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit97: ; preds = %.noexc139
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.17, i64 noundef 5)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit97
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, i64 noundef %i.cy)
          to label %bb.y unwind label %bb.ac      ; 4 uses

bb.y:                                             ; preds = %bb.x
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !11
  %i.et = getelementptr i8, ptr %i.es, i64 -24
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %5, ptr noundef nonnull align 8 dereferenceable(148) %i.ev)
          to label %.noexc144 unwind label %bb.ac

.noexc144:                                        ; preds = %bb.y
  %i.ew = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i142 unwind label %bb.z ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i142: ; preds = %.noexc144
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = invoke noundef signext i8 %i.ez(ptr noundef nonnull align 8 dereferenceable(25) %i.ew, i8 noundef signext 10)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i143 unwind label %bb.z, !inline_history !0

bb.z:                                             ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i142, %.noexc144
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body137

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i143: ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i142
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i8 noundef signext %i.fa)
          to label %.noexc147 unwind label %bb.ac ; 0 uses

.noexc147:                                        ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i143
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit101 unwind label %bb.ac ; 0 uses

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit101: ; preds = %.noexc147
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.18, i64 noundef 10)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit103 unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit103: ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit101
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !27
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul i64 %i.dd, %i.fg
  %i.fi = load i32, ptr %i.cc, align 4, !tbaa !27
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fh, %i.fj
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i64 noundef %i.fk)
          to label %bb.aa unwind label %bb.u      ; 4 uses

bb.aa:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit103
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !11
  %i.fn = getelementptr i8, ptr %i.fm, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 %i.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(148) %i.fp)
          to label %.noexc152 unwind label %bb.u

.noexc152:                                        ; preds = %bb.aa
  %i.fq = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i150 unwind label %bb.ab ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i150: ; preds = %.noexc152
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !11
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = invoke noundef signext i8 %i.ft(ptr noundef nonnull align 8 dereferenceable(25) %i.fq, i8 noundef signext 10)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i151 unwind label %bb.ab, !inline_history !0

bb.ab:                                            ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i150, %.noexc152
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body137

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i151: ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i150
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i8 noundef signext %i.fu)
          to label %.noexc155 unwind label %bb.u  ; 0 uses

.noexc155:                                        ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i151
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit105 unwind label %bb.u ; 0 uses

bb.ac:                                            ; preds = %.noexc147, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i143, %bb.y, %bb.x
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.ad:                                            ; preds = %.split, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit93.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %13, ptr noundef nonnull align 4 dereferenceable(10) %i.fz, i64 10, i1 false), !tbaa.struct !68
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %14 = icmp sgt i32 %i.ga, 0
  %i.gb = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ga, i1 true)
  %i.gc = sub nuw nsw i32 32, %i.gb
  %.0.lcssa.i = select i1 %14, i32 %i.gc, i32 0   ; 7 uses
  %or.cond = icmp eq i32 %.0.lcssa.i, 1
  br i1 %or.cond, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 1, ptr %i.gd, align 2, !tbaa !38
  %i.ge = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i16 1, ptr %i.ge, align 2, !tbaa !83
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 6
  store i16 0, ptr %i.gf, align 2, !tbaa !63
  br label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

bb.af:                                            ; preds = %.noexc163, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i159, %bb.ak, %bb.aj, %bb.ap, %bb.ao, %bb.an, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit121
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.body161:                                         ; preds = %bb.al, %bb.af
  %eh.lpad-body162 = phi { ptr, i32 } [ %i.gg, %bb.af ], [ %i.hf, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.body137

bb.ag:                                            ; preds = %bb.ad
  %i.gh = add nsw i32 %.0.lcssa.i, -2
  %or.cond3 = icmp ult i32 %i.gh, 7
  br i1 %or.cond3, label %.thread.i.i, label %bb.ah

.thread.i.i:                                      ; preds = %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 8, ptr %i.gi, align 2, !tbaa !38
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 6
  %15 = trunc nuw nsw i32 %.0.lcssa.i to i16      ; 2 uses
  store i16 %15, ptr %i.gj, align 2, !tbaa !83
  %16 = add nsw i16 %15, -1
  store i16 %16, ptr %i.gk, align 2, !tbaa !84
  br label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gl = add nsw i32 %.0.lcssa.i, -9
  %or.cond5 = icmp ult i32 %i.gl, 8
  br i1 %or.cond5, label %.thread.i.i109, label %bb.ai

.thread.i.i109:                                   ; preds = %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 16, ptr %i.gm, align 2, !tbaa !38
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 6
  %17 = trunc nuw nsw i32 %.0.lcssa.i to i16      ; 2 uses
  store i16 %17, ptr %i.gn, align 2, !tbaa !83
  %18 = add nsw i16 %17, -1
  store i16 %18, ptr %i.go, align 2, !tbaa !84
  br label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

bb.ai:                                            ; preds = %bb.ah
  %i.gp = icmp samesign ugt i32 %.0.lcssa.i, 16
  br i1 %i.gp, label %.thread.i.i116, label %bb.aj

.thread.i.i116:                                   ; preds = %bb.ai
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 32, ptr %i.gq, align 2, !tbaa !38
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 6
  %19 = trunc nuw nsw i32 %.0.lcssa.i to i16      ; 2 uses
  store i16 %19, ptr %i.gr, align 2, !tbaa !83
  %20 = add nsw i16 %19, -1
  store i16 %20, ptr %i.gs, align 2, !tbaa !84
  br label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.14, i64 noundef 19)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit121 unwind label %bb.af

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit121: ; preds = %bb.aj
  %i.gu = load i32, ptr %i.b, align 4, !tbaa !27
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i32 noundef %i.gu)
          to label %bb.ak unwind label %bb.af     ; 4 uses

bb.ak:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit121
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !11
  %i.gx = getelementptr i8, ptr %i.gw, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %i.gv, i64 %i.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(148) %i.gz)
          to label %.noexc160 unwind label %bb.af

.noexc160:                                        ; preds = %bb.ak
  %i.ha = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i158 unwind label %bb.al ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i158: ; preds = %.noexc160
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = invoke noundef signext i8 %i.hd(ptr noundef nonnull align 8 dereferenceable(25) %i.ha, i8 noundef signext 10)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i159 unwind label %bb.al, !inline_history !0

bb.al:                                            ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i158, %.noexc160
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body161

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i159: ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i158
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, i8 noundef signext %i.he)
          to label %.noexc163 unwind label %bb.af ; 0 uses

.noexc163:                                        ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i159
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gv)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit123 unwind label %bb.af ; 0 uses

_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit:      ; preds = %.thread.i.i116, %.thread.i.i109, %.thread.i.i, %bb.ae
  %. = phi i32 [ 1, %.thread.i.i116 ], [ 1, %.thread.i.i109 ], [ 2, %.thread.i.i ], [ 2, %bb.ae ]
  br i1 %i.bn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  store i16 3, ptr %13, align 2, !tbaa !85
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  store i32 %., ptr %2, align 4, !tbaa !87
  invoke void @_ZN4gdcm10ImageCodec28SetPhotometricInterpretationERKNS_25PhotometricInterpretationE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %bb.ao unwind label %bb.af

bb.ao:                                            ; preds = %bb.an
  %i.hi = load ptr, ptr %0, align 8, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 2 dereferenceable(10) %13)
          to label %bb.ap unwind label %bb.af

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4gdcm10ImageCodec13SetDimensionsEPKj(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull %i.a)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit123 unwind label %bb.af

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit123: ; preds = %.noexc163, %bb.ap
  %.0 = phi i1 [ true, %bb.ap ], [ false, %.noexc163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit105

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit105: ; preds = %.noexc155, %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit123
  %.1 = phi i1 [ %.0, %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit123 ], [ false, %.noexc155 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit

.body137:                                         ; preds = %bb.ac, %bb.z, %bb.w, %bb.ab, %bb.u, %bb.t, %.body161, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.n ], [ %i.dx, %bb.t ], [ %eh.lpad-body162, %.body161 ], [ %i.fv, %bb.ab ], [ %i.en, %bb.w ], [ %i.dy, %bb.u ], [ %i.fy, %bb.ac ], [ %i.fb, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aq

bb.aq:                                            ; preds = %.body137, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body137 ], [ %i.cq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.body80

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit: ; preds = %.noexc132, %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit105
  %.2 = phi i1 [ %.1, %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit105 ], [ false, %.noexc132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.hl = load i8, ptr %11, align 8
  %i.hm = trunc i8 %i.hl to i1
  br i1 %i.hm, label %bb.ar, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.ar:                                            ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !37
  %i.hp = load i64, ptr %11, align 8
  %i.hq = and i64 %i.hp, -2
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hq) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.hr = load i8, ptr %10, align 8
  %i.hs = trunc i8 %i.hr to i1
  br i1 %i.hs, label %bb.as, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit124

bb.as:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !37
  %i.hv = load i64, ptr %10, align 8
  %i.hw = and i64 %i.hv, -2
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hw) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit124

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit124: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret i1 %.2

.body80:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.d, %bb.aq
  %.pn60 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aq ], [ %i.bz, %bb.h ], [ %i.bk, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b, %.body80
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %.body80 ], [ %i.ag, %bb.c ], [ %i.p, %bb.b ]
  %i.hx = load i8, ptr %11, align 8
  %i.hy = trunc i8 %i.hx to i1
  br i1 %i.hy, label %bb.at, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit125

bb.at:                                            ; preds = %.body
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !37
  %i.ib = load i64, ptr %11, align 8
  %i.ic = and i64 %i.ib, -2
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ic) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit125

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit125: ; preds = %.body, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.id = load i8, ptr %10, align 8
  %i.ie = trunc i8 %i.id to i1
  br i1 %i.ie, label %bb.au, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit126

bb.au:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit125
  %i.if = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !37
  %i.ih = load i64, ptr %10, align 8
  %i.ii = and i64 %i.ih, -2
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ii) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit126

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit126: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit125, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  resume { ptr, i32 } %.pn60.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZN4gdcm10ImageCodec28SetPhotometricInterpretationERKNS_25PhotometricInterpretationE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN4gdcm10ImageCodec13SetDimensionsEPKj(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK4gdcm8PNMCodec5CloneEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4gdcm5Coder4CodeERKNS_11DataElementERS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4gdcm5Coder12InternalCodeEPKcmRNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec6DecodeERKNS_11DataElementERS1_(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec7IsValidERKNS_25PhotometricInterpretationE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4gdcm10ImageCodec14SetPixelFormatERKNS_11PixelFormatE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 2 dereferenceable(10) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.a, ptr noundef nonnull align 2 dereferenceable(10) %1, i64 10, i1 false), !tbaa.struct !68
  ret void
}

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec11StartEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec12IsRowEncoderEv(ptr noundef nonnull align 8 dereferenceable(65)) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec14IsFrameEncoderEv(ptr noundef nonnull align 8 dereferenceable(65)) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec15AppendRowEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec17AppendFrameEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec10StopEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: uwtable
declare noundef zeroext i1 @_ZThn8_N4gdcm10ImageCodec6DecodeERKNS_11DataElementERS1_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #13 align 2

; Function Attrs: uwtable
declare noundef zeroext i1 @_ZThn8_N4gdcm10ImageCodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13 align 2

declare noundef i32 @_ZNK4gdcm11PixelFormat13GetScalarTypeEv(ptr noundef nonnull align 2 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind noalias writable sret(%"class.std::logic_error") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 25 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !11
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !11
  %i.h = load ptr, ptr %5, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %5, i64 %i.j ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.k, ptr noundef nonnull %i.b)
end_hunk_0
