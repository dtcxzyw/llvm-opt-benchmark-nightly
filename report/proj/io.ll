Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17819
inline.NumDeleted: 4456
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev:bb.a
  %i.fbq = extractvalue { ptr, i32 } %i.fbp, 0
  call void @__clang_call_terminate(ptr %i.fbq) #40
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2207: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit2206
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #41
  %i.fbr = load ptr, ptr %i.ach, align 8, !tbaa !921
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %79, ptr noundef %i.fbr)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2208 unwind label %bb.rs

bb.rs:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2207
  %i.fbs = landingpad { ptr, i32 }
          catch ptr null
  %i.fbt = extractvalue { ptr, i32 } %i.fbs, 0
  call void @__clang_call_terminate(ptr %i.fbt) #40
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2208: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2207
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #41
  br i1 %cond6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2156.thread3362, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791"

.loopexit3583:                                    ; preds = %bb.rd, %bb.rm, %bb.qz, %bb.qv
  %.merged1161 = phi { ptr, i32 } [ %i.exo, %bb.qv ], [ %i.eyl, %bb.qz ], [ %i.faw, %bb.rm ], [ %i.ezl, %bb.rd ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %82) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #41
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %81) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #41
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %80) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #41
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %79) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #41
  br label %bb.sp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2156.thread3362: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1902, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1897, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1898, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1900, %bb.ne, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1913, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1908.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1908, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1902.thread3305.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1909, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1911, %bb.nf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1950, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1952, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1952.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1967, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1950.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1963, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1965, %bb.no, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1968, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1970, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1967.thread3335, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1937, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1937.thread, %bb.nl, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1940, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1943, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1946, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1948, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1935.thread, %bb.nm, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1940.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1943.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1946.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1935, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1988.thread3337, %bb.qr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2156.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2135.thread3344, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2208, %bb.qs, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2158, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2156
  %i.fbu = getelementptr inbounds nuw i8, ptr %i.ado, i64 49
  %i.fbv = load i8, ptr %i.fbu, align 1, !tbaa !1056, !range !83, !noundef !84
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.adq, i64 49
  %i.fbx = load i8, ptr %i.fbw, align 1, !tbaa !1056, !range !83, !noundef !84
  %.not1136 = icmp eq i8 %i.fbv, %i.fbx
  br i1 %.not1136, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384, label %bb.rt

bb.rt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2156.thread3362
  %i.fby = load i64, ptr %i.auv, align 8, !tbaa !17 ; 4 uses
  %i.fbz = load i64, ptr %i.dcd, align 8, !tbaa !17
  %i.fca = icmp eq i64 %i.fby, %i.fbz
  br i1 %i.fca, label %bb.ru, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.thread

bb.ru:                                            ; preds = %bb.rt
  %i.fcb = icmp eq i64 %i.fby, 0
  br i1 %i.fcb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210: ; preds = %bb.ru
  %i.fcc = load ptr, ptr %i.aea, align 8, !tbaa !14
  %i.fcd = load ptr, ptr %i.aeb, align 8, !tbaa !14
  %bcmp.i2209 = call i32 @bcmp(ptr %i.fcd, ptr %i.fcc, i64 %i.fby)
  %i.fce = icmp eq i32 %bcmp.i2209, 0
  br i1 %i.fce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread: ; preds = %bb.ru, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210
  %i.fcf = add nsw i64 %i.aef, 1
  %i.fcg = icmp eq i64 %i.fcf, %i.aej
  br i1 %i.fcg, label %bb.rv, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread

bb.rv:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread
  %i.fch = load ptr, ptr %i.adv, align 8, !tbaa !1047 ; 4 uses
  %i.fci = getelementptr inbounds nuw i8, ptr %i.fch, i64 8
  %i.fcj = load i64, ptr %i.fci, align 8, !tbaa !17
  %i.fck = icmp eq i64 %i.fcj, 4
  br i1 %i.fck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2211, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2211: ; preds = %bb.rv
  %i.fcl = load ptr, ptr %i.fch, align 8, !tbaa !14
  %i.fcm = load i32, ptr %i.fcl, align 1
  %i.fcn = icmp ne i32 %i.fcm, 1936291937
  %i.fco = zext i1 %i.fcn to i32
  %i.fcp = icmp eq i32 %i.fco, 0
  br i1 %i.fcp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2213, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2213: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2211
  %i.fcq = getelementptr inbounds nuw i8, ptr %i.fch, i64 40
  %i.fcr = load i64, ptr %i.fcq, align 8, !tbaa !17
  %i.fcs = icmp eq i64 %i.fcr, 3
  br i1 %i.fcs, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2213
  %i.fct = getelementptr inbounds nuw i8, ptr %i.fch, i64 32
  %i.fcu = load ptr, ptr %i.fct, align 8, !tbaa !14 ; 2 uses
  %i.fcv = load i16, ptr %i.fcu, align 1
  %i.fcw = xor i16 %i.fcv, 30579
  %i.fcx = getelementptr i8, ptr %i.fcu, i64 2
  %i.fcy = load i8, ptr %i.fcx, align 1
  %i.fcz = zext i8 %i.fcy to i16
  %i.fda = xor i16 %i.fcz, 117
  %i.fdb = or i16 %i.fcw, %i.fda
  %i.fdc = icmp ne i16 %i.fdb, 0
  %i.fdd = zext i1 %i.fdc to i32
  %i.fde = icmp eq i32 %i.fdd, 0
  br i1 %i.fde, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread3381, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread: ; preds = %bb.rv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2213, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2211, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread
  %i.fdf = add nsw i64 %i.aej, 1
  %i.fdg = icmp eq i64 %i.fdf, %i.aef
  br i1 %i.fdg, label %bb.rw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

bb.rw:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread
  %i.fdh = load ptr, ptr %i.adr, align 8, !tbaa !1047 ; 4 uses
  %i.fdi = getelementptr inbounds nuw i8, ptr %i.fdh, i64 8
  %i.fdj = load i64, ptr %i.fdi, align 8, !tbaa !17
  %i.fdk = icmp eq i64 %i.fdj, 4
  br i1 %i.fdk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2216, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2216: ; preds = %bb.rw
  %i.fdl = load ptr, ptr %i.fdh, align 8, !tbaa !14
  %i.fdm = load i32, ptr %i.fdl, align 1
  %i.fdn = icmp ne i32 %i.fdm, 1936291937
  %i.fdo = zext i1 %i.fdn to i32
  %i.fdp = icmp eq i32 %i.fdo, 0
  br i1 %i.fdp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2218, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2218: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2216
  %i.fdq = getelementptr inbounds nuw i8, ptr %i.fdh, i64 40
  %i.fdr = load i64, ptr %i.fdq, align 8, !tbaa !17
  %i.fds = icmp eq i64 %i.fdr, 3
  br i1 %i.fds, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2220, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2220: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2218
  %i.fdt = getelementptr inbounds nuw i8, ptr %i.fdh, i64 32
  %i.fdu = load ptr, ptr %i.fdt, align 8, !tbaa !14 ; 2 uses
  %i.fdv = load i16, ptr %i.fdu, align 1
  %i.fdw = xor i16 %i.fdv, 30579
  %i.fdx = getelementptr i8, ptr %i.fdu, i64 2
  %i.fdy = load i8, ptr %i.fdx, align 1
  %i.fdz = zext i8 %i.fdy to i16
  %i.fea = xor i16 %i.fdz, 117
  %i.feb = or i16 %i.fdw, %i.fea
  %i.fec = icmp ne i16 %i.feb, 0
  %i.fed = zext i1 %i.fec to i32
  %i.fee = icmp eq i32 %i.fed, 0
  br i1 %i.fee, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread3381, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread3381: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2220, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.aej, i64 %i.aef) ; 2 uses
  %.not11373905.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not11373905.not, label %.critedge1170, label %.lr.ph3907

.lr.ph3907:                                       ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread3381
  %i.fef = icmp ult i64 %i.aef, %i.aej            ; 2 uses
  %i.feg = select i1 %i.fef, ptr %i.aeb, ptr %i.aea
  %i.feh = select i1 %i.fef, ptr %i.aea, ptr %i.aeb
  %i.fei = getelementptr inbounds nuw i8, ptr %i.feg, i64 40
  %i.fej = load ptr, ptr %i.fei, align 8, !tbaa !1047
  %i.fek = getelementptr inbounds nuw i8, ptr %i.feh, i64 40
  %i.fel = load ptr, ptr %i.fek, align 8, !tbaa !1047
  br label %bb.rx

