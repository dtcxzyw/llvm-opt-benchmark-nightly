Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintGenerator?download=true
inline.NumInlined: 10936
inline.NumDeleted: 4256
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4Luau19ConstraintGenerator19resolveFunctionTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_15AstTypeFunctionEbb:bb.a
  call void @_ZdlPvm(ptr noundef %.pre267, i64 noundef %i.og) #33
  br label %_ZN4Luau16FunctionArgumentD2Ev.exit

_ZN4Luau16FunctionArgumentD2Ev.exit:              ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJS2_EEERS3_DpOT_.exit, %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJS2_EEERS3_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit

.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.cl
  %lpad.loopexit.split-lp358 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau16FunctionArgumentD2Ev.exit130

bb.ct:                                            ; preds = %bb.cs
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oi = load ptr, ptr %17, align 8, !tbaa !103  ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.kn
  br i1 %i.oj, label %_ZN4Luau16FunctionArgumentD2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128: ; preds = %bb.ct
  %i.ok = load i64, ptr %i.kn, align 8, !tbaa !89
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #33
  br label %_ZN4Luau16FunctionArgumentD2Ev.exit130

_ZN4Luau16FunctionArgumentD2Ev.exit130:           ; preds = %bb.ct, %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128
  %.pn69 = phi { ptr, i32 } [ %i.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128 ], [ %lpad.loopexit.split-lp358, %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.oh, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.de

bb.cu:                                            ; preds = %bb.cj
  %i.om = load ptr, ptr %i.kl, align 8, !tbaa !395 ; 4 uses
  %i.on = load ptr, ptr %i.km, align 8, !tbaa !396
  %.not.i131 = icmp eq ptr %i.om, %i.on
  br i1 %.not.i131, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 48
  store i8 0, ptr %i.oo, align 8, !tbaa !415
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 56
  store ptr %i.op, ptr %i.kl, align 8, !tbaa !395
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE17_M_realloc_insertIJRKSt9nullopt_tEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr %i.om, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nullopt)
          to label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit unwind label %.loopexit

.loopexit:                                        ; preds = %bb.cw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit, %bb.bc
  %.sroa.16172.5.ph = phi ptr [ %.sroa.16172.4, %bb.bc ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit ], [ %.sroa.16172.4, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit ]
  %.sroa.0157.6.ph = phi ptr [ %.sroa.0157.5, %bb.bc ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit ], [ %.sroa.0157.5, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit ]
  %.sroa.16.6.ph = phi ptr [ %.sroa.16.5, %bb.bc ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit ], [ %.sroa.16.5, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit ]
  %.sroa.0166.5.ph = phi ptr [ %.sroa.0166.4, %bb.bc ], [ null, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit ], [ %.sroa.0166.4, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EE12emplace_backIJRKSt9nullopt_tEEERS3_DpOT_.exit: ; preds = %bb.cw, %bb.cv, %_ZN4Luau16FunctionArgumentD2Ev.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %.0251, i64 32 ; 2 uses
  %.not68 = icmp eq ptr %i.oq, %i.kk
  br i1 %.not68, label %._crit_edge254, label %bb.cj

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit137:  ; preds = %_ZN4Luau12FunctionTypeC2EOS0_.exit
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %18) #31
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !88 ; 8 uses
  %.not.i.i138 = icmp eq ptr %i.os, null
  br i1 %.not.i.i138, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit137
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 4 uses
  %i.ou = load atomic i64, ptr %i.ot acquire, align 8 ; 2 uses
  %i.ov = icmp eq i64 %i.ou, 4294967297
  %i.ow = trunc i64 %i.ou to i32                  ; 2 uses
  br i1 %i.ov, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.ot, align 8, !tbaa !94
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  store i32 0, ptr %i.ox, align 4, !tbaa !95
  %i.oy = load ptr, ptr %i.os, align 8, !tbaa !97
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #31, !inline_history !6
  %i.pb = load ptr, ptr %i.os, align 8, !tbaa !97
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #31, !inline_history !6
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

