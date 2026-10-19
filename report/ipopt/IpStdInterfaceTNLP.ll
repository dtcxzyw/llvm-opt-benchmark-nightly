Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdInterfaceTNLP?download=true
inline.NumInlined: 163
inline.NumDeleted: 45
begin_hunk_0_@_ZN5Ipopt16StdInterfaceTNLPC2EiPKdS2_iS2_S2_iiiS2_S2_S2_S2_PFbiPdbS3_PvEPFbiS3_biS3_S4_ES6_PFbiS3_biiPiS9_S3_S4_EPFbiS3_bdiS3_biS9_S9_S3_S4_EPFbiiddddddddiS4_ES3_S3_S3_S3_S3_S3_S4_dS2_S2_:bb.a
  br i1 %.not190, label %bb.fb, label %bb.fm

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %83)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #12
  %i.iy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.1)
          to label %bb.fd unwind label %bb.fi     ; 0 uses

bb.fd:                                            ; preds = %bb.fc
  %i.iz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.29)
          to label %bb.fe unwind label %bb.fi     ; 0 uses

bb.fe:                                            ; preds = %bb.fd
  %i.ja = call ptr @__cxa_allocate_exception(i64 112) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %85)
          to label %bb.ff unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %84, i32 noundef 91)
          to label %bb.fg unwind label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  invoke void @__cxa_throw(ptr nonnull %i.ja, ptr nonnull @_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #13
          to label %bb.gl unwind label %bb.fj

bb.fh:                                            ; preds = %bb.fb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.fi:                                            ; preds = %bb.fd, %bb.fc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread: ; preds = %bb.fe
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #12
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fg, %bb.ff
  %.052 = phi i1 [ false, %bb.fg ], [ true, %bb.ff ] ; 2 uses
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jf = load ptr, ptr %84, align 8, !tbaa !54   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.fj
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !55
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #12
  br i1 %.052, label %bb.fk, label %bb.fl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #12
  br i1 %.052, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  %.pn191332 = phi { ptr, i32 } [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ]
  call void @__cxa_free_exception(ptr %i.ja) #12
  br label %bb.fl

bb.fl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.fk, %bb.fi
  %.pn191.pn = phi { ptr, i32 } [ %.pn191332, %bb.fk ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.jc, %bb.fi ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ] ; 2 uses
  %i.jk = load ptr, ptr %82, align 8, !tbaa !54   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.fl
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !55
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.fh
  %.pn191.pn.pn = phi { ptr, i32 } [ %i.jb, %bb.fh ], [ %.pn191.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %.pn191.pn, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #12
  br label %bb.gi

bb.fm:                                            ; preds = %bb.fa
  %.not195 = icmp eq ptr %18, null
  br i1 %.not195, label %bb.fn, label %bb.fy

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %87)
          to label %bb.fo unwind label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #12
  %i.jp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str.1)
          to label %bb.fp unwind label %bb.fu     ; 0 uses

bb.fp:                                            ; preds = %bb.fo
  %i.jq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str.31)
          to label %bb.fq unwind label %bb.fu     ; 0 uses

