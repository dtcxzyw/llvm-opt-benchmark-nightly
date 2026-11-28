Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lua_debugger_stack?download=true
inline.NumInlined: 233
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN26LuaDebuggerStackController15showContextMenuERK6QPoint:bb.a

bb.ay:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i85
  %i.ci = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ci, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit87

_ZN7QStringD2Ev.exit87:                           ; preds = %_ZN7QStringD2Ev.exit83, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i85, %bb.ay
  %i.cj = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i88, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89:    ; preds = %_ZN7QStringD2Ev.exit87
  %i.ck = atomicrmw add ptr %i.cj, i32 -1 acq_rel, align 4
  %.not.i.i90 = icmp eq i32 %i.ck, 1
  br i1 %.not.i.i90, label %bb.az, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.az:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89
  %i.cl = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cl, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.az, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89, %_ZN7QStringD2Ev.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.bh

bb.ba:                                            ; preds = %bb.al, %bb.an, %bb.ap, %bb.aj, %_ZN7QStringD2Ev.exit71, %_ZN7QStringD2Ev.exit, %bb.ar
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bb:                                            ; preds = %bb.at
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit101

bb.bc:                                            ; preds = %bb.au
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit97

bb.bd:                                            ; preds = %bb.av
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cq = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i94, label %_ZN7QStringD2Ev.exit97, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95:    ; preds = %bb.bd
  %i.cr = atomicrmw add ptr %i.cq, i32 -1 acq_rel, align 4
  %.not.i.i96 = icmp eq i32 %i.cr, 1
  br i1 %.not.i.i96, label %bb.be, label %_ZN7QStringD2Ev.exit97

bb.be:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95
  %i.cs = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cs, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit97

_ZN7QStringD2Ev.exit97:                           ; preds = %bb.be, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95, %bb.bd, %bb.bc
  %.pn54 = phi { ptr, i32 } [ %i.co, %bb.bc ], [ %i.cp, %bb.bd ], [ %i.cp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95 ], [ %i.cp, %bb.be ] ; 3 uses
  %i.ct = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i98, label %_ZN7QStringD2Ev.exit101, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99:    ; preds = %_ZN7QStringD2Ev.exit97
  %i.cu = atomicrmw add ptr %i.ct, i32 -1 acq_rel, align 4
  %.not.i.i100 = icmp eq i32 %i.cu, 1
  br i1 %.not.i.i100, label %bb.bf, label %_ZN7QStringD2Ev.exit101

bb.bf:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99
  %i.cv = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cv, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit101

_ZN7QStringD2Ev.exit101:                          ; preds = %bb.bf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99, %_ZN7QStringD2Ev.exit97, %bb.bb
  %.pn54.pn = phi { ptr, i32 } [ %i.cn, %bb.bb ], [ %.pn54, %_ZN7QStringD2Ev.exit97 ], [ %.pn54, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i99 ], [ %.pn54, %bb.bf ]
  %i.cw = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i102, label %_ZN17QArrayDataPointerIDsED2Ev.exit109, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103:   ; preds = %_ZN7QStringD2Ev.exit101
  %i.cx = atomicrmw add ptr %i.cw, i32 -1 acq_rel, align 4
  %.not.i.i104 = icmp eq i32 %i.cx, 1
  br i1 %.not.i.i104, label %bb.bg, label %_ZN17QArrayDataPointerIDsED2Ev.exit109

bb.bg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103
  %i.cy = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cy, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit109

_ZN17QArrayDataPointerIDsED2Ev.exit109:           ; preds = %bb.bg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103, %_ZN7QStringD2Ev.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.bk

bb.bh:                                            ; preds = %bb.ao, %bb.aq, %_ZN17QArrayDataPointerIDsED2Ev.exit, %bb.as, %bb.am, %bb.an, %bb.u
  call void @_ZN5QMenuD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable_or_null(40) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.cz = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i110, label %_ZN7QStringD2Ev.exit113, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111:   ; preds = %bb.bh
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %.not.i.i112 = icmp eq i32 %i.da, 1
  br i1 %.not.i.i112, label %bb.bi, label %_ZN7QStringD2Ev.exit113

bb.bi:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111
  %i.db = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.db, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit113

_ZN7QStringD2Ev.exit113:                          ; preds = %bb.bh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %_ZNK11QModelIndex7isValidEv.exit.thread

