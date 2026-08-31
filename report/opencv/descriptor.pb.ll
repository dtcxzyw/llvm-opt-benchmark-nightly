Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/descriptor.pb?download=true
inline.NumInlined: 3992
inline.NumDeleted: 1137
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6google8protobuf19FileDescriptorProtoC2ERKS1_:bb.a
bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEC2ERKS3_.exit
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i32 noundef %i.cy)
          to label %.noexc54 unwind label %bb.q

.noexc54:                                         ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.da = load i32, ptr %i.cx, align 8, !tbaa !91
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !90
  %i.dc = load i32, ptr %i.cw, align 8, !tbaa !91
  %i.dd = add nsw i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.cw, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %i.dg = load i32, ptr %i.cx, align 8, !tbaa !91
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.db, ptr nonnull align 4 %i.df, i64 %i.di, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit: ; preds = %.noexc54, %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEC2ERKS3_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !91 ; 2 uses
  %.not.i55 = icmp eq i32 %i.dl, 0
  br i1 %.not.i55, label %.noexc, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i32 noundef %i.dl)
          to label %.noexc56 unwind label %bb.r

.noexc56:                                         ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dn = load i32, ptr %i.dk, align 8, !tbaa !91
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !90
  %i.dp = load i32, ptr %i.dj, align 8, !tbaa !91
  %i.dq = add nsw i32 %i.dp, %i.dn
  store i32 %i.dq, ptr %i.dj, align 8, !tbaa !91
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !90
  %i.dt = load i32, ptr %i.dk, align 8, !tbaa !91
  %i.du = sext i32 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.do, ptr nonnull align 4 %i.ds, i64 %i.dv, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit, %.noexc56
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !11 ; 2 uses
  %i.dy = trunc i64 %i.dx to i1
  br i1 %i.dy, label %.noexc37, label %bb.i

.noexc37:                                         ; preds = %.noexc
  %i.dz = and i64 %i.dx, -4
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %.noexc37, %.noexc
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ec, align 8, !tbaa !93
  %i.ed = load i32, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.ee = trunc i32 %i.ed to i1
  br i1 %i.ee, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !93
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = and i64 %i.eh, -2
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.el = trunc i64 %i.ek to i1
  %i.em = and i64 %i.ek, -4
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  br i1 %i.el, label %bb.k, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.eo, %bb.k ], [ %i.en, %bb.j ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.s

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.t

bb.l:                                             ; preds = %.noexc40, %.noexc.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.m:                                             ; preds = %.noexc43, %.noexc.i42
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.n:                                             ; preds = %.noexc46, %.noexc.i45
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.o:                                             ; preds = %.noexc49, %.noexc.i48
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.p:                                             ; preds = %.noexc52, %.noexc.i51
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.q:                                             ; preds = %bb.g
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.r:                                             ; preds = %bb.h
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.s:                                             ; preds = %.noexc37, %bb.ag, %bb.aa, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.t:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.i
  %i.ex = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.ed, %bb.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ey, align 8, !tbaa !93
  %i.ez = and i32 %i.ex, 2
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !93
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, -2
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.fg = trunc i64 %i.ff to i1
  %i.fh = and i64 %i.ff, -4
  %i.fi = inttoptr i64 %i.fh to ptr               ; 2 uses
  br i1 %i.fg, label %bb.v, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59, !prof !21

bb.v:                                             ; preds = %bb.u
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59: ; preds = %bb.v, %bb.u
  %.0.i.i58 = phi ptr [ %i.fj, %bb.v ], [ %i.fi, %bb.u ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef %.0.i.i58)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59._crit_edge unwind label %bb.s

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59
  %.pre66 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59._crit_edge, %bb.t
  %i.fk = phi i32 [ %.pre66, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit59._crit_edge ], [ %i.ex, %bb.t ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.fl, align 8, !tbaa !93
  %i.fm = and i32 %i.fk, 4
  %.not63 = icmp eq i32 %i.fm, 0
  br i1 %.not63, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !93
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = and i64 %i.fp, -2
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ft = trunc i64 %i.fs to i1
  %i.fu = and i64 %i.fs, -4
  %i.fv = inttoptr i64 %i.fu to ptr               ; 2 uses
  br i1 %i.ft, label %bb.y, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61, !prof !21

bb.y:                                             ; preds = %bb.x
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61: ; preds = %bb.y, %bb.x
  %.0.i.i60 = phi ptr [ %i.fw, %bb.y ], [ %i.fv, %bb.x ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef %.0.i.i60)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61._crit_edge unwind label %bb.s

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61
  %.pre67 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61._crit_edge, %bb.w
  %i.fx = phi i32 [ %.pre67, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit61._crit_edge ], [ %i.fk, %bb.w ] ; 2 uses
  %i.fy = and i32 %i.fx, 8
  %.not64 = icmp eq i32 %i.fy, 0                  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %2 = load ptr, ptr %i.fz, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not64, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not64, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #24
          to label %bb.ab unwind label %bb.s      ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !72
  invoke void @_ZN6google8protobuf11FileOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.ga, ptr noundef nonnull align 8 dereferenceable(168) %i.gb)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !72
  %.pre68 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.gd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 168) #23
  br label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.ge, align 8, !tbaa !72
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %i.gf = phi i32 [ %.pre68, %bb.ac ], [ %i.fx, %bb.ae ]
  %i.gg = and i32 %i.gf, 16
  %.not65 = icmp eq i32 %i.gg, 0                  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %5 = load ptr, ptr %i.gh, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %.not65, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  br i1 %.not65, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.ah unwind label %bb.s      ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !89
  invoke void @_ZN6google8protobuf14SourceCodeInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %i.gj)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 48) #23
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af, %bb.ah
  %.sink = phi ptr [ %i.gi, %bb.ah ], [ null, %bb.af ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sink, ptr %i.gl, align 8, !tbaa !89
  ret void

bb.ak:                                            ; preds = %bb.ai, %bb.ad, %bb.s
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.ai ], [ %i.ew, %bb.s ], [ %i.gd, %bb.ad ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dj) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.ev, %bb.r ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cw) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.al ], [ %i.eu, %bb.q ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cd) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.am ], [ %i.et, %bb.p ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bk) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.o
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.an ], [ %i.es, %bb.o ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_19EnumDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.n
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ao ], [ %i.er, %bb.n ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.eq, %bb.m ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.aq ], [ %i.ep, %bb.l ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf19FileDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.w, !inline_history !94

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i unwind label %bb.w, !inline_history !94

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i: ; preds = %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = icmp eq ptr %i.n, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.o, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i unwind label %bb.w, !inline_history !94

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i: ; preds = %bb.f, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf38_FileDescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf19FileDescriptorProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6google8protobuf11FileOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(165) dereferenceable(168) %i.q) #22, !inline_history !94
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 168) #23, !inline_history !94
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN6google8protobuf19FileDescriptorProto10SharedDtorEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN6google8protobuf14SourceCodeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %i.t) #22, !inline_history !94
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #23, !inline_history !94
  br label %_ZN6google8protobuf19FileDescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf19FileDescriptorProto10SharedDtorEv.exit: ; preds = %bb.j, %bb.i, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !11
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.k, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.k:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit unwind label %bb.w

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %_ZN6google8protobuf19FileDescriptorProto10SharedDtorEv.exit, %bb.k, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.x) #22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.y) #22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %.not.i.i = icmp ne ptr %i.ab, null
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = select i1 %.not.i.i, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.l, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit

bb.l:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %.not.i.i4 = icmp ne ptr %i.aj, null
  %i.ak = load ptr, ptr %i.ah, align 8
  %i.al = icmp eq ptr %i.ak, null
  %i.am = select i1 %.not.i.i4, i1 %i.al, i1 false
  br i1 %i.am, label %bb.n, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEED2Ev.exit

bb.n:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #21
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf11FileOptions9MergeFromERKS1_:bb.a
  br i1 %.not70, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.hr = load i8, ptr %i.hq, align 4, !tbaa !113, !range !166, !noundef !167
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.hr, ptr %i.hs, align 4, !tbaa !113
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !71
  %i.hv = or i32 %i.hu, %i.u
  store i32 %i.hv, ptr %i.ht, align 8, !tbaa !71
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.av
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull @_ZN6google8protobuf30_FileOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.hx)
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !11 ; 2 uses
  %i.ia = trunc i64 %i.hz to i1
  br i1 %i.ia, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.bf
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ic = and i64 %i.hz, -4
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef nonnull align 8 dereferenceable(24) %i.ie)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.bf, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE9MergeFromERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b), !inline_history !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !176
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE9MergeFromERKS3_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE9MergeFromERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE9MergeFromERKS3_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = and i64 %i.u, -4
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE9MergeFromERKS3_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf19FileDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(216) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf19FileDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  tail call void @_ZN6google8protobuf19FileDescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf19FileDescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = add nsw i64 %indvars.iv.i34, -1          ; 2 uses
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %._crit_edge, label %bb.c, !llvm.loop !177

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i34 = phi i64 [ %i.e, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.i34
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = tail call noundef zeroext i1 @_ZNK6google8protobuf15DescriptorProto13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(232) %i.k), !inline_history !178
  br i1 %i.l, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = icmp slt i32 %i.n, 1
  br i1 %i.p, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %._crit_edge
  %i.q = zext nneg i32 %i.n to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i235, -1         ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %._crit_edge38, label %bb.e, !llvm.loop !179

bb.e:                                             ; preds = %.lr.ph37, %bb.d
  %indvars.iv.i235 = phi i64 [ %i.q, %.lr.ph37 ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.i235
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = tail call noundef zeroext i1 @_ZNK6google8protobuf19EnumDescriptorProto13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(112) %i.w)
  br i1 %i.x, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !179

._crit_edge38:                                    ; preds = %bb.d, %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = icmp slt i32 %i.z, 1
  br i1 %i.ab, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %._crit_edge38
  %i.ac = zext nneg i32 %i.z to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ad = add nsw i64 %indvars.iv.i339, -1        ; 2 uses
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %._crit_edge42, label %bb.g, !llvm.loop !180

bb.g:                                             ; preds = %.lr.ph41, %bb.f
  %indvars.iv.i339 = phi i64 [ %i.ac, %.lr.ph41 ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i339
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = tail call noundef zeroext i1 @_ZNK6google8protobuf22ServiceDescriptorProto13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ai)
  br i1 %i.aj, label %bb.f, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !180

