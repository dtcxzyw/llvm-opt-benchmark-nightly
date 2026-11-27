Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/declaration-visitor?download=true
inline.NumInlined: 2019
inline.NumDeleted: 996
begin_hunk_0_@_ZN2v88internal6torque18DeclarationVisitor10SpecializeERKNS1_17SpecializationKeyINS1_15GenericCallableEEEPNS1_19CallableDeclarationESt8optionalIPKNS1_25SpecializationDeclarationEESA_IPNS1_9StatementEENS1_14SourcePositionE:bb.a
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.az = load i64, ptr %i.ax, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bb = load ptr, ptr %10, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  invoke void @_ZN2v88internal6torque11ReportErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %12) #23
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.k:                                             ; preds = %_ZN2v88internal6torquelsERSoPNS1_10IdentifierE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84, %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %11, align 8              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.m
  %i.bp = load i64, ptr %i.bn, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.l
  %.pn73 = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.bl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.k
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.bj, %bb.k ] ; 2 uses
  %i.br = load ptr, ptr %10, align 8              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.n
  %i.bu = load i64, ptr %i.bs, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.j
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %.pn73.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn73.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.q

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.p:                                             ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %12, align 8              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.p
  %i.cb = load i64, ptr %i.bz, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.o
  %.pn77 = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.bx, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.i
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn73.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %i.bh, %bb.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %bb.q ], [ %i.bg, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ci

bb.s:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ce = invoke ptr @_ZNKSt10_HashtableISt6vectorIPKN2v88internal6torque4TypeESaIS6_EESt4pairIKS8_PNS3_8CallableEESaISD_ENSt8__detail10_Select1stESt8equal_toIS8_ENS1_4base4hashIS8_EENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERSA_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.s
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.noexc
  %i.cg = load ptr, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA36_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S3_RKSt6vectorIPKNS1_4TypeESaISJ_EERA2_S3_EEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(36) @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 1 dereferenceable(2) @.str.42) #23
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.w:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.cj = trunc nuw i8 %3 to i1
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2v88internal6torque11TypeVisitor13MakeSignatureEPKNS1_19CallableDeclarationE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::torque::Signature") align 8 %13, ptr noundef %2)
          to label %bb.z unwind label %bb.ad

bb.y:                                             ; preds = %bb.w
  invoke void @_ZN2v88internal6torque18DeclarationVisitor24MakeSpecializedSignatureERKNS1_17SpecializationKeyINS1_15GenericCallableEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::torque::Signature") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  invoke void @_ZN2v88internal6torque12Declarations24GetGeneratedCallableNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS1_4TypeESaISE_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.co = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit99: ; preds = %bb.ab
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit99
  %i.cv = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.cw = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.da = load ptr, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNK2v88internal6torque4Type8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.da)
          to label %.noexc106.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106.peel:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.peel
  %i.db = load ptr, ptr %7, align 8
  %i.dc = load i64, ptr %i.cy, align 8
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.db, i64 noundef %i.dc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel: ; preds = %.noexc106.peel
  %i.de = load ptr, ptr %7, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cz
  br i1 %i.df, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel
  %i.dg = load i64, ptr %i.cz, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cw
  br i1 %i.dj, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %bb.y, %bb.x
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ae:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.af:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.peel.next:                                       ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %.sroa.0211.0232 = phi ptr [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.di, %bb.ac ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.0211.0232, align 8
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNK2v88internal6torque4Type8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.do)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.dq = load ptr, ptr %7, align 8
  %i.dr = load i64, ptr %i.cy, align 8
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.dq, i64 noundef %i.dr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc106
  %i.dt = load ptr, ptr %7, align 8               ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cz
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.dv = load i64, ptr %i.cz, align 8
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc106, %.noexc106.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %7, align 8               ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cz
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp
  %i.dz = load i64, ptr %i.cz, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0211.0232, i64 8 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cw
  br i1 %i.ec, label %._crit_edge, label %.peel.next, !llvm.loop !198

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103: ; preds = %._crit_edge
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread228, label %bb.ag