_ZNK11QModelIndex7isValidEv.exit.thread:          ; preds = %bb.c, %_ZN7QStringD2Ev.exit113, %_ZNK11QModelIndex7siblingEii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %bb.b, %_ZNK11QModelIndex7isValidEv.exit.thread
  ret void

bb.bk:                                            ; preds = %_ZN7QStringD2Ev.exit79, %bb.ba, %_ZN17QArrayDataPointerIDsED2Ev.exit109, %bb.ah, %_ZN7QStringD2Ev.exit75
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn48, %_ZN7QStringD2Ev.exit75 ], [ %i.cm, %bb.ba ], [ %.pn50, %_ZN7QStringD2Ev.exit79 ], [ %.pn54.pn, %_ZN17QArrayDataPointerIDsED2Ev.exit109 ], [ %i.br, %bb.ah ]
  call void @_ZN5QMenuD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable_or_null(40) %8) #13
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.aa
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %bb.bk ], [ %i.bg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.z
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn, %bb.bl ], [ %.pn, %bb.z ] ; 3 uses
  %i.dc = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i114, label %_ZN7QStringD2Ev.exit117, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i115

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i115:   ; preds = %bb.bm
  %i.dd = atomicrmw add ptr %i.dc, i32 -1 acq_rel, align 4
  %.not.i.i116 = icmp eq i32 %i.dd, 1
  br i1 %.not.i.i116, label %bb.bn, label %_ZN7QStringD2Ev.exit117

bb.bn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i115
  %i.de = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.de, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit117