._crit_edge42:                                    ; preds = %bb.f, %._crit_edge38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge42
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = zext nneg i32 %i.al to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, %.lr.ph.i
  %indvars.iv.i4 = phi i64 [ %i.ao, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i4, -1
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i4
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !71
  %i.au = and i32 %i.at, 32
  %.not.i.i = icmp eq i32 %i.au, 0                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %1 = icmp ne ptr %i.aw, null
  %2 = select i1 %.not.i.i, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not.i.i, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
  br i1 %i.ay, label %bb.j, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  %i.be = zext nneg i32 %i.ba to i64
  br label %bb.k

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bf = icmp slt i64 %indvars.iv.i.i.i.i, 2
  br i1 %i.bf, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %bb.k, !llvm.loop !181

bb.k:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %i.bg = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp slt i32 %i.bj, 1
  br i1 %i.bm, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.k
  %i.bn = zext nneg i32 %i.bj to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.bo = add nsw i64 %indvars.iv.i.i.i.i.i.i43, -1 ; 2 uses
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %bb.m, !llvm.loop !182

bb.m:                                             ; preds = %.lr.ph45, %bb.l
  %indvars.iv.i.i.i.i.i.i43 = phi i64 [ %i.bn, %.lr.ph45 ], [ %i.bo, %bb.l ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i.i.i43
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !71
  %i.bv = and i32 %i.bu, 3
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bv, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %bb.j, %bb.h
  %i.bw = icmp slt i64 %indvars.iv.i4, 2
  br i1 %i.bw, label %.loopexit, label %bb.h, !llvm.loop !183

.loopexit:                                        ; preds = %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, %._crit_edge42
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !71
  %i.bz = and i32 %i.by, 8
  %.not = icmp eq i32 %i.bz, 0                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cb = load ptr, ptr %i.ca, align 8            ; 4 uses
  %3 = icmp ne ptr %i.cb, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
  br i1 %i.cd, label %bb.o, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !24 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20
  %i.cj = zext nneg i32 %i.cf to i64
  br label %bb.p

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.q, %bb.p
  %i.ck = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.ck, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.p, !llvm.loop !181

bb.p:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.cl = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp slt i32 %i.co, 1
  br i1 %i.cr, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.p
  %i.cs = zext nneg i32 %i.co to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.ct = add nsw i64 %indvars.iv.i.i.i.i546, -1  ; 2 uses
  %i.cu = trunc nuw i64 %i.ct to i32
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.r, !llvm.loop !182

bb.r:                                             ; preds = %.lr.ph48, %bb.q
  %indvars.iv.i.i.i.i546 = phi i64 [ %i.cs, %.lr.ph48 ], [ %i.ct, %bb.q ] ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv.i.i.i.i546
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !71
  %i.da = and i32 %i.cz, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.da, 3
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.m, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.r, %bb.o, %.loopexit, %bb.n
  %.0 = phi i1 [ false, %bb.i ], [ false, %bb.r ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ], [ false, %bb.m ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.n ], [ true, %.loopexit ], [ true, %bb.o ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf11FileOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf19FileDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !187
  store ptr %i.p, ptr %i.j, align 8, !tbaa !67
  store ptr %i.m, ptr %i.i, align 8, !tbaa !67
  %i.q = load <2 x i32>, ptr %i.k, align 8, !tbaa !71, !noalias !184
  %i.r = load <2 x i32>, ptr %i.n, align 8, !tbaa !71, !noalias !187
  store <2 x i32> %i.r, ptr %i.k, align 8, !tbaa !71
  store <2 x i32> %i.q, ptr %i.n, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.l, align 8, !tbaa !29, !noalias !167
  %i.x = load <2 x ptr>, ptr %i.o, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.x, ptr %i.l, align 8, !tbaa !29
  store <2 x ptr> %i.w, ptr %i.o, align 8, !tbaa !29
  %i.y = load <2 x i32>, ptr %i.s, align 8, !tbaa !71, !noalias !190
  %i.z = load <2 x i32>, ptr %i.u, align 8, !tbaa !71, !noalias !193
  store <2 x i32> %i.z, ptr %i.s, align 8, !tbaa !71
  store <2 x i32> %i.y, ptr %i.u, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.t, align 8, !tbaa !29, !noalias !167
  %i.af = load <2 x ptr>, ptr %i.v, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !29
  store <2 x ptr> %i.ae, ptr %i.v, align 8, !tbaa !29
  %i.ag = load <2 x i32>, ptr %i.aa, align 8, !tbaa !71, !noalias !196
  %i.ah = load <2 x i32>, ptr %i.ac, align 8, !tbaa !71, !noalias !199
  store <2 x i32> %i.ah, ptr %i.aa, align 8, !tbaa !71
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !29, !noalias !167
  %i.an = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.an, ptr %i.ab, align 8, !tbaa !29
  store <2 x ptr> %i.am, ptr %i.ad, align 8, !tbaa !29
  %i.ao = load <2 x i32>, ptr %i.ai, align 8, !tbaa !71, !noalias !202
  %i.ap = load <2 x i32>, ptr %i.ak, align 8, !tbaa !71, !noalias !205
  store <2 x i32> %i.ap, ptr %i.ai, align 8, !tbaa !71
  store <2 x i32> %i.ao, ptr %i.ak, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !29, !noalias !167
  %i.av = load <2 x ptr>, ptr %i.al, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.av, ptr %i.aj, align 8, !tbaa !29
  store <2 x ptr> %i.au, ptr %i.al, align 8, !tbaa !29
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !63, !noalias !208
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !63, !noalias !211
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !63
  %i.ay = load <2 x i32>, ptr %i.aq, align 8, !tbaa !71, !noalias !208
  %i.az = load <2 x i32>, ptr %i.as, align 8, !tbaa !71, !noalias !211
  store <2 x i32> %i.az, ptr %i.aq, align 8, !tbaa !71
  store <2 x i32> %i.ay, ptr %i.as, align 8, !tbaa !71
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.ba, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.0.copyload.i.i.i23 = load i128, ptr %i.bc, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i23, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !29
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.be, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !29
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i24, ptr %i.bh, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.sroa.0.0.copyload.i25 = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !29
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i25, ptr %i.bk, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.bn, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bo, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf19FileDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 16))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN6google8protobuf30DescriptorProto_ExtensionRange9_Internal7optionsEPKS1_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf30DescriptorProto_ExtensionRangeE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf30DescriptorProto_ExtensionRangeE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc9, label %bb.a

.noexc9:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc9, %.noexc
  %i.l = load i32, ptr %i.c, align 8, !tbaa !71
  %i.m = trunc i32 %i.l to i1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.n, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.m, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !214
  invoke void @_ZN6google8protobuf21ExtensionRangeOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc9, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 72) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8, !tbaa !214
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf49_DescriptorProto_ExtensionRange_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf21ExtensionRangeOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(72) %i.h) #22, !inline_history !217
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 72) #23, !inline_history !217
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit

_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.f:                                             ; preds = %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge unwind label %bb.j

._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge: ; preds = %bb.f
  %.pre1 = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge, %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.l = phi i64 [ %.pre1, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge ], [ %i.j, %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !14
  %i.m = and i64 %i.l, 2
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  %i.n = trunc i64 %i.l to i1
  %i.o = and i64 %i.l, -4
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  br i1 %i.n, label %bb.h, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.r = icmp eq ptr %.0.i.i.i, null
  br i1 %i.r, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRange9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6google8protobuf30DescriptorProto_ExtensionRange13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRange5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !214  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  tail call void @_ZN6google8protobuf19UninterpretedOption5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %i.n)
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %bb.e, label %bb.d, !llvm.loop !107

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i: ; preds = %bb.e, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit

bb.f:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit

_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit: ; preds = %bb.f, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i, %bb.a
  %i.r = and i32 %i.b, 6
  %.not2 = icmp eq i32 %i.r, 0
  br i1 %.not2, label %bb.h, label %bb.g

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf30DescriptorProto_ExtensionRange9MergeFromERKS1_:bb.a
  br i1 %i.as, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, label %_ZN6google8protobuf21ExtensionRangeOptions9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.au = and i64 %i.ar, -4
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.aw), !inline_history !225
  br label %_ZN6google8protobuf21ExtensionRangeOptions9MergeFromERKS1_.exit

_ZN6google8protobuf21ExtensionRangeOptions9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i, %bb.b
  %i.ax = and i32 %i.b, 2
  %.not11 = icmp eq i32 %i.ax, 0
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf21ExtensionRangeOptions9MergeFromERKS1_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !218
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6google8protobuf21ExtensionRangeOptions9MergeFromERKS1_.exit
  %i.bb = and i32 %i.b, 4
  %.not12 = icmp eq i32 %i.bb, 0
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !220
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !220
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !71
  %i.bh = or i32 %i.bg, %i.b
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = and i64 %i.bj, -4
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.l, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf21ExtensionRangeOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b), !inline_history !163
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !164
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull @_ZN6google8protobuf40_ExtensionRangeOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = and i64 %i.w, -4
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRange8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  tail call void @_ZN6google8protobuf19UninterpretedOption5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %i.o)
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %bb.f, label %bb.e, !llvm.loop !107

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.h, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i.i: ; preds = %bb.f, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.g, label %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit.i

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br label %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit.i

_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit.i: ; preds = %bb.g, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i.i, %bb.b
  %i.s = and i32 %i.c, 6
  %.not2.i = icmp eq i32 %i.s, 0
  br i1 %.not2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6google8protobuf21ExtensionRangeOptions5ClearEv.exit.i
  store i32 0, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.j, label %_ZN6google8protobuf30DescriptorProto_ExtensionRange5ClearEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_ZN6google8protobuf30DescriptorProto_ExtensionRange5ClearEv.exit

_ZN6google8protobuf30DescriptorProto_ExtensionRange5ClearEv.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZN6google8protobuf30DescriptorProto_ExtensionRange9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6google8protobuf30DescriptorProto_ExtensionRange5ClearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = trunc i32 %i.b to i1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %1 = icmp ne ptr %i.e, null
  %not..i = xor i1 %i.c, true
  %2 = select i1 %not..i, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf21ExtensionRangeOptions13IsInitializedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.g, label %bb.c, label %_ZNK6google8protobuf21ExtensionRangeOptions13IsInitializedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZNK6google8protobuf21ExtensionRangeOptions13IsInitializedEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = zext nneg i32 %i.i to i64
  br label %bb.d

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.n, label %_ZNK6google8protobuf21ExtensionRangeOptions13IsInitializedEv.exit, label %bb.d, !llvm.loop !181

bb.d:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp slt i32 %i.r, 1
  br i1 %i.u, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = zext nneg i32 %i.r to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.w = add nsw i64 %indvars.iv.i.i.i.i8, -1     ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.f, !llvm.loop !182

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.i.i.i.i8 = phi i64 [ %i.v, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = and i32 %i.ac, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 3
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK6google8protobuf21ExtensionRangeOptions13IsInitializedEv.exit, !llvm.loop !182

_ZNK6google8protobuf21ExtensionRangeOptions13IsInitializedEv.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.f, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf21ExtensionRangeOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRange12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !62
  %i.d = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.c, ptr %i.b, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf30DescriptorProto_ExtensionRange11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 32))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf29DescriptorProto_ReservedRangeC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf29DescriptorProto_ReservedRangeE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf29DescriptorProto_ReservedRangeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf29DescriptorProto_ReservedRangeE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc5, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc5:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit unwind label %bb.a

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc, %.noexc5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %i.l, align 8
  ret void

bb.a:                                             ; preds = %.noexc5
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %i.o
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf15DescriptorProtoC2ERKS1_:bb.a

.noexc.i52:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEC2ERKS3_.exit51
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !20
  %i.dc = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i32 noundef %i.cy)
          to label %.noexc53 unwind label %bb.r

.noexc53:                                         ; preds = %.noexc.i52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !20
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !24
  %i.dj = sub nsw i32 %i.dg, %i.di
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_20OneofDescriptorProtoEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef %i.dc, ptr noundef nonnull %i.dd, i32 noundef %i.cy, i32 noundef %i.dj)
          to label %.noexc54 unwind label %bb.r

.noexc54:                                         ; preds = %.noexc53
  %i.dk = load i32, ptr %i.dh, align 8, !tbaa !24
  %i.dl = add nsw i32 %i.dk, %i.cy                ; 3 uses
  store i32 %i.dl, ptr %i.dh, align 8, !tbaa !24
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !20 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !25
  %i.do = icmp slt i32 %i.dn, %i.dl
  br i1 %i.do, label %bb.g, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEC2ERKS3_.exit

bb.g:                                             ; preds = %.noexc54
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEC2ERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEC2ERKS3_.exit: ; preds = %bb.g, %.noexc54, %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEC2ERKS3_.exit51
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !24 ; 4 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEEC2ERKS3_.exit, label %.noexc.i55

.noexc.i55:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEC2ERKS3_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dv = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i32 noundef %i.dr)
          to label %.noexc56 unwind label %bb.s

.noexc56:                                         ; preds = %.noexc.i55
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !20
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !24
  %i.ec = sub nsw i32 %i.dz, %i.eb
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef %i.dv, ptr noundef nonnull %i.dw, i32 noundef %i.dr, i32 noundef %i.ec)
          to label %.noexc57 unwind label %bb.s

.noexc57:                                         ; preds = %.noexc56
  %i.ed = load i32, ptr %i.ea, align 8, !tbaa !24
  %i.ee = add nsw i32 %i.ed, %i.dr                ; 3 uses
  store i32 %i.ee, ptr %i.ea, align 8, !tbaa !24
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !20 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !25
  %i.eh = icmp slt i32 %i.eg, %i.ee
  br i1 %i.eh, label %bb.h, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEEC2ERKS3_.exit

bb.h:                                             ; preds = %.noexc57
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEEC2ERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEEC2ERKS3_.exit: ; preds = %bb.h, %.noexc57, %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEEC2ERKS3_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i8 0, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !24 ; 4 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %.noexc, label %.noexc.i58

.noexc.i58:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEEC2ERKS3_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !20
  %i.eo = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i32 noundef %i.ek)
          to label %.noexc59 unwind label %bb.t

.noexc59:                                         ; preds = %.noexc.i58
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !20
  %i.es = load i32, ptr %i.er, align 8, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !24
  %i.ev = sub nsw i32 %i.es, %i.eu
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvPPvSE_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef %i.eo, ptr noundef nonnull %i.ep, i32 noundef %i.ek, i32 noundef %i.ev)
          to label %.noexc60 unwind label %bb.t

.noexc60:                                         ; preds = %.noexc59
  %i.ew = load i32, ptr %i.et, align 8, !tbaa !24
  %i.ex = add nsw i32 %i.ew, %i.ek                ; 3 uses
  store i32 %i.ex, ptr %i.et, align 8, !tbaa !24
  %i.ey = load ptr, ptr %i.eq, align 8, !tbaa !20 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !25
  %i.fa = icmp slt i32 %i.ez, %i.ex
  br i1 %i.fa, label %bb.i, label %.noexc

