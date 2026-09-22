Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncDataCache?download=true
inline.NumInlined: 5544
inline.NumDeleted: 2717
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8facebook5velox5cache14AsyncDataCache6shrinkEm:bb.a
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 noundef %.1, i32 noundef 2)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.fs = load ptr, ptr %12, align 8, !tbaa !130
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !89
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef %i.fs, i64 noundef %i.fu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64 unwind label %bb.bo ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64: ; preds = %bb.bj
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull @.str.56, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN8facebook5velox14succinctMicrosB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 noundef %i.dw, i32 noundef 2)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.fx = load ptr, ptr %13, align 8, !tbaa !130
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !89
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef %i.fx, i64 noundef %i.fz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68 unwind label %bb.bq ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68: ; preds = %bb.bk
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNK8facebook5velox5cache14AsyncDataCache8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(372) %0, i1 noundef zeroext true)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.gc = load ptr, ptr %14, align 8, !tbaa !130
  %i.gd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !89
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef %i.gc, i64 noundef %i.ge)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit72 unwind label %bb.bs ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit72: ; preds = %bb.bl
  %i.gg = load ptr, ptr %14, align 8, !tbaa !130  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit72
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !90
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.gl = load ptr, ptr %13, align 8, !tbaa !130  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !90
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.gq = load ptr, ptr %12, align 8, !tbaa !130  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !90
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  ret i64 %.1

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.bo:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64, %bb.bj
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.bq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68, %bb.bk
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.bs:                                            ; preds = %bb.bl
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %14, align 8, !tbaa !130  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.bs
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !90
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.br
  %.pn29 = phi { ptr, i32 } [ %i.ha, %bb.br ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.hb, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.bq
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.gz, %bb.bq ] ; 2 uses
  %i.hh = load ptr, ptr %13, align 8, !tbaa !130  ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.bt
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !90
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.bp
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.gy, %bb.bp ], [ %.pn29.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn29.pn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.bo
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.gx, %bb.bo ] ; 2 uses
  %i.hm = load ptr, ptr %12, align 8, !tbaa !130  ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.bu
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !90
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.bn
  %.pn29.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.bn ], [ %.pn29.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn29.pn.pn.pn, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.bm
  %.pn29.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.gv, %bb.bm ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bw

bb.bw:                                            ; preds = %bb.aw, %bb.ax, %bb.bv, %bb.ab, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %bb.k ], [ %.pn.pn, %bb.ab ], [ %.pn36.pn, %bb.aw ], [ %.pn29.pn.pn.pn.pn.pn, %bb.bv ], [ %i.es, %bb.ax ]
  resume { ptr, i32 } %.pn40
}

declare void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #9

declare void @_ZN8facebook5velox14succinctMicrosB5cxx11Emi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #9