bb.rx:                                            ; preds = %.lr.ph3907, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit.backedge
  %.010163906 = phi i64 [ 0, %.lr.ph3907 ], [ %i.fen, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit.backedge ] ; 2 uses
  %i.fem = getelementptr inbounds nuw [72 x i8], ptr %i.fej, i64 %.010163906 ; 4 uses
  %i.fen = add nuw i64 %.010163906, 1             ; 3 uses
  %i.feo = getelementptr inbounds nuw [72 x i8], ptr %i.fel, i64 %i.fen ; 4 uses
  %i.fep = getelementptr inbounds nuw i8, ptr %i.fem, i64 8
  %i.feq = load i64, ptr %i.fep, align 8, !tbaa !17 ; 3 uses
  %i.fer = getelementptr inbounds nuw i8, ptr %i.feo, i64 8
  %i.fes = load i64, ptr %i.fer, align 8, !tbaa !17
  %i.fet = icmp eq i64 %i.feq, %i.fes
  br i1 %i.fet, label %bb.ry, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

bb.ry:                                            ; preds = %bb.rx
  %i.feu = icmp eq i64 %i.feq, 0
  br i1 %i.feu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.ry
  %i.fev = load ptr, ptr %i.feo, align 8, !tbaa !14
  %i.few = load ptr, ptr %i.fem, align 8, !tbaa !14
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.few, ptr %i.fev, i64 %i.feq)
  %.not.i2221 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i2221, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.ry
  %i.fex = getelementptr inbounds nuw i8, ptr %i.fem, i64 32
  %i.fey = getelementptr inbounds nuw i8, ptr %i.feo, i64 32
  %i.fez = getelementptr inbounds nuw i8, ptr %i.fem, i64 40
  %i.ffa = load i64, ptr %i.fez, align 8, !tbaa !17 ; 3 uses
  %i.ffb = getelementptr inbounds nuw i8, ptr %i.feo, i64 40
  %i.ffc = load i64, ptr %i.ffb, align 8, !tbaa !17
  %i.ffd = icmp eq i64 %i.ffa, %i.ffc
  br i1 %i.ffd, label %bb.rz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

bb.rz:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i
  %i.ffe = icmp eq i64 %i.ffa, 0
  br i1 %i.ffe, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit.backedge, label %.split

.split:                                           ; preds = %bb.rz
  %i.fff = load ptr, ptr %i.fey, align 8, !tbaa !14
  %i.ffg = load ptr, ptr %i.fex, align 8, !tbaa !14
  %bcmp.i.i3.i = call i32 @bcmp(ptr %i.ffg, ptr %i.fff, i64 %i.ffa)
  %.not3525 = icmp eq i32 %bcmp.i.i3.i, 0
  br i1 %.not3525, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit.backedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split

_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit.backedge: ; preds = %.split, %bb.rz
  %.not1137 = icmp ult i64 %i.fen, %.sroa.speculated
  br i1 %.not1137, label %bb.rx, label %.critedge1170, !llvm.loop !1769

.critedge1170:                                    ; preds = %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit.backedge, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread3381
  %i.ffh = load ptr, ptr %4, align 8, !tbaa !1758 ; 3 uses
  %i.ffi = getelementptr inbounds nuw i8, ptr %i.ffh, i64 49
  store i8 0, ptr %i.ffi, align 1, !tbaa !1056
  %i.ffj = getelementptr inbounds nuw i8, ptr %i.ffh, i64 16
  %i.ffk = getelementptr inbounds nuw i8, ptr %i.ffh, i64 24
  %i.ffl = load i64, ptr %i.ffk, align 8, !tbaa !17
  %i.ffm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ffj, i64 noundef 0, i64 noundef %i.ffl, ptr noundef nonnull @.str.436, i64 noundef 8) ; 0 uses
  %i.ffn = load ptr, ptr %4, align 8, !tbaa !1758 ; 3 uses
  %i.ffo = getelementptr inbounds nuw i8, ptr %i.ffn, i64 56
  %i.ffp = load ptr, ptr %i.ffo, align 8, !tbaa !1047 ; 3 uses
  %i.ffq = getelementptr inbounds nuw i8, ptr %i.ffn, i64 64 ; 2 uses
  %i.ffr = load ptr, ptr %i.ffq, align 8, !tbaa !1048 ; 2 uses
  %.not.i.i2222 = icmp eq ptr %i.ffr, %i.ffp
  br i1 %.not.i.i2222, label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE5clearEv.exit2233, label %.lr.ph.i.i.i.i2223

.lr.ph.i.i.i.i2223:                               ; preds = %.critedge1170, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2228
  %.05.i.i.i.i2224 = phi ptr [ %i.fgd, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2228 ], [ %i.ffp, %.critedge1170 ] ; 5 uses
  %i.ffs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2224, i64 32
  %i.fft = load ptr, ptr %i.ffs, align 8, !tbaa !14 ; 2 uses
  %i.ffu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2224, i64 48 ; 2 uses
  %i.ffv = icmp eq ptr %i.fft, %i.ffu
  br i1 %i.ffv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i2225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i2225: ; preds = %.lr.ph.i.i.i.i2223
  %i.ffw = load i64, ptr %i.ffu, align 8, !tbaa !19
  %i.ffx = add i64 %i.ffw, 1
  call void @_ZdlPvm(ptr noundef %i.fft, i64 noundef %i.ffx) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2226: ; preds = %.lr.ph.i.i.i.i2223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i2225
  %i.ffy = load ptr, ptr %.05.i.i.i.i2224, align 8, !tbaa !14 ; 2 uses
  %i.ffz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2224, i64 16 ; 2 uses
  %i.fga = icmp eq ptr %i.ffy, %i.ffz
  br i1 %i.fga, label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i2227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i2227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2226
  %i.fgb = load i64, ptr %i.ffz, align 8, !tbaa !19
  %i.fgc = add i64 %i.fgb, 1
  call void @_ZdlPvm(ptr noundef %i.ffy, i64 noundef %i.fgc) #44
  br label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2228

_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i2227
  %i.fgd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2224, i64 72 ; 2 uses
  %.not.i.i.i.i2229 = icmp eq ptr %i.fgd, %i.ffr
  br i1 %.not.i.i.i.i2229, label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2230, label %.lr.ph.i.i.i.i2223, !llvm.loop !1049

_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2230: ; preds = %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2228
  store ptr %i.ffp, ptr %i.ffq, align 8, !tbaa !1048
  %.pre4028.a = load ptr, ptr %4, align 8, !tbaa !1758
  br label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE5clearEv.exit2233

_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE5clearEv.exit2233: ; preds = %.critedge1170, %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2230
  %i.fge = phi ptr [ %i.ffn, %.critedge1170 ], [ %.pre4028.a, %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2230 ] ; 3 uses
  %i.fgf = getelementptr inbounds nuw i8, ptr %i.fge, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #41
  store ptr %i.ada, ptr %84, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ada, ptr noundef nonnull align 1 dereferenceable(5) @.str.460, i64 5, i1 false)
  store i64 5, ptr %i.adb, align 8, !tbaa !17
  store i8 0, ptr %i.adn, align 1, !tbaa !19
  invoke void @_ZN5osgeo4proj2io4Step8KeyValueC2EPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65) %83, ptr noundef nonnull @.str.437, ptr noundef nonnull align 8 dereferenceable(32) %84)
          to label %bb.sa unwind label %bb.sg

bb.sa:                                            ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE5clearEv.exit2233
  %i.fgg = getelementptr inbounds nuw i8, ptr %i.fge, i64 64 ; 3 uses
  %i.fgh = load ptr, ptr %i.fgg, align 8, !tbaa !1048 ; 10 uses
  %i.fgi = getelementptr inbounds nuw i8, ptr %i.fge, i64 72
  %i.fgj = load ptr, ptr %i.fgi, align 8, !tbaa !1057
  %.not.i2238 = icmp eq ptr %i.fgh, %i.fgj
  br i1 %.not.i2238, label %bb.se, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.fgk = getelementptr inbounds nuw i8, ptr %i.fgh, i64 16 ; 3 uses
  store ptr %i.fgk, ptr %i.fgh, align 8, !tbaa !10
  %i.fgl = load ptr, ptr %83, align 8, !tbaa !14  ; 2 uses
  %i.fgm = icmp eq ptr %i.fgl, %i.adc
  br i1 %i.fgm, label %bb.sc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2239

bb.sc:                                            ; preds = %bb.sb
  %i.fgn = load i64, ptr %i.add, align 8, !tbaa !17 ; 3 uses
  %i.fgo = icmp ult i64 %i.fgn, 16
  call void @llvm.assume(i1 %i.fgo)
  %i.fgp = add nuw nsw i64 %i.fgn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fgk, ptr noundef nonnull align 8 dereferenceable(1) %i.adc, i64 %i.fgp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i2240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2239: ; preds = %bb.sb
  store ptr %i.fgl, ptr %i.fgh, align 8, !tbaa !14
  %i.fgq = load i64, ptr %i.adc, align 8, !tbaa !19
  store i64 %i.fgq, ptr %i.fgk, align 8, !tbaa !19
  %.pre4029.a = load i64, ptr %i.add, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i2240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i2240: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2239, %bb.sc
  %i.fgr = phi i64 [ %.pre4029.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2239 ], [ %i.fgn, %bb.sc ]
  %i.fgs = getelementptr inbounds nuw i8, ptr %i.fgh, i64 8
  store i64 %i.fgr, ptr %i.fgs, align 8, !tbaa !17
  store ptr %i.adc, ptr %83, align 8, !tbaa !14
  store i64 0, ptr %i.add, align 8, !tbaa !17
  store i8 0, ptr %i.adc, align 8, !tbaa !19
  %i.fgt = getelementptr inbounds nuw i8, ptr %i.fgh, i64 32 ; 2 uses
  %i.fgu = getelementptr inbounds nuw i8, ptr %i.fgh, i64 48 ; 3 uses
  store ptr %i.fgu, ptr %i.fgt, align 8, !tbaa !10
  %i.fgv = load ptr, ptr %i.ade, align 8, !tbaa !14 ; 2 uses
  %i.fgw = icmp eq ptr %i.fgv, %i.adf
  br i1 %i.fgw, label %bb.sd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i2241