bb.i:                                             ; preds = %.noexc60
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !25
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEEC2ERKS3_.exit, %.noexc60, %bb.i
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !11 ; 2 uses
  %i.fd = trunc i64 %i.fc to i1
  br i1 %i.fd, label %.noexc34, label %bb.j

.noexc34:                                         ; preds = %.noexc
  %i.fe = and i64 %i.fc, -4
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %.noexc34, %.noexc
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.fh, align 8, !tbaa !93
  %i.fi = load i32, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.fj = trunc i32 %i.fi to i1
  br i1 %i.fj, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !93
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = and i64 %i.fm, -2
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.fq = trunc i64 %i.fp to i1
  %i.fr = and i64 %i.fp, -4
  %i.fs = inttoptr i64 %i.fr to ptr               ; 2 uses
  br i1 %i.fq, label %bb.l, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.ft, %bb.l ], [ %i.fs, %bb.k ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.u

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.v

bb.m:                                             ; preds = %.noexc37, %.noexc.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.n:                                             ; preds = %.noexc40, %.noexc.i39
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.o:                                             ; preds = %.noexc43, %.noexc.i42
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %.noexc46, %.noexc.i45
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %.noexc49, %.noexc.i48
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %.noexc53, %.noexc.i52
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.s:                                             ; preds = %.noexc56, %.noexc.i55
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %.noexc59, %.noexc.i58
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.u:                                             ; preds = %.noexc34, %bb.w, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.j
  %i.gd = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.fi, %bb.j ]
  %i.ge = and i32 %i.gd, 2
  %.not = icmp eq i32 %i.ge, 0                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %2 = load ptr, ptr %i.gf, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gg = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24
          to label %bb.x unwind label %bb.u       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !229
  invoke void @_ZN6google8protobuf14MessageOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %i.gh)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 80) #23
  br label %bb.aa

bb.z:                                             ; preds = %bb.v, %bb.x
  %.sink = phi ptr [ %i.gg, %bb.x ], [ null, %bb.v ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sink, ptr %i.gj, align 8, !tbaa !229
  ret void

bb.aa:                                            ; preds = %bb.y, %bb.u
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.y ], [ %i.gc, %bb.u ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ei) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.gb, %bb.t ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dp) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.ga, %bb.s ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cw) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ac ], [ %i.fz, %bb.r ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cd) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.q
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ad ], [ %i.fy, %bb.q ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_30DescriptorProto_ExtensionRangeEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bk) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.p
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ae ], [ %i.fx, %bb.p ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_19EnumDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.fw, %bb.o ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ag ], [ %i.fv, %bb.n ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ah ], [ %i.fu, %bb.m ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf15DescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.y, !inline_history !235

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf34_DescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf15DescriptorProto10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !229  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN6google8protobuf15DescriptorProto10SharedDtorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf14MessageOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(80) %i.k) #22, !inline_history !235
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 80) #23, !inline_history !235
  br label %_ZN6google8protobuf15DescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf15DescriptorProto10SharedDtorEv.exit: ; preds = %bb.f, %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %_ZN6google8protobuf15DescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit unwind label %bb.y

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %_ZN6google8protobuf15DescriptorProto10SharedDtorEv.exit, %bb.g, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %.not.i.i = icmp ne ptr %i.r, null
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %.not.i.i, i1 %i.t, i1 false
  br i1 %i.u, label %bb.h, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEED2Ev.exit

bb.h:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %.not.i.i2 = icmp ne ptr %i.z, null
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = select i1 %.not.i.i2, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.j, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEED2Ev.exit

bb.j:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_29DescriptorProto_ReservedRangeEED2Ev.exit, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %.not.i.i3 = icmp ne ptr %i.ah, null
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = select i1 %.not.i.i3, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.l, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit

bb.l:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20OneofDescriptorProtoEED2Ev.exit, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %.not.i.i4 = icmp ne ptr %i.ap, null
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = select i1 %.not.i.i4, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.n, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_30DescriptorProto_ExtensionRangeEED2Ev.exit

bb.n:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_30DescriptorProto_ExtensionRangeEED2Ev.exit unwind label %bb.o
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf15DescriptorProto9MergeFromERKS1_:bb.a
  br i1 %i.fv, label %bb.w, label %_ZN6google8protobuf15DescriptorProto25_internal_mutable_optionsEv.exit

bb.w:                                             ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !11 ; 2 uses
  %i.fy = trunc i64 %i.fx to i1
  %i.fz = and i64 %i.fx, -4
  %i.ga = inttoptr i64 %i.fz to ptr               ; 2 uses
  br i1 %i.fy, label %bb.x, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19: ; preds = %bb.w, %bb.x
  %.0.i.i18 = phi ptr [ %i.gb, %bb.x ], [ %i.ga, %bb.w ]
  %i.gc = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageINS0_14MessageOptionsEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i18), !inline_history !255 ; 2 uses
  store ptr %i.gc, ptr %i.ft, align 8, !tbaa !229
  br label %_ZN6google8protobuf15DescriptorProto25_internal_mutable_optionsEv.exit

_ZN6google8protobuf15DescriptorProto25_internal_mutable_optionsEv.exit: ; preds = %bb.v, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19
  %i.gd = phi ptr [ %i.fu, %bb.v ], [ %i.gc, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !229 ; 2 uses
  %.not.i = icmp eq ptr %i.gf, null
  %i.gg = select i1 %.not.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.gf
  tail call void @_ZN6google8protobuf14MessageOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.gd, ptr noundef nonnull align 8 dereferenceable(80) %i.gg)
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %_ZN6google8protobuf15DescriptorProto25_internal_mutable_optionsEv.exit, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !11 ; 2 uses
  %i.gj = trunc i64 %i.gi to i1
  br i1 %i.gj, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = and i64 %i.gi, -4
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %i.gn)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.y, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf14MessageOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b), !inline_history !163
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !164
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !71   ; 6 uses
  %i.v = and i32 %i.u, 15
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.w = and i32 %i.u, 1
  %.not14 = icmp eq i32 %i.w, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i8, ptr %i.x, align 8, !tbaa !278, !range !166, !noundef !167
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.y, ptr %i.z, align 8, !tbaa !278
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = and i32 %i.u, 2
  %.not15 = icmp eq i32 %i.aa, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !280, !range !166, !noundef !167
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !280
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = and i32 %i.u, 4
  %.not16 = icmp eq i32 %i.ae, 0
  br i1 %.not16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !281, !range !166, !noundef !167
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %i.ag, ptr %i.ah, align 2, !tbaa !281
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = and i32 %i.u, 8
  %.not17 = icmp eq i32 %i.ai, 0
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !282, !range !166, !noundef !167
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 75
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !282
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !71
  %i.ao = or i32 %i.an, %i.u
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.at = trunc i64 %i.as to i1
  br i1 %i.at, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = and i64 %i.as, -4
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.m, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf15DescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(232) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf15DescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
  tail call void @_ZN6google8protobuf15DescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf15DescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.loopexit46, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.e, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = and i32 %i.j, 32
  %.not.i.i = icmp eq i32 %i.k, 0                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %1 = icmp ne ptr %i.m, null
  %2 = select i1 %.not.i.i, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not.i.i, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br i1 %i.o, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = zext nneg i32 %i.q to i64
  br label %bb.e

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.v = icmp slt i64 %indvars.iv.i.i.i.i, 2
  br i1 %i.v, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %bb.e, !llvm.loop !181

bb.e:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp slt i32 %i.z, 1
  br i1 %i.ac, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = zext nneg i32 %i.z to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %indvars.iv.i.i.i.i.i.i83, -1 ; 2 uses
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %bb.g, !llvm.loop !182

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i.i.i.i.i.i83 = phi i64 [ %i.ad, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.i.i83
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.al = and i32 %i.ak, 3
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.al, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %bb.d, %bb.b
  %i.am = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.am, label %.loopexit46, label %bb.b, !llvm.loop !183

.loopexit46:                                      ; preds = %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = icmp sgt i32 %i.ao, 0
  br i1 %i.aq, label %.lr.ph85, label %._crit_edge

.lr.ph85:                                         ; preds = %.loopexit46
  %i.ar = zext nneg i32 %i.ao to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.as = add nsw i64 %indvars.iv84, -1           ; 2 uses
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %._crit_edge, !llvm.loop !177

bb.i:                                             ; preds = %.lr.ph85, %bb.h
  %indvars.iv84 = phi i64 [ %i.ar, %.lr.ph85 ], [ %i.as, %bb.h ] ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv84
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.ay = tail call noundef zeroext i1 @_ZNK6google8protobuf15DescriptorProto13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(232) %i.ax), !inline_history !178
  br i1 %i.ay, label %bb.h, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.h, %.loopexit46
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = icmp slt i32 %i.ba, 1
  br i1 %i.bc, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %._crit_edge
  %i.bd = zext nneg i32 %i.ba to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.be = add nsw i64 %indvars.iv.i286, -1        ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %._crit_edge89, label %bb.k, !llvm.loop !179

bb.k:                                             ; preds = %.lr.ph88, %bb.j
  %indvars.iv.i286 = phi i64 [ %i.bd, %.lr.ph88 ], [ %i.be, %bb.j ] ; 2 uses
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv.i286
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.bk = tail call noundef zeroext i1 @_ZNK6google8protobuf19EnumDescriptorProto13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bj)
  br i1 %i.bk, label %bb.j, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !179

._crit_edge89:                                    ; preds = %bb.j, %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 1
  br i1 %i.bn, label %.loopexit41, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %._crit_edge89
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bp = zext nneg i32 %i.bm to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv.exit.i, %.lr.ph.i3
  %indvars.iv.i4 = phi i64 [ %i.bp, %.lr.ph.i3 ], [ %indvars.iv.next.i5, %_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i4, -1
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !20
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv.i4
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !71
  %i.bv = trunc i32 %i.bu to i1                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8            ; 4 uses
  %3 = icmp ne ptr %i.bx, null
  %not..i.i.i = xor i1 %i.bv, true
  %4 = select i1 %not..i.i.i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.bv, label %bb.m, label %_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
  br i1 %i.bz, label %bb.n, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !24 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv.exit.i, label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cf = zext nneg i32 %i.cb to i64
  br label %bb.o

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i11: ; preds = %bb.p, %bb.o
  %i.cg = icmp slt i64 %indvars.iv.i.i.i.i7, 2
  br i1 %i.cg, label %_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv.exit.i, label %bb.o, !llvm.loop !181

bb.o:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i11, %.lr.ph.i.i.i.i6
  %indvars.iv.i.i.i.i7 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i6 ], [ %indvars.iv.next.i.i.i.i8, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i11 ] ; 3 uses
  %indvars.iv.next.i.i.i.i8 = add nsw i64 %indvars.iv.i.i.i.i7, -1
  %i.ch = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i.i7
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp slt i32 %i.ck, 1
  br i1 %i.cn, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i11, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.o
  %i.co = zext nneg i32 %i.ck to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.cp = add nsw i64 %indvars.iv.i.i.i.i.i.i990, -1 ; 2 uses
  %i.cq = trunc nuw i64 %i.cp to i32
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i11, label %bb.q, !llvm.loop !182

bb.q:                                             ; preds = %.lr.ph92, %bb.p
  %indvars.iv.i.i.i.i.i.i990 = phi i64 [ %i.co, %.lr.ph92 ], [ %i.cp, %bb.p ] ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.cm, i64 %indvars.iv.i.i.i.i.i.i990
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !71
  %i.cw = and i32 %i.cv, 3
  %.not.i.i.i.i.i.i.i10 = icmp eq i32 %i.cw, 3
  br i1 %.not.i.i.i.i.i.i.i10, label %bb.p, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv.exit.i: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i11, %bb.n, %bb.l
  %i.cx = icmp slt i64 %indvars.iv.i4, 2
  br i1 %i.cx, label %.loopexit41, label %bb.l, !llvm.loop !283

.loopexit41:                                      ; preds = %_ZNK6google8protobuf30DescriptorProto_ExtensionRange13IsInitializedEv.exit.i, %._crit_edge89
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %.loopexit38, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.loopexit41
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dc = zext nneg i32 %i.cz to i64
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i22, %.lr.ph.i12
  %indvars.iv.i13 = phi i64 [ %i.dc, %.lr.ph.i12 ], [ %indvars.iv.next.i14, %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i22 ] ; 3 uses
  %indvars.iv.next.i14 = add nsw i64 %indvars.iv.i13, -1
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !20
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.i13
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !71
  %i.di = and i32 %i.dh, 32
  %.not.i.i15 = icmp eq i32 %i.di, 0              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8            ; 4 uses
  %5 = icmp ne ptr %i.dk, null
  %6 = select i1 %.not.i.i15, i1 true, i1 %5
  tail call void @llvm.assume(i1 %6)
  br i1 %.not.i.i15, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i22, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dl)
  br i1 %i.dm, label %bb.t, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !24 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i22, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !20
  %i.ds = zext nneg i32 %i.do to i64
  br label %bb.u

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i21: ; preds = %bb.v, %bb.u
  %i.dt = icmp slt i64 %indvars.iv.i.i.i.i17, 2
  br i1 %i.dt, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i22, label %bb.u, !llvm.loop !181