bb.cz:                                            ; preds = %bb.cx
  %i.pe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i139 = icmp eq i8 %i.pe, 0
  br i1 %.not.i.i.i139, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pf = add nsw i32 %i.ow, -1
  store i32 %i.pf, ptr %i.ot, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.db:                                            ; preds = %bb.cz
  %i.pg = atomicrmw volatile add ptr %i.ot, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i141 = phi i32 [ %i.ow, %bb.da ], [ %i.pg, %bb.db ]
  %i.ph = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.ph, label %bb.dc, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, !prof !81

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #31
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit137, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret ptr %i.mz

bb.dd:                                            ; preds = %_ZN4Luau12FunctionTypeC2EOS0_.exit
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %18) #31
  br label %bb.de

bb.de:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cb, %bb.dd, %_ZN4Luau16FunctionArgumentD2Ev.exit130
  %.sroa.16172.6 = phi ptr [ null, %bb.dd ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ %.sroa.16172.4, %bb.cb ], [ null, %.loopexit ], [ %.sroa.16172.5.ph, %.loopexit.split-lp ]
  %.sroa.0157.7 = phi ptr [ null, %bb.dd ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ %.sroa.0157.5, %bb.cb ], [ null, %.loopexit ], [ %.sroa.0157.6.ph, %.loopexit.split-lp ]
  %.sroa.16.7 = phi ptr [ null, %bb.dd ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ %.sroa.16.5, %bb.cb ], [ null, %.loopexit ], [ %.sroa.16.6.ph, %.loopexit.split-lp ]
  %.sroa.0166.6 = phi ptr [ null, %bb.dd ], [ null, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ %.sroa.0166.4, %bb.cb ], [ null, %.loopexit ], [ %.sroa.0166.5.ph, %.loopexit.split-lp ]
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %i.pi, %bb.dd ], [ %.pn69, %_ZN4Luau16FunctionArgumentD2Ev.exit130 ], [ %.pn, %bb.cb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %12) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121:  ; preds = %bb.by, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119, %bb.de
  %.sroa.16172.7 = phi ptr [ %.sroa.16172.6, %bb.de ], [ %.sroa.16172.4, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.16172.4, %bb.by ]
  %.sroa.0157.8 = phi ptr [ %.sroa.0157.7, %bb.de ], [ %.sroa.0157.5, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.0157.5, %bb.by ]
  %.sroa.16.8 = phi ptr [ %.sroa.16.7, %bb.de ], [ %.sroa.16.5, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.16.5, %bb.by ]
  %.sroa.0166.7 = phi ptr [ %.sroa.0166.6, %bb.de ], [ %.sroa.0166.4, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %.sroa.0166.4, %bb.by ]
  %.pn69.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn, %bb.de ], [ %i.ip, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit119 ], [ %i.ip, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121, %bb.bt, %bb.bs
  %.sroa.16172.8 = phi ptr [ %.sroa.16172.7, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.16172.4, %bb.bt ], [ %.sroa.16172.4, %bb.bs ]
  %.sroa.0157.9 = phi ptr [ %.sroa.0157.8, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.0157.5, %bb.bt ], [ %.sroa.0157.5, %bb.bs ]
  %.sroa.16.9 = phi ptr [ %.sroa.16.8, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.16.5, %bb.bt ], [ %.sroa.16.5, %bb.bs ]
  %.sroa.0166.8 = phi ptr [ %.sroa.0166.7, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %.sroa.0166.4, %bb.bt ], [ %.sroa.0166.4, %bb.bs ]
  %.pn69.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn.pn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit121 ], [ %i.io, %bb.bt ], [ %i.in, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.ai
  %.sroa.16172.9 = phi ptr [ %.sroa.16172.3, %bb.ai ], [ %.sroa.16172.8, %bb.df ]
  %.sroa.0157.10 = phi ptr [ %.sroa.0157.4, %bb.ai ], [ %.sroa.0157.9, %bb.df ] ; 3 uses
  %.sroa.16.10 = phi ptr [ %.sroa.16.4, %bb.ai ], [ %.sroa.16.9, %bb.df ]
  %.sroa.0166.9 = phi ptr [ %.sroa.0166.3, %bb.ai ], [ %.sroa.0166.8, %bb.df ] ; 3 uses
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn, %bb.ai ], [ %.pn69.pn.pn.pn.pn.pn.pn.pn, %bb.df ] ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %.sroa.0157.10, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pj = ptrtoint ptr %.sroa.16.10 to i64
  %i.pk = ptrtoint ptr %.sroa.0157.10 to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.10, i64 noundef %i.pl) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144: ; preds = %bb.dg, %bb.dh
  %.not.i.i.i145 = icmp eq ptr %.sroa.0166.9, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit146, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144
  %i.pm = ptrtoint ptr %.sroa.16172.9 to i64
  %i.pn = ptrtoint ptr %.sroa.0166.9 to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.9, i64 noundef %i.po) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit146

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit146:  ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144.thread, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144, %bb.di
  %.pn78.pn.pn.pn185190 = phi { ptr, i32 } [ %i.aw, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144.thread ], [ %.pn78.pn.pn.pn, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit144 ], [ %.pn78.pn.pn.pn, %bb.di ]
  call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %.pn78.pn.pn.pn185190
}