bb.sd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i2240
  %i.fgx = load i64, ptr %i.adg, align 8, !tbaa !17 ; 3 uses
  %i.fgy = icmp ult i64 %i.fgx, 16
  call void @llvm.assume(i1 %i.fgy)
  %i.fgz = add nuw nsw i64 %i.fgx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fgu, ptr noundef nonnull align 8 dereferenceable(1) %i.adf, i64 %i.fgz, i1 false)
  br label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i2241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i2240
  store ptr %i.fgv, ptr %i.fgt, align 8, !tbaa !14
  %i.fha = load i64, ptr %i.adf, align 8, !tbaa !19
  store i64 %i.fha, ptr %i.fgu, align 8, !tbaa !19
  %.pre4030 = load i64, ptr %i.adg, align 8, !tbaa !17
  br label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245.thread

_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245.thread: ; preds = %bb.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i2241
  %i.fhb = phi i64 [ %.pre4030, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i2241 ], [ %i.fgx, %bb.sd ]
  %i.fhc = getelementptr inbounds nuw i8, ptr %i.fgh, i64 40
  store i64 %i.fhb, ptr %i.fhc, align 8, !tbaa !17
  store ptr %i.adf, ptr %i.ade, align 8, !tbaa !14
  store i64 0, ptr %i.adg, align 8, !tbaa !17
  store i8 0, ptr %i.adf, align 8, !tbaa !19
  %i.fhd = getelementptr inbounds nuw i8, ptr %i.fgh, i64 64
  %i.fhe = load i8, ptr %i.adh, align 8, !tbaa !1052, !range !83, !noundef !84
  store i8 %i.fhe, ptr %i.fhd, align 8, !tbaa !1052
  %i.fhf = load ptr, ptr %i.fgg, align 8, !tbaa !1048
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.fhf, i64 72
  store ptr %i.fhg, ptr %i.fgg, align 8, !tbaa !1048
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2247

bb.se:                                            ; preds = %bb.sa
  invoke void @_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fgf, ptr %i.fgh, ptr noundef nonnull align 8 dereferenceable(65) %83)
          to label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245 unwind label %bb.sh

_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245: ; preds = %bb.se
  %.pre4031.a = load ptr, ptr %i.ade, align 8, !tbaa !14 ; 2 uses
  %i.fhh = icmp eq ptr %.pre4031.a, %i.adf
  br i1 %i.fhh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2246: ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245
  %i.fhi = load i64, ptr %i.adf, align 8, !tbaa !19
  %i.fhj = add i64 %i.fhi, 1
  call void @_ZdlPvm(ptr noundef %.pre4031.a, i64 noundef %i.fhj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2247: ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245, %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit2245.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2246
  %i.fhk = load ptr, ptr %83, align 8, !tbaa !14  ; 2 uses
  %i.fhl = icmp eq ptr %i.fhk, %i.adc
  br i1 %i.fhl, label %_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit2251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i2248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i2248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2247
  %i.fhm = load i64, ptr %i.adc, align 8, !tbaa !19
  %i.fhn = add i64 %i.fhm, 1
  call void @_ZdlPvm(ptr noundef %i.fhk, i64 noundef %i.fhn) #44
  br label %_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit2251

_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit2251:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i2248
  %i.fho = load ptr, ptr %84, align 8, !tbaa !14  ; 2 uses
  %i.fhp = icmp eq ptr %i.fho, %i.ada
  br i1 %i.fhp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2252: ; preds = %_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit2251
  %i.fhq = load i64, ptr %i.ada, align 8, !tbaa !19
  %i.fhr = add i64 %i.fhq, 1
  call void @_ZdlPvm(ptr noundef %i.fho, i64 noundef %i.fhr) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254: ; preds = %_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit2251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2252
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #41
  %i.fhs = load ptr, ptr %5, align 8, !tbaa !1758 ; 2 uses
  %i.fht = load ptr, ptr %4, align 8, !tbaa !1758 ; 3 uses
  %.not6.i.i2255 = icmp eq ptr %i.fhs, %i.fht
  br i1 %.not6.i.i2255, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2263, label %.lr.ph.i.i2256

.lr.ph.i.i2256:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254, %.lr.ph.i.i2256
  %.sroa.05.07.i.i2257 = phi ptr [ %i.fhu, %.lr.ph.i.i2256 ], [ %i.fhs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254 ] ; 2 uses
  %i.fhu = load ptr, ptr %.sroa.05.07.i.i2257, align 8, !tbaa !202 ; 2 uses
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.05.07.i.i2257) #41
  %.not.i.i2258 = icmp eq ptr %i.fhu, %i.fht
  br i1 %.not.i.i2258, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.loopexit.i2259, label %.lr.ph.i.i2256, !llvm.loop !1766

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.loopexit.i2259: ; preds = %.lr.ph.i.i2256
  %.pre10.i2262 = load ptr, ptr %4, align 8, !tbaa !1758
  br label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2263

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2263: ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.loopexit.i2259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254
  %i.fhv = phi ptr [ %.pre10.i2262, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.loopexit.i2259 ], [ %i.fht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254 ] ; 3 uses
  %i.fhw = load ptr, ptr %i.k, align 8, !tbaa !202 ; 2 uses
  %.not.i2264 = icmp eq ptr %i.fhv, %i.fhw
  br i1 %.not.i2264, label %.thread.i2266, label %bb.sf

bb.sf:                                            ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2263
  %i.fhx = getelementptr inbounds nuw i8, ptr %i.fhv, i64 8
  %i.fhy = load ptr, ptr %i.fhx, align 8, !tbaa !201 ; 3 uses
  store ptr %i.fhy, ptr %4, align 8, !tbaa !1764
  %i.fhz = icmp eq ptr %i.fhy, %i.fhw
  br i1 %i.fhz, label %.thread.i2266, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791", !llvm.loop !1765

.thread.i2266:                                    ; preds = %bb.sf, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2263
  %i.fia = phi ptr [ %i.fhy, %bb.sf ], [ %i.fhv, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2263 ]
  %i.fib = load ptr, ptr %i.fia, align 8, !tbaa !202
  store ptr %i.fib, ptr %4, align 8, !tbaa !1758
  br label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791", !llvm.loop !1765

bb.sg:                                            ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EE5clearEv.exit2233
  %i.fic = landingpad { ptr, i32 }
          cleanup
  br label %bb.si

bb.sh:                                            ; preds = %bb.se
  %i.fid = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj2io4Step8KeyValueD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %83) #41
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.sg
  %.pn1138 = phi { ptr, i32 } [ %i.fid, %bb.sh ], [ %i.fic, %bb.sg ]
  %i.fie = load ptr, ptr %84, align 8, !tbaa !14  ; 2 uses
  %i.fif = icmp eq ptr %i.fie, %i.ada
  br i1 %i.fif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2268: ; preds = %bb.si
  %i.fig = load i64, ptr %i.ada, align 8, !tbaa !19
  %i.fih = add i64 %i.fig, 1
  call void @_ZdlPvm(ptr noundef %i.fie, i64 noundef %i.fih) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270: ; preds = %bb.si, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2268
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #41
  br label %bb.sp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split: ; preds = %.split, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i, %bb.rx, %bb.rw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2218, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2216, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2220, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2215.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210
  %.pr4712 = load i64, ptr %i.auv, align 8, !tbaa !17
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split, %bb.rt
  %i.fii = phi i64 [ %.pr4712, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.threadthread-pre-split ], [ %i.fby, %bb.rt ] ; 3 uses
  %i.fij = load i64, ptr %i.dcd, align 8, !tbaa !17
  %i.fik = icmp eq i64 %i.fii, %i.fij
  br i1 %i.fik, label %bb.sj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384