bb.u:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i21, %.lr.ph.i.i.i.i16
  %indvars.iv.i.i.i.i17 = phi i64 [ %i.ds, %.lr.ph.i.i.i.i16 ], [ %indvars.iv.next.i.i.i.i18, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i21 ] ; 3 uses
  %indvars.iv.next.i.i.i.i18 = add nsw i64 %indvars.iv.i.i.i.i17, -1
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i.i17
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !29 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = icmp slt i32 %i.dx, 1
  br i1 %i.ea, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i21, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.u
  %i.eb = zext nneg i32 %i.dx to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %i.ec = add nsw i64 %indvars.iv.i.i.i.i.i.i1993, -1 ; 2 uses
  %i.ed = trunc nuw i64 %i.ec to i32
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i21, label %bb.w, !llvm.loop !182

bb.w:                                             ; preds = %.lr.ph95, %bb.v
  %indvars.iv.i.i.i.i.i.i1993 = phi i64 [ %i.eb, %.lr.ph95 ], [ %i.ec, %bb.v ] ; 2 uses
  %i.ef = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i1993
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !71
  %i.ej = and i32 %i.ei, 3
  %.not.i.i.i.i.i.i.i20 = icmp eq i32 %i.ej, 3
  br i1 %.not.i.i.i.i.i.i.i20, label %bb.v, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i22: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i21, %bb.t, %bb.r
  %i.ek = icmp slt i64 %indvars.iv.i13, 2
  br i1 %i.ek, label %.loopexit38, label %bb.r, !llvm.loop !183

.loopexit38:                                      ; preds = %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i22, %.loopexit41
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.em = load i32, ptr %i.el, align 8, !tbaa !24 ; 2 uses
  %i.en = icmp slt i32 %i.em, 1
  br i1 %i.en, label %.loopexit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.loopexit38
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ep = zext nneg i32 %i.em to i64
  br label %bb.x

bb.x:                                             ; preds = %_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv.exit.i, %.lr.ph.i24
  %indvars.iv.i25 = phi i64 [ %i.ep, %.lr.ph.i24 ], [ %indvars.iv.next.i26, %_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i26 = add nsw i64 %indvars.iv.i25, -1
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !20
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %indvars.iv.i25
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !29 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !71
  %i.ev = and i32 %i.eu, 2
  %.not.i.i27 = icmp eq i32 %i.ev, 0              ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8            ; 4 uses
  %7 = icmp ne ptr %i.ex, null
  %8 = select i1 %.not.i.i27, i1 true, i1 %7
  tail call void @llvm.assume(i1 %8)
  br i1 %.not.i.i27, label %_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ey)
  br i1 %i.ez, label %bb.z, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.z:                                             ; preds = %bb.y
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !24 ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 1
  br i1 %i.fc, label %_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv.exit.i, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !20
  %i.ff = zext nneg i32 %i.fb to i64
  br label %bb.aa

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i33: ; preds = %bb.ab, %bb.aa
  %i.fg = icmp slt i64 %indvars.iv.i.i.i.i29, 2
  br i1 %i.fg, label %_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv.exit.i, label %bb.aa, !llvm.loop !181

bb.aa:                                            ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i33, %.lr.ph.i.i.i.i28
  %indvars.iv.i.i.i.i29 = phi i64 [ %i.ff, %.lr.ph.i.i.i.i28 ], [ %indvars.iv.next.i.i.i.i30, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i33 ] ; 3 uses
  %indvars.iv.next.i.i.i.i30 = add nsw i64 %indvars.iv.i.i.i.i29, -1
  %i.fh = getelementptr [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i.i29
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !29 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !24 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = icmp slt i32 %i.fk, 1
  br i1 %i.fn, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i33, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.aa
  %i.fo = zext nneg i32 %i.fk to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %i.fp = add nsw i64 %indvars.iv.i.i.i.i.i.i3196, -1 ; 2 uses
  %i.fq = trunc nuw i64 %i.fp to i32
  %i.fr = icmp slt i32 %i.fq, 1
  br i1 %i.fr, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i33, label %bb.ac, !llvm.loop !182

bb.ac:                                            ; preds = %.lr.ph98, %bb.ab
  %indvars.iv.i.i.i.i.i.i3196 = phi i64 [ %i.fo, %.lr.ph98 ], [ %i.fp, %bb.ab ] ; 2 uses
  %i.fs = getelementptr [8 x i8], ptr %i.fm, i64 %indvars.iv.i.i.i.i.i.i3196
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !29
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !71
  %i.fw = and i32 %i.fv, 3
  %.not.i.i.i.i.i.i.i32 = icmp eq i32 %i.fw, 3
  br i1 %.not.i.i.i.i.i.i.i32, label %bb.ab, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv.exit.i: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i33, %bb.z, %bb.x
  %i.fx = icmp slt i64 %indvars.iv.i25, 2
  br i1 %i.fx, label %.loopexit, label %bb.x, !llvm.loop !284

.loopexit:                                        ; preds = %_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv.exit.i, %.loopexit38
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !71
  %i.ga = and i32 %i.fz, 2
  %.not = icmp eq i32 %i.ga, 0                    ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %10 = load ptr, ptr %9, align 8                 ; 2 uses
  %11 = icmp ne ptr %10, null
  %12 = select i1 %.not, i1 true, i1 %11
  tail call void @llvm.assume(i1 %12)
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %i.gb = tail call noundef zeroext i1 @_ZNK6google8protobuf14MessageOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
  br i1 %i.gb, label %bb.ae, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.ae:                                            ; preds = %bb.ad, %.loopexit
  br label %_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

_ZN6google8protobuf8internal17AllAreInitializedINS0_20FieldDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.c, %bb.g, %bb.i, %bb.k, %bb.m, %bb.q, %bb.s, %bb.w, %bb.y, %bb.ac, %bb.ad, %bb.ae
  %.0 = phi i1 [ true, %bb.ae ], [ false, %bb.y ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.ad ], [ false, %bb.g ], [ false, %bb.q ], [ false, %bb.w ], [ false, %bb.ac ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf14MessageOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf15DescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !285
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !288
  store ptr %i.p, ptr %i.j, align 8, !tbaa !67
  store ptr %i.m, ptr %i.i, align 8, !tbaa !67
  %i.q = load <2 x i32>, ptr %i.k, align 8, !tbaa !71, !noalias !285
  %i.r = load <2 x i32>, ptr %i.n, align 8, !tbaa !71, !noalias !288
  store <2 x i32> %i.r, ptr %i.k, align 8, !tbaa !71
  store <2 x i32> %i.q, ptr %i.n, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.l, align 8, !tbaa !29, !noalias !167
  %i.x = load <2 x ptr>, ptr %i.o, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.x, ptr %i.l, align 8, !tbaa !29
  store <2 x ptr> %i.w, ptr %i.o, align 8, !tbaa !29
  %i.y = load <2 x i32>, ptr %i.s, align 8, !tbaa !71, !noalias !291
  %i.z = load <2 x i32>, ptr %i.u, align 8, !tbaa !71, !noalias !294
  store <2 x i32> %i.z, ptr %i.s, align 8, !tbaa !71
  store <2 x i32> %i.y, ptr %i.u, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.t, align 8, !tbaa !29, !noalias !167
  %i.af = load <2 x ptr>, ptr %i.v, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !29
  store <2 x ptr> %i.ae, ptr %i.v, align 8, !tbaa !29
  %i.ag = load <2 x i32>, ptr %i.aa, align 8, !tbaa !71, !noalias !297
  %i.ah = load <2 x i32>, ptr %i.ac, align 8, !tbaa !71, !noalias !300
  store <2 x i32> %i.ah, ptr %i.aa, align 8, !tbaa !71
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !29, !noalias !167
  %i.an = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.an, ptr %i.ab, align 8, !tbaa !29
  store <2 x ptr> %i.am, ptr %i.ad, align 8, !tbaa !29
  %i.ao = load <2 x i32>, ptr %i.ai, align 8, !tbaa !71, !noalias !303
  %i.ap = load <2 x i32>, ptr %i.ak, align 8, !tbaa !71, !noalias !306
  store <2 x i32> %i.ap, ptr %i.ai, align 8, !tbaa !71
  store <2 x i32> %i.ao, ptr %i.ak, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !29, !noalias !167
  %i.av = load <2 x ptr>, ptr %i.al, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.av, ptr %i.aj, align 8, !tbaa !29
  store <2 x ptr> %i.au, ptr %i.al, align 8, !tbaa !29
  %i.aw = load <2 x i32>, ptr %i.aq, align 8, !tbaa !71, !noalias !309
  %i.ax = load <2 x i32>, ptr %i.as, align 8, !tbaa !71, !noalias !312
  store <2 x i32> %i.ax, ptr %i.aq, align 8, !tbaa !71
  store <2 x i32> %i.aw, ptr %i.as, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !29, !noalias !167
  %i.bd = load <2 x ptr>, ptr %i.at, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.bd, ptr %i.ar, align 8, !tbaa !29
  store <2 x ptr> %i.bc, ptr %i.at, align 8, !tbaa !29
  %i.be = load <2 x i32>, ptr %i.ay, align 8, !tbaa !71, !noalias !315
  %i.bf = load <2 x i32>, ptr %i.ba, align 8, !tbaa !71, !noalias !318
  store <2 x i32> %i.bf, ptr %i.ay, align 8, !tbaa !71
  store <2 x i32> %i.be, ptr %i.ba, align 8, !tbaa !71
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.az, align 8, !tbaa !29, !noalias !167
  %i.bl = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.bl, ptr %i.az, align 8, !tbaa !29
  store <2 x ptr> %i.bk, ptr %i.bb, align 8, !tbaa !29
  %i.bm = load <2 x i32>, ptr %i.bg, align 8, !tbaa !71, !noalias !321
  %i.bn = load <2 x i32>, ptr %i.bi, align 8, !tbaa !71, !noalias !324
  store <2 x i32> %i.bn, ptr %i.bg, align 8, !tbaa !71
  store <2 x i32> %i.bm, ptr %i.bi, align 8, !tbaa !71
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !29, !noalias !167
  %i.bt = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.bt, ptr %i.bh, align 8, !tbaa !29
  store <2 x ptr> %i.bs, ptr %i.bj, align 8, !tbaa !29
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !63, !noalias !327
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !63, !noalias !330
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !63
  %i.bw = load <2 x i32>, ptr %i.bo, align 8, !tbaa !71, !noalias !327
  %i.bx = load <2 x i32>, ptr %i.bq, align 8, !tbaa !71, !noalias !330
  store <2 x i32> %i.bx, ptr %i.bo, align 8, !tbaa !71
  store <2 x i32> %i.bw, ptr %i.bq, align 8, !tbaa !71
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !29
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.by, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !333
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !333
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !333
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !333
  ret void
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf20FieldDescriptorProtoC2EPNS0_5ArenaEb:bb.a
  store i32 1, ptr %i.j, align 8, !tbaa !354
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20FieldDescriptorProtoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf20FieldDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc19, label %bb.a

.noexc19:                                         ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc19, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.l, align 8, !tbaa !93
  %i.m = load i32, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.e

bb.d:                                             ; preds = %.noexc19, %bb.r, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.a
  %i.z = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.m, %bb.a ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.aa, align 8, !tbaa !93
  %i.ab = and i32 %i.z, 2
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -2
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ai = trunc i64 %i.ah to i1
  %i.aj = and i64 %i.ah, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  br i1 %i.ai, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23: ; preds = %bb.g, %bb.f
  %.0.i.i22 = phi ptr [ %i.al, %bb.g ], [ %i.ak, %bb.f ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef %.0.i.i22)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23
  %.pre34 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23._crit_edge, %bb.e
  %i.am = phi i32 [ %.pre34, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23._crit_edge ], [ %i.z, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.an, align 8, !tbaa !93
  %i.ao = and i32 %i.am, 4
  %.not30 = icmp eq i32 %i.ao, 0
  br i1 %.not30, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !93
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, -2
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.av = trunc i64 %i.au to i1
  %i.aw = and i64 %i.au, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  br i1 %i.av, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25: ; preds = %bb.j, %bb.i
  %.0.i.i24 = phi ptr [ %i.ay, %bb.j ], [ %i.ax, %bb.i ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef %.0.i.i24)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25
  %.pre35 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25._crit_edge, %bb.h
  %i.az = phi i32 [ %.pre35, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit25._crit_edge ], [ %i.am, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ba, align 8, !tbaa !93
  %i.bb = and i32 %i.az, 8
  %.not31 = icmp eq i32 %i.bb, 0
  br i1 %.not31, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !93
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, -2
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.bi = trunc i64 %i.bh to i1
  %i.bj = and i64 %i.bh, -4
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  br i1 %i.bi, label %bb.m, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27: ; preds = %bb.m, %bb.l
  %.0.i.i26 = phi ptr [ %i.bl, %bb.m ], [ %i.bk, %bb.l ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef %.0.i.i26)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27
  %.pre36 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27._crit_edge, %bb.k
  %i.bm = phi i32 [ %.pre36, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit27._crit_edge ], [ %i.az, %bb.k ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.bn, align 8, !tbaa !93
  %i.bo = and i32 %i.bm, 16
  %.not32 = icmp eq i32 %i.bo, 0
  br i1 %.not32, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !93
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, -2
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.bv = trunc i64 %i.bu to i1
  %i.bw = and i64 %i.bu, -4
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  br i1 %i.bv, label %bb.p, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29: ; preds = %bb.p, %bb.o
  %.0.i.i28 = phi ptr [ %i.by, %bb.p ], [ %i.bx, %bb.o ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef %.0.i.i28)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29
  %.pre37 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29._crit_edge, %bb.n
  %i.bz = phi i32 [ %.pre37, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit29._crit_edge ], [ %i.bm, %bb.n ]
  %i.ca = and i32 %i.bz, 32
  %.not33 = icmp eq i32 %i.ca, 0                  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %2 = load ptr, ptr %i.cb, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not33, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not33, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
          to label %bb.s unwind label %bb.d       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !350
  invoke void @_ZN6google8protobuf12FieldOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.cc, ptr noundef nonnull align 8 dereferenceable(88) %i.cd)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 88) #23
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %bb.s
  %.sink = phi ptr [ %i.cc, %bb.s ], [ null, %bb.q ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink, ptr %i.cf, align 8, !tbaa !350
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cg, ptr noundef nonnull align 8 dereferenceable(20) %i.ch, i64 20, i1 false)
  ret void

bb.v:                                             ; preds = %bb.t, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.y, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf20FieldDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(96) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.o, !inline_history !355

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i unwind label %bb.o, !inline_history !355

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i: ; preds = %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = icmp eq ptr %i.n, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.o, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i unwind label %bb.o, !inline_history !355

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i: ; preds = %bb.f, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = icmp eq ptr %i.q, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.r, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i unwind label %bb.o, !inline_history !355

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i: ; preds = %bb.g, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93
  %i.u = icmp eq ptr %i.t, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.u, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i unwind label %bb.o, !inline_history !355

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i: ; preds = %bb.h, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf39_FieldDescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf20FieldDescriptorProto10SharedDtorEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !350  ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN6google8protobuf20FieldDescriptorProto10SharedDtorEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN6google8protobuf12FieldOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(88) %i.w) #22, !inline_history !355
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 88) #23, !inline_history !355
  br label %_ZN6google8protobuf20FieldDescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf20FieldDescriptorProto10SharedDtorEv.exit: ; preds = %bb.j, %bb.i, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit5.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.k:                                             ; preds = %_ZN6google8protobuf20FieldDescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge unwind label %bb.o

._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge: ; preds = %bb.k
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge, %_ZN6google8protobuf20FieldDescriptorProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.aa = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge ], [ %i.y, %_ZN6google8protobuf20FieldDescriptorProto10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ab = and i64 %i.aa, 2
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  %i.ac = trunc i64 %i.aa to i1
  %i.ad = and i64 %i.aa, -4
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  br i1 %i.ac, label %bb.m, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.af, %bb.m ], [ %i.ae, %bb.l ] ; 3 uses
  %i.ag = icmp eq ptr %.0.i.i.i, null
  br i1 %i.ag, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf20FieldDescriptorProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf20FieldDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(96) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf20FieldDescriptorProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6google8protobuf20FieldDescriptorProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20FieldDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 9 uses
  %i.c = and i32 %i.b, 63
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf12FieldOptions5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf20FieldDescriptorProto9MergeFromERKS1_:bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dr = and i32 %i.b, 1024
  %.not39 = icmp eq i32 %i.dr, 0
  br i1 %.not39, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !354
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !354
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !71
  %i.dx = or i32 %i.dw, %i.b
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !71
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11 ; 2 uses
  %i.ea = trunc i64 %i.dz to i1
  br i1 %i.ea, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ec = and i64 %i.dz, -4
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.ah, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf12FieldOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !360
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !71   ; 8 uses
  %i.v = and i32 %i.u, 63
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit
  %i.w = and i32 %i.u, 1
  %.not18 = icmp eq i32 %i.w, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !361
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.y, ptr %i.z, align 8, !tbaa !361
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = and i32 %i.u, 2
  %.not19 = icmp eq i32 %i.aa, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !363, !range !166, !noundef !167
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !363
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = and i32 %i.u, 4
  %.not20 = icmp eq i32 %i.ae, 0
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !364, !range !166, !noundef !167
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !364
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = and i32 %i.u, 8
  %.not21 = icmp eq i32 %i.ai, 0
  br i1 %.not21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !365, !range !166, !noundef !167
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %i.ak, ptr %i.al, align 2, !tbaa !365
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = and i32 %i.u, 16
  %.not22 = icmp eq i32 %i.am, 0
  br i1 %.not22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !366, !range !166, !noundef !167
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 79
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !366
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = and i32 %i.u, 32
  %.not23 = icmp eq i32 %i.aq, 0
  br i1 %.not23, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !367
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.as, ptr %i.at, align 8, !tbaa !367
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !71
  %i.aw = or i32 %i.av, %i.u
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull @_ZN6google8protobuf31_FieldOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = and i64 %i.ba, -4
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bf)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.q, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20FieldDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf20FieldDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN6google8protobuf20FieldDescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %1 = icmp ne ptr %i.e, null
  %2 = select i1 %.not, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not, label %_ZNK6google8protobuf12FieldOptions13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.g, label %bb.c, label %_ZNK6google8protobuf12FieldOptions13IsInitializedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZNK6google8protobuf12FieldOptions13IsInitializedEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = zext nneg i32 %i.i to i64
  br label %bb.d

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.n, label %_ZNK6google8protobuf12FieldOptions13IsInitializedEv.exit, label %bb.d, !llvm.loop !181

