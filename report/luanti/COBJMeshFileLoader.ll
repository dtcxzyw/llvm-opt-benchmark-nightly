Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COBJMeshFileLoader?download=true
inline.NumInlined: 1741
inline.NumDeleted: 697
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5scene18COBJMeshFileLoader10createMeshEPN2io9IReadFileE:bb.a
  %.pn166.pn1706 = phi { ptr, i32 } [ %i.ch, %.thread1688 ], [ %.pn166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ]
  %.sroa.0604.21705 = phi ptr [ %i.o, %.thread1688 ], [ %.sroa.0604.0873, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ]
  %.sroa.22.21704 = phi ptr [ %i.y, %.thread1688 ], [ %.sroa.22.0915, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ]
  %.sroa.0568.21703 = phi ptr [ %i.w, %.thread1688 ], [ %.sroa.0568.0957, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ]
  %.sroa.23.21702 = phi ptr [ %i.v, %.thread1688 ], [ %.sroa.23.0999, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ]
  %.sroa.0585.21701 = phi ptr [ %i.q, %.thread1688 ], [ %.sroa.0585.01041, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ]
  %.sroa.23618.21700 = phi ptr [ %i.p, %.thread1688 ], [ %.sroa.23618.01083, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ]
  %.sroa.0.121699 = phi ptr [ %i.bw, %.thread1688 ], [ %.sroa.0.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ] ; 2 uses
  %i.anp = ptrtoint ptr %.in to i64
  %i.anq = ptrtoint ptr %.sroa.0.121699 to i64
  %i.anr = sub i64 %i.anp, %i.anq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.121699, i64 noundef %i.anr) #29
  br label %_ZN4core5arrayIiED2Ev.exit491

_ZN4core5arrayIiED2Ev.exit491:                    ; preds = %.thread1670, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488, %bb.ha
  %.pn166.pn.pn1687 = phi { ptr, i32 } [ %i.dh, %.thread1670 ], [ %.pn166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ], [ %.pn166.pn1706, %bb.ha ]
  %.sroa.0604.31686 = phi ptr [ %i.o, %.thread1670 ], [ %.sroa.0604.0873, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ], [ %.sroa.0604.21705, %bb.ha ]
  %.sroa.22.31685 = phi ptr [ %i.y, %.thread1670 ], [ %.sroa.22.0915, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ], [ %.sroa.22.21704, %bb.ha ]
  %.sroa.0568.31684 = phi ptr [ %i.w, %.thread1670 ], [ %.sroa.0568.0957, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ], [ %.sroa.0568.21703, %bb.ha ]
  %.sroa.23.31683 = phi ptr [ %i.v, %.thread1670 ], [ %.sroa.23.0999, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ], [ %.sroa.23.21702, %bb.ha ]
  %.sroa.0585.31682 = phi ptr [ %i.q, %.thread1670 ], [ %.sroa.0585.01041, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ], [ %.sroa.0585.21701, %bb.ha ]
  %.sroa.23618.31681 = phi ptr [ %i.p, %.thread1670 ], [ %.sroa.23618.01083, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i488 ], [ %.sroa.23618.21700, %bb.ha ]
  %i.ans = load ptr, ptr %4, align 8, !tbaa !48   ; 2 uses
  %i.ant = icmp eq ptr %i.ans, %i.bu
  br i1 %i.ant, label %_ZN4core6stringIcED2Ev.exit495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492: ; preds = %_ZN4core5arrayIiED2Ev.exit491
  %i.anu = load i64, ptr %i.bu, align 8, !tbaa !47
  %i.anv = add i64 %i.anu, 1
  call void @_ZdlPvm(ptr noundef %i.ans, i64 noundef %i.anv) #29
  br label %_ZN4core6stringIcED2Ev.exit495

_ZN4core6stringIcED2Ev.exit495:                   ; preds = %_ZN4core5arrayIiED2Ev.exit491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.anw = load ptr, ptr %3, align 8, !tbaa !48   ; 2 uses
  %i.anx = icmp eq ptr %i.anw, %i.bs
  br i1 %i.anx, label %_ZN4core6stringIcED2Ev.exit499, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i496: ; preds = %_ZN4core6stringIcED2Ev.exit495
  %i.any = load i64, ptr %i.bs, align 8, !tbaa !47
  %i.anz = add i64 %i.any, 1
  call void @_ZdlPvm(ptr noundef %i.anw, i64 noundef %i.anz) #29
  br label %_ZN4core6stringIcED2Ev.exit499

_ZN4core6stringIcED2Ev.exit499:                   ; preds = %_ZN4core6stringIcED2Ev.exit495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.hb

bb.hb:                                            ; preds = %_ZN4core6stringIcED2Ev.exit499, %bb.w
  %.sroa.23618.4 = phi ptr [ %.sroa.23618.31681, %_ZN4core6stringIcED2Ev.exit499 ], [ %i.p, %bb.w ]
  %.sroa.0585.4 = phi ptr [ %.sroa.0585.31682, %_ZN4core6stringIcED2Ev.exit499 ], [ %i.q, %bb.w ]
  %.sroa.23.4 = phi ptr [ %.sroa.23.31683, %_ZN4core6stringIcED2Ev.exit499 ], [ %i.v, %bb.w ]
  %.sroa.0568.4 = phi ptr [ %.sroa.0568.31684, %_ZN4core6stringIcED2Ev.exit499 ], [ %i.w, %bb.w ]
  %.sroa.22.4 = phi ptr [ %.sroa.22.31685, %_ZN4core6stringIcED2Ev.exit499 ], [ %i.y, %bb.w ]
  %.sroa.0604.4 = phi ptr [ %.sroa.0604.31686, %_ZN4core6stringIcED2Ev.exit499 ], [ %i.o, %bb.w ]
  %.pn166.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn1687, %_ZN4core6stringIcED2Ev.exit499 ], [ %i.dg, %bb.w ]
  %i.aoa = load ptr, ptr %2, align 8, !tbaa !48   ; 2 uses
  %i.aob = icmp eq ptr %i.aoa, %i.be
  br i1 %i.aob, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500: ; preds = %bb.hb
  %i.aoc = load i64, ptr %i.be, align 8, !tbaa !47
  %i.aod = add i64 %i.aoc, 1
  call void @_ZdlPvm(ptr noundef %i.aoa, i64 noundef %i.aod) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502

.thread716:                                       ; preds = %bb.o, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn166.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.df, %bb.v ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body195

.body195:                                         ; preds = %.thread716, %bb.t, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502
  %.pn166.pn.pn.pn.pn.pn713 = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.ph, %.thread716 ], [ %.pn166.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502 ], [ %i.de, %bb.u ], [ %i.dd, %bb.t ]
  %.sroa.0604.6711 = phi ptr [ %i.o, %.thread716 ], [ %.sroa.0604.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502 ], [ %i.o, %bb.u ], [ %i.o, %bb.t ]
  %.sroa.22.6710 = phi ptr [ %i.y, %.thread716 ], [ %.sroa.22.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502 ], [ %i.y, %bb.u ], [ %i.y, %bb.t ]
  %.sroa.0568.6709 = phi ptr [ %i.w, %.thread716 ], [ %.sroa.0568.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502 ], [ %i.w, %bb.u ], [ %i.w, %bb.t ] ; 2 uses
  %.sroa.23.6707 = phi ptr [ %i.v, %.thread716 ], [ %.sroa.23.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502 ], [ %i.v, %bb.u ], [ %i.v, %bb.t ]
  %.sroa.0585.6705 = phi ptr [ %i.q, %.thread716 ], [ %.sroa.0585.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502 ], [ %i.q, %bb.u ], [ %i.q, %bb.t ]
  %.sroa.23618.6703 = phi ptr [ %i.p, %.thread716 ], [ %.sroa.23618.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i502 ], [ %i.p, %bb.u ], [ %i.p, %bb.t ]
  %i.aoe = ptrtoint ptr %.sroa.22.6710 to i64
  %i.aof = ptrtoint ptr %.sroa.0568.6709 to i64
  %i.aog = sub i64 %i.aoe, %i.aof
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0568.6709, i64 noundef %i.aog) #29
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit.i, %.body195
  %.pn166.pn.pn.pn.pn.pn.pn737 = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn713, %.body195 ], [ %i.x, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit.i ]
  %.sroa.0604.7735 = phi ptr [ %.sroa.0604.6711, %.body195 ], [ %i.o, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit.i ]
  %.sroa.23.7734 = phi ptr [ %.sroa.23.6707, %.body195 ], [ %i.v, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit.i ]
  %.sroa.0585.7733 = phi ptr [ %.sroa.0585.6705, %.body195 ], [ %i.q, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit.i ] ; 2 uses
  %.sroa.23618.7731 = phi ptr [ %.sroa.23618.6703, %.body195 ], [ %i.p, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit.i ]
  %i.aoh = ptrtoint ptr %.sroa.23.7734 to i64
  %i.aoi = ptrtoint ptr %.sroa.0585.7733 to i64
  %i.aoj = sub i64 %i.aoh, %i.aoi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0585.7733, i64 noundef %i.aoj) #29
  br label %common.resume

_ZN4core5arrayINS_8vector3dIfEEED2Ev.exit485:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i477, %bb.b, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i477 ]
  ret ptr %.8
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene18COBJMeshFileLoader7SObjMtlC2Ev(ptr noundef nonnull align 8 dereferenceable(126) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !46
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.k, align 8, !tbaa !46
  store i8 0, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !133
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 0, ptr %i.m, align 4, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 125
  store i8 0, ptr %i.n, align 1, !tbaa !96
  %i.o = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #31
          to label %bb.b unwind label %bb.d       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.o)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !81
  ret void

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 200) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.j
  br i1 %i.t, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.j, align 8, !tbaa !47
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.g
  br i1 %i.x, label %_ZN4core6stringIcED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.y = load i64, ptr %i.g, align 8, !tbaa !47
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %_ZN4core6stringIcED2Ev.exit6