bb.sj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.thread
  %i.fil = icmp eq i64 %i.fii, 0
  br i1 %i.fil, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272: ; preds = %bb.sj
  %i.fim = load ptr, ptr %i.aea, align 8, !tbaa !14
  %i.fin = load ptr, ptr %i.aeb, align 8, !tbaa !14
  %bcmp.i2271 = call i32 @bcmp(ptr %i.fin, ptr %i.fim, i64 %i.fii)
  %i.fio = icmp eq i32 %bcmp.i2271, 0
  %i.fip = icmp eq i64 %i.aef, %i.aej
  %or.cond3500 = select i1 %i.fio, i1 %i.fip, i1 false
  br i1 %or.cond3500, label %.preheader3577, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread: ; preds = %bb.sj
  %.old3499 = icmp eq i64 %i.aef, %i.aej
  br i1 %.old3499, label %.preheader3577, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384

.preheader3577:                                   ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272
  %.not11423908.not = icmp eq ptr %i.adt, %i.adu
  br i1 %.not11423908.not, label %.critedge1172, label %.lr.ph3910

.lr.ph3910:                                       ; preds = %.preheader3577
  %i.fiq = load ptr, ptr %i.adr, align 8, !tbaa !1047
  %i.fir = load ptr, ptr %i.adv, align 8, !tbaa !1047
  br label %bb.sk

bb.sk:                                            ; preds = %.lr.ph3910, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278.thread3385
  %.010143909 = phi i64 [ 0, %.lr.ph3910 ], [ %i.fjm, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278.thread3385 ] ; 3 uses
  %i.fis = getelementptr inbounds nuw [72 x i8], ptr %i.fiq, i64 %.010143909 ; 4 uses
  %i.fit = getelementptr inbounds nuw [72 x i8], ptr %i.fir, i64 %.010143909 ; 4 uses
  %i.fiu = getelementptr inbounds nuw i8, ptr %i.fis, i64 8
  %i.fiv = load i64, ptr %i.fiu, align 8, !tbaa !17 ; 3 uses
  %i.fiw = getelementptr inbounds nuw i8, ptr %i.fit, i64 8
  %i.fix = load i64, ptr %i.fiw, align 8, !tbaa !17
  %i.fiy = icmp eq i64 %i.fiv, %i.fix
  br i1 %i.fiy, label %bb.sl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384

bb.sl:                                            ; preds = %bb.sk
  %i.fiz = icmp eq i64 %i.fiv, 0
  br i1 %i.fiz, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2276, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2273

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2273: ; preds = %bb.sl
  %i.fja = load ptr, ptr %i.fit, align 8, !tbaa !14
  %i.fjb = load ptr, ptr %i.fis, align 8, !tbaa !14
  %bcmp.i.i.i2274 = call i32 @bcmp(ptr %i.fjb, ptr %i.fja, i64 %i.fiv)
  %.not.i2275 = icmp eq i32 %bcmp.i.i.i2274, 0
  br i1 %.not.i2275, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2276, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2276: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2273, %bb.sl
  %i.fjc = getelementptr inbounds nuw i8, ptr %i.fis, i64 32
  %i.fjd = getelementptr inbounds nuw i8, ptr %i.fit, i64 32
  %i.fje = getelementptr inbounds nuw i8, ptr %i.fis, i64 40
  %i.fjf = load i64, ptr %i.fje, align 8, !tbaa !17 ; 3 uses
  %i.fjg = getelementptr inbounds nuw i8, ptr %i.fit, i64 40
  %i.fjh = load i64, ptr %i.fjg, align 8, !tbaa !17
  %i.fji = icmp eq i64 %i.fjf, %i.fjh
  br i1 %i.fji, label %bb.sm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384

bb.sm:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2276
  %i.fjj = icmp eq i64 %i.fjf, 0
  br i1 %i.fjj, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278.thread3385, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278

_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278: ; preds = %bb.sm
  %i.fjk = load ptr, ptr %i.fjd, align 8, !tbaa !14
  %i.fjl = load ptr, ptr %i.fjc, align 8, !tbaa !14
  %bcmp.i.i3.i2277 = call i32 @bcmp(ptr %i.fjl, ptr %i.fjk, i64 %i.fjf)
  %.not3526 = icmp eq i32 %bcmp.i.i3.i2277, 0
  br i1 %.not3526, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278.thread3385, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384

_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278.thread3385: ; preds = %bb.sm, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278
  %i.fjm = add nuw i64 %.010143909, 1             ; 2 uses
  %.not1142 = icmp ult i64 %i.fjm, %i.aef
  br i1 %.not1142, label %bb.sk, label %.critedge1172, !llvm.loop !1770

.critedge1172:                                    ; preds = %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278.thread3385, %.preheader3577
  %i.fjn = load ptr, ptr %5, align 8, !tbaa !1758 ; 2 uses
  %.sroa.02.0.copyload.i2279 = load ptr, ptr %4, align 8, !tbaa !1764
  %i.fjo = load ptr, ptr %.sroa.02.0.copyload.i2279, align 8, !tbaa !202 ; 6 uses
  %.not6.i5.i2280 = icmp eq ptr %i.fjn, %i.fjo
  br i1 %.not6.i5.i2280, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2287, label %.lr.ph.i.i2281

.lr.ph.i.i2281:                                   ; preds = %.critedge1172, %.lr.ph.i.i2281
  %.sroa.05.07.i.i2282 = phi ptr [ %i.fjp, %.lr.ph.i.i2281 ], [ %i.fjn, %.critedge1172 ] ; 2 uses
  %i.fjp = load ptr, ptr %.sroa.05.07.i.i2282, align 8, !tbaa !202 ; 2 uses
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.05.07.i.i2282) #41
  %.not.i.i2283 = icmp eq ptr %i.fjp, %i.fjo
  br i1 %.not.i.i2283, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2287, label %.lr.ph.i.i2281, !llvm.loop !1766

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2287: ; preds = %.lr.ph.i.i2281, %.critedge1172
  store ptr %i.fjo, ptr %4, align 8, !tbaa !1764
  %i.fjq = load ptr, ptr %i.k, align 8, !tbaa !202 ; 2 uses
  %.not.i2288 = icmp eq ptr %i.fjo, %i.fjq
  br i1 %.not.i2288, label %bb.sn, label %.lr.ph.i6.preheader.i2289

.lr.ph.i6.preheader.i2289:                        ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2287
  %i.fjr = getelementptr inbounds nuw i8, ptr %i.fjo, i64 8
  %i.fjs = load ptr, ptr %i.fjr, align 8, !tbaa !201 ; 3 uses
  store ptr %i.fjs, ptr %4, align 8, !tbaa !1764
  %i.fjt = icmp eq ptr %i.fjs, %i.fjq
  br label %bb.sn

bb.sn:                                            ; preds = %.lr.ph.i6.preheader.i2289, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2287
  %i.fju = phi ptr [ %i.fjs, %.lr.ph.i6.preheader.i2289 ], [ %i.fjo, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2287 ] ; 2 uses
  %i.fjv = phi i1 [ %i.fjt, %.lr.ph.i6.preheader.i2289 ], [ true, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2287 ]
  %i.fjw = icmp ne ptr %i.fju, %i.k
  %or.cond.i2291 = and i1 %i.fjv, %i.fjw
  br i1 %or.cond.i2291, label %bb.so, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791", !llvm.loop !1765

bb.so:                                            ; preds = %bb.sn
  %i.fjx = load ptr, ptr %i.fju, align 8, !tbaa !202
  store ptr %i.fjx, ptr %4, align 8, !tbaa !1758
  br label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791", !llvm.loop !1765

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384: ; preds = %bb.sk, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2276, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2273, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2278, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2156.thread3362, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2210.thread3380.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272
  %i.fjy = load ptr, ptr %4, align 8, !tbaa !1758
  %i.fjz = load ptr, ptr %i.fjy, align 8, !tbaa !202
  store ptr %i.fjz, ptr %4, align 8, !tbaa !1758
  br label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791"