.thread228:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  store i8 0, ptr %i.ed, align 8
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_.exit

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load i32, ptr %i.ee, align 8            ; 2 uses
  switch i32 %i.ef, label %bb.ah [
    i32 52, label %_ZN2v88internal6torque16MacroDeclaration11DynamicCastEPNS1_7AstNodeE.exit
    i32 50, label %_ZN2v88internal6torque16MacroDeclaration11DynamicCastEPNS1_7AstNodeE.exit
    i32 55, label %_ZN2v88internal6torque20IntrinsicDeclaration11DynamicCastEPNS1_7AstNodeE.exit
    i32 0, label %bb.ba
    i32 1, label %bb.ba
    i32 2, label %bb.ba
    i32 3, label %bb.ba
    i32 4, label %bb.ba
    i32 5, label %bb.ba
    i32 6, label %bb.ba
    i32 7, label %bb.ba
    i32 8, label %bb.ba
    i32 9, label %bb.ba
    i32 10, label %bb.ba
    i32 11, label %bb.ba
    i32 12, label %bb.ba
    i32 13, label %bb.ba
    i32 14, label %bb.ba
    i32 15, label %bb.ba
    i32 16, label %bb.ba
    i32 17, label %bb.ba
    i32 18, label %bb.ba
    i32 19, label %bb.ba
    i32 20, label %bb.ba
    i32 21, label %bb.ba
    i32 22, label %bb.ba
    i32 23, label %bb.ba
    i32 24, label %bb.ba
    i32 25, label %bb.ba
    i32 26, label %bb.ba
    i32 27, label %bb.ba
    i32 28, label %bb.ba
    i32 29, label %bb.ba
    i32 30, label %bb.ba
    i32 31, label %bb.ba
    i32 32, label %bb.ba
    i32 33, label %bb.ba
    i32 34, label %bb.ba
    i32 35, label %bb.ba
    i32 36, label %bb.ba
    i32 37, label %bb.ba
    i32 38, label %bb.ba
    i32 39, label %bb.ba
    i32 40, label %bb.ba
    i32 41, label %bb.ba
    i32 42, label %bb.ba
    i32 43, label %bb.ba
    i32 44, label %bb.ba
    i32 45, label %bb.ba
    i32 46, label %bb.ba
    i32 47, label %bb.ba
    i32 48, label %bb.ba
    i32 49, label %bb.ba
    i32 51, label %bb.ba
    i32 53, label %bb.ba
    i32 54, label %bb.ba
    i32 56, label %bb.ba
    i32 57, label %bb.ba
    i32 58, label %bb.ba
  ]

bb.ah:                                            ; preds = %bb.ag
  invoke void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %bb.ah
  unreachable

_ZN2v88internal6torque16MacroDeclaration11DynamicCastEPNS1_7AstNodeE.exit: ; preds = %bb.ag, %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.eg, ptr %16, align 8
  %i.eh = load ptr, ptr %14, align 8              ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ej = load i64, ptr %i.ei, align 8            ; 8 uses
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %bb.ai, label %._crit_edge.i.i

bb.ai:                                            ; preds = %_ZN2v88internal6torque16MacroDeclaration11DynamicCastEPNS1_7AstNodeE.exit
  %i.el = icmp slt i64 %i.ej, 0
  br i1 %i.el, label %.noexc.i, label %bb.aj

.noexc.i:                                         ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #23
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %.noexc.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.em = add nuw i64 %i.ej, 1                    ; 2 uses
  %i.en = icmp slt i64 %i.em, 0
  br i1 %i.en, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !85

.noexc6.i:                                        ; preds = %bb.aj
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.aj
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #24
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc110:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.eo, ptr %16, align 8
  store i64 %i.ej, ptr %i.eg, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc110, %_ZN2v88internal6torque16MacroDeclaration11DynamicCastEPNS1_7AstNodeE.exit
  %i.ep = phi ptr [ %i.eo, %.noexc110 ], [ %i.eg, %_ZN2v88internal6torque16MacroDeclaration11DynamicCastEPNS1_7AstNodeE.exit ] ; 3 uses
end_hunk_0