bb.fq:                                            ; preds = %bb.fp
  %i.jr = call ptr @__cxa_allocate_exception(i64 112) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %89)
          to label %bb.fr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(32) %88, i32 noundef 92)
          to label %bb.fs unwind label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  invoke void @__cxa_throw(ptr nonnull %i.jr, ptr nonnull @_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #13
          to label %bb.gl unwind label %bb.fv

bb.ft:                                            ; preds = %bb.fn
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

bb.fu:                                            ; preds = %bb.fp, %bb.fo
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread: ; preds = %bb.fq
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #12
  br label %bb.fw

bb.fv:                                            ; preds = %bb.fs, %bb.fr
  %.0 = phi i1 [ false, %bb.fs ], [ true, %bb.fr ] ; 2 uses
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jw = load ptr, ptr %88, align 8, !tbaa !54   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %bb.fv
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !55
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #12
  br i1 %.0, label %bb.fw, label %bb.fx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #12
  br i1 %.0, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %.pn196335 = phi { ptr, i32 } [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread ], [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ]
  call void @__cxa_free_exception(ptr %i.jr) #12
  br label %bb.fx

bb.fx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %bb.fw, %bb.fu
  %.pn196.pn = phi { ptr, i32 } [ %.pn196335, %bb.fw ], [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.jt, %bb.fu ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ] ; 2 uses
  %i.kb = load ptr, ptr %86, align 8, !tbaa !54   ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %bb.fx
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !55
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %bb.ft
  %.pn196.pn.pn = phi { ptr, i32 } [ %i.js, %bb.ft ], [ %.pn196.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288 ], [ %.pn196.pn, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #12
  br label %bb.gi

bb.fy:                                            ; preds = %bb.fm
  %.not200 = icmp eq ptr %28, null
  br i1 %.not200, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.kg = zext nneg i32 %1 to i64
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kh) #15
          to label %bb.ga unwind label %90        ; 2 uses

bb.ga:                                            ; preds = %bb.fz
  %i.kj = load i32, ptr %i.c, align 8, !tbaa !23
  invoke void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.kj, ptr noundef nonnull %28, i32 noundef 1, ptr noundef nonnull %i.ki, i32 noundef 1)
          to label %bb.gb unwind label %90

bb.gb:                                            ; preds = %bb.ga
  store ptr %i.ki, ptr %i.x, align 8, !tbaa !56
  br label %bb.gc

90:                                               ; preds = %bb.ga, %bb.fz
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gc:                                            ; preds = %bb.gb, %bb.fy
  %.not201 = icmp eq ptr %29, null
  br i1 %.not201, label %bb.gh, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.kk = load i32, ptr %i.d, align 4, !tbaa !24  ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i32 %i.kk, 0
  %i.kn = shl nsw i64 %i.kl, 3
  %i.ko = select i1 %i.km, i64 -1, i64 %i.kn
  %i.kp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ko) #15
          to label %bb.ge unwind label %bb.gg     ; 2 uses

bb.ge:                                            ; preds = %bb.gd
  %i.kq = load i32, ptr %i.d, align 4, !tbaa !24
  invoke void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.kq, ptr noundef nonnull %29, i32 noundef 1, ptr noundef nonnull %i.kp, i32 noundef 1)
          to label %bb.gf unwind label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store ptr %i.kp, ptr %i.y, align 8, !tbaa !57
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge, %bb.gd
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf, %bb.gc
  ret void

bb.gi:                                            ; preds = %bb.gg, %90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %.pn202 = phi { ptr, i32 } [ %i.kr, %bb.gg ], [ %91, %90 ], [ %.pn196.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.pn191.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ], [ %.pn186.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ %.pn181.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %.pn176.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %.pn171.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn166.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn162.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn158.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.pn154.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn149.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %.pn144.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.pn139.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn135.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ]
  %i.ks = load ptr, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %.not.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !10
  %i.kv = add nsw i32 %i.ku, -1                   ; 2 uses
  store i32 %i.kv, ptr %i.kt, align 8, !tbaa !10
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.gk, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

bb.gk:                                            ; preds = %bb.gj
  %i.kx = load ptr, ptr %i.ks, align 8, !tbaa !12
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(40) %i.ks) #12, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit:   ; preds = %bb.gi, %bb.gj, %bb.gk
  resume { ptr, i32 } %.pn202

bb.gl:                                            ; preds = %bb.fs, %bb.fg, %bb.eu, %bb.ei, %bb.dw, %bb.dk, %bb.cy, %bb.cm, %bb.ca, %bb.bo, %bb.bc, %bb.aq, %bb.ae, %bb.s, %bb.g
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !58
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.d, ptr %i.a, align 8, !tbaa !59
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !54
  %i.g = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.g, ptr %i.b, align 8, !tbaa !55
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.i, ptr %i.h, align 1, !tbaa !55
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !60
  %i.l = load ptr, ptr %0, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 24, ptr %i.a, align 8, !tbaa !59
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !54
  %i.d = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.32, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !60
  %i.f = load ptr, ptr %4, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt24INVALID_STDINTERFACE_NLPE, i64 16), ptr %0, align 8, !tbaa !12
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !55
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !55
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !55
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !55
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

end_hunk_0