"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791": ; preds = %bb.sf, %.thread.i2266, %bb.sn, %bb.so, %bb.nq, %bb.np, %bb.nh, %bb.ng, %bb.mt, %bb.ms, %bb.mo, %bb.mn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1763.thread, %.thread3236, %.thread3219, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev.exit2124, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2154, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1948.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1933.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1886, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1846, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1732, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1630, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1596
  %.15 = phi i32 [ 8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1596 ], [ 8, %bb.so ], [ 8, %.thread3236 ], [ 8, %bb.nh ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2272.thread3384 ], [ 8, %bb.nq ], [ 8, %bb.np ], [ %.12, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2208 ], [ %.9, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit2154 ], [ %.6, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev.exit2124 ], [ 8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1948.thread ], [ 8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1933.thread ], [ 8, %bb.mt ], [ 8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1886 ], [ 8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1846 ], [ 8, %bb.mo ], [ 8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1763.thread ], [ 8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1732 ], [ 8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1698 ], [ 8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1664 ], [ 8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1630 ], [ 8, %bb.sn ], [ 8, %.thread3219 ], [ 8, %bb.mn ], [ 8, %bb.ms ], [ 8, %bb.ng ], [ 8, %.thread.i2266 ], [ 8, %bb.sf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.fka = icmp eq i32 %.15, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.fkb = load ptr, ptr %4, align 8              ; 2 uses
  %.not3505 = icmp eq ptr %i.fkb, %i.k
  %or.cond3940 = select i1 %i.fka, i1 true, i1 %.not3505
  br i1 %or.cond3940, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge.loopexit", label %.lr.ph.i.backedge

bb.sp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270, %.loopexit3583, %.loopexit3582, %.loopexit3581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1889, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1849, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1710, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1676, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537
  %.merged1160 = phi { ptr, i32 } [ %.pn1138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270 ], [ %.merged1161, %.loopexit3583 ], [ %.merged1163, %.loopexit3582 ], [ %.merged1165, %.loopexit3581 ], [ %i.dtv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1889 ], [ %i.doh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1849 ], [ %.pn1104.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744 ], [ %.pn1091.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1710 ], [ %.pn1078.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1676 ], [ %.pn1065.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642 ], [ %.pn1052.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1608 ], [ %.pn1041.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1574 ], [ %.pn1032.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %common.resume

"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge.loopexit": ; preds = %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791", %.critedge3555
  %.pre4032.a = load ptr, ptr %i.k, align 8, !tbaa !202
  br label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge"

"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge": ; preds = %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge.loopexit", %bb.ba
  %i.fkc = phi ptr [ %.pre4032.a, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge.loopexit" ], [ %i.ng, %bb.ba ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %.not3529 = icmp eq ptr %i.fkc, %i.k
  br i1 %.not3529, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge"
  %i.fkd = load ptr, ptr %i.fkc, align 8, !tbaa !202
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sq, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge"
  %.sroa.02920.0 = phi ptr [ %i.fkd, %bb.sq ], [ %i.fkc, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge" ] ; 2 uses
  %.not35303915 = icmp eq ptr %.sroa.02920.0, %i.k
  br i1 %.not35303915, label %._crit_edge3918, label %.lr.ph.i2294.preheader.lr.ph

.lr.ph.i2294.preheader.lr.ph:                     ; preds = %bb.sr
  %i.fke = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 4 uses
  %i.fkf = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.fkg = getelementptr inbounds nuw i8, ptr %85, i64 32
  %i.fkh = getelementptr inbounds nuw i8, ptr %85, i64 33
  %i.fki = getelementptr inbounds nuw i8, ptr %85, i64 40 ; 5 uses
  %i.fkj = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 6 uses
  %i.fkk = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 4 uses
  %i.fkl = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.fkm = getelementptr inbounds nuw i8, ptr %86, i64 32
  %i.fkn = getelementptr inbounds nuw i8, ptr %86, i64 33
  %i.fko = getelementptr inbounds nuw i8, ptr %86, i64 40 ; 5 uses
  %i.fkp = getelementptr inbounds nuw i8, ptr %86, i64 48
  %i.fkq = getelementptr inbounds nuw i8, ptr %86, i64 56
  %i.fkr = getelementptr inbounds nuw i8, ptr %85, i64 48
  %i.fks = getelementptr inbounds nuw i8, ptr %85, i64 56
  %i.fkt = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 12 uses
  %i.fku = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 4 uses
  %i.fkv = getelementptr inbounds nuw i8, ptr %87, i64 32 ; 2 uses
  %i.fkw = getelementptr inbounds nuw i8, ptr %87, i64 40 ; 5 uses
  %i.fkx = getelementptr inbounds nuw i8, ptr %87, i64 48
  %i.fky = getelementptr inbounds nuw i8, ptr %87, i64 56 ; 2 uses
  br label %.lr.ph.i2294.preheader

.lr.ph.i2294.preheader:                           ; preds = %.lr.ph.i2294.preheader.lr.ph, %_ZSt9__advanceISt14_List_iteratorIN5osgeo4proj2io4StepEElEvRT_T0_St26bidirectional_iterator_tag.exit2475
  %.sroa.02920.13916 = phi ptr [ %.sroa.02920.0, %.lr.ph.i2294.preheader.lr.ph ], [ %.sroa.02920.3, %_ZSt9__advanceISt14_List_iteratorIN5osgeo4proj2io4StepEElEvRT_T0_St26bidirectional_iterator_tag.exit2475 ] ; 11 uses
  %i.fkz = getelementptr inbounds nuw i8, ptr %.sroa.02920.13916, i64 8
  %i.fla = load ptr, ptr %i.fkz, align 8, !tbaa !201 ; 10 uses
  %i.flb = getelementptr inbounds nuw i8, ptr %.sroa.02920.13916, i64 56
  %i.flc = getelementptr inbounds nuw i8, ptr %.sroa.02920.13916, i64 64
  %i.fld = load ptr, ptr %i.flc, align 8, !tbaa !1048
  %i.fle = load ptr, ptr %i.flb, align 8, !tbaa !1047 ; 13 uses
  %i.flf = getelementptr inbounds nuw i8, ptr %i.fla, i64 56 ; 2 uses
  %i.flg = getelementptr inbounds nuw i8, ptr %i.fla, i64 64
  %i.flh = load ptr, ptr %i.flg, align 8, !tbaa !1048
  %i.fli = load ptr, ptr %i.flf, align 8, !tbaa !1047 ; 17 uses
  %i.flj = load ptr, ptr %.sroa.02920.13916, align 8, !tbaa !202 ; 17 uses
  %i.flk = getelementptr inbounds nuw i8, ptr %i.fla, i64 16 ; 3 uses
  %i.fll = getelementptr inbounds nuw i8, ptr %.sroa.02920.13916, i64 16 ; 3 uses
  %i.flm = ptrtoint ptr %i.fld to i64
  %i.fln = ptrtoint ptr %i.fle to i64
  %i.flo = sub i64 %i.flm, %i.fln                 ; 2 uses
  %i.flp = ptrtoint ptr %i.flh to i64
  %i.flq = ptrtoint ptr %i.fli to i64
  %i.flr = sub i64 %i.flp, %i.flq                 ; 3 uses
  %.not3537 = icmp eq ptr %i.flj, %i.k            ; 3 uses
  %.phi.trans.insert4033 = getelementptr inbounds nuw i8, ptr %i.fla, i64 24
  %.pre4034.a = load i64, ptr %.phi.trans.insert4033, align 8, !tbaa !17 ; 2 uses
  %i.fls = icmp ne i64 %.pre4034.a, 10
  %or.cond4735.not = select i1 %.not3537, i1 true, i1 %i.fls
  br i1 %or.cond4735.not, label %.critedge107, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2303

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2303: ; preds = %.lr.ph.i2294.preheader
  %i.flt = load ptr, ptr %i.flk, align 8, !tbaa !14 ; 2 uses
  %i.flu = load i64, ptr %i.flt, align 1
  %i.flv = xor i64 %i.flu, 7595447646663370600
  %i.flw = getelementptr i8, ptr %i.flt, i64 8
  %i.flx = load i16, ptr %i.flw, align 1
  %i.fly = zext i16 %i.flx to i64
  %i.flz = xor i64 %i.fly, 29798
  %i.fma = or i64 %i.flv, %i.flz
  %i.fmb = icmp ne i64 %i.fma, 0
  %i.fmc = zext i1 %i.fmb to i32
  %i.fmd = icmp eq i32 %i.fmc, 0
  %i.fme = icmp eq i64 %i.flr, 72
  %or.cond105 = and i1 %i.fme, %i.fmd
  br i1 %or.cond105, label %bb.ss, label %.critedge1179

bb.ss:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2303
  %i.fmf = getelementptr inbounds nuw i8, ptr %.sroa.02920.13916, i64 24
  %i.fmg = load i64, ptr %i.fmf, align 8, !tbaa !17
  %i.fmh = icmp eq i64 %i.fmg, 10
  br i1 %i.fmh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2305, label %.critedge1179

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2305: ; preds = %bb.ss
  %i.fmi = load ptr, ptr %i.fll, align 8, !tbaa !14 ; 2 uses
  %i.fmj = load i64, ptr %i.fmi, align 1
  %i.fmk = xor i64 %i.fmj, 7595447646663370614
  %i.fml = getelementptr i8, ptr %i.fmi, i64 8
  %i.fmm = load i16, ptr %i.fml, align 1
  %i.fmn = zext i16 %i.fmm to i64
  %i.fmo = xor i64 %i.fmn, 29798
  %i.fmp = or i64 %i.fmk, %i.fmo
  %i.fmq = icmp ne i64 %i.fmp, 0
  %i.fmr = zext i1 %i.fmq to i32
  %i.fms = icmp eq i32 %i.fmr, 0
  br i1 %i.fms, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2305.thread.preheader, label %.critedge1179

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2305.thread.preheader: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2305
  %i.fmt = getelementptr inbounds nuw i8, ptr %i.flj, i64 24
  %i.fmu = load i64, ptr %i.fmt, align 8, !tbaa !17
  %i.fmv = icmp eq i64 %i.fmu, 10
  br i1 %i.fmv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2311, label %.critedge1179

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2311: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2305.thread.preheader
  %i.fmw = getelementptr inbounds nuw i8, ptr %i.flj, i64 16
  %i.fmx = load ptr, ptr %i.fmw, align 8, !tbaa !14 ; 2 uses
  %i.fmy = load i64, ptr %i.fmx, align 1
  %i.fmz = xor i64 %i.fmy, 7595447646663370600
  %i.fna = getelementptr i8, ptr %i.fmx, i64 8
  %i.fnb = load i16, ptr %i.fna, align 1
  %i.fnc = zext i16 %i.fnb to i64
  %i.fnd = xor i64 %i.fnc, 29798
  %i.fne = or i64 %i.fmz, %i.fnd
  %i.fnf = icmp ne i64 %i.fne, 0
  %i.fng = zext i1 %i.fnf to i32
  %i.fnh = icmp eq i32 %i.fng, 0
  br i1 %i.fnh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2311.thread, label %.critedge1179

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2311.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2311
  %i.fni = getelementptr inbounds nuw i8, ptr %i.flj, i64 49
  %i.fnj = load i8, ptr %i.fni, align 1, !tbaa !1056, !range !83, !noundef !84
  %i.fnk = getelementptr inbounds nuw i8, ptr %i.fla, i64 49
  %i.fnl = load i8, ptr %i.fnk, align 1, !tbaa !1056, !range !83, !noundef !84
  %.not1151 = icmp eq i8 %i.fnj, %i.fnl
  br i1 %.not1151, label %.critedge1179, label %bb.st
end_hunk_0
begin_hunk_1_@_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev:bb.a

bb.uy:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2601
  %i.hci = getelementptr inbounds nuw i8, ptr %i.hbe, i64 8
  %i.hcj = load i64, ptr %i.hci, align 8, !tbaa !17
  %i.hck = icmp eq i64 %i.hcj, 5
  br i1 %i.hck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2602, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2602: ; preds = %bb.uy
  %i.hcl = load ptr, ptr %i.hbe, align 8, !tbaa !14 ; 2 uses
  %i.hcm = load i32, ptr %i.hcl, align 1
  %i.hcn = xor i32 %i.hcm, 1701081711
  %i.hco = getelementptr i8, ptr %i.hcl, i64 4
  %i.hcp = load i8, ptr %i.hco, align 1
  %i.hcq = zext i8 %i.hcp to i32
  %i.hcr = xor i32 %i.hcq, 114
  %i.hcs = or i32 %i.hcn, %i.hcr
  %i.hct = icmp ne i32 %i.hcs, 0
  %i.hcu = zext i1 %i.hct to i32
  %i.hcv = icmp eq i32 %i.hcu, 0
  br i1 %i.hcv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2604, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2604: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2602
  %i.hcw = getelementptr inbounds nuw i8, ptr %i.hbe, i64 40
  %i.hcx = load i64, ptr %i.hcw, align 8, !tbaa !17
  %i.hcy = icmp eq i64 %i.hcx, 3
  br i1 %i.hcy, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2604
  %i.hcz = getelementptr inbounds nuw i8, ptr %i.hbe, i64 32
  %i.hda = load ptr, ptr %i.hcz, align 8, !tbaa !14 ; 2 uses
  %i.hdb = load i16, ptr %i.hda, align 1
  %i.hdc = xor i16 %i.hdb, 11314
  %i.hdd = getelementptr i8, ptr %i.hda, i64 2
  %i.hde = load i8, ptr %i.hdd, align 1
  %i.hdf = zext i8 %i.hde to i16
  %i.hdg = xor i16 %i.hdf, 49
  %i.hdh = or i16 %i.hdc, %i.hdg
  %i.hdi = icmp ne i16 %i.hdh, 0
  %i.hdj = zext i1 %i.hdi to i32
  %i.hdk = icmp eq i32 %i.hdj, 0
  br i1 %i.hdk, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606.thread3482, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606.thread3482: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606
  %i.hdl = getelementptr inbounds nuw i8, ptr %i.hbm, i64 8
  %i.hdm = load i64, ptr %i.hdl, align 8, !tbaa !17
  %i.hdn = icmp eq i64 %i.hdm, 5
  br i1 %i.hdn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2607, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2607: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606.thread3482
  %i.hdo = load ptr, ptr %i.hbm, align 8, !tbaa !14 ; 2 uses
  %i.hdp = load i32, ptr %i.hdo, align 1
  %i.hdq = xor i32 %i.hdp, 1701081711
  %i.hdr = getelementptr i8, ptr %i.hdo, i64 4
  %i.hds = load i8, ptr %i.hdr, align 1
  %i.hdt = zext i8 %i.hds to i32
  %i.hdu = xor i32 %i.hdt, 114
  %i.hdv = or i32 %i.hdq, %i.hdu
  %i.hdw = icmp ne i32 %i.hdv, 0
  %i.hdx = zext i1 %i.hdw to i32
  %i.hdy = icmp eq i32 %i.hdx, 0
  br i1 %i.hdy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2609, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2609: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2607
  %i.hdz = getelementptr inbounds nuw i8, ptr %i.hbm, i64 40
  %i.hea = load i64, ptr %i.hdz, align 8, !tbaa !17
  %i.heb = icmp eq i64 %i.hea, 3
  br i1 %i.heb, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2609
  %i.hec = getelementptr inbounds nuw i8, ptr %i.hbm, i64 32
  %i.hed = load ptr, ptr %i.hec, align 8, !tbaa !14 ; 2 uses
  %i.hee = load i16, ptr %i.hed, align 1
  %i.hef = xor i16 %i.hee, 11314
  %i.heg = getelementptr i8, ptr %i.hed, i64 2
  %i.heh = load i8, ptr %i.heg, align 1
  %i.hei = zext i8 %i.heh to i16
  %i.hej = xor i16 %i.hei, 49
  %i.hek = or i16 %i.hef, %i.hej
  %i.hel = icmp ne i16 %i.hek, 0
  %i.hem = zext i1 %i.hel to i32
  %i.hen = icmp eq i32 %i.hem, 0
  br i1 %i.hen, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611.thread3483, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611.thread3483: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611
  %i.heo = load ptr, ptr %.sroa.0.13923, align 8, !tbaa !202 ; 5 uses
  %.not6.i5.i2613 = icmp eq ptr %i.hay, %i.heo
  br i1 %.not6.i5.i2613, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620, label %.lr.ph.i.i2614

.lr.ph.i.i2614:                                   ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611.thread3483, %.lr.ph.i.i2614
  %.sroa.05.07.i.i2615 = phi ptr [ %i.hep, %.lr.ph.i.i2614 ], [ %i.hay, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611.thread3483 ] ; 2 uses
  %i.hep = load ptr, ptr %.sroa.05.07.i.i2615, align 8, !tbaa !202 ; 2 uses
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.05.07.i.i2615) #41
  %.not.i.i2616 = icmp eq ptr %i.hep, %i.heo
  br i1 %.not.i.i2616, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620.loopexit, label %.lr.ph.i.i2614, !llvm.loop !1766

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620.loopexit: ; preds = %.lr.ph.i.i2614
  %.pre4037.a = load ptr, ptr %i.k, align 8, !tbaa !202
  br label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620: ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620.loopexit, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611.thread3483
  %i.heq = phi ptr [ %.pre4037.a, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620.loopexit ], [ %i.hav, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611.thread3483 ] ; 6 uses
  %.not.i2621 = icmp eq ptr %i.heo, %i.heq
  br i1 %.not.i2621, label %bb.uz, label %.lr.ph.i6.preheader.i2622

.lr.ph.i6.preheader.i2622:                        ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620
  %i.her = getelementptr inbounds nuw i8, ptr %i.heo, i64 8
  %i.hes = load ptr, ptr %i.her, align 8, !tbaa !201 ; 2 uses
  %i.het = icmp eq ptr %i.hes, %i.heq
  br label %bb.uz

bb.uz:                                            ; preds = %.lr.ph.i6.preheader.i2622, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620
  %.sroa.0.3 = phi ptr [ %i.heo, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620 ], [ %i.hes, %.lr.ph.i6.preheader.i2622 ] ; 3 uses
  %i.heu = phi i1 [ true, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2620 ], [ %i.het, %.lr.ph.i6.preheader.i2622 ]
  %i.hev = icmp ne ptr %.sroa.0.3, %i.k
  %or.cond.i2624 = and i1 %i.heu, %i.hev
  br i1 %or.cond.i2624, label %bb.va, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit", !llvm.loop !1771

bb.va:                                            ; preds = %bb.uz
  br label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split", !llvm.loop !1771

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606.thread3482, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2609, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2607, %bb.uy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2604, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2602, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread, %.lr.ph.i2594.preheader, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2611, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2606, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2601, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599
  %i.hew = getelementptr inbounds nuw i8, ptr %.sroa.0.13923, i64 49
  %i.hex = load i8, ptr %i.hew, align 1, !tbaa !1056, !range !83, !noundef !84
  %i.hey = getelementptr inbounds nuw i8, ptr %i.hay, i64 49
  %i.hez = load i8, ptr %i.hey, align 1, !tbaa !1056, !range !83, !noundef !84
  %.not1149 = icmp eq i8 %i.hex, %i.hez
  br i1 %.not1149, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split", label %bb.vb

bb.vb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479
  %i.hfa = getelementptr inbounds nuw i8, ptr %i.hay, i64 24
  %i.hfb = load i64, ptr %i.hfa, align 8, !tbaa !17
  %i.hfc = icmp eq i64 %i.hbr, %i.hfb
  br i1 %i.hfc, label %bb.vc, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split"

bb.vc:                                            ; preds = %bb.vb
  %i.hfd = icmp eq i64 %i.hbr, 0
  br i1 %i.hfd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  %i.hfe = load ptr, ptr %i.haz, align 8, !tbaa !14
  %i.hff = load ptr, ptr %i.hba, align 8, !tbaa !14
  %bcmp.i2625 = call i32 @bcmp(ptr %i.hff, ptr %i.hfe, i64 %i.hbr)
  %i.hfg = icmp eq i32 %bcmp.i2625, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626: ; preds = %bb.vc, %bb.vd
  %i.hfh = phi i1 [ true, %bb.vc ], [ %i.hfg, %bb.vd ]
  %i.hfi = icmp eq i64 %i.hbh, %i.hbp
  %or.cond1180 = and i1 %i.hfi, %i.hfh
  br i1 %or.cond1180, label %.preheader, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split"

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626
  %.not11503919.not = icmp eq ptr %i.hbd, %i.hbe
  br i1 %.not11503919.not, label %.critedge1187, label %.lr.ph3921

.lr.ph3921:                                       ; preds = %.preheader, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632.thread3485
  %.03920 = phi i64 [ %i.hgd, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632.thread3485 ], [ 0, %.preheader ] ; 3 uses
  %i.hfj = getelementptr inbounds nuw [72 x i8], ptr %i.hbe, i64 %.03920 ; 4 uses
  %i.hfk = getelementptr inbounds nuw [72 x i8], ptr %i.hbm, i64 %.03920 ; 4 uses
  %i.hfl = getelementptr inbounds nuw i8, ptr %i.hfj, i64 8
  %i.hfm = load i64, ptr %i.hfl, align 8, !tbaa !17 ; 3 uses
  %i.hfn = getelementptr inbounds nuw i8, ptr %i.hfk, i64 8
  %i.hfo = load i64, ptr %i.hfn, align 8, !tbaa !17
  %i.hfp = icmp eq i64 %i.hfm, %i.hfo
  br i1 %i.hfp, label %bb.ve, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split"

bb.ve:                                            ; preds = %.lr.ph3921
  %i.hfq = icmp eq i64 %i.hfm, 0
  br i1 %i.hfq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2627

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2627: ; preds = %bb.ve
  %i.hfr = load ptr, ptr %i.hfk, align 8, !tbaa !14
  %i.hfs = load ptr, ptr %i.hfj, align 8, !tbaa !14
  %bcmp.i.i.i2628 = call i32 @bcmp(ptr %i.hfs, ptr %i.hfr, i64 %i.hfm)
  %.not.i2629 = icmp eq i32 %bcmp.i.i.i2628, 0
  br i1 %.not.i2629, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split"

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2627, %bb.ve
  %i.hft = getelementptr inbounds nuw i8, ptr %i.hfj, i64 32
  %i.hfu = getelementptr inbounds nuw i8, ptr %i.hfk, i64 32
  %i.hfv = getelementptr inbounds nuw i8, ptr %i.hfj, i64 40
  %i.hfw = load i64, ptr %i.hfv, align 8, !tbaa !17 ; 3 uses
  %i.hfx = getelementptr inbounds nuw i8, ptr %i.hfk, i64 40
  %i.hfy = load i64, ptr %i.hfx, align 8, !tbaa !17
  %i.hfz = icmp eq i64 %i.hfw, %i.hfy
  br i1 %i.hfz, label %bb.vf, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split"

bb.vf:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630
  %i.hga = icmp eq i64 %i.hfw, 0
  br i1 %i.hga, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632.thread3485, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632

_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632: ; preds = %bb.vf
  %i.hgb = load ptr, ptr %i.hfu, align 8, !tbaa !14
  %i.hgc = load ptr, ptr %i.hft, align 8, !tbaa !14
  %bcmp.i.i3.i2631 = call i32 @bcmp(ptr %i.hgc, ptr %i.hgb, i64 %i.hfw)
  %.not3536 = icmp eq i32 %bcmp.i.i3.i2631, 0
  br i1 %.not3536, label %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632.thread3485, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split"

_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632.thread3485: ; preds = %bb.vf, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632
  %i.hgd = add nuw i64 %.03920, 1                 ; 2 uses
  %.not1150 = icmp ult i64 %i.hgd, %i.hbi
  br i1 %.not1150, label %.lr.ph3921, label %.critedge1187, !llvm.loop !1772

.critedge1187:                                    ; preds = %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632.thread3485, %.preheader
  %i.hge = load ptr, ptr %.sroa.0.13923, align 8, !tbaa !202 ; 5 uses
  %.not6.i5.i2634 = icmp eq ptr %i.hay, %i.hge
  br i1 %.not6.i5.i2634, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641, label %.lr.ph.i.i2635

.lr.ph.i.i2635:                                   ; preds = %.critedge1187, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E.exit
  %.sroa.05.07.i.i2636 = phi ptr [ %i.hgf, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E.exit ], [ %i.hay, %.critedge1187 ] ; 8 uses
  %i.hgf = load ptr, ptr %.sroa.05.07.i.i2636, align 8, !tbaa !202 ; 2 uses
  %i.hgg = load i64, ptr %i.hau, align 8, !tbaa !1756
  %i.hgh = add i64 %i.hgg, -1
  store i64 %i.hgh, ptr %i.hau, align 8, !tbaa !1756
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.07.i.i2636) #41
  %i.hgi = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i2636, i64 16
  %i.hgj = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i2636, i64 56 ; 2 uses
  %i.hgk = load ptr, ptr %i.hgj, align 8, !tbaa !1047 ; 3 uses
  %i.hgl = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i2636, i64 64
  %i.hgm = load ptr, ptr %i.hgl, align 8, !tbaa !1048 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.hgk, %i.hgm
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i2635, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.hgy, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i.i ], [ %i.hgk, %.lr.ph.i.i2635 ] ; 5 uses
  %i.hgn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.hgo = load ptr, ptr %i.hgn, align 8, !tbaa !14 ; 2 uses
  %i.hgp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %i.hgq = icmp eq ptr %i.hgo, %i.hgp
  br i1 %i.hgq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.hgr = load i64, ptr %i.hgp, align 8, !tbaa !19
  %i.hgs = add i64 %i.hgr, 1
  call void @_ZdlPvm(ptr noundef %i.hgo, i64 noundef %i.hgs) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.hgt = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !14 ; 2 uses
  %i.hgu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.hgv = icmp eq ptr %i.hgt, %i.hgu
  br i1 %i.hgv, label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.hgw = load i64, ptr %i.hgu, align 8, !tbaa !19
  %i.hgx = add i64 %i.hgw, 1
  call void @_ZdlPvm(ptr noundef %i.hgt, i64 noundef %i.hgx) #44
  br label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.hgy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i2811 = icmp eq ptr %i.hgy, %i.hgm
  br i1 %.not.i.i.i.i.i2811, label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1049

_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.hgj, align 8, !tbaa !1047
  br label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i.i2635
  %i.hgz = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.hgk, %.lr.ph.i.i2635 ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.hgz, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i.i, label %bb.vg

bb.vg:                                            ; preds = %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.hha = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i2636, i64 72
  %i.hhb = load ptr, ptr %i.hha, align 8, !tbaa !1057
  %i.hhc = ptrtoint ptr %i.hhb to i64
  %i.hhd = ptrtoint ptr %i.hgz to i64
  %i.hhe = sub i64 %i.hhc, %i.hhd
  call void @_ZdlPvm(ptr noundef nonnull %i.hgz, i64 noundef %i.hhe) #44
  br label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i.i

_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i.i: ; preds = %bb.vg, %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.hhf = load ptr, ptr %i.hgi, align 8, !tbaa !14 ; 2 uses
  %i.hhg = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i2636, i64 32 ; 2 uses
  %i.hhh = icmp eq ptr %i.hhf, %i.hhg
  br i1 %i.hhh, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2812

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2812: ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i.i
  %i.hhi = load i64, ptr %i.hhg, align 8, !tbaa !19
  %i.hhj = add i64 %i.hhi, 1
  call void @_ZdlPvm(ptr noundef %i.hhf, i64 noundef %i.hhj) #44
  br label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E.exit

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E.exit: ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2812
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.07.i.i2636, i64 noundef 80) #44
  %.not.i.i2637 = icmp eq ptr %i.hgf, %i.hge
  br i1 %.not.i.i2637, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641.loopexit, label %.lr.ph.i.i2635, !llvm.loop !1766

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641.loopexit: ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E.exit
  %.pre4036.a = load ptr, ptr %i.k, align 8, !tbaa !202 ; 2 uses
  br label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641: ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641.loopexit, %.critedge1187
  %i.hhk = phi ptr [ %.pre4036.a, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641.loopexit ], [ %i.hav, %.critedge1187 ] ; 2 uses
  %i.hhl = phi ptr [ %.pre4036.a, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641.loopexit ], [ %i.haw, %.critedge1187 ] ; 4 uses
  %.not.i2642 = icmp eq ptr %i.hge, %i.hhl
  br i1 %.not.i2642, label %bb.vh, label %.lr.ph.i6.preheader.i2643