declare void @_ZN8facebook5velox5cache8SsdCache5writeESt6vectorINS1_8CachePinESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(133), ptr noundef align 8) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox5cache14AsyncDataCache17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.016.lcssa = phi i1 [ true, %bb.a ], [ %.117, %bb.f ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.01630 = phi i1 [ %.117, %bb.f ], [ true, %bb.a ]
  %.sroa.021.029 = phi ptr [ %i.s, %bb.f ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.021.029, align 8, !tbaa !281
  %i.i = invoke noundef zeroext i1 @_ZN8facebook5velox5cache10CacheShard17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_(ptr noundef nonnull align 8 dereferenceable(312) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 1
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #22
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { ptr, i32 } %i.j, 0
  %i.o = call ptr @__cxa_begin_catch(ptr %i.n) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 996, i32 noundef 2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.61, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @__cxa_end_catch()
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %.117 = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 ], [ %.01630, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 8 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.l

.loopexit:                                        ; preds = %bb.b, %bb.i
  %.merged = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %._crit_edge
  %i.w = call noundef zeroext i1 @_ZN8facebook5velox5cache8SsdCache17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_(ptr noundef nonnull align 8 dereferenceable(133) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %4 = select i1 %i.w, i1 %.016.lcssa, i1 false
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.2 = phi i1 [ %4, %bb.j ], [ %.016.lcssa, %._crit_edge ]
  ret i1 %.2

bb.l:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #45
  unreachable
}

declare noundef zeroext i1 @_ZN8facebook5velox5cache8SsdCache17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_(ptr noundef nonnull align 8 dereferenceable(133), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox5cache14AsyncDataCache12refreshStatsEv(ptr dead_on_unwind noalias writable sret(%"struct.facebook::velox::cache::CacheStats") align 8 initializes((0, 60), (64, 192)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::cache::SsdCacheStats", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 0, i64 60, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !280  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.n, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.010.013 = phi ptr [ %i.j, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.010.013, align 8, !tbaa !281
  invoke void @_ZN8facebook5velox5cache10CacheShard11updateStatsERNS1_10CacheStatsE(ptr noundef nonnull align 8 dereferenceable(312) %i.i, ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNK8facebook5velox5cache8SsdCache5statsEv(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::cache::SsdCacheStats") align 8 %2, ptr noundef nonnull align 8 dereferenceable(133) %i.h)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #47
          to label %bb.f unwind label %bb.m       ; 13 uses

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !216, !noalias !931
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !217, !noalias !931
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox5cache13SsdCacheStatsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.m, align 8, !tbaa !129, !noalias !931
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load <4 x i64>, ptr %i.y, align 16, !tbaa !176, !noalias !931
  store <4 x i64> %i.z, ptr %i.s, align 8, !tbaa !176, !noalias !931
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ab = load <2 x i64>, ptr %2, align 16, !tbaa !176, !noalias !931
  store <2 x i64> %i.ab, ptr %i.p, align 8, !tbaa !176, !noalias !931
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !310, !noalias !931
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !310, !noalias !931
  %i.ae = load <4 x i64>, ptr %i.aa, align 16, !tbaa !176, !noalias !931
  store <4 x i64> %i.ae, ptr %i.t, align 8, !tbaa !176, !noalias !931
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ag = load <2 x i64>, ptr %i.af, align 16, !tbaa !176, !noalias !931
  store <2 x i64> %i.ag, ptr %i.u, align 8, !tbaa !176, !noalias !931
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !308, !noalias !931
  store i32 %i.ai, ptr %i.r, align 8, !tbaa !308, !noalias !931
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ak = load <8 x i32>, ptr %i.aj, align 16, !tbaa !180, !noalias !931
  store <8 x i32> %i.ak, ptr %i.v, align 8, !tbaa !180, !noalias !931
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.am = load <4 x i32>, ptr %i.al, align 16, !tbaa !180, !noalias !931
  store <4 x i32> %i.am, ptr %i.w, align 8, !tbaa !180, !noalias !931
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ao = load <2 x i32>, ptr %i.an, align 16, !tbaa !180, !noalias !931
  store <2 x i32> %i.ao, ptr %i.x, align 8, !tbaa !180, !noalias !931
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.p, ptr %i.ap, align 8, !tbaa !309
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !214 ; 8 uses
  store ptr %i.m, ptr %i.aq, align 8, !tbaa !214
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox5cache13SsdCacheStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.as, align 8, !tbaa !216
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !217
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22, !inline_history !11
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22, !inline_history !11
  br label %_ZNSt12__shared_ptrIN8facebook5velox5cache13SsdCacheStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.j ], [ %i.bf, %bb.k ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.l, label %_ZNSt12__shared_ptrIN8facebook5velox5cache13SsdCacheStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !174

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22
  br label %_ZNSt12__shared_ptrIN8facebook5velox5cache13SsdCacheStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox5cache13SsdCacheStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge, %_ZNSt12__shared_ptrIN8facebook5velox5cache13SsdCacheStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.o:                                             ; preds = %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.bh, %bb.m ]
  call void @_ZN8facebook5velox5cache10CacheStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZNK8facebook5velox5cache8SsdCache5statsEv(ptr dead_on_unwind writable sret(%"struct.facebook::velox::cache::SsdCacheStats") align 8, ptr noundef nonnull align 8 dereferenceable(133)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache14AsyncDataCache5clearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.facebook::velox::memory::Allocation", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.08.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.ac, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  %i.i = load ptr, ptr %.sroa.08.016, align 8, !tbaa !281
  %i.j = invoke noundef i64 @_ZN8facebook5velox5cache10CacheShard5evictEmbmRNS0_6memory10AllocationE(ptr noundef nonnull align 8 dereferenceable(312) %i.i, i64 noundef -1, i1 noundef zeroext true, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %bb.c unwind label %.loopexit  ; 0 uses

end_hunk_0