_ZN7QStringD2Ev.exit117:                          ; preds = %bb.bn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i115, %bb.bm, %bb.w
  %.pn59.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.w ], [ %.pn59.pn.pn.pn.pn, %bb.bm ], [ %.pn59.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i115 ], [ %.pn59.pn.pn.pn.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN7QStringD2Ev.exit117, %bb.v
  %.pn59.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit117 ], [ %i.bc, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QMenuC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN7QWidget9addActionERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QAction10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(16), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN5QMenu4execERK6QPointP7QAction(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK19QAbstractScrollArea8viewportEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @_ZNK7QWidget11mapToGlobalERK6QPoint(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK7QAction9isEnabledEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN15QGuiApplication9clipboardEv() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QClipboard7setTextERK7QStringNS_4ModeE(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QMenuD1Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN17LuaDebuggerDialog18createStackSectionEP7QWidget(ptr noundef align 8 dereferenceable_or_null(1268) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QList.21, align 8            ; 10 uses
  %4 = alloca [2 x %class.QString], align 8       ; 12 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %i.a = tail call noalias noundef dereferenceable_or_null(104) ptr @_Znwm(i64 noundef 104) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef align 8 dereferenceable_or_null(56) @_ZN17LuaDebuggerDialog16staticMetaObjectE, ptr noundef @.str.5, ptr noundef null, i32 noundef -1)
          to label %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit unwind label %bb.n

_ZN17LuaDebuggerDialog2trEPKcS1_i.exit:           ; preds = %bb.a
  invoke void @_ZN18CollapsibleSectionC1ERK7QStringP7QWidget(ptr noundef align 8 dereferenceable_or_null(104) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit
  %i.b = getelementptr i8, ptr %0, i64 856        ; 4 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.d, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN7QStringD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.e = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.e, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.f = call noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #14 ; 4 uses
  invoke void @_ZN18QStandardItemModelC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.f, ptr noundef %0)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.g = getelementptr i8, ptr %0, i64 936        ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  call void @_ZN18QStandardItemModel14setColumnCountEi(ptr noundef align 8 dereferenceable_or_null(16) %i.f, i32 noundef 2)
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef align 8 dereferenceable_or_null(56) @_ZN17LuaDebuggerDialog16staticMetaObjectE, ptr noundef @.str.6, ptr noundef null, i32 noundef -1)
          to label %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit16 unwind label %.thread

.thread:                                          ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZN17LuaDebuggerDialog2trEPKcS1_i.exit16:         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %i.j, ptr noundef align 8 dereferenceable_or_null(56) @_ZN17LuaDebuggerDialog16staticMetaObjectE, ptr noundef @.str.7, ptr noundef null, i32 noundef -1)
          to label %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit17 unwind label %.loopexit.loopexit38

_ZN17LuaDebuggerDialog2trEPKcS1_i.exit17:         ; preds = %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit16
  %i.k = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %3, i64 noundef 24, i64 noundef 8, i64 noundef 2, i32 noundef 1) #13 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit17, %_ZN7QStringC2ERKS_.exit.i.i
  %i.o = phi i64 [ %i.y, %_ZN7QStringC2ERKS_.exit.i.i ], [ 0, %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit17 ] ; 2 uses
  %.010.i.i = phi ptr [ %i.x, %_ZN7QStringC2ERKS_.exit.i.i ], [ %4, %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit17 ] ; 4 uses
  %i.p = getelementptr [24 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %i.q = load <2 x ptr>, ptr %.010.i.i, align 8
  %i.r = load ptr, ptr %.010.i.i, align 8         ; 2 uses
  store <2 x ptr> %i.q, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.s, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN7QStringC2ERKS_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.v = atomicrmw add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load i64, ptr %i.m, align 8
  br label %_ZN7QStringC2ERKS_.exit.i.i

_ZN7QStringC2ERKS_.exit.i.i:                      ; preds = %bb.e, %.lr.ph.i.i
  %i.w = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %.lr.ph.i.i ]
  %i.x = getelementptr i8, ptr %.010.i.i, i64 24  ; 2 uses
  %i.y = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.y, ptr %i.m, align 8
  %i.z = icmp ult ptr %i.x, %i.n
  br i1 %i.z, label %.lr.ph.i.i, label %_ZN5QListI7QStringEC2ESt16initializer_listIS0_E.exit, !llvm.loop !21

_ZN5QListI7QStringEC2ESt16initializer_listIS0_E.exit: ; preds = %_ZN7QStringC2ERKS_.exit.i.i
  invoke void @_ZN18QStandardItemModel25setHorizontalHeaderLabelsERK5QListI7QStringE(ptr noundef align 8 dereferenceable_or_null(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %.loopexit.loopexit

bb.f:                                             ; preds = %_ZN5QListI7QStringEC2ESt16initializer_listIS0_E.exit
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i18, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %bb.f
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %.not.i.i19 = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %_ZN5QListI7QStringED2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.ac = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ad = load i64, ptr %i.m, align 8
  %.idx.i.i.i = mul i64 %i.ad, 24                 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.ah = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #13
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ai = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.g
  %i.aj = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aj, i64 noundef 24, i64 noundef 8) #13
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %bb.f, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i20, label %_ZN7QStringD2Ev.exit23, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21:    ; preds = %_ZN5QListI7QStringED2Ev.exit
  %i.am = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4
  %.not.i.i22 = icmp eq i32 %i.am, 1
  br i1 %.not.i.i22, label %bb.i, label %_ZN7QStringD2Ev.exit23

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21
  %i.an = load ptr, ptr %i.ak, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.an, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit23

_ZN7QStringD2Ev.exit23:                           ; preds = %_ZN5QListI7QStringED2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21, %bb.i
  %i.ao = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i20.1 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i20.1, label %_ZN7QStringD2Ev.exit23.1, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21.1

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21.1:  ; preds = %_ZN7QStringD2Ev.exit23
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i22.1 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i22.1, label %bb.j, label %_ZN7QStringD2Ev.exit23.1

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21.1
  %i.aq = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit23.1

_ZN7QStringD2Ev.exit23.1:                         ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21.1, %_ZN7QStringD2Ev.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ar = call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #14 ; 5 uses
  invoke void @_ZN9QTreeViewC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.ar, ptr noundef null)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZN7QStringD2Ev.exit23.1
  %i.as = getelementptr i8, ptr %0, i64 928       ; 5 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.g, align 8
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 456
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef align 8 dereferenceable_or_null(40) %i.ar, ptr noundef %i.at)
  %i.ax = load ptr, ptr %i.as, align 8
  call void @_ZN17QAbstractItemView15setEditTriggersE6QFlagsINS_11EditTriggerEE(ptr noundef align 8 dereferenceable_or_null(40) %i.ax, i32 0)
  %i.ay = load ptr, ptr %i.as, align 8
  call void @_ZN9QTreeView18setRootIsDecoratedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ay, i1 noundef zeroext true)
  %i.az = load ptr, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef align 8 dereferenceable_or_null(56) @_ZN17LuaDebuggerDialog16staticMetaObjectE, ptr noundef @.str.8, ptr noundef null, i32 noundef -1)
  invoke void @_ZN7QWidget10setToolTipERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i24, label %_ZN7QStringD2Ev.exit27, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25:    ; preds = %bb.l
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 acq_rel, align 4
  %.not.i.i26 = icmp eq i32 %i.bb, 1
  br i1 %.not.i.i26, label %bb.m, label %_ZN7QStringD2Ev.exit27

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25
  %i.bc = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bc, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit27