.lr.ph.i6.preheader.i2643:                        ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641
  %i.hhm = getelementptr inbounds nuw i8, ptr %i.hge, i64 8
  %i.hhn = load ptr, ptr %i.hhm, align 8, !tbaa !201 ; 2 uses
  %i.hho = icmp eq ptr %i.hhn, %i.hhl
  br label %bb.vh

bb.vh:                                            ; preds = %.lr.ph.i6.preheader.i2643, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641
  %.sroa.0.5 = phi ptr [ %i.hge, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641 ], [ %i.hhn, %.lr.ph.i6.preheader.i2643 ] ; 3 uses
  %i.hhp = phi i1 [ true, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2641 ], [ %i.hho, %.lr.ph.i6.preheader.i2643 ]
  %i.hhq = icmp ne ptr %.sroa.0.5, %i.k
  %or.cond.i2645 = and i1 %i.hhp, %i.hhq
  br i1 %or.cond.i2645, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split", label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit"

"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split": ; preds = %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2627, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630, %.lr.ph3921, %bb.vh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626, %bb.vb, %bb.va
  %.sroa.0.5.sink = phi ptr [ %.sroa.0.13923, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479 ], [ %.sroa.0.3, %bb.va ], [ %.sroa.0.5, %bb.vh ], [ %.sroa.0.13923, %bb.vb ], [ %.sroa.0.13923, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626 ], [ %.sroa.0.13923, %.lr.ph3921 ], [ %.sroa.0.13923, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630 ], [ %.sroa.0.13923, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2627 ], [ %.sroa.0.13923, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632 ]
  %.ph = phi ptr [ %i.hav, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479 ], [ %i.heq, %bb.va ], [ %i.hhk, %bb.vh ], [ %i.hav, %bb.vb ], [ %i.hav, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626 ], [ %i.hav, %.lr.ph3921 ], [ %i.hav, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630 ], [ %i.hav, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2627 ], [ %i.hav, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632 ]
  %.ph4739 = phi ptr [ %i.haw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599.thread3479 ], [ %i.heq, %bb.va ], [ %i.hhl, %bb.vh ], [ %i.haw, %bb.vb ], [ %i.haw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit2626 ], [ %i.haw, %.lr.ph3921 ], [ %i.haw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i2630 ], [ %i.haw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i2627 ], [ %i.haw, %_ZNK5osgeo4proj2io4Step8KeyValueneERKS3_.exit2632 ]
  %i.hhr = load ptr, ptr %.sroa.0.5.sink, align 8, !tbaa !202
  br label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit"