_ZN4core6stringIcED2Ev.exit6:                     ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  tail call void @_ZNSt3mapIN5video9S3DVertexEiSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader8readVec3EPKcRN4core8vector3dIfEES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = ptrtoaddr ptr %3 to i64                  ; 6 uses
  %.not11.i.i = icmp eq ptr %1, %3
  br i1 %.not11.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core7isspaceEi.exit.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.f, %_ZN4core7isspaceEi.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !47
  switch i8 %i.e, label %_ZN4core7isspaceEi.exit.i.i [
    i8 32, label %.critedge.thread.i.i
    i8 13, label %.critedge.thread.i.i
    i8 12, label %.critedge.thread.i.i
    i8 10, label %.critedge.thread.i.i
    i8 9, label %.critedge.thread.i.i
    i8 11, label %.critedge.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i.i:                      ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.g = ptrtoaddr ptr %.012.i.i to i64
  %i.h = sub i64 %i.b, %i.g
  %scevgep29.i.i.i = getelementptr i8, ptr %.012.i.i, i64 %i.h
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.thread.i.i
  %.118.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.012.i.i, %.critedge.thread.i.i ] ; 3 uses
  %i.i = load i8, ptr %.118.i.i.i, align 1, !tbaa !47
  switch i8 %i.i, label %.preheader.i.i.preheader [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.118.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %3
  br i1 %.not.i.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i: ; preds = %_ZN4core7isspaceEi.exit.i.i, %bb.b, %bb.a
  %.2.i.i.i = phi ptr [ %1, %bb.a ], [ %scevgep29.i.i.i, %bb.b ], [ %scevgep.i.i, %_ZN4core7isspaceEi.exit.i.i ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not23.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  %.2.i.i.i94 = phi ptr [ %.2.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i ], [ %.118.i.i.i, %.lr.ph.i.i.i ] ; 10 uses
  br label %.preheader.i.i

bb.c:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.d
  %storemerge.i.i = phi i32 [ %i.o, %bb.d ], [ 0, %.preheader.i.i.preheader ] ; 6 uses
  %i.k = zext i32 %storemerge.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47
  switch i8 %i.m, label %_ZN4core7isspaceEi.exit.i10.i [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i10.i:                    ; preds = %.preheader.i.i
  %i.n = icmp eq ptr %i.l, %3
  br i1 %i.n, label %_ZN4core7isspaceEi.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i
  %i.o = add i32 %storemerge.i.i, 1
  br label %.preheader.i.i, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i:               ; preds = %_ZN4core7isspaceEi.exit.i10.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %.not30.i.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4core7isspaceEi.exit.thread.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 255)
  %wide.trip.count.i.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 12 uses
  %min.iters.check = icmp ult i32 %storemerge.i.i, 4
  %4 = ptrtoaddr ptr %i.a to i64
  %5 = ptrtoaddr ptr %.2.i.i.i94 to i64
  %i.p = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i9.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i32 %storemerge.i.i, 32
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 224      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !47
  %wide.load123 = load <16 x i8>, ptr %i.s, align 1, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 16, !tbaa !47
  store <16 x i8> %wide.load123, ptr %i.u, align 16, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i9.i.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i64 %wide.trip.count.i.i, 252   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %index125
  %wide.load126 = load <4 x i8>, ptr %i.w, align 1, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %index125
  store <4 x i8> %wide.load126, ptr %i.x, align 4, !tbaa !47
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next127, %n.vec124
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !222

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %n.vec124, %wide.trip.count.i.i
  br i1 %cmp.n128, label %._crit_edge.i.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol

.lr.ph.i9.i.prol:                                 ; preds = %.lr.ph.i9.i.preheader, %.lr.ph.i9.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i9.i.prol ], [ 0, %.lr.ph.i9.i.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.i.i.prol
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.prol
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !47
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol, !llvm.loop !223

.lr.ph.i9.i.prol.loopexit:                        ; preds = %.lr.ph.i9.i.prol, %.lr.ph.i9.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge.i.i, label %.lr.ph.i9.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i, %middle.block, %vec.epilog.middle.block, %_ZN4core7isspaceEi.exit.thread.i.i
  %.pre-phi.i.i = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %vec.epilog.middle.block ], [ %wide.trip.count.i.i, %.lr.ph.i9.i ], [ %wide.trip.count.i.i, %.lr.ph.i9.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i
  store i8 0, ptr %i.ae, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i9.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i9.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !47
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i.1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !47
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i.2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !47
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i9.i, !llvm.loop !224

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit: ; preds = %bb.c, %._crit_edge.i.i
  %.2.i.i.i93 = phi ptr [ null, %bb.c ], [ %.2.i.i.i94, %._crit_edge.i.i ] ; 5 uses
  %i.ar = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.as = fptrunc double %i.ar to float
  %i.at = fneg float %i.as
  store float %i.at, ptr %2, align 4, !tbaa !98
  %.not11.i.i11 = icmp eq ptr %.2.i.i.i93, %3
  br i1 %.not11.i.i11, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.preheader.i.i12

.lr.ph.preheader.i.i12:                           ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %i.au = ptrtoaddr ptr %.2.i.i.i93 to i64
  %i.av = sub i64 %i.b, %i.au
  %scevgep.i.i13 = getelementptr i8, ptr %.2.i.i.i93, i64 %i.av
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN4core7isspaceEi.exit.i.i38, %.lr.ph.preheader.i.i12
  %.012.i.i15 = phi ptr [ %i.ax, %_ZN4core7isspaceEi.exit.i.i38 ], [ %.2.i.i.i93, %.lr.ph.preheader.i.i12 ] ; 5 uses
  %i.aw = load i8, ptr %.012.i.i15, align 1, !tbaa !47
  switch i8 %i.aw, label %_ZN4core7isspaceEi.exit.i.i38 [
    i8 32, label %.critedge.thread.i.i16
    i8 13, label %.critedge.thread.i.i16
    i8 12, label %.critedge.thread.i.i16
    i8 10, label %.critedge.thread.i.i16
    i8 9, label %.critedge.thread.i.i16
    i8 11, label %.critedge.thread.i.i16
  ]

_ZN4core7isspaceEi.exit.i.i38:                    ; preds = %.lr.ph.i.i14
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i15, i64 1 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ax, %3
  br i1 %.not.i.i39, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.i.i14, !llvm.loop !0

.critedge.thread.i.i16:                           ; preds = %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14
  %i.ay = ptrtoaddr ptr %.012.i.i15 to i64
  %i.az = sub i64 %i.b, %i.ay
  %scevgep29.i.i.i17 = getelementptr i8, ptr %.012.i.i15, i64 %i.az
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.e, %.critedge.thread.i.i16
  %.118.i.i.i19 = phi ptr [ %i.bb, %bb.e ], [ %.012.i.i15, %.critedge.thread.i.i16 ] ; 3 uses
  %i.ba = load i8, ptr %.118.i.i.i19, align 1, !tbaa !47
  switch i8 %i.ba, label %.preheader.i.i24.preheader [
    i8 32, label %bb.e
    i8 9, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18
  %i.bb = getelementptr inbounds nuw i8, ptr %.118.i.i.i19, i64 1 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bb, %3
  br i1 %.not.i.i.i20, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.i.i.i18, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21: ; preds = %_ZN4core7isspaceEi.exit.i.i38, %bb.e, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %.2.i.i.i22 = phi ptr [ %.2.i.i.i93, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit ], [ %scevgep29.i.i.i17, %bb.e ], [ %scevgep.i.i13, %_ZN4core7isspaceEi.exit.i.i38 ] ; 2 uses
  %.not23.i.i23 = icmp eq ptr %.2.i.i.i22, null
  br i1 %.not23.i.i23, label %bb.f, label %.preheader.i.i24.preheader

.preheader.i.i24.preheader:                       ; preds = %.lr.ph.i.i.i18, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21
  %.2.i.i.i2298 = phi ptr [ %.2.i.i.i22, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21 ], [ %.118.i.i.i19, %.lr.ph.i.i.i18 ] ; 10 uses
  br label %.preheader.i.i24

bb.f:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40

.preheader.i.i24:                                 ; preds = %.preheader.i.i24.preheader, %bb.g
  %storemerge.i.i25 = phi i32 [ %i.bg, %bb.g ], [ 0, %.preheader.i.i24.preheader ] ; 6 uses
  %i.bc = zext i32 %storemerge.i.i25 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !47
  switch i8 %i.be, label %_ZN4core7isspaceEi.exit.i10.i37 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i26
  ]

_ZN4core7isspaceEi.exit.i10.i37:                  ; preds = %.preheader.i.i24
  %i.bf = icmp eq ptr %i.bd, %3
  br i1 %i.bf, label %_ZN4core7isspaceEi.exit.thread.i.i26, label %bb.g

bb.g:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i37
  %i.bg = add i32 %storemerge.i.i25, 1
  br label %.preheader.i.i24, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i26:             ; preds = %_ZN4core7isspaceEi.exit.i10.i37, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24
  %.not30.i.i28 = icmp eq i32 %storemerge.i.i25, 0
  br i1 %.not30.i.i28, label %._crit_edge.i.i35, label %iter.check145

iter.check145:                                    ; preds = %_ZN4core7isspaceEi.exit.thread.i.i26
  %.sroa.speculated.i.i27 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i25, i32 255)
  %wide.trip.count.i.i30 = zext nneg i32 %.sroa.speculated.i.i27 to i64 ; 12 uses
  %min.iters.check132 = icmp ult i32 %storemerge.i.i25, 4
  %6 = ptrtoaddr ptr %i.a to i64
  %7 = ptrtoaddr ptr %.2.i.i.i2298 to i64
  %i.bh = sub i64 %7, %6
  %diff.check131 = icmp ugt i64 %i.bh, -32
  %or.cond187 = or i1 %min.iters.check132, %diff.check131
  br i1 %or.cond187, label %.lr.ph.i9.i31.preheader, label %vector.main.loop.iter.check133

vector.main.loop.iter.check133:                   ; preds = %iter.check145
  %min.iters.check134 = icmp ult i32 %storemerge.i.i25, 32
  br i1 %min.iters.check134, label %vec.epilog.ph149, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check133
  %i.bi = and i64 %wide.trip.count.i.i30, 28
  %n.vec136 = and i64 %wide.trip.count.i.i30, 224 ; 4 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.ph135, %vector.body137
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next141, %vector.body137 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %index138 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load139 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !47
  %wide.load140 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %index138 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %wide.load139, ptr %i.bl, align 16, !tbaa !47
  store <16 x i8> %wide.load140, ptr %i.bm, align 16, !tbaa !47
  %index.next141 = add nuw i64 %index138, 32      ; 2 uses
  %i.bn = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.bn, label %middle.block142, label %vector.body137, !llvm.loop !225

middle.block142:                                  ; preds = %vector.body137
  %cmp.n143 = icmp eq i64 %n.vec136, %wide.trip.count.i.i30
  br i1 %cmp.n143, label %._crit_edge.i.i35, label %vec.epilog.iter.check147

vec.epilog.iter.check147:                         ; preds = %middle.block142
  %min.epilog.iters.check148 = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check148, label %.lr.ph.i9.i31.preheader, label %vec.epilog.ph149, !prof !60

vec.epilog.ph149:                                 ; preds = %vector.main.loop.iter.check133, %vec.epilog.iter.check147
  %vec.epilog.resume.val144 = phi i64 [ %n.vec136, %vec.epilog.iter.check147 ], [ 0, %vector.main.loop.iter.check133 ]
  %n.vec150 = and i64 %wide.trip.count.i.i30, 252 ; 3 uses
  br label %vec.epilog.vector.body151

vec.epilog.vector.body151:                        ; preds = %vec.epilog.vector.body151, %vec.epilog.ph149
  %index152 = phi i64 [ %vec.epilog.resume.val144, %vec.epilog.ph149 ], [ %index.next154, %vec.epilog.vector.body151 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %index152
  %wide.load153 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %index152
  store <4 x i8> %wide.load153, ptr %i.bp, align 4, !tbaa !47
  %index.next154 = add nuw i64 %index152, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next154, %n.vec150
  br i1 %i.bq, label %vec.epilog.middle.block155, label %vec.epilog.vector.body151, !llvm.loop !226

vec.epilog.middle.block155:                       ; preds = %vec.epilog.vector.body151
  %cmp.n156 = icmp eq i64 %n.vec150, %wide.trip.count.i.i30
  br i1 %cmp.n156, label %._crit_edge.i.i35, label %.lr.ph.i9.i31.preheader

.lr.ph.i9.i31.preheader:                          ; preds = %iter.check145, %vec.epilog.iter.check147, %vec.epilog.middle.block155
  %indvars.iv.i.i32.ph = phi i64 [ 0, %iter.check145 ], [ %n.vec136, %vec.epilog.iter.check147 ], [ %n.vec150, %vec.epilog.middle.block155 ] ; 3 uses
  %xtraiter198 = and i64 %wide.trip.count.i.i30, 3 ; 2 uses
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph.i9.i31.prol.loopexit, label %.lr.ph.i9.i31.prol

.lr.ph.i9.i31.prol:                               ; preds = %.lr.ph.i9.i31.preheader, %.lr.ph.i9.i31.prol
  %indvars.iv.i.i32.prol = phi i64 [ %indvars.iv.next.i.i33.prol, %.lr.ph.i9.i31.prol ], [ %indvars.iv.i.i32.ph, %.lr.ph.i9.i31.preheader ] ; 3 uses
  %prol.iter200 = phi i64 [ %prol.iter200.next, %.lr.ph.i9.i31.prol ], [ 0, %.lr.ph.i9.i31.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.i.i32.prol
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i32.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !47
  %indvars.iv.next.i.i33.prol = add nuw nsw i64 %indvars.iv.i.i32.prol, 1 ; 2 uses
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph.i9.i31.prol.loopexit, label %.lr.ph.i9.i31.prol, !llvm.loop !227

.lr.ph.i9.i31.prol.loopexit:                      ; preds = %.lr.ph.i9.i31.prol, %.lr.ph.i9.i31.preheader
  %indvars.iv.i.i32.unr = phi i64 [ %indvars.iv.i.i32.ph, %.lr.ph.i9.i31.preheader ], [ %indvars.iv.next.i.i33.prol, %.lr.ph.i9.i31.prol ]
  %i.bu = sub nsw i64 %indvars.iv.i.i32.ph, %wide.trip.count.i.i30
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge.i.i35, label %.lr.ph.i9.i31

._crit_edge.i.i35:                                ; preds = %.lr.ph.i9.i31.prol.loopexit, %.lr.ph.i9.i31, %middle.block142, %vec.epilog.middle.block155, %_ZN4core7isspaceEi.exit.thread.i.i26
  %.pre-phi.i.i36 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i26 ], [ %wide.trip.count.i.i30, %middle.block142 ], [ %wide.trip.count.i.i30, %vec.epilog.middle.block155 ], [ %wide.trip.count.i.i30, %.lr.ph.i9.i31 ], [ %wide.trip.count.i.i30, %.lr.ph.i9.i31.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i36
  store i8 0, ptr %i.bw, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40

.lr.ph.i9.i31:                                    ; preds = %.lr.ph.i9.i31.prol.loopexit, %.lr.ph.i9.i31
  %indvars.iv.i.i32 = phi i64 [ %indvars.iv.next.i.i33.3, %.lr.ph.i9.i31 ], [ %indvars.iv.i.i32.unr, %.lr.ph.i9.i31.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.i.i32
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i32
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !47
  %indvars.iv.next.i.i33 = add nuw nsw i64 %indvars.iv.i.i32, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !47
  %indvars.iv.next.i.i33.1 = add nuw nsw i64 %indvars.iv.i.i32, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33.1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33.1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !47
  %indvars.iv.next.i.i33.2 = add nuw nsw i64 %indvars.iv.i.i32, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33.2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !47
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33.2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !47
  %indvars.iv.next.i.i33.3 = add nuw nsw i64 %indvars.iv.i.i32, 4 ; 2 uses
  %exitcond.not.i.i34.3 = icmp eq i64 %indvars.iv.next.i.i33.3, %wide.trip.count.i.i30
  br i1 %exitcond.not.i.i34.3, label %._crit_edge.i.i35, label %.lr.ph.i9.i31, !llvm.loop !228

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40: ; preds = %bb.f, %._crit_edge.i.i35
  %.2.i.i.i2297 = phi ptr [ null, %bb.f ], [ %.2.i.i.i2298, %._crit_edge.i.i35 ] ; 5 uses
  %i.cj = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.ck = fptrunc double %i.cj to float
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !99
  %.not11.i.i41 = icmp eq ptr %.2.i.i.i2297, %3
  br i1 %.not11.i.i41, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.preheader.i.i42

.lr.ph.preheader.i.i42:                           ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40
  %i.cm = ptrtoaddr ptr %.2.i.i.i2297 to i64
  %i.cn = sub i64 %i.b, %i.cm
  %scevgep.i.i43 = getelementptr i8, ptr %.2.i.i.i2297, i64 %i.cn
  br label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %_ZN4core7isspaceEi.exit.i.i68, %.lr.ph.preheader.i.i42
  %.012.i.i45 = phi ptr [ %i.cp, %_ZN4core7isspaceEi.exit.i.i68 ], [ %.2.i.i.i2297, %.lr.ph.preheader.i.i42 ] ; 5 uses
  %i.co = load i8, ptr %.012.i.i45, align 1, !tbaa !47
  switch i8 %i.co, label %_ZN4core7isspaceEi.exit.i.i68 [
    i8 32, label %.critedge.thread.i.i46
    i8 13, label %.critedge.thread.i.i46
    i8 12, label %.critedge.thread.i.i46
    i8 10, label %.critedge.thread.i.i46
    i8 9, label %.critedge.thread.i.i46
    i8 11, label %.critedge.thread.i.i46
  ]

_ZN4core7isspaceEi.exit.i.i68:                    ; preds = %.lr.ph.i.i44
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i45, i64 1 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.cp, %3
  br i1 %.not.i.i69, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.i.i44, !llvm.loop !0

.critedge.thread.i.i46:                           ; preds = %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44
  %i.cq = ptrtoaddr ptr %.012.i.i45 to i64
  %i.cr = sub i64 %i.b, %i.cq
  %scevgep29.i.i.i47 = getelementptr i8, ptr %.012.i.i45, i64 %i.cr
  br label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %bb.h, %.critedge.thread.i.i46
  %.118.i.i.i49 = phi ptr [ %i.ct, %bb.h ], [ %.012.i.i45, %.critedge.thread.i.i46 ] ; 3 uses
  %i.cs = load i8, ptr %.118.i.i.i49, align 1, !tbaa !47
  switch i8 %i.cs, label %.preheader.i.i54.preheader [
    i8 32, label %bb.h
    i8 9, label %bb.h
    i8 11, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %.118.i.i.i49, i64 1 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.ct, %3
  br i1 %.not.i.i.i50, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.i.i.i48, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51: ; preds = %_ZN4core7isspaceEi.exit.i.i68, %bb.h, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40
  %.2.i.i.i52 = phi ptr [ %.2.i.i.i2297, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40 ], [ %scevgep29.i.i.i47, %bb.h ], [ %scevgep.i.i43, %_ZN4core7isspaceEi.exit.i.i68 ] ; 2 uses
  %.not23.i.i53 = icmp eq ptr %.2.i.i.i52, null
  br i1 %.not23.i.i53, label %bb.i, label %.preheader.i.i54.preheader

.preheader.i.i54.preheader:                       ; preds = %.lr.ph.i.i.i48, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51
  %.2.i.i.i52102 = phi ptr [ %.2.i.i.i52, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51 ], [ %.118.i.i.i49, %.lr.ph.i.i.i48 ] ; 10 uses
  br label %.preheader.i.i54

bb.i:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70

.preheader.i.i54:                                 ; preds = %.preheader.i.i54.preheader, %bb.j
  %storemerge.i.i55 = phi i32 [ %i.cy, %bb.j ], [ 0, %.preheader.i.i54.preheader ] ; 6 uses
  %i.cu = zext i32 %storemerge.i.i55 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !47
  switch i8 %i.cw, label %_ZN4core7isspaceEi.exit.i10.i67 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i56
  ]

_ZN4core7isspaceEi.exit.i10.i67:                  ; preds = %.preheader.i.i54
  %i.cx = icmp eq ptr %i.cv, %3
  br i1 %i.cx, label %_ZN4core7isspaceEi.exit.thread.i.i56, label %bb.j

bb.j:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i67
  %i.cy = add i32 %storemerge.i.i55, 1
  br label %.preheader.i.i54, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i56:             ; preds = %_ZN4core7isspaceEi.exit.i10.i67, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54
  %.not30.i.i58 = icmp eq i32 %storemerge.i.i55, 0
  br i1 %.not30.i.i58, label %._crit_edge.i.i65, label %iter.check174

iter.check174:                                    ; preds = %_ZN4core7isspaceEi.exit.thread.i.i56
  %.sroa.speculated.i.i57 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i55, i32 255)
  %wide.trip.count.i.i60 = zext nneg i32 %.sroa.speculated.i.i57 to i64 ; 12 uses
  %min.iters.check161 = icmp ult i32 %storemerge.i.i55, 4
  %8 = ptrtoaddr ptr %i.a to i64
  %9 = ptrtoaddr ptr %.2.i.i.i52102 to i64
  %i.cz = sub i64 %9, %8
  %diff.check160 = icmp ugt i64 %i.cz, -32
  %or.cond188 = or i1 %min.iters.check161, %diff.check160
  br i1 %or.cond188, label %.lr.ph.i9.i61.preheader, label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %iter.check174
  %min.iters.check163 = icmp ult i32 %storemerge.i.i55, 32
  br i1 %min.iters.check163, label %vec.epilog.ph178, label %vector.ph164

vector.ph164:                                     ; preds = %vector.main.loop.iter.check162
  %i.da = and i64 %wide.trip.count.i.i60, 28
  %n.vec165 = and i64 %wide.trip.count.i.i60, 224 ; 4 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.ph164, %vector.body166
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next170, %vector.body166 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %index167 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load168 = load <16 x i8>, ptr %i.db, align 1, !tbaa !47
  %wide.load169 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index167 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %wide.load168, ptr %i.dd, align 16, !tbaa !47
  store <16 x i8> %wide.load169, ptr %i.de, align 16, !tbaa !47
  %index.next170 = add nuw i64 %index167, 32      ; 2 uses
  %i.df = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.df, label %middle.block171, label %vector.body166, !llvm.loop !229

middle.block171:                                  ; preds = %vector.body166
  %cmp.n172 = icmp eq i64 %n.vec165, %wide.trip.count.i.i60
  br i1 %cmp.n172, label %._crit_edge.i.i65, label %vec.epilog.iter.check176

vec.epilog.iter.check176:                         ; preds = %middle.block171
  %min.epilog.iters.check177 = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check177, label %.lr.ph.i9.i61.preheader, label %vec.epilog.ph178, !prof !60

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check176
  %vec.epilog.resume.val173 = phi i64 [ %n.vec165, %vec.epilog.iter.check176 ], [ 0, %vector.main.loop.iter.check162 ]
  %n.vec179 = and i64 %wide.trip.count.i.i60, 252 ; 3 uses
  br label %vec.epilog.vector.body180

vec.epilog.vector.body180:                        ; preds = %vec.epilog.vector.body180, %vec.epilog.ph178
  %index181 = phi i64 [ %vec.epilog.resume.val173, %vec.epilog.ph178 ], [ %index.next183, %vec.epilog.vector.body180 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %index181
  %wide.load182 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %index181
  store <4 x i8> %wide.load182, ptr %i.dh, align 4, !tbaa !47
  %index.next183 = add nuw i64 %index181, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next183, %n.vec179
  br i1 %i.di, label %vec.epilog.middle.block184, label %vec.epilog.vector.body180, !llvm.loop !230

vec.epilog.middle.block184:                       ; preds = %vec.epilog.vector.body180
  %cmp.n185 = icmp eq i64 %n.vec179, %wide.trip.count.i.i60
  br i1 %cmp.n185, label %._crit_edge.i.i65, label %.lr.ph.i9.i61.preheader

.lr.ph.i9.i61.preheader:                          ; preds = %iter.check174, %vec.epilog.iter.check176, %vec.epilog.middle.block184
  %indvars.iv.i.i62.ph = phi i64 [ 0, %iter.check174 ], [ %n.vec165, %vec.epilog.iter.check176 ], [ %n.vec179, %vec.epilog.middle.block184 ] ; 3 uses
  %xtraiter201 = and i64 %wide.trip.count.i.i60, 3 ; 2 uses
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.lr.ph.i9.i61.prol.loopexit, label %.lr.ph.i9.i61.prol

.lr.ph.i9.i61.prol:                               ; preds = %.lr.ph.i9.i61.preheader, %.lr.ph.i9.i61.prol
  %indvars.iv.i.i62.prol = phi i64 [ %indvars.iv.next.i.i63.prol, %.lr.ph.i9.i61.prol ], [ %indvars.iv.i.i62.ph, %.lr.ph.i9.i61.preheader ] ; 3 uses
  %prol.iter203 = phi i64 [ %prol.iter203.next, %.lr.ph.i9.i61.prol ], [ 0, %.lr.ph.i9.i61.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.i.i62.prol
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i62.prol
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !47
  %indvars.iv.next.i.i63.prol = add nuw nsw i64 %indvars.iv.i.i62.prol, 1 ; 2 uses
  %prol.iter203.next = add i64 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i64 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %.lr.ph.i9.i61.prol.loopexit, label %.lr.ph.i9.i61.prol, !llvm.loop !231

.lr.ph.i9.i61.prol.loopexit:                      ; preds = %.lr.ph.i9.i61.prol, %.lr.ph.i9.i61.preheader
  %indvars.iv.i.i62.unr = phi i64 [ %indvars.iv.i.i62.ph, %.lr.ph.i9.i61.preheader ], [ %indvars.iv.next.i.i63.prol, %.lr.ph.i9.i61.prol ]
  %i.dm = sub nsw i64 %indvars.iv.i.i62.ph, %wide.trip.count.i.i60
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge.i.i65, label %.lr.ph.i9.i61

._crit_edge.i.i65:                                ; preds = %.lr.ph.i9.i61.prol.loopexit, %.lr.ph.i9.i61, %middle.block171, %vec.epilog.middle.block184, %_ZN4core7isspaceEi.exit.thread.i.i56
  %.pre-phi.i.i66 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i56 ], [ %wide.trip.count.i.i60, %middle.block171 ], [ %wide.trip.count.i.i60, %vec.epilog.middle.block184 ], [ %wide.trip.count.i.i60, %.lr.ph.i9.i61 ], [ %wide.trip.count.i.i60, %.lr.ph.i9.i61.prol.loopexit ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i66
  store i8 0, ptr %i.do, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70

.lr.ph.i9.i61:                                    ; preds = %.lr.ph.i9.i61.prol.loopexit, %.lr.ph.i9.i61
  %indvars.iv.i.i62 = phi i64 [ %indvars.iv.next.i.i63.3, %.lr.ph.i9.i61 ], [ %indvars.iv.i.i62.unr, %.lr.ph.i9.i61.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.i.i62
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !47
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i62
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !47
  %indvars.iv.next.i.i63 = add nuw nsw i64 %indvars.iv.i.i62, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !47
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !47
  %indvars.iv.next.i.i63.1 = add nuw nsw i64 %indvars.iv.i.i62, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63.1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !47
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63.1
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !47
  %indvars.iv.next.i.i63.2 = add nuw nsw i64 %indvars.iv.i.i62, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63.2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !47
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63.2
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !47
  %indvars.iv.next.i.i63.3 = add nuw nsw i64 %indvars.iv.i.i62, 4 ; 2 uses
  %exitcond.not.i.i64.3 = icmp eq i64 %indvars.iv.next.i.i63.3, %wide.trip.count.i.i60
  br i1 %exitcond.not.i.i64.3, label %._crit_edge.i.i65, label %.lr.ph.i9.i61, !llvm.loop !232

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70: ; preds = %bb.i, %._crit_edge.i.i65
  %.2.i.i.i52101 = phi ptr [ null, %bb.i ], [ %.2.i.i.i52102, %._crit_edge.i.i65 ]
  %i.eb = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.ec = fptrunc double %i.eb to float
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ec, ptr %i.ed, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %.2.i.i.i52101
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader6readUVEPKcRN4core8vector2dIfEES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %.not11.i.i = icmp eq ptr %1, %3
  br i1 %.not11.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core7isspaceEi.exit.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.f, %_ZN4core7isspaceEi.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !47
  switch i8 %i.e, label %_ZN4core7isspaceEi.exit.i.i [
    i8 32, label %.critedge.thread.i.i
    i8 13, label %.critedge.thread.i.i
    i8 12, label %.critedge.thread.i.i
    i8 10, label %.critedge.thread.i.i
    i8 9, label %.critedge.thread.i.i
    i8 11, label %.critedge.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i.i:                      ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.g = ptrtoaddr ptr %.012.i.i to i64
  %i.h = sub i64 %i.b, %i.g
  %scevgep29.i.i.i = getelementptr i8, ptr %.012.i.i, i64 %i.h
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.thread.i.i
  %.118.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.012.i.i, %.critedge.thread.i.i ] ; 3 uses
  %i.i = load i8, ptr %.118.i.i.i, align 1, !tbaa !47
  switch i8 %i.i, label %.preheader.i.i.preheader [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.118.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %3
  br i1 %.not.i.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i: ; preds = %_ZN4core7isspaceEi.exit.i.i, %bb.b, %bb.a
  %.2.i.i.i = phi ptr [ %1, %bb.a ], [ %scevgep29.i.i.i, %bb.b ], [ %scevgep.i.i, %_ZN4core7isspaceEi.exit.i.i ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not23.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  %.2.i.i.i55 = phi ptr [ %.2.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i ], [ %.118.i.i.i, %.lr.ph.i.i.i ] ; 10 uses
  br label %.preheader.i.i

bb.c:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.d
  %storemerge.i.i = phi i32 [ %i.o, %bb.d ], [ 0, %.preheader.i.i.preheader ] ; 6 uses
  %i.k = zext i32 %storemerge.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47
  switch i8 %i.m, label %_ZN4core7isspaceEi.exit.i10.i [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i10.i:                    ; preds = %.preheader.i.i
  %i.n = icmp eq ptr %i.l, %3
  br i1 %i.n, label %_ZN4core7isspaceEi.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i
  %i.o = add i32 %storemerge.i.i, 1
  br label %.preheader.i.i, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i:               ; preds = %_ZN4core7isspaceEi.exit.i10.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %.not30.i.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4core7isspaceEi.exit.thread.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 255)
  %wide.trip.count.i.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 12 uses
  %min.iters.check = icmp ult i32 %storemerge.i.i, 4
  %4 = ptrtoaddr ptr %i.a to i64
  %5 = ptrtoaddr ptr %.2.i.i.i55 to i64
  %i.p = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i9.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check73 = icmp ult i32 %storemerge.i.i, 32
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 224      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !47
  %wide.load74 = load <16 x i8>, ptr %i.s, align 1, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 16, !tbaa !47
  store <16 x i8> %wide.load74, ptr %i.u, align 16, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i9.i.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %wide.trip.count.i.i, 252    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %index76
  %wide.load77 = load <4 x i8>, ptr %i.w, align 1, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %index76
  store <4 x i8> %wide.load77, ptr %i.x, align 4, !tbaa !47
  %index.next78 = add nuw i64 %index76, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next78, %n.vec75
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %n.vec75, %wide.trip.count.i.i
  br i1 %cmp.n79, label %._crit_edge.i.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec75, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol

.lr.ph.i9.i.prol:                                 ; preds = %.lr.ph.i9.i.preheader, %.lr.ph.i9.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i9.i.prol ], [ 0, %.lr.ph.i9.i.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %indvars.iv.i.i.prol
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.prol
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !47
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol, !llvm.loop !235

.lr.ph.i9.i.prol.loopexit:                        ; preds = %.lr.ph.i9.i.prol, %.lr.ph.i9.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge.i.i, label %.lr.ph.i9.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i, %middle.block, %vec.epilog.middle.block, %_ZN4core7isspaceEi.exit.thread.i.i
  %.pre-phi.i.i = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %vec.epilog.middle.block ], [ %wide.trip.count.i.i, %.lr.ph.i9.i ], [ %wide.trip.count.i.i, %.lr.ph.i9.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i
  store i8 0, ptr %i.ae, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i9.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i9.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %indvars.iv.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %indvars.iv.next.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !47
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %indvars.iv.next.i.i.1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !47
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.i.i.i55, i64 %indvars.iv.next.i.i.2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !47
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i9.i, !llvm.loop !236

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit: ; preds = %bb.c, %._crit_edge.i.i
  %.2.i.i.i54 = phi ptr [ null, %bb.c ], [ %.2.i.i.i55, %._crit_edge.i.i ] ; 5 uses
  %i.ar = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.as = fptrunc double %i.ar to float
  store float %i.as, ptr %2, align 4, !tbaa !100
  %.not11.i.i8 = icmp eq ptr %.2.i.i.i54, %3
  br i1 %.not11.i.i8, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i18, label %.lr.ph.preheader.i.i9

.lr.ph.preheader.i.i9:                            ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %i.at = ptrtoaddr ptr %.2.i.i.i54 to i64
  %i.au = sub i64 %i.b, %i.at
  %scevgep.i.i10 = getelementptr i8, ptr %.2.i.i.i54, i64 %i.au
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %_ZN4core7isspaceEi.exit.i.i35, %.lr.ph.preheader.i.i9
  %.012.i.i12 = phi ptr [ %i.aw, %_ZN4core7isspaceEi.exit.i.i35 ], [ %.2.i.i.i54, %.lr.ph.preheader.i.i9 ] ; 5 uses
  %i.av = load i8, ptr %.012.i.i12, align 1, !tbaa !47
  switch i8 %i.av, label %_ZN4core7isspaceEi.exit.i.i35 [
    i8 32, label %.critedge.thread.i.i13
    i8 13, label %.critedge.thread.i.i13
    i8 12, label %.critedge.thread.i.i13
    i8 10, label %.critedge.thread.i.i13
    i8 9, label %.critedge.thread.i.i13
    i8 11, label %.critedge.thread.i.i13
  ]

_ZN4core7isspaceEi.exit.i.i35:                    ; preds = %.lr.ph.i.i11
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i12, i64 1 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.aw, %3
  br i1 %.not.i.i36, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i18, label %.lr.ph.i.i11, !llvm.loop !0

.critedge.thread.i.i13:                           ; preds = %.lr.ph.i.i11, %.lr.ph.i.i11, %.lr.ph.i.i11, %.lr.ph.i.i11, %.lr.ph.i.i11, %.lr.ph.i.i11
  %i.ax = ptrtoaddr ptr %.012.i.i12 to i64
  %i.ay = sub i64 %i.b, %i.ax
  %scevgep29.i.i.i14 = getelementptr i8, ptr %.012.i.i12, i64 %i.ay
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.e, %.critedge.thread.i.i13
  %.118.i.i.i16 = phi ptr [ %i.ba, %bb.e ], [ %.012.i.i12, %.critedge.thread.i.i13 ] ; 3 uses
  %i.az = load i8, ptr %.118.i.i.i16, align 1, !tbaa !47
  switch i8 %i.az, label %.preheader.i.i21.preheader [
    i8 32, label %bb.e
    i8 9, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i15, %.lr.ph.i.i.i15, %.lr.ph.i.i.i15, %.lr.ph.i.i.i15, %.lr.ph.i.i.i15
  %i.ba = getelementptr inbounds nuw i8, ptr %.118.i.i.i16, i64 1 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.ba, %3
  br i1 %.not.i.i.i17, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i18, label %.lr.ph.i.i.i15, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i18: ; preds = %_ZN4core7isspaceEi.exit.i.i35, %bb.e, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %.2.i.i.i19 = phi ptr [ %.2.i.i.i54, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit ], [ %scevgep29.i.i.i14, %bb.e ], [ %scevgep.i.i10, %_ZN4core7isspaceEi.exit.i.i35 ] ; 2 uses
  %.not23.i.i20 = icmp eq ptr %.2.i.i.i19, null
  br i1 %.not23.i.i20, label %bb.f, label %.preheader.i.i21.preheader

.preheader.i.i21.preheader:                       ; preds = %.lr.ph.i.i.i15, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i18
  %.2.i.i.i1959 = phi ptr [ %.2.i.i.i19, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i18 ], [ %.118.i.i.i16, %.lr.ph.i.i.i15 ] ; 10 uses
  br label %.preheader.i.i21

bb.f:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i18
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit37

.preheader.i.i21:                                 ; preds = %.preheader.i.i21.preheader, %bb.g
  %storemerge.i.i22 = phi i32 [ %i.bf, %bb.g ], [ 0, %.preheader.i.i21.preheader ] ; 6 uses
  %i.bb = zext i32 %storemerge.i.i22 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !47
  switch i8 %i.bd, label %_ZN4core7isspaceEi.exit.i10.i34 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i23
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i23
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i23
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i23
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i23
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i23
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i23
  ]

_ZN4core7isspaceEi.exit.i10.i34:                  ; preds = %.preheader.i.i21
  %i.be = icmp eq ptr %i.bc, %3
  br i1 %i.be, label %_ZN4core7isspaceEi.exit.thread.i.i23, label %bb.g

bb.g:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i34
  %i.bf = add i32 %storemerge.i.i22, 1
  br label %.preheader.i.i21, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i23:             ; preds = %_ZN4core7isspaceEi.exit.i10.i34, %.preheader.i.i21, %.preheader.i.i21, %.preheader.i.i21, %.preheader.i.i21, %.preheader.i.i21, %.preheader.i.i21, %.preheader.i.i21
  %.not30.i.i25 = icmp eq i32 %storemerge.i.i22, 0
  br i1 %.not30.i.i25, label %._crit_edge.i.i32, label %iter.check96

iter.check96:                                     ; preds = %_ZN4core7isspaceEi.exit.thread.i.i23
  %.sroa.speculated.i.i24 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i22, i32 255)
  %wide.trip.count.i.i27 = zext nneg i32 %.sroa.speculated.i.i24 to i64 ; 12 uses
  %min.iters.check83 = icmp ult i32 %storemerge.i.i22, 4
  %6 = ptrtoaddr ptr %i.a to i64
  %7 = ptrtoaddr ptr %.2.i.i.i1959 to i64
  %i.bg = sub i64 %7, %6
  %diff.check82 = icmp ugt i64 %i.bg, -32
  %or.cond109 = or i1 %min.iters.check83, %diff.check82
  br i1 %or.cond109, label %.lr.ph.i9.i28.preheader, label %vector.main.loop.iter.check84

vector.main.loop.iter.check84:                    ; preds = %iter.check96
  %min.iters.check85 = icmp ult i32 %storemerge.i.i22, 32
  br i1 %min.iters.check85, label %vec.epilog.ph100, label %vector.ph86

vector.ph86:                                      ; preds = %vector.main.loop.iter.check84
  %i.bh = and i64 %wide.trip.count.i.i27, 28
  %n.vec87 = and i64 %wide.trip.count.i.i27, 224  ; 4 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.ph86, %vector.body88
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %index89 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load90 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !47
  %wide.load91 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index89 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <16 x i8> %wide.load90, ptr %i.bk, align 16, !tbaa !47
  store <16 x i8> %wide.load91, ptr %i.bl, align 16, !tbaa !47
  %index.next92 = add nuw i64 %index89, 32        ; 2 uses
  %i.bm = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.bm, label %middle.block93, label %vector.body88, !llvm.loop !237

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count.i.i27
  br i1 %cmp.n94, label %._crit_edge.i.i32, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block93
  %min.epilog.iters.check99 = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.i9.i28.preheader, label %vec.epilog.ph100, !prof !60

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check84, %vec.epilog.iter.check98
  %vec.epilog.resume.val95 = phi i64 [ %n.vec87, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check84 ]
  %n.vec101 = and i64 %wide.trip.count.i.i27, 252 ; 3 uses
  br label %vec.epilog.vector.body102

vec.epilog.vector.body102:                        ; preds = %vec.epilog.vector.body102, %vec.epilog.ph100
  %index103 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph100 ], [ %index.next105, %vec.epilog.vector.body102 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %index103
  store <4 x i8> %wide.load104, ptr %i.bo, align 4, !tbaa !47
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.bp, label %vec.epilog.middle.block106, label %vec.epilog.vector.body102, !llvm.loop !238

vec.epilog.middle.block106:                       ; preds = %vec.epilog.vector.body102
  %cmp.n107 = icmp eq i64 %n.vec101, %wide.trip.count.i.i27
  br i1 %cmp.n107, label %._crit_edge.i.i32, label %.lr.ph.i9.i28.preheader

.lr.ph.i9.i28.preheader:                          ; preds = %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block106
  %indvars.iv.i.i29.ph = phi i64 [ 0, %iter.check96 ], [ %n.vec87, %vec.epilog.iter.check98 ], [ %n.vec101, %vec.epilog.middle.block106 ] ; 3 uses
  %xtraiter116 = and i64 %wide.trip.count.i.i27, 3 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i9.i28.prol.loopexit, label %.lr.ph.i9.i28.prol

.lr.ph.i9.i28.prol:                               ; preds = %.lr.ph.i9.i28.preheader, %.lr.ph.i9.i28.prol
  %indvars.iv.i.i29.prol = phi i64 [ %indvars.iv.next.i.i30.prol, %.lr.ph.i9.i28.prol ], [ %indvars.iv.i.i29.ph, %.lr.ph.i9.i28.preheader ] ; 3 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i9.i28.prol ], [ 0, %.lr.ph.i9.i28.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %indvars.iv.i.i29.prol
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i29.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !47
  %indvars.iv.next.i.i30.prol = add nuw nsw i64 %indvars.iv.i.i29.prol, 1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i9.i28.prol.loopexit, label %.lr.ph.i9.i28.prol, !llvm.loop !239

.lr.ph.i9.i28.prol.loopexit:                      ; preds = %.lr.ph.i9.i28.prol, %.lr.ph.i9.i28.preheader
  %indvars.iv.i.i29.unr = phi i64 [ %indvars.iv.i.i29.ph, %.lr.ph.i9.i28.preheader ], [ %indvars.iv.next.i.i30.prol, %.lr.ph.i9.i28.prol ]
  %i.bt = sub nsw i64 %indvars.iv.i.i29.ph, %wide.trip.count.i.i27
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %._crit_edge.i.i32, label %.lr.ph.i9.i28

._crit_edge.i.i32:                                ; preds = %.lr.ph.i9.i28.prol.loopexit, %.lr.ph.i9.i28, %middle.block93, %vec.epilog.middle.block106, %_ZN4core7isspaceEi.exit.thread.i.i23
  %.pre-phi.i.i33 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i23 ], [ %wide.trip.count.i.i27, %middle.block93 ], [ %wide.trip.count.i.i27, %vec.epilog.middle.block106 ], [ %wide.trip.count.i.i27, %.lr.ph.i9.i28 ], [ %wide.trip.count.i.i27, %.lr.ph.i9.i28.prol.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i33
  store i8 0, ptr %i.bv, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit37

.lr.ph.i9.i28:                                    ; preds = %.lr.ph.i9.i28.prol.loopexit, %.lr.ph.i9.i28
  %indvars.iv.i.i29 = phi i64 [ %indvars.iv.next.i.i30.3, %.lr.ph.i9.i28 ], [ %indvars.iv.i.i29.unr, %.lr.ph.i9.i28.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %indvars.iv.i.i29
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i29
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !47
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i29, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %indvars.iv.next.i.i30
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i30
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !47
  %indvars.iv.next.i.i30.1 = add nuw nsw i64 %indvars.iv.i.i29, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %indvars.iv.next.i.i30.1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i30.1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !47
  %indvars.iv.next.i.i30.2 = add nuw nsw i64 %indvars.iv.i.i29, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i.i.i1959, i64 %indvars.iv.next.i.i30.2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !47
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i30.2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !47
  %indvars.iv.next.i.i30.3 = add nuw nsw i64 %indvars.iv.i.i29, 4 ; 2 uses
  %exitcond.not.i.i31.3 = icmp eq i64 %indvars.iv.next.i.i30.3, %wide.trip.count.i.i27
  br i1 %exitcond.not.i.i31.3, label %._crit_edge.i.i32, label %.lr.ph.i9.i28, !llvm.loop !240

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit37: ; preds = %bb.f, %._crit_edge.i.i32
  %.2.i.i.i1958 = phi ptr [ null, %bb.f ], [ %.2.i.i.i1959, %._crit_edge.i.i32 ]
  %i.ci = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.cj = fptrunc double %i.ci to float
  %i.ck = fsub float 1.000000e+00, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %.2.i.i.i1958
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address, ret: address, provenance) %2, i32 noundef %3, ptr nofree noundef readnone captures(address) %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %.not11.i = icmp eq ptr %2, %4
  br i1 %.not11.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b
  %scevgep.i = getelementptr i8, ptr %2, i64 %i.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4core7isspaceEi.exit.i, %.lr.ph.preheader.i
  %.012.i = phi ptr [ %i.e, %_ZN4core7isspaceEi.exit.i ], [ %2, %.lr.ph.preheader.i ] ; 5 uses
  %i.d = load i8, ptr %.012.i, align 1, !tbaa !47
  switch i8 %i.d, label %_ZN4core7isspaceEi.exit.i [
    i8 32, label %.critedge.thread.i
    i8 13, label %.critedge.thread.i
    i8 12, label %.critedge.thread.i
    i8 10, label %.critedge.thread.i
    i8 9, label %.critedge.thread.i
    i8 11, label %.critedge.thread.i
  ]

_ZN4core7isspaceEi.exit.i:                        ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %4
  br i1 %.not.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit, label %.lr.ph.i, !llvm.loop !0

.critedge.thread.i:                               ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = ptrtoaddr ptr %.012.i to i64
  %i.g = sub i64 %i.a, %i.f
  %scevgep29.i.i = getelementptr i8, ptr %.012.i, i64 %i.g
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.thread.i
  %.118.i.i = phi ptr [ %i.i, %bb.b ], [ %.012.i, %.critedge.thread.i ] ; 3 uses
  %i.h = load i8, ptr %.118.i.i, align 1, !tbaa !47
  switch i8 %i.h, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.118.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %4
  br i1 %.not.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit: ; preds = %_ZN4core7isspaceEi.exit.i, %.lr.ph.i.i, %bb.b, %bb.a
  %.2.i.i = phi ptr [ %2, %bb.a ], [ %scevgep29.i.i, %bb.b ], [ %.118.i.i, %.lr.ph.i.i ], [ %scevgep.i, %_ZN4core7isspaceEi.exit.i ] ; 11 uses
  %.not.i7 = icmp eq i32 %3, 0
  br i1 %.not.i7, label %_ZN5scene18COBJMeshFileLoader8copyWordEPcPKcjS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit
  %.not23.i = icmp eq ptr %.2.i.i, null
  br i1 %.not23.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %1, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader8copyWordEPcPKcjS3_.exit

.preheader.i:                                     ; preds = %bb.c, %bb.e
  %storemerge.i = phi i32 [ %i.n, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.j = zext i32 %storemerge.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !47
  switch i8 %i.l, label %_ZN4core7isspaceEi.exit.i10 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i
  ]

_ZN4core7isspaceEi.exit.i10:                      ; preds = %.preheader.i
  %i.m = icmp eq ptr %i.k, %4
  br i1 %i.m, label %_ZN4core7isspaceEi.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN4core7isspaceEi.exit.i10
  %i.n = add i32 %storemerge.i, 1
  br label %.preheader.i, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i:                 ; preds = %_ZN4core7isspaceEi.exit.i10, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.o = add i32 %3, -1
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i, i32 %i.o) ; 4 uses
  %.not30.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not30.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN4core7isspaceEi.exit.thread.i
  %wide.trip.count.i = zext i32 %.sroa.speculated.i to i64 ; 12 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i, 4
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %.2.i.i to i64
  %i.p = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i9.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i32 %.sroa.speculated.i, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !47
  %wide.load25 = load <16 x i8>, ptr %i.s, align 1, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 1, !tbaa !47
  store <16 x i8> %wide.load25, ptr %i.u, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i9.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.w, align 1, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.x, align 1, !tbaa !47
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !242

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %n.vec26, %wide.trip.count.i
  br i1 %cmp.n30, label %._crit_edge.i, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i9.prol.loopexit, label %.lr.ph.i9.prol

.lr.ph.i9.prol:                                   ; preds = %.lr.ph.i9.preheader, %.lr.ph.i9.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i9.prol ], [ %indvars.iv.i.ph, %.lr.ph.i9.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i9.prol ], [ 0, %.lr.ph.i9.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %indvars.iv.i.prol
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.prol
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !47
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.prol.loopexit, label %.lr.ph.i9.prol, !llvm.loop !243

.lr.ph.i9.prol.loopexit:                          ; preds = %.lr.ph.i9.prol, %.lr.ph.i9.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i9.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i9.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i9

._crit_edge.i:                                    ; preds = %.lr.ph.i9.prol.loopexit, %.lr.ph.i9, %middle.block, %vec.epilog.middle.block, %_ZN4core7isspaceEi.exit.thread.i
  %.pre-phi.i = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i ], [ %wide.trip.count.i, %middle.block ], [ %wide.trip.count.i, %vec.epilog.middle.block ], [ %wide.trip.count.i, %.lr.ph.i9 ], [ %wide.trip.count.i, %.lr.ph.i9.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi.i
  store i8 0, ptr %i.ae, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader8copyWordEPcPKcjS3_.exit

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.prol.loopexit, %.lr.ph.i9
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i9 ], [ %indvars.iv.i.unr, %.lr.ph.i9.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %indvars.iv.next.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !47
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %indvars.iv.next.i.1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !47
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %indvars.iv.next.i.2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.2
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !47
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i9, !llvm.loop !244

_ZN5scene18COBJMeshFileLoader8copyWordEPcPKcjS3_.exit: ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit, %bb.d, %._crit_edge.i
  ret ptr %.2.i.i
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader7findMtlERKN4core6stringIcEES5_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = and i64 %i.g, 34359738360
  %.not59.not = icmp eq i64 %i.h, 0
  br i1 %.not59.not, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread91, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = lshr exact i64 %i.g, 3
  %i.j = ashr exact i64 %i.g, 3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = load ptr, ptr %2, align 8
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.q = icmp eq i64 %i.l, 0
  %i.r = icmp eq i64 %i.o, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30 ] ; 3 uses
  %.02060 = phi ptr [ null, %.lr.ph ], [ %.1, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.j
  br i1 %exitcond.not, label %bb.c, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj) #34
  unreachable

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46
  %i.x = icmp eq i64 %i.w, %i.l
  br i1 %i.x, label %bb.d, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30

bb.d:                                             ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit
  br i1 %i.q, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit26, label %_ZNK4core6stringIcEeqERKS1_.exit

_ZNK4core6stringIcEeqERKS1_.exit:                 ; preds = %bb.d
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !48
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.y, ptr %i.m, i64 %i.l)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit26, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit26: ; preds = %bb.d, %_ZNK4core6stringIcEeqERKS1_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ad = icmp eq i64 %i.ac, %i.o
  br i1 %i.ad, label %bb.e, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30

bb.e:                                             ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit26
  br i1 %i.r, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread, label %_ZNK4core6stringIcEeqERKS1_.exit28

_ZNK4core6stringIcEeqERKS1_.exit28:               ; preds = %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !48
  %bcmp.i.i27 = tail call i32 @bcmp(ptr %i.ae, ptr %i.p, i64 %i.o)
  %i.af = icmp eq i32 %bcmp.i.i27, 0
  br i1 %i.af, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30: ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit26, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit, %_ZNK4core6stringIcEeqERKS1_.exit28, %_ZNK4core6stringIcEeqERKS1_.exit
  %.1 = phi ptr [ %.02060, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit ], [ %.02060, %_ZNK4core6stringIcEeqERKS1_.exit ], [ %i.t, %_ZNK4core6stringIcEeqERKS1_.exit28 ], [ %i.t, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit26 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond64.not, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29, label %bb.b, !llvm.loop !245

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29: ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit30
  %.not23 = icmp eq ptr %.1, null
  br i1 %.not23, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread91, label %bb.f

bb.f:                                             ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29
  %i.ag = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #31 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !46
  store i8 0, ptr %i.e, align 8, !tbaa !47
  br label %_ZN4core6stringIcEC2IcEEPKT_j.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.014 = phi ptr [ %i.h, %bb.c ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.g = load i8, ptr %.014, align 1, !tbaa !47
  switch i8 %i.g, label %bb.c [
    i8 10, label %._crit_edge
    i8 13, label %._crit_edge
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph, %bb.c, %.preheader
  %.0.lcssa = phi ptr [ %2, %.preheader ], [ %scevgep, %bb.c ], [ %.014, %.lr.ph ], [ %.014, %.lr.ph ]
  %.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph ]
  %i.i = ptrtoint ptr %.0.lcssa to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = add nsw i64 %i.k, %.lcssa                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !46
  store i8 0, ptr %i.m, align 8, !tbaa !47
  %i.o = and i64 %i.l, 4294967295                 ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i: ; preds = %._crit_edge
  %.not12.i = icmp eq i64 %i.o, 0
  br i1 %.not12.i, label %_ZN4core6stringIcEC2IcEEPKT_j.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.p = icmp samesign ult i64 %i.o, 4
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader
  %unroll_iter = and i64 %i.l, 4294967292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i

bb.d:                                             ; preds = %._crit_edge
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.m
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !47
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new ], [ %indvars.iv.next.i.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new ], [ %niter.next.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !47
  %i.x = load ptr, ptr %0, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.y, align 1, !tbaa !47
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next.i
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !47
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i.1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !47
  %i.af = load ptr, ptr %0, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next.i.1
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !47
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i.2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !47
  %i.aj = load ptr, ptr %0, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.i.2
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !47
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, !llvm.loop !4

_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core6stringIcEC2IcEEPKT_j.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader: ; preds = %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader ], [ %indvars.iv.next.i.3, %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.am = load i8, ptr %i.al, align 1, !tbaa !47
  %i.an = load ptr, ptr %0, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i.epil
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !47
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core6stringIcEC2IcEEPKT_j.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil, !llvm.loop !247

_ZN4core6stringIcEC2IcEEPKT_j.exit:               ; preds = %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, i1 noundef zeroext %3) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.not11 = icmp eq ptr %1, %2
  br i1 %.not11, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core7isspaceEi.exit
  %.012 = phi ptr [ %i.e, %_ZN4core7isspaceEi.exit ], [ %1, %.lr.ph.preheader ] ; 6 uses
  %i.d = load i8, ptr %.012, align 1, !tbaa !47
  switch i8 %i.d, label %_ZN4core7isspaceEi.exit [
    i8 32, label %.critedge.thread
    i8 13, label %.critedge.thread
    i8 12, label %.critedge.thread
    i8 10, label %.critedge.thread
    i8 9, label %.critedge.thread
    i8 11, label %.critedge.thread
  ]

_ZN4core7isspaceEi.exit:                          ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.e, %2
  br i1 %.not, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph, !llvm.loop !0

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = ptrtoaddr ptr %.012 to i64
  %i.g = sub i64 %i.a, %i.f
  %scevgep29.i = getelementptr i8, ptr %.012, i64 %i.g ; 2 uses
  br i1 %3, label %.lr.ph23.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.critedge.thread, %bb.b
  %.022.i = phi ptr [ %i.i, %bb.b ], [ %.012, %.critedge.thread ] ; 3 uses
  %i.h = load i8, ptr %.022.i, align 1, !tbaa !47
  switch i8 %i.h, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i
  %i.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  %.not13.i = icmp eq ptr %i.i, %2
  br i1 %.not13.i, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph23.i, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.critedge.thread, %bb.c
  %.118.i = phi ptr [ %i.k, %bb.c ], [ %.012, %.critedge.thread ] ; 3 uses
  %i.j = load i8, ptr %.118.i, align 1, !tbaa !47
  switch i8 %i.j, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.118.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %2
  br i1 %.not.i, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit: ; preds = %_ZN4core7isspaceEi.exit, %.lr.ph.i, %bb.c, %.lr.ph23.i, %bb.b, %bb.a
  %.2.i = phi ptr [ %1, %bb.a ], [ %.022.i, %.lr.ph23.i ], [ %.118.i, %.lr.ph.i ], [ %scevgep29.i, %bb.b ], [ %scevgep29.i, %bb.c ], [ %scevgep, %_ZN4core7isspaceEi.exit ]
  ret ptr %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, -1) i32 @_ZN5scene18COBJMeshFileLoader8copyWordEPcPKcjS3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, ptr nofree noundef readnone captures(address) %4) local_unnamed_addr #10 align 2 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 1, !tbaa !47
  br label %bb.e

.preheader:                                       ; preds = %bb.b, %bb.d
  %storemerge = phi i32 [ %i.e, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.a = zext i32 %storemerge to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !47
  switch i8 %i.c, label %_ZN4core7isspaceEi.exit [
    i8 0, label %_ZN4core7isspaceEi.exit.thread
    i8 32, label %_ZN4core7isspaceEi.exit.thread
    i8 13, label %_ZN4core7isspaceEi.exit.thread
    i8 12, label %_ZN4core7isspaceEi.exit.thread
    i8 10, label %_ZN4core7isspaceEi.exit.thread
    i8 9, label %_ZN4core7isspaceEi.exit.thread
    i8 11, label %_ZN4core7isspaceEi.exit.thread
  ]

_ZN4core7isspaceEi.exit:                          ; preds = %.preheader
  %i.d = icmp eq ptr %i.b, %4
  br i1 %i.d, label %_ZN4core7isspaceEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit
  %i.e = add i32 %storemerge, 1
  br label %.preheader, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread:                   ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN4core7isspaceEi.exit
  %i.f = add i32 %3, -1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %storemerge, i32 %i.f) ; 5 uses
  %.not30 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not30, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZN4core7isspaceEi.exit.thread
  %wide.trip.count = zext i32 %.sroa.speculated to i64 ; 12 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %2 to i64
  %i.g = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp ult i32 %.sroa.speculated, 32
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !47
  %wide.load35 = load <16 x i8>, ptr %i.j, align 1, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <16 x i8> %wide.load, ptr %i.k, align 1, !tbaa !47
  store <16 x i8> %wide.load35, ptr %i.l, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index37
  %wide.load38 = load <4 x i8>, ptr %i.n, align 1, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index37
  store <4 x i8> %wide.load38, ptr %i.o, align 1, !tbaa !47
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.p = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.vec36, %wide.trip.count
  br i1 %cmp.n40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.prol
  %i.r = load i8, ptr %i.q, align 1, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.r, ptr %i.s, align 1, !tbaa !47
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !250

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZN4core7isspaceEi.exit.thread
  %.pre-phi = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %vec.epilog.middle.block ], [ %wide.trip.count, %.lr.ph ], [ %wide.trip.count, %.lr.ph.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi
  store i8 0, ptr %i.v, align 1, !tbaa !47
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.x, ptr %i.y, align 1, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !47
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !251

bb.e:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  %.018 = phi i32 [ %.sroa.speculated, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.018
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5scene18COBJMeshFileLoader21retrieveVertexIndicesEPcPiPKcjjj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.not1321.i = icmp eq ptr %1, %3
  br i1 %.not1321.i, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph23.preheader.i

.lr.ph23.preheader.i:                             ; preds = %bb.a
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %scevgep29.i = getelementptr i8, ptr %1, i64 %i.d
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.b, %.lr.ph23.preheader.i
  %.022.i = phi ptr [ %i.f, %bb.b ], [ %1, %.lr.ph23.preheader.i ] ; 3 uses
  %i.e = load i8, ptr %.022.i, align 1, !tbaa !47
  switch i8 %i.e, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i
  %i.f = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  %.not13.i = icmp eq ptr %i.f, %3
  br i1 %.not13.i, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph23.i, !llvm.loop !5

_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit: ; preds = %.lr.ph23.i, %bb.b, %bb.a
  %.2.i = phi ptr [ %1, %bb.a ], [ %.022.i, %.lr.ph23.i ], [ %scevgep29.i, %bb.b ] ; 2 uses
  %.not47 = icmp eq ptr %.2.i, %3
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, %bb.n
  %.050 = phi i32 [ %.1, %bb.n ], [ 0, %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit ] ; 5 uses
  %.03749 = phi i32 [ %.2, %bb.n ], [ 0, %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit ] ; 6 uses
  %.03948 = phi ptr [ %i.ak, %bb.n ], [ %.2.i, %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit ] ; 3 uses
  %i.g = icmp ult i32 %.050, 16                   ; 3 uses
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i8, ptr %.03948, align 1, !tbaa !47 ; 3 uses
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48
  %i.k = icmp ult i32 %i.j, 10
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.h, label %bb.n [
    i8 45, label %bb.e
    i8 47, label %bb.f
    i8 32, label %bb.f
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = add nuw nsw i32 %.050, 1
  %i.m = zext nneg i32 %.050 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 %i.h, ptr %i.n, align 1, !tbaa !47
  br label %bb.n

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.o = zext nneg i32 %.050 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !47
  %i.q = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #30
  %i.r = trunc i64 %i.q to i32                    ; 6 uses
  %i.s = zext i32 %.03749 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s ; 2 uses
  store i32 %i.r, ptr %i.t, align 4, !tbaa !68
  %i.u = icmp slt i32 %i.r, 0
  br i1 %i.u, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  switch i32 %.03749, label %bb.l [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_ZN5scene5SMesh22recalculateBoundingBoxEv:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.d
  br i1 %.not11, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit
  %i.k = trunc nuw i8 %.1 to i1
  br i1 %i.k, label %bb.ab, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit
  %.013 = phi i8 [ 0, %.lr.ph ], [ %.1, %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit ] ; 2 uses
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.bs, %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.08.012, align 8, !tbaa !137 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load float, ptr %i.p, align 4, !tbaa !98
  %i.s = load float, ptr %i.q, align 4, !tbaa !98 ; 7 uses
  %i.t = fsub float %i.r, %i.s
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t)
  %i.v = fcmp ugt float %i.u, f0x358637BD
  br i1 %i.v, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load float, ptr %i.y, align 4, !tbaa !99
  %i.aa = fsub float %i.x, %i.z
  %i.ab = tail call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp ugt float %i.ab, f0x358637BD
  br i1 %i.ac, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit

_ZNK4core8aabbox3dIfE7isEmptyEv.exit:             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ag = load float, ptr %i.af, align 4, !tbaa !55
  %i.ah = fsub float %i.ae, %i.ag
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp ugt float %i.ai, f0x358637BD
  br i1 %i.aj, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread, label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread:      ; preds = %bb.b, %bb.c, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit
  %i.ak = trunc nuw i8 %.013 to i1
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !144
  br label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

bb.e:                                             ; preds = %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !99 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !55 ; 6 uses
  %i.ap = load float, ptr %i.f, align 4, !tbaa !122 ; 2 uses
  %i.aq = fcmp ogt float %i.s, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.s, ptr %i.f, align 4, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = phi float [ %i.s, %bb.f ], [ %i.ap, %bb.e ]
  %i.as = load float, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.at = fcmp ogt float %i.am, %i.as
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.am, ptr %i.g, align 8, !tbaa !118
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi float [ %i.am, %bb.h ], [ %i.as, %bb.g ]
  %i.av = load float, ptr %i.h, align 4, !tbaa !119 ; 2 uses
  %i.aw = fcmp ogt float %i.ao, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ao, ptr %i.h, align 4, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = phi float [ %i.ao, %bb.j ], [ %i.av, %bb.i ]
  %i.ay = load float, ptr %i.e, align 8, !tbaa !123 ; 2 uses
  %i.az = fcmp olt float %i.s, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.s, ptr %i.e, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi float [ %i.s, %bb.l ], [ %i.ay, %bb.k ]
  %i.bb = load float, ptr %i.i, align 4, !tbaa !120 ; 2 uses
  %i.bc = fcmp olt float %i.am, %i.bb
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.am, ptr %i.i, align 4, !tbaa !120
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = phi float [ %i.am, %bb.n ], [ %i.bb, %bb.m ]
  %i.be = load float, ptr %i.j, align 8, !tbaa !121 ; 2 uses
  %i.bf = fcmp olt float %i.ao, %i.be
  br i1 %i.bf, label %bb.p, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

bb.p:                                             ; preds = %bb.o
  store float %i.ao, ptr %i.j, align 8, !tbaa !121
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i: ; preds = %bb.p, %bb.o
  %i.bg = phi float [ %i.be, %bb.o ], [ %i.ao, %bb.p ]
  %i.bh = load float, ptr %i.p, align 4, !tbaa !98 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !99 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !55 ; 4 uses
  %i.bm = fcmp ogt float %i.bh, %i.ar
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  store float %i.bh, ptr %i.f, align 4, !tbaa !122
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  %i.bn = fcmp ogt float %i.bj, %i.au
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.bj, ptr %i.g, align 8, !tbaa !118
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = fcmp ogt float %i.bl, %i.ax
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.bl, ptr %i.h, align 4, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bp = fcmp olt float %i.bh, %i.ba
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %i.bh, ptr %i.e, align 8, !tbaa !123
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = fcmp olt float %i.bj, %i.bd
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store float %i.bj, ptr %i.i, align 4, !tbaa !120
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.br = fcmp olt float %i.bl, %i.bg
  br i1 %i.br, label %bb.aa, label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

bb.aa:                                            ; preds = %bb.z
  store float %i.bl, ptr %i.j, align 8, !tbaa !121
  br label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit:  ; preds = %bb.aa, %bb.z, %bb.d, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit
  %.1 = phi i8 [ %.013, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit ], [ 1, %bb.d ], [ 1, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bu, align 4, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !tbaa.struct !56
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader9readColorEPKcRN5video6SColorES2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = ptrtoaddr ptr %3 to i64                  ; 6 uses
  %.not11.i.i = icmp eq ptr %1, %3
  br i1 %.not11.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core7isspaceEi.exit.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.f, %_ZN4core7isspaceEi.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !47
  switch i8 %i.e, label %_ZN4core7isspaceEi.exit.i.i [
    i8 32, label %.critedge.thread.i.i
    i8 13, label %.critedge.thread.i.i
    i8 12, label %.critedge.thread.i.i
    i8 10, label %.critedge.thread.i.i
    i8 9, label %.critedge.thread.i.i
    i8 11, label %.critedge.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i.i:                      ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.g = ptrtoaddr ptr %.012.i.i to i64
  %i.h = sub i64 %i.b, %i.g
  %scevgep29.i.i.i = getelementptr i8, ptr %.012.i.i, i64 %i.h
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.thread.i.i
  %.118.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.012.i.i, %.critedge.thread.i.i ] ; 3 uses
  %i.i = load i8, ptr %.118.i.i.i, align 1, !tbaa !47
  switch i8 %i.i, label %.preheader.i.i.preheader [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.118.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %3
  br i1 %.not.i.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i: ; preds = %_ZN4core7isspaceEi.exit.i.i, %bb.b, %bb.a
  %.2.i.i.i = phi ptr [ %1, %bb.a ], [ %scevgep29.i.i.i, %bb.b ], [ %scevgep.i.i, %_ZN4core7isspaceEi.exit.i.i ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not23.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  %.2.i.i.i94 = phi ptr [ %.2.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i ], [ %.118.i.i.i, %.lr.ph.i.i.i ] ; 9 uses
  br label %.preheader.i.i

bb.c:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.d
  %storemerge.i.i = phi i32 [ %i.o, %bb.d ], [ 0, %.preheader.i.i.preheader ] ; 5 uses
  %i.k = zext i32 %storemerge.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47
  switch i8 %i.m, label %_ZN4core7isspaceEi.exit.i10.i [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i10.i:                    ; preds = %.preheader.i.i
  %i.n = icmp eq ptr %i.l, %3
  br i1 %i.n, label %_ZN4core7isspaceEi.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i
  %i.o = add i32 %storemerge.i.i, 1
  br label %.preheader.i.i, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i:               ; preds = %_ZN4core7isspaceEi.exit.i10.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %.not30.i.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i8.i

.lr.ph.preheader.i8.i:                            ; preds = %_ZN4core7isspaceEi.exit.thread.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 15)
  %wide.trip.count.i.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %storemerge.i.i, 8
  %4 = ptrtoaddr ptr %i.a to i64
  %5 = ptrtoaddr ptr %.2.i.i.i94 to i64
  %i.p = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.p, -8
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i9.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i8.i
  %n.vec = and i64 %wide.trip.count.i.i, 8        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %index
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <8 x i8> %wide.load, ptr %i.r, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %.lr.ph.preheader.i8.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i8.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol

.lr.ph.i9.i.prol:                                 ; preds = %.lr.ph.i9.i.preheader, %.lr.ph.i9.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i9.i.prol ], [ 0, %.lr.ph.i9.i.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.i.i.prol
  %i.u = load i8, ptr %i.t, align 1, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.prol
  store i8 %i.u, ptr %i.v, align 1, !tbaa !47
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol, !llvm.loop !260

.lr.ph.i9.i.prol.loopexit:                        ; preds = %.lr.ph.i9.i.prol, %.lr.ph.i9.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ]
  %i.w = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge.i.i, label %.lr.ph.i9.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i, %middle.block, %_ZN4core7isspaceEi.exit.thread.i.i
  %.pre-phi.i.i = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %.lr.ph.i9.i ], [ %wide.trip.count.i.i, %.lr.ph.i9.i.prol.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i
  store i8 0, ptr %i.y, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i9.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i9.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !47
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i.1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !47
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !47
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i9.i, !llvm.loop !261

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit: ; preds = %bb.c, %._crit_edge.i.i
  %.2.i.i.i93 = phi ptr [ null, %bb.c ], [ %.2.i.i.i94, %._crit_edge.i.i ] ; 5 uses
  %i.al = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.am = fptrunc double %i.al to float
  %i.an = fmul float %i.am, 2.550000e+02
  %i.ao = fadd float %i.an, 5.000000e-01
  %i.ap = tail call noundef float @llvm.floor.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32
  %i.ar = shl i32 %i.aq, 16
  %i.as = and i32 %i.ar, 16711680
  %i.at = load i32, ptr %2, align 4, !tbaa !63
  %i.au = and i32 %i.at, -16711681
  %i.av = or disjoint i32 %i.as, %i.au
  store i32 %i.av, ptr %2, align 4, !tbaa !63
  %.not11.i.i11 = icmp eq ptr %.2.i.i.i93, %3
  br i1 %.not11.i.i11, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.preheader.i.i12

.lr.ph.preheader.i.i12:                           ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %i.aw = ptrtoaddr ptr %.2.i.i.i93 to i64
  %i.ax = sub i64 %i.b, %i.aw
  %scevgep.i.i13 = getelementptr i8, ptr %.2.i.i.i93, i64 %i.ax
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN4core7isspaceEi.exit.i.i38, %.lr.ph.preheader.i.i12
  %.012.i.i15 = phi ptr [ %i.az, %_ZN4core7isspaceEi.exit.i.i38 ], [ %.2.i.i.i93, %.lr.ph.preheader.i.i12 ] ; 5 uses
  %i.ay = load i8, ptr %.012.i.i15, align 1, !tbaa !47
  switch i8 %i.ay, label %_ZN4core7isspaceEi.exit.i.i38 [
    i8 32, label %.critedge.thread.i.i16
    i8 13, label %.critedge.thread.i.i16
    i8 12, label %.critedge.thread.i.i16
    i8 10, label %.critedge.thread.i.i16
    i8 9, label %.critedge.thread.i.i16
    i8 11, label %.critedge.thread.i.i16
  ]

_ZN4core7isspaceEi.exit.i.i38:                    ; preds = %.lr.ph.i.i14
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i15, i64 1 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.az, %3
  br i1 %.not.i.i39, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.i.i14, !llvm.loop !0

.critedge.thread.i.i16:                           ; preds = %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14
  %i.ba = ptrtoaddr ptr %.012.i.i15 to i64
  %i.bb = sub i64 %i.b, %i.ba
  %scevgep29.i.i.i17 = getelementptr i8, ptr %.012.i.i15, i64 %i.bb
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.e, %.critedge.thread.i.i16
  %.118.i.i.i19 = phi ptr [ %i.bd, %bb.e ], [ %.012.i.i15, %.critedge.thread.i.i16 ] ; 3 uses
  %i.bc = load i8, ptr %.118.i.i.i19, align 1, !tbaa !47
  switch i8 %i.bc, label %.preheader.i.i24.preheader [
    i8 32, label %bb.e
    i8 9, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18
  %i.bd = getelementptr inbounds nuw i8, ptr %.118.i.i.i19, i64 1 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %3
  br i1 %.not.i.i.i20, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.i.i.i18, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21: ; preds = %_ZN4core7isspaceEi.exit.i.i38, %bb.e, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %.2.i.i.i22 = phi ptr [ %.2.i.i.i93, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit ], [ %scevgep29.i.i.i17, %bb.e ], [ %scevgep.i.i13, %_ZN4core7isspaceEi.exit.i.i38 ] ; 2 uses
  %.not23.i.i23 = icmp eq ptr %.2.i.i.i22, null
  br i1 %.not23.i.i23, label %bb.f, label %.preheader.i.i24.preheader

.preheader.i.i24.preheader:                       ; preds = %.lr.ph.i.i.i18, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21
  %.2.i.i.i2298 = phi ptr [ %.2.i.i.i22, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21 ], [ %.118.i.i.i19, %.lr.ph.i.i.i18 ] ; 9 uses
  br label %.preheader.i.i24

bb.f:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40

.preheader.i.i24:                                 ; preds = %.preheader.i.i24.preheader, %bb.g
  %storemerge.i.i25 = phi i32 [ %i.bi, %bb.g ], [ 0, %.preheader.i.i24.preheader ] ; 5 uses
  %i.be = zext i32 %storemerge.i.i25 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !47
  switch i8 %i.bg, label %_ZN4core7isspaceEi.exit.i10.i37 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i26
  ]

_ZN4core7isspaceEi.exit.i10.i37:                  ; preds = %.preheader.i.i24
  %i.bh = icmp eq ptr %i.bf, %3
  br i1 %i.bh, label %_ZN4core7isspaceEi.exit.thread.i.i26, label %bb.g

bb.g:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i37
  %i.bi = add i32 %storemerge.i.i25, 1
  br label %.preheader.i.i24, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i26:             ; preds = %_ZN4core7isspaceEi.exit.i10.i37, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24
  %.not30.i.i28 = icmp eq i32 %storemerge.i.i25, 0
  br i1 %.not30.i.i28, label %._crit_edge.i.i35, label %.lr.ph.preheader.i8.i29

.lr.ph.preheader.i8.i29:                          ; preds = %_ZN4core7isspaceEi.exit.thread.i.i26
  %.sroa.speculated.i.i27 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i25, i32 15)
  %wide.trip.count.i.i30 = zext nneg i32 %.sroa.speculated.i.i27 to i64 ; 8 uses
  %min.iters.check126 = icmp ult i32 %storemerge.i.i25, 8
  %6 = ptrtoaddr ptr %i.a to i64
  %7 = ptrtoaddr ptr %.2.i.i.i2298 to i64
  %i.bj = sub i64 %7, %6
  %diff.check124 = icmp ugt i64 %i.bj, -8
  %or.cond150 = or i1 %min.iters.check126, %diff.check124
  br i1 %or.cond150, label %.lr.ph.i9.i31.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.preheader.i8.i29
  %n.vec128 = and i64 %wide.trip.count.i.i30, 8   ; 3 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next132, %vector.body129 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %index130
  %wide.load131 = load <8 x i8>, ptr %i.bk, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %index130
  store <8 x i8> %wide.load131, ptr %i.bl, align 8, !tbaa !47
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.bm, label %middle.block133, label %vector.body129, !llvm.loop !262

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %n.vec128, %wide.trip.count.i.i30
  br i1 %cmp.n134, label %._crit_edge.i.i35, label %.lr.ph.i9.i31.preheader

.lr.ph.i9.i31.preheader:                          ; preds = %.lr.ph.preheader.i8.i29, %middle.block133
  %indvars.iv.i.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i8.i29 ], [ %n.vec128, %middle.block133 ] ; 3 uses
  %xtraiter161 = and i64 %wide.trip.count.i.i30, 3 ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.lr.ph.i9.i31.prol.loopexit, label %.lr.ph.i9.i31.prol

.lr.ph.i9.i31.prol:                               ; preds = %.lr.ph.i9.i31.preheader, %.lr.ph.i9.i31.prol
  %indvars.iv.i.i32.prol = phi i64 [ %indvars.iv.next.i.i33.prol, %.lr.ph.i9.i31.prol ], [ %indvars.iv.i.i32.ph, %.lr.ph.i9.i31.preheader ] ; 3 uses
  %prol.iter163 = phi i64 [ %prol.iter163.next, %.lr.ph.i9.i31.prol ], [ 0, %.lr.ph.i9.i31.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.i.i32.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i32.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !47
  %indvars.iv.next.i.i33.prol = add nuw nsw i64 %indvars.iv.i.i32.prol, 1 ; 2 uses
  %prol.iter163.next = add i64 %prol.iter163, 1   ; 2 uses
  %prol.iter163.cmp.not = icmp eq i64 %prol.iter163.next, %xtraiter161
  br i1 %prol.iter163.cmp.not, label %.lr.ph.i9.i31.prol.loopexit, label %.lr.ph.i9.i31.prol, !llvm.loop !263

.lr.ph.i9.i31.prol.loopexit:                      ; preds = %.lr.ph.i9.i31.prol, %.lr.ph.i9.i31.preheader
  %indvars.iv.i.i32.unr = phi i64 [ %indvars.iv.i.i32.ph, %.lr.ph.i9.i31.preheader ], [ %indvars.iv.next.i.i33.prol, %.lr.ph.i9.i31.prol ]
  %i.bq = sub nsw i64 %indvars.iv.i.i32.ph, %wide.trip.count.i.i30
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge.i.i35, label %.lr.ph.i9.i31

._crit_edge.i.i35:                                ; preds = %.lr.ph.i9.i31.prol.loopexit, %.lr.ph.i9.i31, %middle.block133, %_ZN4core7isspaceEi.exit.thread.i.i26
  %.pre-phi.i.i36 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i26 ], [ %wide.trip.count.i.i30, %middle.block133 ], [ %wide.trip.count.i.i30, %.lr.ph.i9.i31 ], [ %wide.trip.count.i.i30, %.lr.ph.i9.i31.prol.loopexit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i36
  store i8 0, ptr %i.bs, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40

.lr.ph.i9.i31:                                    ; preds = %.lr.ph.i9.i31.prol.loopexit, %.lr.ph.i9.i31
  %indvars.iv.i.i32 = phi i64 [ %indvars.iv.next.i.i33.3, %.lr.ph.i9.i31 ], [ %indvars.iv.i.i32.unr, %.lr.ph.i9.i31.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.i.i32
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i32
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !47
  %indvars.iv.next.i.i33 = add nuw nsw i64 %indvars.iv.i.i32, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !47
  %indvars.iv.next.i.i33.1 = add nuw nsw i64 %indvars.iv.i.i32, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33.1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33.1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !47
  %indvars.iv.next.i.i33.2 = add nuw nsw i64 %indvars.iv.i.i32, 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33.2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33.2
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !47
  %indvars.iv.next.i.i33.3 = add nuw nsw i64 %indvars.iv.i.i32, 4 ; 2 uses
  %exitcond.not.i.i34.3 = icmp eq i64 %indvars.iv.next.i.i33.3, %wide.trip.count.i.i30
  br i1 %exitcond.not.i.i34.3, label %._crit_edge.i.i35, label %.lr.ph.i9.i31, !llvm.loop !264

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40: ; preds = %bb.f, %._crit_edge.i.i35
  %.2.i.i.i2297 = phi ptr [ null, %bb.f ], [ %.2.i.i.i2298, %._crit_edge.i.i35 ] ; 5 uses
  %i.cf = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.cg = fptrunc double %i.cf to float
  %i.ch = fmul float %i.cg, 2.550000e+02
  %i.ci = fadd float %i.ch, 5.000000e-01
  %i.cj = tail call noundef float @llvm.floor.f32(float %i.ci)
  %i.ck = fptosi float %i.cj to i32
  %i.cl = shl i32 %i.ck, 8
  %i.cm = and i32 %i.cl, 65280
  %i.cn = load i32, ptr %2, align 4, !tbaa !63
  %i.co = and i32 %i.cn, -65281
  %i.cp = or disjoint i32 %i.cm, %i.co
  store i32 %i.cp, ptr %2, align 4, !tbaa !63
  %.not11.i.i41 = icmp eq ptr %.2.i.i.i2297, %3
  br i1 %.not11.i.i41, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.preheader.i.i42

.lr.ph.preheader.i.i42:                           ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40
  %i.cq = ptrtoaddr ptr %.2.i.i.i2297 to i64
  %i.cr = sub i64 %i.b, %i.cq
  %scevgep.i.i43 = getelementptr i8, ptr %.2.i.i.i2297, i64 %i.cr
  br label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %_ZN4core7isspaceEi.exit.i.i68, %.lr.ph.preheader.i.i42
  %.012.i.i45 = phi ptr [ %i.ct, %_ZN4core7isspaceEi.exit.i.i68 ], [ %.2.i.i.i2297, %.lr.ph.preheader.i.i42 ] ; 5 uses
  %i.cs = load i8, ptr %.012.i.i45, align 1, !tbaa !47
  switch i8 %i.cs, label %_ZN4core7isspaceEi.exit.i.i68 [
    i8 32, label %.critedge.thread.i.i46
    i8 13, label %.critedge.thread.i.i46
    i8 12, label %.critedge.thread.i.i46
    i8 10, label %.critedge.thread.i.i46
    i8 9, label %.critedge.thread.i.i46
    i8 11, label %.critedge.thread.i.i46
  ]

_ZN4core7isspaceEi.exit.i.i68:                    ; preds = %.lr.ph.i.i44
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i45, i64 1 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.ct, %3
  br i1 %.not.i.i69, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.i.i44, !llvm.loop !0

.critedge.thread.i.i46:                           ; preds = %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44
  %i.cu = ptrtoaddr ptr %.012.i.i45 to i64
  %i.cv = sub i64 %i.b, %i.cu
  %scevgep29.i.i.i47 = getelementptr i8, ptr %.012.i.i45, i64 %i.cv
  br label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %bb.h, %.critedge.thread.i.i46
  %.118.i.i.i49 = phi ptr [ %i.cx, %bb.h ], [ %.012.i.i45, %.critedge.thread.i.i46 ] ; 3 uses
  %i.cw = load i8, ptr %.118.i.i.i49, align 1, !tbaa !47
  switch i8 %i.cw, label %.preheader.i.i54.preheader [
    i8 32, label %bb.h
    i8 9, label %bb.h
    i8 11, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48
  %i.cx = getelementptr inbounds nuw i8, ptr %.118.i.i.i49, i64 1 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.cx, %3
  br i1 %.not.i.i.i50, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.i.i.i48, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51: ; preds = %_ZN4core7isspaceEi.exit.i.i68, %bb.h, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40
  %.2.i.i.i52 = phi ptr [ %.2.i.i.i2297, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40 ], [ %scevgep29.i.i.i47, %bb.h ], [ %scevgep.i.i43, %_ZN4core7isspaceEi.exit.i.i68 ] ; 2 uses
  %.not23.i.i53 = icmp eq ptr %.2.i.i.i52, null
  br i1 %.not23.i.i53, label %bb.i, label %.preheader.i.i54.preheader

.preheader.i.i54.preheader:                       ; preds = %.lr.ph.i.i.i48, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51
  %.2.i.i.i52102 = phi ptr [ %.2.i.i.i52, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51 ], [ %.118.i.i.i49, %.lr.ph.i.i.i48 ] ; 9 uses
  br label %.preheader.i.i54

bb.i:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70

.preheader.i.i54:                                 ; preds = %.preheader.i.i54.preheader, %bb.j
  %storemerge.i.i55 = phi i32 [ %i.dc, %bb.j ], [ 0, %.preheader.i.i54.preheader ] ; 5 uses
  %i.cy = zext i32 %storemerge.i.i55 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !47
  switch i8 %i.da, label %_ZN4core7isspaceEi.exit.i10.i67 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i56
  ]

_ZN4core7isspaceEi.exit.i10.i67:                  ; preds = %.preheader.i.i54
  %i.db = icmp eq ptr %i.cz, %3
  br i1 %i.db, label %_ZN4core7isspaceEi.exit.thread.i.i56, label %bb.j

bb.j:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i67
  %i.dc = add i32 %storemerge.i.i55, 1
  br label %.preheader.i.i54, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i56:             ; preds = %_ZN4core7isspaceEi.exit.i10.i67, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54
  %.not30.i.i58 = icmp eq i32 %storemerge.i.i55, 0
  br i1 %.not30.i.i58, label %._crit_edge.i.i65, label %.lr.ph.preheader.i8.i59

.lr.ph.preheader.i8.i59:                          ; preds = %_ZN4core7isspaceEi.exit.thread.i.i56
  %.sroa.speculated.i.i57 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i55, i32 15)
  %wide.trip.count.i.i60 = zext nneg i32 %.sroa.speculated.i.i57 to i64 ; 8 uses
  %min.iters.check140 = icmp ult i32 %storemerge.i.i55, 8
  %8 = ptrtoaddr ptr %i.a to i64
  %9 = ptrtoaddr ptr %.2.i.i.i52102 to i64
  %i.dd = sub i64 %9, %8
  %diff.check138 = icmp ugt i64 %i.dd, -8
  %or.cond151 = or i1 %min.iters.check140, %diff.check138
  br i1 %or.cond151, label %.lr.ph.i9.i61.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.preheader.i8.i59
  %n.vec142 = and i64 %wide.trip.count.i.i60, 8   ; 3 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next146, %vector.body143 ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %index144
  %wide.load145 = load <8 x i8>, ptr %i.de, align 1, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %index144
  store <8 x i8> %wide.load145, ptr %i.df, align 8, !tbaa !47
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.dg, label %middle.block147, label %vector.body143, !llvm.loop !265

middle.block147:                                  ; preds = %vector.body143
  %cmp.n148 = icmp eq i64 %n.vec142, %wide.trip.count.i.i60
  br i1 %cmp.n148, label %._crit_edge.i.i65, label %.lr.ph.i9.i61.preheader

.lr.ph.i9.i61.preheader:                          ; preds = %.lr.ph.preheader.i8.i59, %middle.block147
  %indvars.iv.i.i62.ph = phi i64 [ 0, %.lr.ph.preheader.i8.i59 ], [ %n.vec142, %middle.block147 ] ; 3 uses
  %xtraiter164 = and i64 %wide.trip.count.i.i60, 3 ; 2 uses
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.lr.ph.i9.i61.prol.loopexit, label %.lr.ph.i9.i61.prol

.lr.ph.i9.i61.prol:                               ; preds = %.lr.ph.i9.i61.preheader, %.lr.ph.i9.i61.prol
  %indvars.iv.i.i62.prol = phi i64 [ %indvars.iv.next.i.i63.prol, %.lr.ph.i9.i61.prol ], [ %indvars.iv.i.i62.ph, %.lr.ph.i9.i61.preheader ] ; 3 uses
  %prol.iter166 = phi i64 [ %prol.iter166.next, %.lr.ph.i9.i61.prol ], [ 0, %.lr.ph.i9.i61.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.i.i62.prol
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i62.prol
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !47
  %indvars.iv.next.i.i63.prol = add nuw nsw i64 %indvars.iv.i.i62.prol, 1 ; 2 uses
  %prol.iter166.next = add i64 %prol.iter166, 1   ; 2 uses
  %prol.iter166.cmp.not = icmp eq i64 %prol.iter166.next, %xtraiter164
  br i1 %prol.iter166.cmp.not, label %.lr.ph.i9.i61.prol.loopexit, label %.lr.ph.i9.i61.prol, !llvm.loop !266

.lr.ph.i9.i61.prol.loopexit:                      ; preds = %.lr.ph.i9.i61.prol, %.lr.ph.i9.i61.preheader
  %indvars.iv.i.i62.unr = phi i64 [ %indvars.iv.i.i62.ph, %.lr.ph.i9.i61.preheader ], [ %indvars.iv.next.i.i63.prol, %.lr.ph.i9.i61.prol ]
  %i.dk = sub nsw i64 %indvars.iv.i.i62.ph, %wide.trip.count.i.i60
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge.i.i65, label %.lr.ph.i9.i61

._crit_edge.i.i65:                                ; preds = %.lr.ph.i9.i61.prol.loopexit, %.lr.ph.i9.i61, %middle.block147, %_ZN4core7isspaceEi.exit.thread.i.i56
  %.pre-phi.i.i66 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i56 ], [ %wide.trip.count.i.i60, %middle.block147 ], [ %wide.trip.count.i.i60, %.lr.ph.i9.i61 ], [ %wide.trip.count.i.i60, %.lr.ph.i9.i61.prol.loopexit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i66
  store i8 0, ptr %i.dm, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70

.lr.ph.i9.i61:                                    ; preds = %.lr.ph.i9.i61.prol.loopexit, %.lr.ph.i9.i61
  %indvars.iv.i.i62 = phi i64 [ %indvars.iv.next.i.i63.3, %.lr.ph.i9.i61 ], [ %indvars.iv.i.i62.unr, %.lr.ph.i9.i61.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.i.i62
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i62
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !47
  %indvars.iv.next.i.i63 = add nuw nsw i64 %indvars.iv.i.i62, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !47
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !47
  %indvars.iv.next.i.i63.1 = add nuw nsw i64 %indvars.iv.i.i62, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63.1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !47
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63.1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !47
  %indvars.iv.next.i.i63.2 = add nuw nsw i64 %indvars.iv.i.i62, 3 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63.2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63.2
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !47
  %indvars.iv.next.i.i63.3 = add nuw nsw i64 %indvars.iv.i.i62, 4 ; 2 uses
  %exitcond.not.i.i64.3 = icmp eq i64 %indvars.iv.next.i.i63.3, %wide.trip.count.i.i60
  br i1 %exitcond.not.i.i64.3, label %._crit_edge.i.i65, label %.lr.ph.i9.i61, !llvm.loop !267

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70: ; preds = %bb.i, %._crit_edge.i.i65
  %.2.i.i.i52101 = phi ptr [ null, %bb.i ], [ %.2.i.i.i52102, %._crit_edge.i.i65 ]
  %i.dz = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.ea = fptrunc double %i.dz to float
  %i.eb = fmul float %i.ea, 2.550000e+02
  %i.ec = fadd float %i.eb, 5.000000e-01
  %i.ed = tail call noundef float @llvm.floor.f32(float %i.ec)
  %i.ee = fptosi float %i.ed to i32
  %i.ef = and i32 %i.ee, 255
  %i.eg = load i32, ptr %2, align 4, !tbaa !63
  %i.eh = and i32 %i.eg, -256
  %i.ei = or disjoint i32 %i.ef, %i.eh
  store i32 %i.ei, ptr %2, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %.2.i.i.i52101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader8readBoolEPKcRbS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %.not11.i.i = icmp eq ptr %1, %3
  br i1 %.not11.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core7isspaceEi.exit.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.f, %_ZN4core7isspaceEi.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !47
  switch i8 %i.e, label %_ZN4core7isspaceEi.exit.i.i [
    i8 32, label %.critedge.thread.i.i
    i8 13, label %.critedge.thread.i.i
    i8 12, label %.critedge.thread.i.i
    i8 10, label %.critedge.thread.i.i
    i8 9, label %.critedge.thread.i.i
    i8 11, label %.critedge.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i.i:                      ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.g = ptrtoaddr ptr %.012.i.i to i64
  %i.h = sub i64 %i.b, %i.g
  %scevgep29.i.i.i = getelementptr i8, ptr %.012.i.i, i64 %i.h
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.thread.i.i
  %.118.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.012.i.i, %.critedge.thread.i.i ] ; 3 uses
  %i.i = load i8, ptr %.118.i.i.i, align 1, !tbaa !47
  switch i8 %i.i, label %.preheader.i.i.preheader [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.118.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %3
  br i1 %.not.i.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i: ; preds = %_ZN4core7isspaceEi.exit.i.i, %bb.b, %bb.a
  %.2.i.i.i = phi ptr [ %1, %bb.a ], [ %scevgep29.i.i.i, %bb.b ], [ %scevgep.i.i, %_ZN4core7isspaceEi.exit.i.i ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not23.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  %.2.i.i.i15 = phi ptr [ %.2.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i ], [ %.118.i.i.i, %.lr.ph.i.i.i ] ; 7 uses
  br label %.preheader.i.i

bb.c:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  store i8 0, ptr %i.a, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.d
  %storemerge.i.i = phi i32 [ %i.o, %bb.d ], [ 0, %.preheader.i.i.preheader ] ; 5 uses
  %i.k = zext i32 %storemerge.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.2.i.i.i15, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47
  switch i8 %i.m, label %_ZN4core7isspaceEi.exit.i10.i [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i10.i:                    ; preds = %.preheader.i.i
  %i.n = icmp eq ptr %i.l, %3
  br i1 %i.n, label %_ZN4core7isspaceEi.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i
  %i.o = add i32 %storemerge.i.i, 1
  br label %.preheader.i.i, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i:               ; preds = %_ZN4core7isspaceEi.exit.i10.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %.not30.i.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i8.i

.lr.ph.preheader.i8.i:                            ; preds = %_ZN4core7isspaceEi.exit.thread.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 7)
  %wide.trip.count.i.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.p = icmp ult i32 %storemerge.i.i, 4
  br i1 %i.p, label %.lr.ph.i9.i.epil.preheader, label %.lr.ph.preheader.i8.i.new

.lr.ph.preheader.i8.i.new:                        ; preds = %.lr.ph.preheader.i8.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4
  br label %.lr.ph.i9.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i9.i
end_hunk_2