_ZN7QStringD2Ev.exit27:                           ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.bd = load ptr, ptr %i.b, align 8
  %i.be = load ptr, ptr %i.as, align 8
  call void @_ZN18CollapsibleSection16setContentWidgetEP7QWidget(ptr noundef align 8 dereferenceable_or_null(104) %i.bd, ptr noundef %i.be)
  %i.bf = load ptr, ptr %i.b, align 8
  call void @_ZN18CollapsibleSection11setExpandedEb(ptr noundef align 8 dereferenceable_or_null(104) %i.bf, i1 noundef zeroext true)
  %i.bg = load ptr, ptr %i.b, align 8
  ret ptr %i.bg

bb.n:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit31

bb.o:                                             ; preds = %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bj = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i28, label %_ZN7QStringD2Ev.exit31, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29:    ; preds = %bb.o
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %.not.i.i30 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i30, label %bb.p, label %_ZN7QStringD2Ev.exit31

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29
  %i.bl = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit31

_ZN7QStringD2Ev.exit31:                           ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bi, %bb.o ], [ %i.bi, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29 ], [ %i.bi, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 104) #15
  br label %bb.u

bb.q:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef 16) #15
  br label %bb.u

.loopexit.loopexit38:                             ; preds = %_ZN17LuaDebuggerDialog2trEPKcS1_i.exit16
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.sink.split