declare void @_ZN4Luau19AstTypePackExplicitC1ERKNS_8LocationENS_11AstTypeListE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef byval(%"struct.Luau::AstTypeList") align 8) unnamed_addr #9

declare noundef zeroext i1 @_ZNK4Luau15AstTypeFunction17isCheckedFunctionEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #9

declare noundef ptr @_ZNK4Luau15AstTypeFunction12getAttributeENS_7AstAttr4TypeE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypeListEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Luau::TypePack", align 8   ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !992    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1678 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not67 = icmp eq i64 %i.c, 0
  br i1 %.not67, label %._crit_edge.a, label %.lr.ph

._crit_edge.a:                                    ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.sroa.042.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.042.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1679 ; 2 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %bb.i, label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit
  %.071 = phi ptr [ %i.w, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.14.070 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.10.069 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.042.068 = phi ptr [ %.sroa.042.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 7 uses
  %i.g = load ptr, ptr %.071, align 8, !tbaa !984
  %i.h = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.g, i1 noundef zeroext %3, i1 noundef zeroext %4)
          to label %bb.b unwind label %.loopexit  ; 2 uses

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.sroa.10.069, %.sroa.14.070
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %.sroa.10.069, align 8, !tbaa !358
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %.sroa.14.070 to i64
  %i.j = ptrtoint ptr %.sroa.042.068 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35
          to label %.noexc25 unwind label %.loopexit ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %i.h, ptr %i.t, align 8, !tbaa !358
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %.sroa.042.068, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %.noexc25
  %.not.i17.i.i.i = icmp eq ptr %.sroa.042.068, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.068, i64 noundef %i.k) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c
  %.sroa.042.3 = phi ptr [ %i.s, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.042.068, %bb.c ] ; 2 uses
  %.pn56 = phi ptr [ %i.t, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.10.069, %bb.c ]
  %.sroa.14.3 = phi ptr [ %i.v, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.14.070, %bb.c ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn56, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.071, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.d
  br i1 %.not, label %._crit_edge.a, label %.lr.ph

bb.h:                                             ; preds = %._crit_edge.a
  %i.x = invoke noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.f, i1 noundef zeroext %3, i1 noundef zeroext %4)
          to label %bb.i unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29