bb.d:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp slt i32 %i.r, 1
  br i1 %i.u, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = zext nneg i32 %i.r to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.w = add nsw i64 %indvars.iv.i.i.i.i8, -1     ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.f, !llvm.loop !182

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.i.i.i.i8 = phi i64 [ %i.v, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = and i32 %i.ac, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 3
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK6google8protobuf12FieldOptions13IsInitializedEv.exit, !llvm.loop !182

_ZNK6google8protobuf12FieldOptions13IsInitializedEv.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.f, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf12FieldOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf20FieldDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.k = load i64, ptr %i.i, align 8, !tbaa !29
  store i64 %i.k, ptr %i.j, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  store i64 %i.n, ptr %i.m, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i24, ptr %i.l, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i25 = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.q = load i64, ptr %i.o, align 8, !tbaa !29
  store i64 %i.q, ptr %i.p, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i25, ptr %i.o, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i26 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.t = load i64, ptr %i.r, align 8, !tbaa !29
  store i64 %i.t, ptr %i.s, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i26, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  store i64 %i.w, ptr %i.v, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i27, ptr %i.u, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.x, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.0.copyload.i.i.i = load i8, ptr %i.z, align 8
  %i.ab = load i8, ptr %i.aa, align 8
  store i8 %i.ab, ptr %i.z, align 8
  store i8 %.0.copyload.i.i.i, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !71
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !71
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !71
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 8, !tbaa !71
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !71
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !71
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf20FieldDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 96))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN6google8protobuf20OneofDescriptorProto9_Internal7optionsEPKS1_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProtoC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf20OneofDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !368
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProtoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf20OneofDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc10, label %bb.a

.noexc10:                                         ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc10, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.l, align 8, !tbaa !93
  %i.m = load i32, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.e

bb.d:                                             ; preds = %.noexc10, %bb.f, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.a
  %i.z = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.m, %bb.a ]
  %i.aa = and i32 %i.z, 2
  %.not = icmp eq i32 %i.aa, 0                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %2 = load ptr, ptr %i.ab, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24
          to label %bb.g unwind label %bb.d       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !368
  invoke void @_ZN6google8protobuf12OneofOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 72) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.g
  %.sink = phi ptr [ %i.ac, %bb.g ], [ null, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink, ptr %i.af, align 8, !tbaa !368
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.y, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.k, !inline_history !371

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf39_OneofDescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf20OneofDescriptorProto10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !368  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN6google8protobuf20OneofDescriptorProto10SharedDtorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf12OneofOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(72) %i.k) #22, !inline_history !371
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 72) #23, !inline_history !371
  br label %_ZN6google8protobuf20OneofDescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf20OneofDescriptorProto10SharedDtorEv.exit: ; preds = %bb.f, %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %_ZN6google8protobuf20OneofDescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge unwind label %bb.k

._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge, %_ZN6google8protobuf20OneofDescriptorProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.o = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge ], [ %i.m, %_ZN6google8protobuf20OneofDescriptorProto10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !14
  %i.p = and i64 %i.o, 2
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  %i.q = trunc i64 %i.o to i1
  %i.r = and i64 %i.o, -4
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  br i1 %i.q, label %bb.i, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.t, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  %i.u = icmp eq ptr %.0.i.i.i, null
  br i1 %i.u, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.g, %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf20OneofDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6google8protobuf20OneofDescriptorProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf12OneofOptions5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -2
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !95
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !98
  store i8 0, ptr %i.k, align 1, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.b, 2
  %.not4 = icmp eq i32 %i.l, 0
  br i1 %.not4, label %_ZN6google8protobuf12OneofOptions5ClearEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !368  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  tail call void @_ZN6google8protobuf19UninterpretedOption5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %i.w)
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf20OneofDescriptorProto9MergeFromERKS1_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !71
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = trunc i64 %i.o to i1
  %i.q = and i64 %i.o, -4
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %i.p, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.s, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %.0.i.i)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.b
  %i.t = and i32 %i.b, 2
  %.not8 = icmp eq i32 %i.t, 0
  br i1 %.not8, label %_ZN6google8protobuf12OneofOptions9MergeFromERKS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !71
  %i.w = or i32 %i.v, 2
  store i32 %i.w, ptr %i.u, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !368  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf20OneofDescriptorProto25_internal_mutable_optionsEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  %i.ad = and i64 %i.ab, -4
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  br i1 %i.ac, label %bb.h, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.af, %bb.h ], [ %i.ae, %bb.g ]
  %i.ag = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageINS0_12OneofOptionsEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !373 ; 2 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !368
  br label %_ZN6google8protobuf20OneofDescriptorProto25_internal_mutable_optionsEv.exit

_ZN6google8protobuf20OneofDescriptorProto25_internal_mutable_optionsEv.exit: ; preds = %bb.f, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.ah = phi ptr [ %i.ag, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.y, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !368 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  %i.ak = select i1 %.not.i, ptr @_ZN6google8protobuf31_OneofOptions_default_instance_E, ptr %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !24 ; 4 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf20OneofDescriptorProto25_internal_mutable_optionsEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i32 noundef %i.am), !inline_history !374
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.av = load i32, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !24
  %i.ay = sub nsw i32 %i.av, %i.ax
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef %i.as, ptr noundef nonnull %i.ar, i32 noundef %i.am, i32 noundef %i.ay), !inline_history !375
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !24
  %i.ba = add nsw i32 %i.az, %i.am                ; 3 uses
  store i32 %i.ba, ptr %i.aw, align 8, !tbaa !24
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !25
  %i.bd = icmp slt i32 %i.bc, %i.ba
  br i1 %i.bd, label %bb.j, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i: ; preds = %bb.j, %bb.i, %_ZN6google8protobuf20OneofDescriptorProto25_internal_mutable_optionsEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull @_ZN6google8protobuf31_OneofOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.bf), !inline_history !376
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, label %_ZN6google8protobuf12OneofOptions9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bk = and i64 %i.bh, -4
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bm), !inline_history !376
  br label %_ZN6google8protobuf12OneofOptions9MergeFromERKS1_.exit

