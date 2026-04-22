inline.NumInlined: 682
inline.NumDeleted: 170
begin_hunk_0
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.122 = private unnamed_addr constant [19 x i8] c"(data_) != nullptr\00", align 1
@switch.table._ZN2v88internal8compiler10BitsetType3LubINS1_6MapRefEEEmT_PNS1_12JSHeapBrokerE = private unnamed_addr constant [3 x i64] [i64 512, i64 256, i64 128], comdat($_ZN2v88internal8compiler10BitsetType3LubINS1_6MapRefEEEmT_PNS1_12JSHeapBrokerE), align 8
@switch.table._ZN2v88internal8compiler10BitsetType3LubINS1_14HeapObjectTypeEEEmT_PNS1_12JSHeapBrokerE = private unnamed_addr constant [3 x i64] [i64 512, i64 256, i64 128], comdat($_ZN2v88internal8compiler10BitsetType3LubINS1_14HeapObjectTypeEEEmT_PNS1_12JSHeapBrokerE), align 8

@_ZN2v88internal8compiler16HeapConstantTypeC1EmNS1_13HeapObjectRefE = hidden unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN2v88internal8compiler16HeapConstantTypeC2EmNS1_13HeapObjectRefE

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10BitsetType3LubINS1_6MapRefEEEmT_PNS1_12JSHeapBrokerE:bb.a

switch.lookup:                                    ; preds = %bb.e
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler10BitsetType3LubINS1_6MapRefEEEmT_PNS1_12JSHeapBrokerE, i64 %i.i
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.w

end_hunk_1