.loopexit.split-lp:                               ; preds = %bb.h, %bb.e
  %.sroa.042.066 = phi ptr [ %.sroa.042.0.lcssa, %bb.h ], [ %.sroa.042.068, %bb.e ]
  %.sroa.14.060 = phi ptr [ %.sroa.14.0.lcssa, %bb.h ], [ %.sroa.14.070, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29

bb.i:                                             ; preds = %bb.h, %._crit_edge.a
  %.sroa.539.0 = phi i8 [ 0, %._crit_edge.a ], [ 1, %bb.h ] ; 2 uses
  %.sroa.038.0 = phi ptr [ undef, %._crit_edge.a ], [ %i.x, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.y = icmp eq ptr %.sroa.042.0.lcssa, %.sroa.10.0.lcssa
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %6 = trunc nuw i8 %.sroa.539.0 to i1
  br i1 %6, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !330
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !353
  br label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124
  store ptr %.sroa.042.0.lcssa, ptr %5, align 8, !tbaa !249
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.10.0.lcssa, ptr %i.af, align 8, !tbaa !391
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sroa.14.0.lcssa, ptr %i.ag, align 8, !tbaa !250
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.038.0, ptr %i.ah, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 %.sroa.539.0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ai = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184) %i.ae, ptr noundef nonnull align 8 %5)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %5, align 8, !tbaa !249   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !250
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #33
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !249   ; 2 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i3.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !250
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split

.thread:                                          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27

bb.q:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi ptr [ %.sroa.038.0, %bb.j ], [ %i.ac, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i.i.i = icmp eq ptr %.sroa.042.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.as = ptrtoint ptr %.sroa.042.0.lcssa to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.0.lcssa, i64 noundef %i.at) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit27:   ; preds = %bb.r, %bb.q, %.thread
  %.0.i55 = phi ptr [ %i.ai, %.thread ], [ %.0.i, %bb.q ], [ %.0.i, %bb.r ]
  ret ptr %.0.i55

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29:   ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.042.2 = phi ptr [ %.sroa.042.068, %.loopexit ], [ %.sroa.042.066, %.loopexit.split-lp ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.070, %.loopexit ], [ %.sroa.14.060, %.loopexit.split-lp ]
  %.pn23 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %.sroa.042.2, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29, %bb.p
  %.sink95 = phi ptr [ %i.aq, %bb.p ], [ %.sroa.14.2, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29 ]
  %.sink94 = phi ptr [ %i.ap, %bb.p ], [ %.sroa.042.2, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29 ] ; 2 uses
  %.pn2386.ph = phi { ptr, i32 } [ %i.ao, %bb.p ], [ %.pn23, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29 ]
  %i.au = ptrtoint ptr %.sink95 to i64
  %i.av = ptrtoint ptr %.sink94 to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %.sink94, i64 noundef %i.aw) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31:   ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split, %bb.o, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29
  %.pn2386 = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %.pn23, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit29 ], [ %.pn2386.ph, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit31.sink.split ]
  resume { ptr, i32 } %.pn2386
}

declare { ptr, i8 } @_ZNK4Luau5Scope10lookupPackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1040), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11AstTypePackEPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1681 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !999  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !993    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !993  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !1682
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !993  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !1680

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !999
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !993    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1682  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !993 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !993 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !1001
  %i.al = load i64, ptr %i.a, align 8, !tbaa !1681
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !1681
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !993 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_11AstTypePackESt4pairIS4_PKNS_11TypePackVarEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

declare void @_ZN4Luau11GenericTypeC1EPNS_5ScopeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef align 8, i8 noundef zeroext) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEESaIS9_EE12emplace_backIJRKPKcS8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !596  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !597
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !422    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !100
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.i, ptr %i.a, align 8, !tbaa !105
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !103
  %i.l = load i64, ptr %i.a, align 8, !tbaa !105
  store i64 %i.l, ptr %i.g, align 8, !tbaa !89
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEC2IRKPKcS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !89
  store i8 %i.n, ptr %i.m, align 1, !tbaa !89
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEC2IRKPKcS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEC2IRKPKcS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau21GenericTypeDefinitionEEC2IRKPKcS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !104
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
end_hunk_0