_ZN6google8protobuf12OneofOptions9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit.i, %bb.e, %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11 ; 2 uses
  %i.bp = trunc i64 %i.bo to i1
  br i1 %i.bp, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf12OneofOptions9MergeFromERKS1_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = and i64 %i.bo, -4
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %_ZN6google8protobuf12OneofOptions9MergeFromERKS1_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf12OneofOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b), !inline_history !163
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !164
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull @_ZN6google8protobuf31_OneofOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = and i64 %i.w, -4
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf20OneofDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN6google8protobuf20OneofDescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf20OneofDescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %1 = icmp ne ptr %i.e, null
  %2 = select i1 %.not, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not, label %_ZNK6google8protobuf12OneofOptions13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.g, label %bb.c, label %_ZNK6google8protobuf12OneofOptions13IsInitializedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZNK6google8protobuf12OneofOptions13IsInitializedEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = zext nneg i32 %i.i to i64
  br label %bb.d

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.n, label %_ZNK6google8protobuf12OneofOptions13IsInitializedEv.exit, label %bb.d, !llvm.loop !181

bb.d:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp slt i32 %i.r, 1
  br i1 %i.u, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = zext nneg i32 %i.r to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.w = add nsw i64 %indvars.iv.i.i.i.i8, -1     ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.f, !llvm.loop !182

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.i.i.i.i8 = phi i64 [ %i.v, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = and i32 %i.ac, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 3
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK6google8protobuf12OneofOptions13IsInitializedEv.exit, !llvm.loop !182

_ZNK6google8protobuf12OneofOptions13IsInitializedEv.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.f, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf12OneofOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf20OneofDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.k = load i64, ptr %i.i, align 8, !tbaa !29
  store i64 %i.k, ptr %i.j, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !377
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !377
  store ptr %i.o, ptr %i.l, align 8, !tbaa !377
  store ptr %i.n, ptr %i.m, align 8, !tbaa !377
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf20OneofDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 112))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf37EnumDescriptorProto_EnumReservedRangeC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf37EnumDescriptorProto_EnumReservedRangeE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf37EnumDescriptorProto_EnumReservedRangeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf37EnumDescriptorProto_EnumReservedRangeE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc5, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc5:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit unwind label %bb.a

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc, %.noexc5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %i.l, align 8
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEED2Ev:bb.a
bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf19EnumDescriptorProtoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf19EnumDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEEC2ERKS3_.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc22 unwind label %bb.h

.noexc22:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc23 unwind label %bb.h

.noexc23:                                         ; preds = %.noexc22
  %i.t = load i32, ptr %i.q, align 8, !tbaa !24
  %i.u = add nsw i32 %i.t, %i.h                   ; 3 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !24
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !25
  %i.x = icmp slt i32 %i.w, %i.u
  br i1 %i.x, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEEC2ERKS3_.exit

bb.b:                                             ; preds = %.noexc23
  store i32 %i.u, ptr %i.v, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEEC2ERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEEC2ERKS3_.exit: ; preds = %bb.b, %.noexc23, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !24  ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEEC2ERKS3_.exit, label %.noexc.i24

.noexc.i24:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEEC2ERKS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i32 noundef %i.aa)
          to label %.noexc25 unwind label %bb.i

.noexc25:                                         ; preds = %.noexc.i24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !24
  %i.al = sub nsw i32 %i.ai, %i.ak
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef %i.ae, ptr noundef nonnull %i.af, i32 noundef %i.aa, i32 noundef %i.al)
          to label %.noexc26 unwind label %bb.i

.noexc26:                                         ; preds = %.noexc25
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !24
  %i.an = add nsw i32 %i.am, %i.aa                ; 3 uses
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !24
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !25
  %i.aq = icmp slt i32 %i.ap, %i.an
  br i1 %i.aq, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEEC2ERKS3_.exit

bb.c:                                             ; preds = %.noexc26
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEEC2ERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEEC2ERKS3_.exit: ; preds = %bb.c, %.noexc26, %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEEC2ERKS3_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !24 ; 4 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.noexc, label %.noexc.i27

.noexc.i27:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEEC2ERKS3_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ax = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i32 noundef %i.at)
          to label %.noexc28 unwind label %bb.j

.noexc28:                                         ; preds = %.noexc.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !24
  %i.be = sub nsw i32 %i.bb, %i.bd
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvPPvSE_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef %i.ax, ptr noundef nonnull %i.ay, i32 noundef %i.at, i32 noundef %i.be)
          to label %.noexc29 unwind label %bb.j

.noexc29:                                         ; preds = %.noexc28
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !24
  %i.bg = add nsw i32 %i.bf, %i.at                ; 3 uses
  store i32 %i.bg, ptr %i.bc, align 8, !tbaa !24
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !25
  %i.bj = icmp slt i32 %i.bi, %i.bg
  br i1 %i.bj, label %bb.d, label %.noexc

bb.d:                                             ; preds = %.noexc29
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !25
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEEC2ERKS3_.exit, %.noexc29, %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %.noexc19, label %bb.e

.noexc19:                                         ; preds = %.noexc
  %i.bn = and i64 %i.bl, -4
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %.noexc19, %.noexc
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.bq, align 8, !tbaa !93
  %i.br = load i32, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !93
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, -2
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.bz = trunc i64 %i.by to i1
  %i.ca = and i64 %i.by, -4
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  br i1 %i.bz, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.cc, %bb.g ], [ %i.cb, %bb.f ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.k

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.l

bb.h:                                             ; preds = %.noexc22, %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.i:                                             ; preds = %.noexc25, %.noexc.i24
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %.noexc28, %.noexc.i27
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %.noexc19, %bb.m, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.e
  %i.ch = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.br, %bb.e ]
  %i.ci = and i32 %i.ch, 2
  %.not = icmp eq i32 %i.ci, 0                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %2 = load ptr, ptr %i.cj, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24
          to label %bb.n unwind label %bb.k       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !381
  invoke void @_ZN6google8protobuf11EnumOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(80) %i.cl)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 80) #23
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.n
  %.sink = phi ptr [ %i.ck, %bb.n ], [ null, %bb.l ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sink, ptr %i.cn, align 8, !tbaa !381
  ret void

bb.q:                                             ; preds = %bb.o, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.o ], [ %i.cg, %bb.k ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.cf, %bb.j ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ce, %bb.i ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.cd, %bb.h ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf19EnumDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.o, !inline_history !386

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf38_EnumDescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf19EnumDescriptorProto10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !381  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN6google8protobuf19EnumDescriptorProto10SharedDtorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf11EnumOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(80) %i.k) #22, !inline_history !386
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 80) #23, !inline_history !386
  br label %_ZN6google8protobuf19EnumDescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf19EnumDescriptorProto10SharedDtorEv.exit: ; preds = %bb.f, %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %_ZN6google8protobuf19EnumDescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit unwind label %bb.o

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %_ZN6google8protobuf19EnumDescriptorProto10SharedDtorEv.exit, %bb.g, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %.not.i.i = icmp ne ptr %i.r, null
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %.not.i.i, i1 %i.t, i1 false
  br i1 %i.u, label %bb.h, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEED2Ev.exit

bb.h:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %.not.i.i2 = icmp ne ptr %i.z, null
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = select i1 %.not.i.i2, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.j, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEED2Ev.exit

bb.j:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_37EnumDescriptorProto_EnumReservedRangeEED2Ev.exit, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !14
  %i.af = load i64, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ag = and i64 %i.af, 2
  %.not.i.i3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i3, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEED2Ev.exit
  %i.ah = trunc i64 %i.af to i1
  %i.ai = and i64 %i.af, -4
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  br i1 %i.ah, label %bb.m, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.ak, %bb.m ], [ %i.aj, %bb.l ] ; 3 uses
  %i.al = icmp eq ptr %.0.i.i.i, null
  br i1 %i.al, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_24EnumValueDescriptorProtoEED2Ev.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.g, %bb.d
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf19EnumDescriptorProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf19EnumDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf19EnumDescriptorProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6google8protobuf19EnumDescriptorProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf19EnumDescriptorProto9MergeFromERKS1_:bb.a
  br i1 %i.bu, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.bx, %bb.j ], [ %i.bw, %bb.i ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef %.0.i.i)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.h
  %i.by = and i32 %i.bg, 2
  %.not11 = icmp eq i32 %i.by, 0
  br i1 %.not11, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !71
  %i.cb = or i32 %i.ca, 2
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !71
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !381 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.m, label %_ZN6google8protobuf19EnumDescriptorProto25_internal_mutable_optionsEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %i.ch = trunc i64 %i.cg to i1
  %i.ci = and i64 %i.cg, -4
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  br i1 %i.ch, label %bb.n, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.ck, %bb.n ], [ %i.cj, %bb.m ]
  %i.cl = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageINS0_11EnumOptionsEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !407 ; 2 uses
  store ptr %i.cl, ptr %i.cc, align 8, !tbaa !381
  br label %_ZN6google8protobuf19EnumDescriptorProto25_internal_mutable_optionsEv.exit

_ZN6google8protobuf19EnumDescriptorProto25_internal_mutable_optionsEv.exit: ; preds = %bb.l, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.cm = phi ptr [ %i.cl, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.cd, %bb.l ]
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !381 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  %i.cp = select i1 %.not.i, ptr @_ZN6google8protobuf30_EnumOptions_default_instance_E, ptr %i.co
  tail call void @_ZN6google8protobuf11EnumOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.cm, ptr noundef nonnull align 8 dereferenceable(80) %i.cp)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_ZN6google8protobuf19EnumDescriptorProto25_internal_mutable_optionsEv.exit, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %i.cs = trunc i64 %i.cr to i1
  br i1 %i.cs, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = and i64 %i.cr, -4
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cw)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.o, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf11EnumOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b), !inline_history !163
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !164
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !71   ; 4 uses
  %i.v = and i32 %i.u, 3
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.w = and i32 %i.u, 1
  %.not10 = icmp eq i32 %i.w, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i8, ptr %i.x, align 8, !tbaa !408, !range !166, !noundef !167
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.y, ptr %i.z, align 8, !tbaa !408
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = and i32 %i.u, 2
  %.not11 = icmp eq i32 %i.aa, 0
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !410, !range !166, !noundef !167
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !410
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !71
  %i.ag = or i32 %i.af, %i.u
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull @_ZN6google8protobuf30_EnumOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = and i64 %i.ak, -4
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.i, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf19EnumDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf19EnumDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  tail call void @_ZN6google8protobuf19EnumDescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf19EnumDescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.e, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = and i32 %i.j, 2
  %.not.i.i = icmp eq i32 %i.k, 0                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %1 = icmp ne ptr %i.m, null
  %2 = select i1 %.not.i.i, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not.i.i, label %_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br i1 %i.o, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = zext nneg i32 %i.q to i64
  br label %bb.e

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.v = icmp slt i64 %indvars.iv.i.i.i.i, 2
  br i1 %i.v, label %_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv.exit.i, label %bb.e, !llvm.loop !181