"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit": ; preds = %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split", %bb.vh, %bb.uz
  %i.hhs = phi ptr [ %i.heq, %bb.uz ], [ %i.hhk, %bb.vh ], [ %.ph, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split" ] ; 2 uses
  %i.hht = phi ptr [ %i.heq, %bb.uz ], [ %i.hhl, %bb.vh ], [ %.ph4739, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split" ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %bb.uz ], [ %.sroa.0.5, %bb.vh ], [ %i.hhr, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit.sink.split" ] ; 2 uses
  %.not3532 = icmp eq ptr %.sroa.0.2, %i.k
  br i1 %.not3532, label %._crit_edge3925, label %.lr.ph.i2594.preheader

._crit_edge3925:                                  ; preds = %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit", %bb.ux
  %i.hhu = phi ptr [ %i.has, %bb.ux ], [ %i.hhs, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit" ] ; 3 uses
  %i.hhv = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.hhw = load i64, ptr %i.hhv, align 8, !tbaa !1756 ; 2 uses
  %i.hhx = icmp ugt i64 %i.hhw, 1
  br i1 %i.hhx, label %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit2660, label %bb.vi

bb.vi:                                            ; preds = %._crit_edge3925
  %i.hhy = icmp eq i64 %i.hhw, 1
  br i1 %i.hhy, label %bb.vj, label %bb.vz

bb.vj:                                            ; preds = %bb.vi
  %i.hhz = getelementptr inbounds nuw i8, ptr %i.hhu, i64 49
  %i.hia = load i8, ptr %i.hhz, align 1, !tbaa !1056, !range !83, !noundef !84
  %i.hib = trunc nuw i8 %i.hia to i1
  br i1 %i.hib, label %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit2660, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.hic = getelementptr inbounds nuw i8, ptr %i.hhu, i64 56
  %i.hid = load ptr, ptr %i.hic, align 8, !tbaa !1051 ; 3 uses
  %i.hie = getelementptr inbounds nuw i8, ptr %i.hhu, i64 64
  %i.hif = load ptr, ptr %i.hie, align 8, !tbaa !1051 ; 3 uses
  %.not14.not.i = icmp eq ptr %i.hid, %i.hif
  br i1 %.not14.not.i, label %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit.thread3487, label %.lr.ph.i2647

.lr.ph.i2647:                                     ; preds = %bb.vk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i
  %.sroa.09.015.i = phi ptr [ %i.hio, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i ], [ %i.hid, %bb.vk ] ; 3 uses
  %i.hig = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 8
  %i.hih = load i64, ptr %i.hig, align 8, !tbaa !17
  %i.hii = icmp eq i64 %i.hih, 8
  br i1 %i.hii, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2649, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2649: ; preds = %.lr.ph.i2647
  %i.hij = load ptr, ptr %.sroa.09.015.i, align 8, !tbaa !14
  %i.hik = load i64, ptr %i.hij, align 1
  %i.hil = icmp ne i64 %i.hik, 8533874202609544559
  %i.him = zext i1 %i.hil to i32
  %i.hin = icmp eq i32 %i.him, 0
  br i1 %i.hin, label %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit2660, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2649, %.lr.ph.i2647
  %i.hio = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 72 ; 2 uses
  %.not.not.i = icmp eq ptr %i.hio, %i.hif
  br i1 %.not.not.i, label %.lr.ph.i2652, label %.lr.ph.i2647

.lr.ph.i2652:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i2654
  %.sroa.09.015.i2653 = phi ptr [ %i.hix, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i2654 ], [ %i.hid, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i ] ; 3 uses
  %i.hip = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i2653, i64 8
  %i.hiq = load i64, ptr %i.hip, align 8, !tbaa !17
  %i.hir = icmp eq i64 %i.hiq, 8
  br i1 %i.hir, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2658, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i2654

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2658: ; preds = %.lr.ph.i2652
  %i.his = load ptr, ptr %.sroa.09.015.i2653, align 8, !tbaa !14
  %i.hit = load i64, ptr %i.his, align 1
  %i.hiu = icmp ne i64 %i.hit, 7239367486182354287
  %i.hiv = zext i1 %i.hiu to i32
  %i.hiw = icmp eq i32 %i.hiv, 0
  br i1 %i.hiw, label %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit2660, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i2654

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i2654: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2658, %.lr.ph.i2652
  %i.hix = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i2653, i64 72 ; 2 uses
  %.not.not.i2655 = icmp eq ptr %i.hix, %i.hif
  br i1 %.not.not.i2655, label %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit.thread3487, label %.lr.ph.i2652

_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit.thread3487: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12.i2654, %bb.vk
  %i.hiy = load ptr, ptr %0, align 8, !tbaa !1738 ; 2 uses
  %i.hiz = getelementptr inbounds nuw i8, ptr %i.hiy, i64 168
  %i.hja = load ptr, ptr %i.hiz, align 8, !tbaa !1051
  %i.hjb = getelementptr inbounds nuw i8, ptr %i.hiy, i64 176
  %i.hjc = load ptr, ptr %i.hjb, align 8, !tbaa !1051
  %i.hjd = icmp eq ptr %i.hja, %i.hjc
  br i1 %i.hjd, label %bb.vz, label %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit2660

_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit2660:      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2649, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2658, %_ZNK5osgeo4proj2io4Step6hasKeyEPKc.exit.thread3487, %bb.vj, %._crit_edge3925
  %i.hje = load ptr, ptr %0, align 8, !tbaa !1738 ; 3 uses
end_hunk_1