.loopexit.loopexit:                               ; preds = %_ZN5QListI7QStringEC2ESt16initializer_listIS0_E.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QListI7QStringED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %3) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.bp) #13
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.loopexit, %.loopexit.loopexit38
  %.pn11.pn.ph = phi { ptr, i32 } [ %i.bn, %.loopexit.loopexit38 ], [ %i.bo, %.loopexit.loopexit ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.thread
  %.pn11.pn = phi { ptr, i32 } [ %i.i, %.thread ], [ %.pn11.pn.ph, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.u

bb.r:                                             ; preds = %_ZN7QStringD2Ev.exit23.1
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef 40) #15
  br label %bb.u

bb.s:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i32, label %_ZN7QStringD2Ev.exit35, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33:    ; preds = %bb.s
  %i.bt = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %.not.i.i34 = icmp eq i32 %i.bt, 1
  br i1 %.not.i.i34, label %bb.t, label %_ZN7QStringD2Ev.exit35

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33
  %i.bu = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bu, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit35

_ZN7QStringD2Ev.exit35:                           ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i33, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.u

bb.u:                                             ; preds = %_ZN7QStringD2Ev.exit31, %_ZN7QStringD2Ev.exit35, %bb.r, %.loopexit, %bb.q
  %.pn14 = phi { ptr, i32 } [ %i.br, %_ZN7QStringD2Ev.exit35 ], [ %i.bq, %bb.r ], [ %.pn11.pn, %.loopexit ], [ %i.bm, %bb.q ], [ %.pn, %_ZN7QStringD2Ev.exit31 ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN18CollapsibleSectionC1ERK7QStringP7QWidget(ptr noundef align 8 dereferenceable_or_null(104), ptr noundef align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QStandardItemModelC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QStandardItemModel14setColumnCountEi(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QStandardItemModel25setHorizontalHeaderLabelsERK5QListI7QStringE(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i:  ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 24                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #13
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #13
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QTreeViewC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN17QAbstractItemView15setEditTriggersE6QFlagsINS_11EditTriggerEE(ptr noundef align 8 dereferenceable_or_null(40), i32) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QTreeView18setRootIsDecoratedEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget10setToolTipERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN18CollapsibleSection16setContentWidgetEP7QWidget(ptr noundef align 8 dereferenceable_or_null(104), ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN18CollapsibleSection11setExpandedEb(ptr noundef align 8 dereferenceable_or_null(104), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LuaDebuggerDialog14wireStackPanelEv(ptr noundef align 8 dereferenceable_or_null(1268) initializes((152, 168)) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %1 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %2 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 928        ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 152
  %i.j = load <2 x ptr>, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.h, align 8
  store <2 x ptr> %i.j, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 ptrtoint (ptr @_ZN17QAbstractItemView13doubleClickedERK11QModelIndex to i64), ptr %i.e, align 8, !noalias !28
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !28
  store i64 ptrtoint (ptr @_ZN26LuaDebuggerStackController19onItemDoubleClickedERK11QModelIndex to i64), ptr %i.f, align 8, !noalias !28
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !28
  %i.l = tail call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #14, !noalias !28 ; 5 uses
  store i32 1, ptr %i.l, align 4, !noalias !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM26LuaDebuggerStackControllerFvRK11QModelIndexENS_4ListIJS4_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.m, align 8, !noalias !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 ptrtoint (ptr @_ZN26LuaDebuggerStackController19onItemDoubleClickedERK11QModelIndex to i64), ptr %i.n, align 8, !noalias !28
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !28
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %1, ptr noundef %i.k, ptr noundef nonnull %i.e, ptr noundef %i.g, ptr noundef nonnull %i.f, ptr noundef %i.l, i32 noundef 0, ptr noundef null, ptr noundef @_ZN17QAbstractItemView16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %1) #13
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = call noundef ptr @_ZNK17QAbstractItemView14selectionModelEv(ptr noundef align 8 dereferenceable_or_null(40) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 ptrtoint (ptr @_ZN19QItemSelectionModel14currentChangedERK11QModelIndexS2_ to i64), ptr %i.c, align 8, !noalias !29
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !29
  store i64 ptrtoint (ptr @_ZN26LuaDebuggerStackController20onCurrentItemChangedERK11QModelIndexS2_ to i64), ptr %i.d, align 8, !noalias !29
  %.fca.1.gep.i16 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep.i16, align 8, !noalias !29
  %i.q = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #14, !noalias !29 ; 5 uses
  store i32 1, ptr %i.q, align 4, !noalias !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM26LuaDebuggerStackControllerFvRK11QModelIndexS4_ENS_4ListIJS4_S4_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.r, align 8, !noalias !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 ptrtoint (ptr @_ZN26LuaDebuggerStackController20onCurrentItemChangedERK11QModelIndexS2_ to i64), ptr %i.s, align 8, !noalias !29
  %.repack7.i.i17 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %.repack7.i.i17, align 8, !noalias !29
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %2, ptr noundef %i.p, ptr noundef nonnull %i.c, ptr noundef %i.g, ptr noundef nonnull %i.d, ptr noundef %i.q, i32 noundef 0, ptr noundef null, ptr noundef @_ZN19QItemSelectionModel16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #13
  %i.t = load ptr, ptr %i.h, align 8
  call void @_ZN7QWidget20setContextMenuPolicyEN2Qt17ContextMenuPolicyE(ptr noundef align 8 dereferenceable_or_null(40) %i.t, i32 noundef 3)
  %i.u = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN7QWidget26customContextMenuRequestedERK6QPoint to i64), ptr %i.a, align 8, !noalias !30
  %.fca.1.gep12.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep12.i21, align 8, !noalias !30
  store i64 ptrtoint (ptr @_ZN26LuaDebuggerStackController15showContextMenuERK6QPoint to i64), ptr %i.b, align 8, !noalias !30
  %.fca.1.gep.i22 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i22, align 8, !noalias !30
  %i.v = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #14, !noalias !30 ; 5 uses
  store i32 1, ptr %i.v, align 4, !noalias !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM26LuaDebuggerStackControllerFvRK6QPointENS_4ListIJS4_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.w, align 8, !noalias !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 ptrtoint (ptr @_ZN26LuaDebuggerStackController15showContextMenuERK6QPoint to i64), ptr %i.x, align 8, !noalias !30
  %.repack7.i.i23 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %.repack7.i.i23, align 8, !noalias !30
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef %i.u, ptr noundef nonnull %i.a, ptr noundef %i.g, ptr noundef nonnull %i.b, ptr noundef %i.v, i32 noundef 0, ptr noundef null, ptr noundef @_ZN7QWidget16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