bb.e:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp slt i32 %i.z, 1
  br i1 %i.ac, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = zext nneg i32 %i.z to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %indvars.iv.i.i.i.i.i.i19, -1 ; 2 uses
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %bb.g, !llvm.loop !182

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i.i.i.i.i.i19 = phi i64 [ %i.ad, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.i.i19
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.al = and i32 %i.ak, 3
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.al, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv.exit.i: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %bb.d, %bb.b
  %i.am = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.am, label %.loopexit, label %bb.b, !llvm.loop !411

.loopexit:                                        ; preds = %_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv.exit.i, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !71
  %i.ap = and i32 %i.ao, 2
  %.not = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %3 = icmp ne ptr %i.ar, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  br i1 %i.at, label %bb.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = zext nneg i32 %i.av to i64
  br label %bb.j

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.k, %bb.j
  %i.ba = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.ba, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.j, !llvm.loop !181

bb.j:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp slt i32 %i.be, 1
  br i1 %i.bh, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.j
  %i.bi = zext nneg i32 %i.be to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.bj = add nsw i64 %indvars.iv.i.i.i.i220, -1  ; 2 uses
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.l, !llvm.loop !182

bb.l:                                             ; preds = %.lr.ph21, %bb.k
  %indvars.iv.i.i.i.i220 = phi i64 [ %i.bi, %.lr.ph21 ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i.i220
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !71
  %i.bq = and i32 %i.bp, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.bq, 3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_24EnumValueDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.c, %bb.g, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.l, %bb.i, %.loopexit, %bb.h
  %.0 = phi i1 [ false, %bb.l ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ], [ false, %bb.g ], [ false, %bb.h ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf11EnumOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf19EnumDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !412
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !415
  store ptr %i.p, ptr %i.j, align 8, !tbaa !67
  store ptr %i.m, ptr %i.i, align 8, !tbaa !67
  %i.q = load <2 x i32>, ptr %i.k, align 8, !tbaa !71, !noalias !412
  %i.r = load <2 x i32>, ptr %i.n, align 8, !tbaa !71, !noalias !415
  store <2 x i32> %i.r, ptr %i.k, align 8, !tbaa !71
  store <2 x i32> %i.q, ptr %i.n, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.l, align 8, !tbaa !29, !noalias !167
  %i.x = load <2 x ptr>, ptr %i.o, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.x, ptr %i.l, align 8, !tbaa !29
  store <2 x ptr> %i.w, ptr %i.o, align 8, !tbaa !29
  %i.y = load <2 x i32>, ptr %i.s, align 8, !tbaa !71, !noalias !418
  %i.z = load <2 x i32>, ptr %i.u, align 8, !tbaa !71, !noalias !421
  store <2 x i32> %i.z, ptr %i.s, align 8, !tbaa !71
  store <2 x i32> %i.y, ptr %i.u, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.t, align 8, !tbaa !29, !noalias !167
  %i.af = load <2 x ptr>, ptr %i.v, align 8, !tbaa !29, !noalias !167
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !29
  store <2 x ptr> %i.ae, ptr %i.v, align 8, !tbaa !29
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !63, !noalias !424
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !63, !noalias !427
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !63
  %i.ai = load <2 x i32>, ptr %i.aa, align 8, !tbaa !71, !noalias !424
  %i.aj = load <2 x i32>, ptr %i.ac, align 8, !tbaa !71, !noalias !427
  store <2 x i32> %i.aj, ptr %i.aa, align 8, !tbaa !71
  store <2 x i32> %i.ai, ptr %i.ac, align 8, !tbaa !71
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !29
  store i64 %i.am, ptr %i.al, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.ak, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !430
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !430
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !430
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf19EnumDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 144))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN6google8protobuf24EnumValueDescriptorProto9_Internal7optionsEPKS1_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProtoC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 44)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf24EnumValueDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProtoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf24EnumValueDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc11, label %bb.a

.noexc11:                                         ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc11, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.l, align 8, !tbaa !93
  %i.m = load i32, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.e

bb.d:                                             ; preds = %.noexc11, %bb.f, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.a
  %i.z = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.m, %bb.a ]
  %i.aa = and i32 %i.z, 2
  %.not = icmp eq i32 %i.aa, 0                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %2 = load ptr, ptr %i.ab, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24
          to label %bb.g unwind label %bb.d       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !431
  invoke void @_ZN6google8protobuf16EnumValueOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 80) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.g
  %.sink = phi ptr [ %i.ac, %bb.g ], [ null, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink, ptr %i.af, align 8, !tbaa !431
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !434
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !434
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.y, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.k, !inline_history !435

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf43_EnumValueDescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf24EnumValueDescriptorProto10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !431  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN6google8protobuf24EnumValueDescriptorProto10SharedDtorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf16EnumValueOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(80) %i.k) #22, !inline_history !435
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 80) #23, !inline_history !435
  br label %_ZN6google8protobuf24EnumValueDescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf24EnumValueDescriptorProto10SharedDtorEv.exit: ; preds = %bb.f, %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %_ZN6google8protobuf24EnumValueDescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge unwind label %bb.k

._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge, %_ZN6google8protobuf24EnumValueDescriptorProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.o = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge ], [ %i.m, %_ZN6google8protobuf24EnumValueDescriptorProto10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !14
  %i.p = and i64 %i.o, 2
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  %i.q = trunc i64 %i.o to i1
  %i.r = and i64 %i.o, -4
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  br i1 %i.q, label %bb.i, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.t, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  %i.u = icmp eq ptr %.0.i.i.i, null
  br i1 %i.u, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.g, %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf24EnumValueDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6google8protobuf24EnumValueDescriptorProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf16EnumValueOptions5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -2
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !95
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !98
  store i8 0, ptr %i.k, align 1, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.b, 2
  %.not4 = icmp eq i32 %i.l, 0
  br i1 %.not4, label %_ZN6google8protobuf16EnumValueOptions5ClearEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !431  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE5ClearEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf24EnumValueDescriptorProto9MergeFromERKS1_:bb.a
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -2
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !71
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = trunc i64 %i.o to i1
  %i.q = and i64 %i.o, -4
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %i.p, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.s, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %.0.i.i)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.b
  %i.t = and i32 %i.b, 2
  %.not11 = icmp eq i32 %i.t, 0
  br i1 %.not11, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !71
  %i.w = or i32 %i.v, 2
  store i32 %i.w, ptr %i.u, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !431  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf24EnumValueDescriptorProto25_internal_mutable_optionsEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  %i.ad = and i64 %i.ab, -4
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  br i1 %i.ac, label %bb.h, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.af, %bb.h ], [ %i.ae, %bb.g ]
  %i.ag = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageINS0_16EnumValueOptionsEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !438 ; 2 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !431
  br label %_ZN6google8protobuf24EnumValueDescriptorProto25_internal_mutable_optionsEv.exit

_ZN6google8protobuf24EnumValueDescriptorProto25_internal_mutable_optionsEv.exit: ; preds = %bb.f, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.ah = phi ptr [ %i.ag, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.y, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !431 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  %i.ak = select i1 %.not.i, ptr @_ZN6google8protobuf35_EnumValueOptions_default_instance_E, ptr %i.aj
  tail call void @_ZN6google8protobuf16EnumValueOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.ak)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf24EnumValueDescriptorProto25_internal_mutable_optionsEv.exit, %bb.e
  %i.al = and i32 %i.b, 4
  %.not12 = icmp eq i32 %i.al, 0
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !434
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !434
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !71
  %i.ar = or i32 %i.aq, %i.b
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = and i64 %i.at, -4
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.l, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf16EnumValueOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !360
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !71
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i8, ptr %i.w, align 8, !tbaa !436, !range !166, !noundef !167
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !71
  %i.aa = or i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.ab, align 8, !tbaa !436
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @_ZN6google8protobuf35_EnumValueOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = and i64 %i.af, -4
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf24EnumValueDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  tail call void @_ZN6google8protobuf24EnumValueDescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf24EnumValueDescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %1 = icmp ne ptr %i.e, null
  %2 = select i1 %.not, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not, label %_ZNK6google8protobuf16EnumValueOptions13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.g, label %bb.c, label %_ZNK6google8protobuf16EnumValueOptions13IsInitializedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZNK6google8protobuf16EnumValueOptions13IsInitializedEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = zext nneg i32 %i.i to i64
  br label %bb.d

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.n, label %_ZNK6google8protobuf16EnumValueOptions13IsInitializedEv.exit, label %bb.d, !llvm.loop !181

bb.d:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp slt i32 %i.r, 1
  br i1 %i.u, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = zext nneg i32 %i.r to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.w = add nsw i64 %indvars.iv.i.i.i.i8, -1     ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.f, !llvm.loop !182

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.i.i.i.i8 = phi i64 [ %i.v, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = and i32 %i.ac, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 3
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK6google8protobuf16EnumValueOptions13IsInitializedEv.exit, !llvm.loop !182

_ZNK6google8protobuf16EnumValueOptions13IsInitializedEv.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.f, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf16EnumValueOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf24EnumValueDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.k = load i64, ptr %i.i, align 8, !tbaa !29
  store i64 %i.k, ptr %i.j, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %i.l, align 8
  store i64 %.0.copyload.i.i, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.o, align 8
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.o, align 8
  store i32 %.0.copyload.i.i.i, ptr %i.p, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf24EnumValueDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 160))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN6google8protobuf22ServiceDescriptorProto9_Internal7optionsEPKS1_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProtoC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf22ServiceDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.i, align 8, !tbaa !439
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProtoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf22ServiceDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc16 unwind label %bb.f

.noexc16:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_21MethodDescriptorProtoEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc17 unwind label %bb.f

.noexc17:                                         ; preds = %.noexc16
  %i.t = load i32, ptr %i.q, align 8, !tbaa !24
  %i.u = add nsw i32 %i.t, %i.h                   ; 3 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !24
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !25
  %i.x = icmp slt i32 %i.w, %i.u
  br i1 %i.x, label %bb.b, label %.noexc

bb.b:                                             ; preds = %.noexc17
  store i32 %i.u, ptr %i.v, align 8, !tbaa !25
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc17, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %.noexc13, label %bb.c

.noexc13:                                         ; preds = %.noexc
  %i.ab = and i64 %i.z, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.noexc13, %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ae, align 8, !tbaa !93
  %i.af = load i32, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -2
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.an = trunc i64 %i.am to i1
  %i.ao = and i64 %i.am, -4
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  br i1 %i.an, label %bb.e, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ap, %bb.d ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.g

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.h

bb.f:                                             ; preds = %.noexc16, %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.g:                                             ; preds = %.noexc13, %bb.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.c
  %i.at = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.af, %bb.c ]
  %i.au = and i32 %i.at, 2
  %.not = icmp eq i32 %i.au, 0                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %2 = load ptr, ptr %i.av, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24
          to label %bb.j unwind label %bb.g       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !439
  invoke void @_ZN6google8protobuf14ServiceOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.ax)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 80) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.j
  %.sink = phi ptr [ %i.aw, %bb.j ], [ null, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink, ptr %i.az, align 8, !tbaa !439
  ret void

bb.m:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.as, %bb.g ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.ar, %bb.f ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.m, !inline_history !443

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf41_ServiceDescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf22ServiceDescriptorProto10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN6google8protobuf22ServiceDescriptorProto10SharedDtorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf14ServiceOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(80) %i.k) #22, !inline_history !443
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 80) #23, !inline_history !443
  br label %_ZN6google8protobuf22ServiceDescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf22ServiceDescriptorProto10SharedDtorEv.exit: ; preds = %bb.f, %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %_ZN6google8protobuf22ServiceDescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit unwind label %bb.m

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %_ZN6google8protobuf22ServiceDescriptorProto10SharedDtorEv.exit, %bb.g, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %.not.i.i = icmp ne ptr %i.q, null
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = icmp eq ptr %i.r, null
  %i.t = select i1 %.not.i.i, i1 %i.s, i1 false
  br i1 %i.t, label %bb.h, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEED2Ev.exit

bb.h:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !14
  %i.w = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.x = and i64 %i.w, 2
  %.not.i.i2 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i2, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEED2Ev.exit
  %i.y = trunc i64 %i.w to i1
  %i.z = and i64 %i.w, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  br i1 %i.y, label %bb.k, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.ab, %bb.k ], [ %i.aa, %bb.j ] ; 3 uses
  %i.ac = icmp eq ptr %.0.i.i.i, null
  br i1 %i.ac, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEED2Ev.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.g, %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf22ServiceDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6google8protobuf22ServiceDescriptorProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  tail call void @_ZN6google8protobuf21MethodDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.h)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.c, !llvm.loop !444

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEE5ClearEv.exit: ; preds = %bb.a, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71   ; 3 uses
  %i.k = and i32 %i.j, 3
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf22ServiceDescriptorProto9MergeFromERKS1_:bb.a
bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEE9MergeFromERKS3_.exit
  %i.w = and i32 %i.u, 1
  %.not8 = icmp eq i32 %i.w, 0
  br i1 %.not8, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !71
  %i.ae = or i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = trunc i64 %i.ah to i1
  %i.aj = and i64 %i.ah, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  br i1 %i.ai, label %bb.f, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef %.0.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.d
  %i.am = and i32 %i.u, 2
  %.not9 = icmp eq i32 %i.am, 0
  br i1 %.not9, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !71
  %i.ap = or i32 %i.ao, 2
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !439 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %_ZN6google8protobuf22ServiceDescriptorProto25_internal_mutable_optionsEv.exit

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  %i.av = trunc i64 %i.au to i1
  %i.aw = and i64 %i.au, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  br i1 %i.av, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.ay, %bb.j ], [ %i.ax, %bb.i ]
  %i.az = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageINS0_14ServiceOptionsEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !455 ; 2 uses
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !439
  br label %_ZN6google8protobuf22ServiceDescriptorProto25_internal_mutable_optionsEv.exit

_ZN6google8protobuf22ServiceDescriptorProto25_internal_mutable_optionsEv.exit: ; preds = %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.ba = phi ptr [ %i.az, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.ar, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !439 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i, ptr @_ZN6google8protobuf33_ServiceOptions_default_instance_E, ptr %i.bc
  tail call void @_ZN6google8protobuf14ServiceOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(80) %i.bd)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZN6google8protobuf22ServiceDescriptorProto25_internal_mutable_optionsEv.exit, %_ZN6google8protobuf16RepeatedPtrFieldINS0_21MethodDescriptorProtoEE9MergeFromERKS3_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = and i64 %i.bf, -4
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.k, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf14ServiceOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b), !inline_history !163
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !164
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !71
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i8, ptr %i.w, align 8, !tbaa !445, !range !166, !noundef !167
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !71
  %i.aa = or i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.ab, align 8, !tbaa !445
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19UninterpretedOptionEE9MergeFromERKS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @_ZN6google8protobuf33_ServiceOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = and i64 %i.af, -4
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf22ServiceDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  tail call void @_ZN6google8protobuf22ServiceDescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf22ServiceDescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.e, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = and i32 %i.j, 8
  %.not.i.i = icmp eq i32 %i.k, 0                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %1 = icmp ne ptr %i.m, null
  %2 = select i1 %.not.i.i, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not.i.i, label %_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br i1 %i.o, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = zext nneg i32 %i.q to i64
  br label %bb.e

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.v = icmp slt i64 %indvars.iv.i.i.i.i, 2
  br i1 %i.v, label %_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv.exit.i, label %bb.e, !llvm.loop !181

bb.e:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp slt i32 %i.z, 1
  br i1 %i.ac, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = zext nneg i32 %i.z to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %indvars.iv.i.i.i.i.i.i19, -1 ; 2 uses
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %bb.g, !llvm.loop !182

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i.i.i.i.i.i19 = phi i64 [ %i.ad, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.i.i19
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.al = and i32 %i.ak, 3
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.al, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv.exit.i: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %bb.d, %bb.b
  %i.am = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.am, label %.loopexit, label %bb.b, !llvm.loop !456

.loopexit:                                        ; preds = %_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv.exit.i, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !71
  %i.ap = and i32 %i.ao, 2
  %.not = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %3 = icmp ne ptr %i.ar, null
  %4 = select i1 %.not, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  br i1 %i.at, label %bb.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = zext nneg i32 %i.av to i64
  br label %bb.j

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.k, %bb.j
  %i.ba = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.ba, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.j, !llvm.loop !181

bb.j:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp slt i32 %i.be, 1
  br i1 %i.bh, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.j
  %i.bi = zext nneg i32 %i.be to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.bj = add nsw i64 %indvars.iv.i.i.i.i220, -1  ; 2 uses
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.l, !llvm.loop !182

bb.l:                                             ; preds = %.lr.ph21, %bb.k
  %indvars.iv.i.i.i.i220 = phi i64 [ %i.bi, %.lr.ph21 ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i.i220
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !71
  %i.bq = and i32 %i.bp, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.bq, 3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_21MethodDescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.c, %bb.g, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.l, %bb.i, %.loopexit, %bb.h
  %.0 = phi i1 [ false, %bb.l ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ], [ false, %bb.g ], [ false, %bb.h ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf14ServiceOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf22ServiceDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63, !noalias !457
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !457
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63, !noalias !460
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !460
  store ptr %i.r, ptr %i.j, align 8, !tbaa !67
  store ptr %i.q, ptr %i.l, align 8, !tbaa !63
  store ptr %i.n, ptr %i.i, align 8, !tbaa !67
  %i.s = load <2 x i32>, ptr %i.k, align 8, !tbaa !71, !noalias !457
  %i.t = load <2 x i32>, ptr %i.o, align 8, !tbaa !71, !noalias !460
  store <2 x i32> %i.t, ptr %i.k, align 8, !tbaa !71
  store <2 x i32> %i.s, ptr %i.o, align 8, !tbaa !71
  store ptr %i.m, ptr %i.p, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  store i64 %i.w, ptr %i.v, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.u, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !463
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !463
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !463
  store ptr %i.z, ptr %i.y, align 8, !tbaa !463
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf22ServiceDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 176))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN6google8protobuf21MethodDescriptorProto9_Internal7optionsEPKS1_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !464
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProtoC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 58)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf21MethodDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.g, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.i, i8 0, i64 10, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProtoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf21MethodDescriptorProtoE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  store i32 %i.d, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc15, label %bb.a

.noexc15:                                         ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc15, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.l, align 8, !tbaa !93
  %i.m = load i32, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.e

bb.d:                                             ; preds = %.noexc15, %bb.l, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.a
  %i.z = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.m, %bb.a ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.aa, align 8, !tbaa !93
  %i.ab = and i32 %i.z, 2
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -2
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ai = trunc i64 %i.ah to i1
  %i.aj = and i64 %i.ah, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  br i1 %i.ai, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19: ; preds = %bb.g, %bb.f
  %.0.i.i18 = phi ptr [ %i.al, %bb.g ], [ %i.ak, %bb.f ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef %.0.i.i18)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19
  %.pre24 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19._crit_edge, %bb.e
  %i.am = phi i32 [ %.pre24, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit19._crit_edge ], [ %i.z, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.an, align 8, !tbaa !93
  %i.ao = and i32 %i.am, 4
  %.not22 = icmp eq i32 %i.ao, 0
  br i1 %.not22, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !93
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, -2
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.av = trunc i64 %i.au to i1
  %i.aw = and i64 %i.au, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  br i1 %i.av, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21: ; preds = %bb.j, %bb.i
  %.0.i.i20 = phi ptr [ %i.ay, %bb.j ], [ %i.ax, %bb.i ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef %.0.i.i20)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21
  %.pre25 = load i32, ptr %i.c, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge, %bb.h
  %i.az = phi i32 [ %.pre25, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge ], [ %i.am, %bb.h ]
  %i.ba = and i32 %i.az, 8
  %.not23 = icmp eq i32 %i.ba, 0                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %2 = load ptr, ptr %i.bb, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not23, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24
          to label %bb.m unwind label %bb.d       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !464
  invoke void @_ZN6google8protobuf13MethodOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(80) %i.bd)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 80) #23
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.m
  %.sink = phi ptr [ %i.bc, %bb.m ], [ null, %bb.k ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink, ptr %i.bf, align 8, !tbaa !464
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bi = load i16, ptr %i.bh, align 8
  store i16 %i.bi, ptr %i.bg, align 8
  ret void

bb.p:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.y, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.m, !inline_history !467

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i unwind label %bb.m, !inline_history !467

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i: ; preds = %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = icmp eq ptr %i.n, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.o, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i unwind label %bb.m, !inline_history !467

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i: ; preds = %bb.f, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf40_MethodDescriptorProto_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf21MethodDescriptorProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !464  ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6google8protobuf21MethodDescriptorProto10SharedDtorEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6google8protobuf13MethodOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.q) #22, !inline_history !467
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 80) #23, !inline_history !467
  br label %_ZN6google8protobuf21MethodDescriptorProto10SharedDtorEv.exit

_ZN6google8protobuf21MethodDescriptorProto10SharedDtorEv.exit: ; preds = %bb.h, %bb.g, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.i, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.i:                                             ; preds = %_ZN6google8protobuf21MethodDescriptorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge unwind label %bb.m

._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge: ; preds = %bb.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge, %_ZN6google8protobuf21MethodDescriptorProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.u = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge ], [ %i.s, %_ZN6google8protobuf21MethodDescriptorProto10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !14
  %i.v = and i64 %i.u, 2
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  %i.w = trunc i64 %i.u to i1
  %i.x = and i64 %i.u, -4
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  br i1 %i.w, label %bb.k, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.z, %bb.k ], [ %i.y, %bb.j ] ; 3 uses
  %i.aa = icmp eq ptr %.0.i.i.i, null
  br i1 %i.aa, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf21MethodDescriptorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(64) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6google8protobuf21MethodDescriptorProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.c = and i32 %i.b, 15
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf13MethodOptions5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -2
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !95
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !98
  store i8 0, ptr %i.k, align 1, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.b, 2
  %.not6 = icmp eq i32 %i.l, 0
  br i1 %.not6, label %bb.f, label %bb.e
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf21MethodDescriptorProto9MergeFromERKS1_:bb.a

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !71
  %i.bc = or i32 %i.bb, 8
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !71
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !464 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_ZN6google8protobuf21MethodDescriptorProto25_internal_mutable_optionsEv.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = trunc i64 %i.bh to i1
  %i.bj = and i64 %i.bh, -4
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  br i1 %i.bi, label %bb.n, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.bl, %bb.n ], [ %i.bk, %bb.m ]
  %i.bm = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageINS0_13MethodOptionsEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !468 ; 2 uses
  store ptr %i.bm, ptr %i.bd, align 8, !tbaa !464
  br label %_ZN6google8protobuf21MethodDescriptorProto25_internal_mutable_optionsEv.exit

_ZN6google8protobuf21MethodDescriptorProto25_internal_mutable_optionsEv.exit: ; preds = %bb.l, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.bn = phi ptr [ %i.bm, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.be, %bb.l ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !464 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  %i.bq = select i1 %.not.i, ptr @_ZN6google8protobuf32_MethodOptions_default_instance_E, ptr %i.bp
  tail call void @_ZN6google8protobuf13MethodOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, ptr noundef nonnull align 8 dereferenceable(80) %i.bq)
  br label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf21MethodDescriptorProto25_internal_mutable_optionsEv.exit, %bb.k
  %i.br = and i32 %i.b, 16
  %.not20 = icmp eq i32 %i.br, 0
  br i1 %.not20, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !469, !range !166, !noundef !167
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.bt, ptr %i.bu, align 8, !tbaa !469
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = and i32 %i.b, 32
  %.not21 = icmp eq i32 %i.bv, 0
  br i1 %.not21, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !471, !range !166, !noundef !167
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !471
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !71
  %i.cb = or i32 %i.ca, %i.b
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !71
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.ce = trunc i64 %i.cd to i1
  br i1 %i.ce, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = and i64 %i.cd, -4
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.t, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13MethodOptions9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !360
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !71   ; 4 uses
  %i.v = and i32 %i.u, 3
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit
  %i.w = and i32 %i.u, 1
  %.not10 = icmp eq i32 %i.w, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i8, ptr %i.x, align 8, !tbaa !472, !range !166, !noundef !167
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.y, ptr %i.z, align 8, !tbaa !472
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = and i32 %i.u, 2
  %.not11 = icmp eq i32 %i.aa, 0
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !474
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !474
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !71
  %i.ag = or i32 %i.af, %i.u
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_16RepeatedPtrFieldINS0_19UninterpretedOptionEE11TypeHandlerEEEvRKS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPKNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull @_ZN6google8protobuf32_MethodOptions_default_instance_E, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = and i64 %i.ak, -4
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.i, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf21MethodDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  tail call void @_ZN6google8protobuf21MethodDescriptorProto9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf21MethodDescriptorProto13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %1 = icmp ne ptr %i.e, null
  %2 = select i1 %.not, i1 true, i1 %1
  tail call void @llvm.assume(i1 %2)
  br i1 %.not, label %_ZNK6google8protobuf13MethodOptions13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.g, label %bb.c, label %_ZNK6google8protobuf13MethodOptions13IsInitializedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZNK6google8protobuf13MethodOptions13IsInitializedEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = zext nneg i32 %i.i to i64
  br label %bb.d

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.n, label %_ZNK6google8protobuf13MethodOptions13IsInitializedEv.exit, label %bb.d, !llvm.loop !181

bb.d:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp slt i32 %i.r, 1
  br i1 %i.u, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = zext nneg i32 %i.r to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.w = add nsw i64 %indvars.iv.i.i.i.i8, -1     ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.f, !llvm.loop !182

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.i.i.i.i8 = phi i64 [ %i.v, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = and i32 %i.ac, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 3
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK6google8protobuf13MethodOptions13IsInitializedEv.exit, !llvm.loop !182

_ZNK6google8protobuf13MethodOptions13IsInitializedEv.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.f, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf13MethodOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !181

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !182

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf21MethodDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  store i64 %i.b, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !71
  %i.h = load i32, ptr %i.f, align 8, !tbaa !71
  store i32 %i.h, ptr %i.e, align 8, !tbaa !71
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.k = load i64, ptr %i.i, align 8, !tbaa !29
  store i64 %i.k, ptr %i.j, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  store i64 %i.n, ptr %i.m, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i16, ptr %i.l, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.q = load i64, ptr %i.o, align 8, !tbaa !29
  store i64 %i.q, ptr %i.p, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i17, ptr %i.o, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.r, align 8
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 8
  store i64 %.0.copyload.i.i, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.u, align 8
  %i.w = load i16, ptr %i.v, align 8
  store i16 %i.w, ptr %i.u, align 8
  store i16 %.0.copyload.i.i.i, ptr %i.v, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf21MethodDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 192))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf11FileOptionsC2EPNS0_5ArenaEb(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 16)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf11FileOptionsE, i64 16), ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN6google8protobuf8internal12ExtensionSetC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %1)
          to label %.preheader.preheader unwind label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.ptr, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.f, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E>, ptr %i.i, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_12
